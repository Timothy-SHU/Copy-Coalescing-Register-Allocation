; ModuleID = 'drivers/input/input-leds.c'
source_filename = "drivers/input/input-leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_input_leds__267_209_input_leds_init\22, \22a\22\09\09"
module asm "__initcall__kmod_input_leds__267_209_input_leds_init6:\09\09\09"
module asm ".long\09__initstub__kmod_input_leds__267_209_input_leds_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.anon.13 = type { ptr, ptr }
%struct.input_leds = type { %struct.input_handle, i32, [0 x %struct.input_led] }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.input_led = type { %struct.led_classdev, ptr, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i64, i64, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, i64, i64, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}

@__UNIQUE_ID___addressable___initstub__kmod_input_leds__267_209_input_leds_init6268 = internal global ptr @__initstub__kmod_input_leds__267_209_input_leds_init6, section ".discard.addressable", align 8, !dbg !0
@input_leds_handler = internal global %struct.input_handler { ptr null, ptr @input_leds_event, ptr null, ptr null, ptr null, ptr @input_leds_connect, ptr @input_leds_disconnect, ptr null, i8 0, i32 0, ptr @.str, ptr @input_leds_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 8, !dbg !4683
@__exitcall_input_leds_exit = internal global ptr @input_leds_exit, section ".exitcall.exit", align 8, !dbg !4649
@__UNIQUE_ID_author269 = internal constant [65 x i8] c"input_leds.author=Samuel Thibault <samuel.thibault@ens-lyon.org>\00", section ".modinfo", align 1, !dbg !4653
@__UNIQUE_ID_author270 = internal constant [62 x i8] c"input_leds.author=Dmitry Torokhov <dmitry.torokhov@gmail.com>\00", section ".modinfo", align 1, !dbg !4658
@__UNIQUE_ID_description271 = internal constant [44 x i8] c"input_leds.description=Input -> LEDs Bridge\00", section ".modinfo", align 1, !dbg !4663
@__UNIQUE_ID_file272 = internal constant [41 x i8] c"input_leds.file=drivers/input/input-leds\00", section ".modinfo", align 1, !dbg !4668
@__UNIQUE_ID_license273 = internal constant [26 x i8] c"input_leds.license=GPL v2\00", section ".modinfo", align 1, !dbg !4673
@.str = private unnamed_addr constant [5 x i8] c"leds\00", align 1, !dbg !4678
@input_leds_ids = internal constant [2 x %struct.input_device_id] [%struct.input_device_id { i64 16, i16 0, i16 0, i16 0, i16 0, [1 x i64] [i64 131072], [12 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [2 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, i64 0 }, %struct.input_device_id zeroinitializer], align 16, !dbg !4749
@input_led_info = internal constant [16 x %struct.anon.13] [%struct.anon.13 { ptr @.str.4, ptr @.str.5 }, %struct.anon.13 { ptr @.str.6, ptr @.str.7 }, %struct.anon.13 { ptr @.str.8, ptr @.str.9 }, %struct.anon.13 { ptr @.str.10, ptr null }, %struct.anon.13 { ptr @.str.11, ptr @.str.12 }, %struct.anon.13 { ptr @.str.13, ptr null }, %struct.anon.13 { ptr @.str.14, ptr null }, %struct.anon.13 { ptr @.str.15, ptr null }, %struct.anon.13 { ptr @.str.16, ptr null }, %struct.anon.13 { ptr @.str.17, ptr null }, %struct.anon.13 { ptr @.str.18, ptr null }, %struct.anon.13 zeroinitializer, %struct.anon.13 zeroinitializer, %struct.anon.13 zeroinitializer, %struct.anon.13 zeroinitializer, %struct.anon.13 zeroinitializer], align 16, !dbg !4741
@.str.1 = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1, !dbg !4685
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to register LED %s: %d\0A\00", align 1, !dbg !4688
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4693
@.str.4 = private unnamed_addr constant [8 x i8] c"numlock\00", align 1, !dbg !4698
@.str.5 = private unnamed_addr constant [12 x i8] c"kbd-numlock\00", align 1, !dbg !4700
@.str.6 = private unnamed_addr constant [9 x i8] c"capslock\00", align 1, !dbg !4703
@.str.7 = private unnamed_addr constant [13 x i8] c"kbd-capslock\00", align 1, !dbg !4708
@.str.8 = private unnamed_addr constant [11 x i8] c"scrolllock\00", align 1, !dbg !4713
@.str.9 = private unnamed_addr constant [15 x i8] c"kbd-scrolllock\00", align 1, !dbg !4718
@.str.10 = private unnamed_addr constant [8 x i8] c"compose\00", align 1, !dbg !4723
@.str.11 = private unnamed_addr constant [5 x i8] c"kana\00", align 1, !dbg !4725
@.str.12 = private unnamed_addr constant [13 x i8] c"kbd-kanalock\00", align 1, !dbg !4727
@.str.13 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1, !dbg !4729
@.str.14 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1, !dbg !4731
@.str.15 = private unnamed_addr constant [5 x i8] c"mute\00", align 1, !dbg !4733
@.str.16 = private unnamed_addr constant [5 x i8] c"misc\00", align 1, !dbg !4735
@.str.17 = private unnamed_addr constant [5 x i8] c"mail\00", align 1, !dbg !4737
@.str.18 = private unnamed_addr constant [9 x i8] c"charging\00", align 1, !dbg !4739
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_input_leds__267_209_input_leds_init6268, ptr @input_leds_exit, ptr @__exitcall_input_leds_exit, ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_input_leds__267_209_input_leds_init6() #0 section ".init.text" align 16 !dbg !4761 {
entry:
  %call = call i32 @input_leds_init() #16, !dbg !4762
  ret i32 %call, !dbg !4762
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @input_leds_init() #0 section ".init.text" align 16 !dbg !4763 {
entry:
  %call = call i32 @input_register_handler(ptr noundef @input_leds_handler) #17, !dbg !4764
  ret i32 %call, !dbg !4765
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @input_leds_exit() #0 section ".exit.text" align 16 !dbg !4766 {
entry:
  call void @input_unregister_handler(ptr noundef @input_leds_handler) #17, !dbg !4767
  ret void, !dbg !4768
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4769 dso_local void @input_unregister_handler(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4772 dso_local i32 @input_register_handler(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_leds_event(ptr noundef %handle, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 16 !dbg !4775 {
entry:
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4777, metadata !DIExpression()), !dbg !4781
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4778, metadata !DIExpression()), !dbg !4782
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !4779, metadata !DIExpression()), !dbg !4783
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4780, metadata !DIExpression()), !dbg !4784
  ret void, !dbg !4785
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @input_leds_connect(ptr noundef %handler, ptr noundef %dev, ptr noundef %id) #2 align 16 !dbg !4786 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %leds = alloca ptr, align 8
  %led = alloca ptr, align 8
  %num_leds = alloca i32, align 4
  %led_code = alloca i32, align 4
  %led_no = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %led68 = alloca ptr, align 8
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !4788, metadata !DIExpression()), !dbg !4809
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4789, metadata !DIExpression()), !dbg !4810
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !4790, metadata !DIExpression()), !dbg !4811
  call void @llvm.lifetime.start.p0(i64 8, ptr %leds) #18, !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %leds, metadata !4791, metadata !DIExpression()), !dbg !4813
  call void @llvm.lifetime.start.p0(i64 8, ptr %led) #18, !dbg !4814
  call void @llvm.dbg.declare(metadata ptr %led, metadata !4799, metadata !DIExpression()), !dbg !4815
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_leds) #18, !dbg !4816
  call void @llvm.dbg.declare(metadata ptr %num_leds, metadata !4800, metadata !DIExpression()), !dbg !4817
  call void @llvm.lifetime.start.p0(i64 4, ptr %led_code) #18, !dbg !4818
  call void @llvm.dbg.declare(metadata ptr %led_code, metadata !4801, metadata !DIExpression()), !dbg !4819
  call void @llvm.lifetime.start.p0(i64 4, ptr %led_no) #18, !dbg !4820
  call void @llvm.dbg.declare(metadata ptr %led_no, metadata !4802, metadata !DIExpression()), !dbg !4821
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #18, !dbg !4822
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4803, metadata !DIExpression()), !dbg !4823
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4824
  %call = call i32 @input_leds_get_count(ptr noundef %0) #17, !dbg !4825
  store i32 %call, ptr %num_leds, align 4, !dbg !4826
  %1 = load i32, ptr %num_leds, align 4, !dbg !4827
  %tobool = icmp ne i32 %1, 0, !dbg !4827
  br i1 %tobool, label %if.end, label %if.then, !dbg !4829

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !4830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4830

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %num_leds, align 4, !dbg !4831
  %conv = zext i32 %2 to i64, !dbg !4831
  %call1 = call i64 @size_mul(i64 noundef %conv, i64 noundef 424) #17, !dbg !4831
  %call2 = call i64 @size_add(i64 noundef 80, i64 noundef %call1) #17, !dbg !4831
  %call3 = call noalias ptr @kzalloc(i64 noundef %call2, i32 noundef 3264) #19, !dbg !4832
  store ptr %call3, ptr %leds, align 8, !dbg !4833
  %3 = load ptr, ptr %leds, align 8, !dbg !4834
  %tobool4 = icmp ne ptr %3, null, !dbg !4834
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4836

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4837

if.end6:                                          ; preds = %if.end
  %4 = load i32, ptr %num_leds, align 4, !dbg !4838
  %5 = load ptr, ptr %leds, align 8, !dbg !4839
  %num_leds7 = getelementptr inbounds %struct.input_leds, ptr %5, i32 0, i32 1, !dbg !4840
  store i32 %4, ptr %num_leds7, align 8, !dbg !4841
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !4842
  %7 = load ptr, ptr %leds, align 8, !dbg !4843
  %handle = getelementptr inbounds %struct.input_leds, ptr %7, i32 0, i32 0, !dbg !4844
  %dev8 = getelementptr inbounds %struct.input_handle, ptr %handle, i32 0, i32 3, !dbg !4845
  store ptr %6, ptr %dev8, align 8, !dbg !4846
  %8 = load ptr, ptr %handler.addr, align 8, !dbg !4847
  %9 = load ptr, ptr %leds, align 8, !dbg !4848
  %handle9 = getelementptr inbounds %struct.input_leds, ptr %9, i32 0, i32 0, !dbg !4849
  %handler10 = getelementptr inbounds %struct.input_handle, ptr %handle9, i32 0, i32 4, !dbg !4850
  store ptr %8, ptr %handler10, align 8, !dbg !4851
  %10 = load ptr, ptr %leds, align 8, !dbg !4852
  %handle11 = getelementptr inbounds %struct.input_leds, ptr %10, i32 0, i32 0, !dbg !4853
  %name = getelementptr inbounds %struct.input_handle, ptr %handle11, i32 0, i32 2, !dbg !4854
  store ptr @.str, ptr %name, align 8, !dbg !4855
  %11 = load ptr, ptr %leds, align 8, !dbg !4856
  %12 = load ptr, ptr %leds, align 8, !dbg !4857
  %handle12 = getelementptr inbounds %struct.input_leds, ptr %12, i32 0, i32 0, !dbg !4858
  %private = getelementptr inbounds %struct.input_handle, ptr %handle12, i32 0, i32 0, !dbg !4859
  store ptr %11, ptr %private, align 8, !dbg !4860
  %13 = load ptr, ptr %leds, align 8, !dbg !4861
  %handle13 = getelementptr inbounds %struct.input_leds, ptr %13, i32 0, i32 0, !dbg !4862
  %call14 = call i32 @input_register_handle(ptr noundef %handle13) #17, !dbg !4863
  store i32 %call14, ptr %error, align 4, !dbg !4864
  %14 = load i32, ptr %error, align 4, !dbg !4865
  %tobool15 = icmp ne i32 %14, 0, !dbg !4865
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4867

if.then16:                                        ; preds = %if.end6
  br label %err_free_mem, !dbg !4868

if.end17:                                         ; preds = %if.end6
  %15 = load ptr, ptr %leds, align 8, !dbg !4869
  %handle18 = getelementptr inbounds %struct.input_leds, ptr %15, i32 0, i32 0, !dbg !4870
  %call19 = call i32 @input_open_device(ptr noundef %handle18) #17, !dbg !4871
  store i32 %call19, ptr %error, align 4, !dbg !4872
  %16 = load i32, ptr %error, align 4, !dbg !4873
  %tobool20 = icmp ne i32 %16, 0, !dbg !4873
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4875

if.then21:                                        ; preds = %if.end17
  br label %err_unregister_handle, !dbg !4876

if.end22:                                         ; preds = %if.end17
  store i32 0, ptr %led_no, align 4, !dbg !4877
  store i32 0, ptr %led_code, align 4, !dbg !4878
  br label %for.cond, !dbg !4878

for.cond:                                         ; preds = %for.inc, %if.end22
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !4880
  %ledbit = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 10, !dbg !4880
  %arraydecay = getelementptr inbounds [1 x i64], ptr %ledbit, i64 0, i64 0, !dbg !4880
  %18 = load i32, ptr %led_code, align 4, !dbg !4880
  %conv23 = zext i32 %18 to i64, !dbg !4880
  %call24 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 16, i64 noundef %conv23) #17, !dbg !4880
  %conv25 = trunc i64 %call24 to i32, !dbg !4880
  store i32 %conv25, ptr %led_code, align 4, !dbg !4880
  %19 = load i32, ptr %led_code, align 4, !dbg !4880
  %cmp = icmp ult i32 %19, 16, !dbg !4880
  br i1 %cmp, label %for.body, label %for.end, !dbg !4878

for.body:                                         ; preds = %for.cond
  %20 = load i32, ptr %led_code, align 4, !dbg !4882
  %idxprom = zext i32 %20 to i64, !dbg !4885
  %arrayidx = getelementptr [16 x %struct.anon.13], ptr @input_led_info, i64 0, i64 %idxprom, !dbg !4885
  %name27 = getelementptr inbounds %struct.anon.13, ptr %arrayidx, i32 0, i32 0, !dbg !4886
  %21 = load ptr, ptr %name27, align 16, !dbg !4886
  %tobool28 = icmp ne ptr %21, null, !dbg !4885
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !4887

if.then29:                                        ; preds = %for.body
  br label %for.inc, !dbg !4888

if.end30:                                         ; preds = %for.body
  %22 = load ptr, ptr %leds, align 8, !dbg !4889
  %leds31 = getelementptr inbounds %struct.input_leds, ptr %22, i32 0, i32 2, !dbg !4890
  %23 = load i32, ptr %led_no, align 4, !dbg !4891
  %idxprom32 = sext i32 %23 to i64, !dbg !4889
  %arrayidx33 = getelementptr [0 x %struct.input_led], ptr %leds31, i64 0, i64 %idxprom32, !dbg !4889
  store ptr %arrayidx33, ptr %led, align 8, !dbg !4892
  %24 = load ptr, ptr %leds, align 8, !dbg !4893
  %handle34 = getelementptr inbounds %struct.input_leds, ptr %24, i32 0, i32 0, !dbg !4894
  %25 = load ptr, ptr %led, align 8, !dbg !4895
  %handle35 = getelementptr inbounds %struct.input_led, ptr %25, i32 0, i32 1, !dbg !4896
  store ptr %handle34, ptr %handle35, align 8, !dbg !4897
  %26 = load i32, ptr %led_code, align 4, !dbg !4898
  %27 = load ptr, ptr %led, align 8, !dbg !4899
  %code = getelementptr inbounds %struct.input_led, ptr %27, i32 0, i32 2, !dbg !4900
  store i32 %26, ptr %code, align 8, !dbg !4901
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !4902
  %dev36 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 40, !dbg !4903
  %call37 = call ptr @dev_name(ptr noundef %dev36) #17, !dbg !4904
  %29 = load i32, ptr %led_code, align 4, !dbg !4905
  %idxprom38 = zext i32 %29 to i64, !dbg !4906
  %arrayidx39 = getelementptr [16 x %struct.anon.13], ptr @input_led_info, i64 0, i64 %idxprom38, !dbg !4906
  %name40 = getelementptr inbounds %struct.anon.13, ptr %arrayidx39, i32 0, i32 0, !dbg !4907
  %30 = load ptr, ptr %name40, align 16, !dbg !4907
  %call41 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.1, ptr noundef %call37, ptr noundef %30) #17, !dbg !4908
  %31 = load ptr, ptr %led, align 8, !dbg !4909
  %cdev = getelementptr inbounds %struct.input_led, ptr %31, i32 0, i32 0, !dbg !4910
  %name42 = getelementptr inbounds %struct.led_classdev, ptr %cdev, i32 0, i32 0, !dbg !4911
  store ptr %call41, ptr %name42, align 8, !dbg !4912
  %32 = load ptr, ptr %led, align 8, !dbg !4913
  %cdev43 = getelementptr inbounds %struct.input_led, ptr %32, i32 0, i32 0, !dbg !4915
  %name44 = getelementptr inbounds %struct.led_classdev, ptr %cdev43, i32 0, i32 0, !dbg !4916
  %33 = load ptr, ptr %name44, align 8, !dbg !4916
  %tobool45 = icmp ne ptr %33, null, !dbg !4913
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !4917

if.then46:                                        ; preds = %if.end30
  store i32 -12, ptr %error, align 4, !dbg !4918
  br label %err_unregister_leds, !dbg !4920

if.end47:                                         ; preds = %if.end30
  %34 = load ptr, ptr %led, align 8, !dbg !4921
  %cdev48 = getelementptr inbounds %struct.input_led, ptr %34, i32 0, i32 0, !dbg !4922
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %cdev48, i32 0, i32 2, !dbg !4923
  store i32 1, ptr %max_brightness, align 4, !dbg !4924
  %35 = load ptr, ptr %led, align 8, !dbg !4925
  %cdev49 = getelementptr inbounds %struct.input_led, ptr %35, i32 0, i32 0, !dbg !4926
  %brightness_get = getelementptr inbounds %struct.led_classdev, ptr %cdev49, i32 0, i32 8, !dbg !4927
  store ptr @input_leds_brightness_get, ptr %brightness_get, align 8, !dbg !4928
  %36 = load ptr, ptr %led, align 8, !dbg !4929
  %cdev50 = getelementptr inbounds %struct.input_led, ptr %36, i32 0, i32 0, !dbg !4930
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %cdev50, i32 0, i32 6, !dbg !4931
  store ptr @input_leds_brightness_set, ptr %brightness_set, align 8, !dbg !4932
  %37 = load i32, ptr %led_code, align 4, !dbg !4933
  %idxprom51 = zext i32 %37 to i64, !dbg !4934
  %arrayidx52 = getelementptr [16 x %struct.anon.13], ptr @input_led_info, i64 0, i64 %idxprom51, !dbg !4934
  %trigger = getelementptr inbounds %struct.anon.13, ptr %arrayidx52, i32 0, i32 1, !dbg !4935
  %38 = load ptr, ptr %trigger, align 8, !dbg !4935
  %39 = load ptr, ptr %led, align 8, !dbg !4936
  %cdev53 = getelementptr inbounds %struct.input_led, ptr %39, i32 0, i32 0, !dbg !4937
  %default_trigger = getelementptr inbounds %struct.led_classdev, ptr %cdev53, i32 0, i32 15, !dbg !4938
  store ptr %38, ptr %default_trigger, align 8, !dbg !4939
  %40 = load ptr, ptr %dev.addr, align 8, !dbg !4940
  %dev54 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 40, !dbg !4941
  %41 = load ptr, ptr %led, align 8, !dbg !4942
  %cdev55 = getelementptr inbounds %struct.input_led, ptr %41, i32 0, i32 0, !dbg !4943
  %call56 = call i32 @led_classdev_register(ptr noundef %dev54, ptr noundef %cdev55) #17, !dbg !4944
  store i32 %call56, ptr %error, align 4, !dbg !4945
  %42 = load i32, ptr %error, align 4, !dbg !4946
  %tobool57 = icmp ne i32 %42, 0, !dbg !4946
  br i1 %tobool57, label %if.then58, label %if.end64, !dbg !4948

if.then58:                                        ; preds = %if.end47
  br label %do.body, !dbg !4949

do.body:                                          ; preds = %if.then58
  br label %do.cond, !dbg !4952

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4952

do.end:                                           ; preds = %do.cond
  %43 = load ptr, ptr %dev.addr, align 8, !dbg !4949
  %dev59 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 40, !dbg !4949
  %44 = load ptr, ptr %led, align 8, !dbg !4949
  %cdev60 = getelementptr inbounds %struct.input_led, ptr %44, i32 0, i32 0, !dbg !4949
  %name61 = getelementptr inbounds %struct.led_classdev, ptr %cdev60, i32 0, i32 0, !dbg !4949
  %45 = load ptr, ptr %name61, align 8, !dbg !4949
  %46 = load i32, ptr %error, align 4, !dbg !4949
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef @.str.2, ptr noundef %45, i32 noundef %46) #16, !dbg !4949
  %47 = load ptr, ptr %led, align 8, !dbg !4954
  %cdev62 = getelementptr inbounds %struct.input_led, ptr %47, i32 0, i32 0, !dbg !4955
  %name63 = getelementptr inbounds %struct.led_classdev, ptr %cdev62, i32 0, i32 0, !dbg !4956
  %48 = load ptr, ptr %name63, align 8, !dbg !4956
  call void @kfree(ptr noundef %48) #17, !dbg !4957
  br label %err_unregister_leds, !dbg !4958

if.end64:                                         ; preds = %if.end47
  %49 = load i32, ptr %led_no, align 4, !dbg !4959
  %inc = add i32 %49, 1, !dbg !4959
  store i32 %inc, ptr %led_no, align 4, !dbg !4959
  br label %for.inc, !dbg !4960

for.inc:                                          ; preds = %if.end64, %if.then29
  %50 = load i32, ptr %led_code, align 4, !dbg !4880
  %inc65 = add i32 %50, 1, !dbg !4880
  store i32 %inc65, ptr %led_code, align 4, !dbg !4880
  br label %for.cond, !dbg !4880, !llvm.loop !4961

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4965

err_unregister_leds:                              ; preds = %do.end, %if.then46
  call void @llvm.dbg.label(metadata !4804), !dbg !4966
  br label %while.cond, !dbg !4967

while.cond:                                       ; preds = %while.body, %err_unregister_leds
  %51 = load i32, ptr %led_no, align 4, !dbg !4968
  %dec = add i32 %51, -1, !dbg !4968
  store i32 %dec, ptr %led_no, align 4, !dbg !4968
  %cmp66 = icmp sge i32 %dec, 0, !dbg !4969
  br i1 %cmp66, label %while.body, label %while.end, !dbg !4967

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %led68) #18, !dbg !4970
  call void @llvm.dbg.declare(metadata ptr %led68, metadata !4805, metadata !DIExpression()), !dbg !4971
  %52 = load ptr, ptr %leds, align 8, !dbg !4972
  %leds69 = getelementptr inbounds %struct.input_leds, ptr %52, i32 0, i32 2, !dbg !4973
  %53 = load i32, ptr %led_no, align 4, !dbg !4974
  %idxprom70 = sext i32 %53 to i64, !dbg !4972
  %arrayidx71 = getelementptr [0 x %struct.input_led], ptr %leds69, i64 0, i64 %idxprom70, !dbg !4972
  store ptr %arrayidx71, ptr %led68, align 8, !dbg !4971
  %54 = load ptr, ptr %led68, align 8, !dbg !4975
  %cdev72 = getelementptr inbounds %struct.input_led, ptr %54, i32 0, i32 0, !dbg !4976
  call void @led_classdev_unregister(ptr noundef %cdev72) #17, !dbg !4977
  %55 = load ptr, ptr %led68, align 8, !dbg !4978
  %cdev73 = getelementptr inbounds %struct.input_led, ptr %55, i32 0, i32 0, !dbg !4979
  %name74 = getelementptr inbounds %struct.led_classdev, ptr %cdev73, i32 0, i32 0, !dbg !4980
  %56 = load ptr, ptr %name74, align 8, !dbg !4980
  call void @kfree(ptr noundef %56) #17, !dbg !4981
  call void @llvm.lifetime.end.p0(i64 8, ptr %led68) #18, !dbg !4982
  br label %while.cond, !dbg !4967, !llvm.loop !4983

while.end:                                        ; preds = %while.cond
  %57 = load ptr, ptr %leds, align 8, !dbg !4984
  %handle75 = getelementptr inbounds %struct.input_leds, ptr %57, i32 0, i32 0, !dbg !4985
  call void @input_close_device(ptr noundef %handle75) #17, !dbg !4986
  br label %err_unregister_handle, !dbg !4986

err_unregister_handle:                            ; preds = %while.end, %if.then21
  call void @llvm.dbg.label(metadata !4807), !dbg !4987
  %58 = load ptr, ptr %leds, align 8, !dbg !4988
  %handle76 = getelementptr inbounds %struct.input_leds, ptr %58, i32 0, i32 0, !dbg !4989
  call void @input_unregister_handle(ptr noundef %handle76) #17, !dbg !4990
  br label %err_free_mem, !dbg !4990

err_free_mem:                                     ; preds = %err_unregister_handle, %if.then16
  call void @llvm.dbg.label(metadata !4808), !dbg !4991
  %59 = load ptr, ptr %leds, align 8, !dbg !4992
  call void @kfree(ptr noundef %59) #17, !dbg !4993
  %60 = load i32, ptr %error, align 4, !dbg !4994
  store i32 %60, ptr %retval, align 4, !dbg !4995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4995

cleanup:                                          ; preds = %err_free_mem, %for.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #18, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 4, ptr %led_no) #18, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 4, ptr %led_code) #18, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_leds) #18, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 8, ptr %led) #18, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 8, ptr %leds) #18, !dbg !4996
  %61 = load i32, ptr %retval, align 4, !dbg !4996
  ret i32 %61, !dbg !4996
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_leds_disconnect(ptr noundef %handle) #2 align 16 !dbg !4997 {
entry:
  %handle.addr = alloca ptr, align 8
  %leds = alloca ptr, align 8
  %i = alloca i32, align 4
  %led = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4999, metadata !DIExpression()), !dbg !5006
  call void @llvm.lifetime.start.p0(i64 8, ptr %leds) #18, !dbg !5007
  call void @llvm.dbg.declare(metadata ptr %leds, metadata !5000, metadata !DIExpression()), !dbg !5008
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !5009
  %private = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 0, !dbg !5010
  %1 = load ptr, ptr %private, align 8, !dbg !5010
  store ptr %1, ptr %leds, align 8, !dbg !5008
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5001, metadata !DIExpression()), !dbg !5012
  store i32 0, ptr %i, align 4, !dbg !5013
  br label %for.cond, !dbg !5014

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !5015
  %3 = load ptr, ptr %leds, align 8, !dbg !5016
  %num_leds = getelementptr inbounds %struct.input_leds, ptr %3, i32 0, i32 1, !dbg !5017
  %4 = load i32, ptr %num_leds, align 8, !dbg !5017
  %cmp = icmp ult i32 %2, %4, !dbg !5018
  br i1 %cmp, label %for.body, label %for.end, !dbg !5019

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %led) #18, !dbg !5020
  call void @llvm.dbg.declare(metadata ptr %led, metadata !5002, metadata !DIExpression()), !dbg !5021
  %5 = load ptr, ptr %leds, align 8, !dbg !5022
  %leds1 = getelementptr inbounds %struct.input_leds, ptr %5, i32 0, i32 2, !dbg !5023
  %6 = load i32, ptr %i, align 4, !dbg !5024
  %idxprom = sext i32 %6 to i64, !dbg !5022
  %arrayidx = getelementptr [0 x %struct.input_led], ptr %leds1, i64 0, i64 %idxprom, !dbg !5022
  store ptr %arrayidx, ptr %led, align 8, !dbg !5021
  %7 = load ptr, ptr %led, align 8, !dbg !5025
  %cdev = getelementptr inbounds %struct.input_led, ptr %7, i32 0, i32 0, !dbg !5026
  call void @led_classdev_unregister(ptr noundef %cdev) #17, !dbg !5027
  %8 = load ptr, ptr %led, align 8, !dbg !5028
  %cdev2 = getelementptr inbounds %struct.input_led, ptr %8, i32 0, i32 0, !dbg !5029
  %name = getelementptr inbounds %struct.led_classdev, ptr %cdev2, i32 0, i32 0, !dbg !5030
  %9 = load ptr, ptr %name, align 8, !dbg !5030
  call void @kfree(ptr noundef %9) #17, !dbg !5031
  call void @llvm.lifetime.end.p0(i64 8, ptr %led) #18, !dbg !5032
  br label %for.inc, !dbg !5033

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !5034
  %inc = add i32 %10, 1, !dbg !5034
  store i32 %inc, ptr %i, align 4, !dbg !5034
  br label %for.cond, !dbg !5035, !llvm.loop !5036

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %handle.addr, align 8, !dbg !5038
  call void @input_close_device(ptr noundef %11) #17, !dbg !5039
  %12 = load ptr, ptr %handle.addr, align 8, !dbg !5040
  call void @input_unregister_handle(ptr noundef %12) #17, !dbg !5041
  %13 = load ptr, ptr %leds, align 8, !dbg !5042
  call void @kfree(ptr noundef %13) #17, !dbg !5043
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 8, ptr %leds) #18, !dbg !5044
  ret void, !dbg !5044
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @input_leds_get_count(ptr noundef %dev) #2 align 16 !dbg !5045 {
entry:
  %dev.addr = alloca ptr, align 8
  %led_code = alloca i32, align 4
  %count = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5047, metadata !DIExpression()), !dbg !5050
  call void @llvm.lifetime.start.p0(i64 4, ptr %led_code) #18, !dbg !5051
  call void @llvm.dbg.declare(metadata ptr %led_code, metadata !5048, metadata !DIExpression()), !dbg !5052
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #18, !dbg !5053
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5049, metadata !DIExpression()), !dbg !5054
  store i32 0, ptr %count, align 4, !dbg !5054
  store i32 0, ptr %led_code, align 4, !dbg !5055
  br label %for.cond, !dbg !5055

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5057
  %ledbit = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 10, !dbg !5057
  %arraydecay = getelementptr inbounds [1 x i64], ptr %ledbit, i64 0, i64 0, !dbg !5057
  %1 = load i32, ptr %led_code, align 4, !dbg !5057
  %conv = zext i32 %1 to i64, !dbg !5057
  %call = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 16, i64 noundef %conv) #17, !dbg !5057
  %conv1 = trunc i64 %call to i32, !dbg !5057
  store i32 %conv1, ptr %led_code, align 4, !dbg !5057
  %2 = load i32, ptr %led_code, align 4, !dbg !5057
  %cmp = icmp ult i32 %2, 16, !dbg !5057
  br i1 %cmp, label %for.body, label %for.end, !dbg !5055

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %led_code, align 4, !dbg !5059
  %idxprom = zext i32 %3 to i64, !dbg !5061
  %arrayidx = getelementptr [16 x %struct.anon.13], ptr @input_led_info, i64 0, i64 %idxprom, !dbg !5061
  %name = getelementptr inbounds %struct.anon.13, ptr %arrayidx, i32 0, i32 0, !dbg !5062
  %4 = load ptr, ptr %name, align 16, !dbg !5062
  %tobool = icmp ne ptr %4, null, !dbg !5061
  br i1 %tobool, label %if.then, label %if.end, !dbg !5063

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %count, align 4, !dbg !5064
  %inc = add i32 %5, 1, !dbg !5064
  store i32 %inc, ptr %count, align 4, !dbg !5064
  br label %if.end, !dbg !5065

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5062

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %led_code, align 4, !dbg !5057
  %inc3 = add i32 %6, 1, !dbg !5057
  store i32 %inc3, ptr %led_code, align 4, !dbg !5057
  br label %for.cond, !dbg !5057, !llvm.loop !5066

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %count, align 4, !dbg !5068
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #18, !dbg !5069
  call void @llvm.lifetime.end.p0(i64 4, ptr %led_code) #18, !dbg !5069
  ret i32 %7, !dbg !5070
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5071 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5075, metadata !DIExpression()), !dbg !5077
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5076, metadata !DIExpression()), !dbg !5078
  %0 = load i64, ptr %size.addr, align 8, !dbg !5079
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5080
  %or = or i32 %1, 256, !dbg !5081
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5082
  ret ptr %call, !dbg !5083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #6 align 16 !dbg !5084 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !5089, metadata !DIExpression()), !dbg !5092
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !5090, metadata !DIExpression()), !dbg !5093
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !5094
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5091, metadata !DIExpression()), !dbg !5095
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !5096
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !5096
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !5096
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5096
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5096
  store i64 %4, ptr %bytes, align 8, !dbg !5096
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !5096
  br i1 %call, label %if.then, label %if.end, !dbg !5098

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5099

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5100
  store i64 %5, ptr %retval, align 8, !dbg !5101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5101

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !5102
  %6 = load i64, ptr %retval, align 8, !dbg !5102
  ret i64 %6, !dbg !5102
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #6 align 16 !dbg !5103 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !5105, metadata !DIExpression()), !dbg !5108
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !5106, metadata !DIExpression()), !dbg !5109
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !5110
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5107, metadata !DIExpression()), !dbg !5111
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !5112
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !5112
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5112
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5112
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5112
  store i64 %4, ptr %bytes, align 8, !dbg !5112
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !5112
  br i1 %call, label %if.then, label %if.end, !dbg !5114

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5115

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5116
  store i64 %5, ptr %retval, align 8, !dbg !5117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5117

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !5118
  %6 = load i64, ptr %retval, align 8, !dbg !5118
  ret i64 %6, !dbg !5118
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5119 dso_local i32 @input_register_handle(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5122 dso_local i32 @input_open_device(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #6 align 16 !dbg !5123 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5128, metadata !DIExpression()), !dbg !5134
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5129, metadata !DIExpression()), !dbg !5135
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5130, metadata !DIExpression()), !dbg !5136
  %0 = load i64, ptr %size.addr, align 8, !dbg !5137
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5137
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !5137

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5137
  %cmp = icmp ule i64 %2, 64, !dbg !5137
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !5137

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5137
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5137
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !5138

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !5139
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5131, metadata !DIExpression()), !dbg !5140
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5141
  %5 = load i64, ptr %size.addr, align 8, !dbg !5141
  %cmp3 = icmp uge i64 %4, %5, !dbg !5141
  %lnot = xor i1 %cmp3, true, !dbg !5141
  %lnot4 = xor i1 %lnot, true, !dbg !5141
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5141
  %conv = sext i32 %lnot.ext to i64, !dbg !5141
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5141
  %tobool = icmp ne i64 %expval, 0, !dbg !5141
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5143

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5144
  store i64 %6, ptr %retval, align 8, !dbg !5145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5145

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !5146
  %8 = load i64, ptr %7, align 8, !dbg !5147
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5148
  %shl = shl i64 1, %9, !dbg !5148
  %sub = sub i64 -1, %shl, !dbg !5148
  %add = add i64 %sub, 1, !dbg !5148
  %10 = load i64, ptr %size.addr, align 8, !dbg !5148
  %sub6 = sub i64 %10, 1, !dbg !5148
  %sub7 = sub i64 63, %sub6, !dbg !5148
  %shr = lshr i64 -1, %sub7, !dbg !5148
  %and = and i64 %add, %shr, !dbg !5148
  %add8 = add i64 0, %and, !dbg !5148
  %and9 = and i64 %8, %add8, !dbg !5149
  store i64 %and9, ptr %val, align 8, !dbg !5150
  %11 = load i64, ptr %val, align 8, !dbg !5151
  %tobool10 = icmp ne i64 %11, 0, !dbg !5151
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !5151

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !5152
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5152
  br i1 %13, label %cond.true11, label %cond.false, !dbg !5152

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !5152
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !5152
  %cast = trunc i64 %15 to i32, !dbg !5152
  %conv12 = sext i32 %cast to i64, !dbg !5152
  br label %cond.end, !dbg !5152

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !5152
  %call = call i64 @variable__ffs(i64 noundef %16) #17, !dbg !5152
  br label %cond.end, !dbg !5152

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !5152
  br label %cond.end14, !dbg !5151

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !5153
  br label %cond.end14, !dbg !5151

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !5151
  store i64 %cond15, ptr %retval, align 8, !dbg !5154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5154

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !5155
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !5156
  %19 = load i64, ptr %size.addr, align 8, !dbg !5157
  %20 = load i64, ptr %offset.addr, align 8, !dbg !5158
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #17, !dbg !5159
  store i64 %call17, ptr %retval, align 8, !dbg !5160
  br label %return, !dbg !5160

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !5161
  ret i64 %21, !dbg !5161
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5162 dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #6 align 16 !dbg !5166 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5172
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !5174
  %1 = load ptr, ptr %init_name, align 8, !dbg !5174
  %tobool = icmp ne ptr %1, null, !dbg !5172
  br i1 %tobool, label %if.then, label %if.end, !dbg !5175

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5176
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !5177
  %3 = load ptr, ptr %init_name1, align 8, !dbg !5177
  store ptr %3, ptr %retval, align 8, !dbg !5178
  br label %return, !dbg !5178

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5179
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !5180
  %call = call ptr @kobject_name(ptr noundef %kobj) #17, !dbg !5181
  store ptr %call, ptr %retval, align 8, !dbg !5182
  br label %return, !dbg !5182

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !5183
  ret ptr %5, !dbg !5183
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @input_leds_brightness_get(ptr noundef %cdev) #2 align 16 !dbg !5184 {
entry:
  %cdev.addr = alloca ptr, align 8
  %led = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %input = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !5186, metadata !DIExpression()), !dbg !5191
  call void @llvm.lifetime.start.p0(i64 8, ptr %led) #18, !dbg !5192
  call void @llvm.dbg.declare(metadata ptr %led, metadata !5187, metadata !DIExpression()), !dbg !5193
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5194
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5188, metadata !DIExpression()), !dbg !5194
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !5194
  store ptr %0, ptr %__mptr, align 8, !dbg !5194
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5194
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5194
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5194
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5195
  %2 = load ptr, ptr %tmp, align 8, !dbg !5194
  store ptr %2, ptr %led, align 8, !dbg !5193
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #18, !dbg !5196
  call void @llvm.dbg.declare(metadata ptr %input, metadata !5190, metadata !DIExpression()), !dbg !5197
  %3 = load ptr, ptr %led, align 8, !dbg !5198
  %handle = getelementptr inbounds %struct.input_led, ptr %3, i32 0, i32 1, !dbg !5199
  %4 = load ptr, ptr %handle, align 8, !dbg !5199
  %dev = getelementptr inbounds %struct.input_handle, ptr %4, i32 0, i32 3, !dbg !5200
  %5 = load ptr, ptr %dev, align 8, !dbg !5200
  store ptr %5, ptr %input, align 8, !dbg !5197
  %6 = load ptr, ptr %led, align 8, !dbg !5201
  %code = getelementptr inbounds %struct.input_led, ptr %6, i32 0, i32 2, !dbg !5201
  %7 = load i32, ptr %code, align 8, !dbg !5201
  %8 = call i1 @llvm.is.constant.i32(i32 %7), !dbg !5201
  br i1 %8, label %land.lhs.true, label %cond.false, !dbg !5201

land.lhs.true:                                    ; preds = %entry
  %9 = load ptr, ptr %input, align 8, !dbg !5201
  %led1 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 28, !dbg !5201
  %arraydecay = getelementptr inbounds [1 x i64], ptr %led1, i64 0, i64 0, !dbg !5201
  %10 = ptrtoint ptr %arraydecay to i64, !dbg !5201
  %cmp = icmp ne i64 %10, 0, !dbg !5201
  %conv = zext i1 %cmp to i32, !dbg !5201
  %11 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5201
  br i1 %11, label %land.lhs.true2, label %cond.false, !dbg !5201

land.lhs.true2:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %input, align 8, !dbg !5201
  %led3 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 28, !dbg !5201
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %led3, i64 0, i64 0, !dbg !5201
  %13 = ptrtoint ptr %arraydecay4 to i64, !dbg !5201
  %cmp5 = icmp ne i64 %13, 0, !dbg !5201
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !5201

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %14 = load ptr, ptr %input, align 8, !dbg !5201
  %led8 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 28, !dbg !5201
  %arraydecay9 = getelementptr inbounds [1 x i64], ptr %led8, i64 0, i64 0, !dbg !5201
  %15 = load i64, ptr %arraydecay9, align 8, !dbg !5201
  %16 = call i1 @llvm.is.constant.i64(i64 %15), !dbg !5201
  br i1 %16, label %cond.true, label %cond.false, !dbg !5201

cond.true:                                        ; preds = %land.lhs.true7
  %17 = load ptr, ptr %led, align 8, !dbg !5201
  %code10 = getelementptr inbounds %struct.input_led, ptr %17, i32 0, i32 2, !dbg !5201
  %18 = load i32, ptr %code10, align 8, !dbg !5201
  %conv11 = zext i32 %18 to i64, !dbg !5201
  %19 = load ptr, ptr %input, align 8, !dbg !5201
  %led12 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 28, !dbg !5201
  %arraydecay13 = getelementptr inbounds [1 x i64], ptr %led12, i64 0, i64 0, !dbg !5201
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv11, ptr noundef %arraydecay13) #17, !dbg !5201
  br i1 %call, label %cond.true21, label %cond.false22, !dbg !5201

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true2, %land.lhs.true, %entry
  %20 = load ptr, ptr %led, align 8, !dbg !5201
  %code15 = getelementptr inbounds %struct.input_led, ptr %20, i32 0, i32 2, !dbg !5201
  %21 = load i32, ptr %code15, align 8, !dbg !5201
  %conv16 = zext i32 %21 to i64, !dbg !5201
  %22 = load ptr, ptr %input, align 8, !dbg !5201
  %led17 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 28, !dbg !5201
  %arraydecay18 = getelementptr inbounds [1 x i64], ptr %led17, i64 0, i64 0, !dbg !5201
  %call19 = call zeroext i1 @_test_bit(i64 noundef %conv16, ptr noundef %arraydecay18) #17, !dbg !5201
  br i1 %call19, label %cond.true21, label %cond.false22, !dbg !5201

cond.true21:                                      ; preds = %cond.false, %cond.true
  %23 = load ptr, ptr %cdev.addr, align 8, !dbg !5202
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %23, i32 0, i32 2, !dbg !5203
  %24 = load i32, ptr %max_brightness, align 4, !dbg !5203
  br label %cond.end, !dbg !5201

cond.false22:                                     ; preds = %cond.false, %cond.true
  br label %cond.end, !dbg !5201

cond.end:                                         ; preds = %cond.false22, %cond.true21
  %cond = phi i32 [ %24, %cond.true21 ], [ 0, %cond.false22 ], !dbg !5201
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #18, !dbg !5204
  call void @llvm.lifetime.end.p0(i64 8, ptr %led) #18, !dbg !5204
  ret i32 %cond, !dbg !5205
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_leds_brightness_set(ptr noundef %cdev, i32 noundef %brightness) #2 align 16 !dbg !5206 {
entry:
  %cdev.addr = alloca ptr, align 8
  %brightness.addr = alloca i32, align 4
  %led = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !5208, metadata !DIExpression()), !dbg !5213
  store i32 %brightness, ptr %brightness.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %brightness.addr, metadata !5209, metadata !DIExpression()), !dbg !5214
  call void @llvm.lifetime.start.p0(i64 8, ptr %led) #18, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %led, metadata !5210, metadata !DIExpression()), !dbg !5216
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5217
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5211, metadata !DIExpression()), !dbg !5217
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !5217
  store ptr %0, ptr %__mptr, align 8, !dbg !5217
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5217
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5217
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5217
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5218
  %2 = load ptr, ptr %tmp, align 8, !dbg !5217
  store ptr %2, ptr %led, align 8, !dbg !5216
  %3 = load ptr, ptr %led, align 8, !dbg !5219
  %handle = getelementptr inbounds %struct.input_led, ptr %3, i32 0, i32 1, !dbg !5220
  %4 = load ptr, ptr %handle, align 8, !dbg !5220
  %5 = load ptr, ptr %led, align 8, !dbg !5221
  %code = getelementptr inbounds %struct.input_led, ptr %5, i32 0, i32 2, !dbg !5222
  %6 = load i32, ptr %code, align 8, !dbg !5222
  %7 = load i32, ptr %brightness.addr, align 4, !dbg !5223
  %tobool = icmp ne i32 %7, 0, !dbg !5224
  %lnot = xor i1 %tobool, true, !dbg !5224
  %lnot1 = xor i1 %lnot, true, !dbg !5225
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5225
  call void @input_inject_event(ptr noundef %4, i32 noundef 17, i32 noundef %6, i32 noundef %lnot.ext) #17, !dbg !5226
  call void @llvm.lifetime.end.p0(i64 8, ptr %led) #18, !dbg !5227
  ret void, !dbg !5227
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @led_classdev_register(ptr noundef %parent, ptr noundef %led_cdev) #6 align 16 !dbg !5228 {
entry:
  %parent.addr = alloca ptr, align 8
  %led_cdev.addr = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5232, metadata !DIExpression()), !dbg !5234
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !5233, metadata !DIExpression()), !dbg !5235
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5236
  %1 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5237
  %call = call i32 @led_classdev_register_ext(ptr noundef %0, ptr noundef %1, ptr noundef null) #17, !dbg !5238
  ret i32 %call, !dbg !5239
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5240 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5244 dso_local void @kfree(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5247 dso_local void @led_classdev_unregister(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5248 dso_local void @input_close_device(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5249 dso_local void @input_unregister_handle(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5250 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5252, metadata !DIExpression()), !dbg !5257
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5253, metadata !DIExpression()), !dbg !5258
  %0 = load i64, ptr %size.addr, align 8, !dbg !5259
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5260
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5261

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5262
  %tobool = icmp ne i64 %2, 0, !dbg !5262
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5263

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !5264
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5254, metadata !DIExpression()), !dbg !5265
  %3 = load i64, ptr %size.addr, align 8, !dbg !5266
  %cmp = icmp ugt i64 %3, 8192, !dbg !5268
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5269

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5270
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5271
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !5272
  store ptr %call, ptr %retval, align 8, !dbg !5273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5273

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5274
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5274
  store i32 %call2, ptr %index, align 4, !dbg !5275
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5276
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5277
  %9 = ptrtoint ptr %8 to i64, !dbg !5277
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5278
  %idxprom = zext i32 %call3 to i64, !dbg !5279
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5279
  %10 = load i32, ptr %index, align 4, !dbg !5280
  %idxprom4 = zext i32 %10 to i64, !dbg !5279
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5279
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5279
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5281
  %13 = load i64, ptr %size.addr, align 8, !dbg !5282
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5283
  store ptr %call6, ptr %retval, align 8, !dbg !5284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5284

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !5285
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5286
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5287
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !5288
  store ptr %call8, ptr %retval, align 8, !dbg !5289
  br label %return, !dbg !5289

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5290
  ret ptr %16, !dbg !5290
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5291 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !5292 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5296, metadata !DIExpression()), !dbg !5298
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5297, metadata !DIExpression()), !dbg !5299
  %0 = load i64, ptr %size.addr, align 8, !dbg !5300
  %tobool = icmp ne i64 %0, 0, !dbg !5300
  br i1 %tobool, label %if.end, label %if.then, !dbg !5302

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5303
  br label %return, !dbg !5303

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5304
  %cmp = icmp ule i64 %1, 8, !dbg !5306
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5307

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5308
  br label %return, !dbg !5308

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5309
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5311
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5312

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5313
  %cmp4 = icmp ule i64 %3, 96, !dbg !5314
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5315

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5316
  br label %return, !dbg !5316

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5317
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5319
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5320

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5321
  %cmp9 = icmp ule i64 %5, 192, !dbg !5322
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5323

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5324
  br label %return, !dbg !5324

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5325
  %cmp12 = icmp ule i64 %6, 8, !dbg !5327
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5328

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5329
  br label %return, !dbg !5329

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5330
  %cmp15 = icmp ule i64 %7, 16, !dbg !5332
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5333

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5334
  br label %return, !dbg !5334

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5335
  %cmp18 = icmp ule i64 %8, 32, !dbg !5337
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5338

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5339
  br label %return, !dbg !5339

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5340
  %cmp21 = icmp ule i64 %9, 64, !dbg !5342
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5343

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5344
  br label %return, !dbg !5344

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5345
  %cmp24 = icmp ule i64 %10, 128, !dbg !5347
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5348

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5349
  br label %return, !dbg !5349

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5350
  %cmp27 = icmp ule i64 %11, 256, !dbg !5352
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5353

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5354
  br label %return, !dbg !5354

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5355
  %cmp30 = icmp ule i64 %12, 512, !dbg !5357
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5358

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5359
  br label %return, !dbg !5359

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5360
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5362
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5363

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5364
  br label %return, !dbg !5364

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5365
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5367
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5368

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5369
  br label %return, !dbg !5369

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5370
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5372
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5373

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5374
  br label %return, !dbg !5374

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5375
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5377
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5378

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5379
  br label %return, !dbg !5379

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5380
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5382
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5383

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5384
  br label %return, !dbg !5384

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5385
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5387
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5388

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5389
  br label %return, !dbg !5389

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5390
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5392
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5393

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5394
  br label %return, !dbg !5394

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5395
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5397
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5398

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5399
  br label %return, !dbg !5399

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5400
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5402
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5403

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5404
  br label %return, !dbg !5404

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5405
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5407
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5408

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5409
  br label %return, !dbg !5409

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5410
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5412
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5413

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5414
  br label %return, !dbg !5414

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5415
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5417
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5418

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5419
  br label %return, !dbg !5419

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5420, !range !5422, !noundef !912
  %tobool69 = trunc i8 %25 to i1, !dbg !5420
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5423

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5424

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !5425, !srcloc !5428
  unreachable, !dbg !5425

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5429

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5430

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5431

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5433

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5431

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #18, !dbg !5435, !srcloc !5437
  br label %do.end75, !dbg !5435

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5431

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5438
  br label %return, !dbg !5438

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5439
  ret i32 %26, !dbg !5439
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5440 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !5445 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5449, metadata !DIExpression()), !dbg !5451
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5450, metadata !DIExpression()), !dbg !5452
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5453
  %and = and i32 %0, 17, !dbg !5453
  %cmp = icmp eq i32 %and, 0, !dbg !5453
  %lnot = xor i1 %cmp, true, !dbg !5453
  %lnot1 = xor i1 %lnot, true, !dbg !5453
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5453
  %conv = sext i32 %lnot.ext to i64, !dbg !5453
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5453
  %tobool = icmp ne i64 %expval, 0, !dbg !5453
  br i1 %tobool, label %if.then, label %if.end, !dbg !5455

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5456
  br label %return, !dbg !5456

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5457
  %and2 = and i32 %1, 1, !dbg !5459
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5459
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5460

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5461
  br label %return, !dbg !5461

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5462
  br label %return, !dbg !5462

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5464
  ret i32 %2, !dbg !5464
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5465 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5466 dso_local void @__compiletime_assert_117() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !5467 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5471, metadata !DIExpression()), !dbg !5472
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5473, !range !5422, !noundef !912
  %tobool = trunc i8 %0 to i1, !dbg !5473
  %lnot = xor i1 %tobool, true, !dbg !5473
  %lnot1 = xor i1 %lnot, true, !dbg !5473
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5473
  %conv = sext i32 %lnot.ext to i64, !dbg !5473
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5473
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5473
  ret i1 %tobool2, !dbg !5474
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #11 align 16 !dbg !5475 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !5480, metadata !DIExpression()), !dbg !5481
  %0 = load i64, ptr %word.addr, align 8, !dbg !5482
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #22, !dbg !5483, !srcloc !5484
  store i64 %1, ptr %word.addr, align 8, !dbg !5483
  %2 = load i64, ptr %word.addr, align 8, !dbg !5485
  ret i64 %2, !dbg !5486
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5487 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #6 align 16 !dbg !5488 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5490, metadata !DIExpression()), !dbg !5491
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5492
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !5493
  %1 = load ptr, ptr %name, align 8, !dbg !5493
  ret ptr %1, !dbg !5494
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !5495 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5503, metadata !DIExpression()), !dbg !5508
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5504, metadata !DIExpression()), !dbg !5509
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !5510
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5505, metadata !DIExpression()), !dbg !5511
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5512
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5513
  %div = udiv i64 %1, 64, !dbg !5513
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5514
  store ptr %add.ptr, ptr %p, align 8, !dbg !5511
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !5515
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5506, metadata !DIExpression()), !dbg !5516
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5517
  %rem = urem i64 %2, 64, !dbg !5517
  %shl = shl i64 1, %rem, !dbg !5517
  store i64 %shl, ptr %mask, align 8, !dbg !5516
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !5518
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5507, metadata !DIExpression()), !dbg !5519
  %3 = load ptr, ptr %p, align 8, !dbg !5520
  %4 = load i64, ptr %3, align 8, !dbg !5521
  store i64 %4, ptr %val, align 8, !dbg !5519
  %5 = load i64, ptr %val, align 8, !dbg !5522
  %6 = load i64, ptr %mask, align 8, !dbg !5523
  %and = and i64 %5, %6, !dbg !5524
  %tobool = icmp ne i64 %and, 0, !dbg !5525
  %lnot = xor i1 %tobool, true, !dbg !5525
  %lnot1 = xor i1 %lnot, true, !dbg !5526
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !5527
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !5527
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !5527
  ret i1 %lnot1, !dbg !5528
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !5529 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5532, metadata !DIExpression()), !dbg !5534
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5533, metadata !DIExpression()), !dbg !5535
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5536
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5537
  %div = udiv i64 %1, 64, !dbg !5537
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5538
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5539
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5540
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5541
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5542
  ret i1 %call, !dbg !5543
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !5544 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5552, metadata !DIExpression()), !dbg !5554
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5553, metadata !DIExpression()), !dbg !5555
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5556
  %1 = load i64, ptr %size.addr, align 8, !dbg !5557
  %conv = trunc i64 %1 to i32, !dbg !5557
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !5558
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5559
  %3 = load i64, ptr %size.addr, align 8, !dbg !5559
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !5559
  ret void, !dbg !5560
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !5561 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5563, metadata !DIExpression()), !dbg !5565
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5564, metadata !DIExpression()), !dbg !5566
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5567
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5568
  br i1 %1, label %cond.true, label %cond.false, !dbg !5568

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5569
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5570
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5571
  %conv = zext i1 %call to i32, !dbg !5571
  br label %cond.end, !dbg !5568

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5572
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5573
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !5574
  %conv2 = zext i1 %call1 to i32, !dbg !5574
  br label %cond.end, !dbg !5568

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5568
  %tobool = icmp ne i32 %cond, 0, !dbg !5568
  ret i1 %tobool, !dbg !5575
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5576 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5581, metadata !DIExpression()), !dbg !5583
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5582, metadata !DIExpression()), !dbg !5584
  ret i1 true, !dbg !5585
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !5586 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5591, metadata !DIExpression()), !dbg !5594
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5592, metadata !DIExpression()), !dbg !5595
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5593, metadata !DIExpression()), !dbg !5596
  ret void, !dbg !5597
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !5598 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5602, metadata !DIExpression()), !dbg !5604
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5603, metadata !DIExpression()), !dbg !5605
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5606
  %and = and i64 %0, 63, !dbg !5607
  %shl = shl i64 1, %and, !dbg !5608
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5609
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5610
  %shr = ashr i64 %2, 6, !dbg !5611
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5609
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5609
  %and1 = and i64 %shl, %3, !dbg !5612
  %cmp = icmp ne i64 %and1, 0, !dbg !5613
  ret i1 %cmp, !dbg !5614
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !5615 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5617, metadata !DIExpression()), !dbg !5620
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5618, metadata !DIExpression()), !dbg !5621
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #18, !dbg !5622
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5619, metadata !DIExpression()), !dbg !5623
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5624
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5625
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !5626, !srcloc !5627
  %3 = icmp ult i8 %2, 2, !dbg !5626
  call void @llvm.assume(i1 %3), !dbg !5626
  store i8 %2, ptr %oldbit, align 1, !dbg !5626
  %4 = load i8, ptr %oldbit, align 1, !dbg !5628, !range !5422, !noundef !912
  %tobool = trunc i8 %4 to i1, !dbg !5628
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #18, !dbg !5629
  ret i1 %tobool, !dbg !5630
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5631 dso_local void @input_inject_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5632 dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { cold noredzone }
attributes #17 = { noredzone }
attributes #18 = { nounwind }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }
attributes #22 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759}
!llvm.ident = !{!4760}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_input_leds__267_209_input_leds_init6268", scope: !2, file: !3, line: 209, type: !140, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/.input-leds.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/input-leds\22 -D KBUILD_BASENAME=\22input_leds\22 -D KBUILD_MODNAME=\22input_leds\22 -D __KBUILD_MODNAME=kmod_input_leds -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/input-leds.ll drivers/input/input-leds.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !139, globals: !4648, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/input-leds.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8fa03030368a41e831da86974fb5c15")
!4 = !{!5, !14, !21, !28, !34, !39, !45, !50, !56, !63, !69, !76, !84, !92, !101, !106, !111, !117, !124, !129}
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
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !118, line: 33, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7523bb9fe581d1ba7d85feff7bf8fa4d")
!119 = !{!120, !121, !122, !123}
!120 = !DIEnumerator(name: "LED_OFF", value: 0)
!121 = !DIEnumerator(name: "LED_ON", value: 1)
!122 = !DIEnumerator(name: "LED_HALF", value: 127)
!123 = !DIEnumerator(name: "LED_FULL", value: 255)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 10, baseType: !7, size: 32, elements: !126)
!125 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!126 = !{!127, !128}
!127 = !DIEnumerator(name: "false", value: 0)
!128 = !DIEnumerator(name: "true", value: 1)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !130, line: 364, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!131 = !{!132, !133, !134, !135, !136, !137, !138}
!132 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!133 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!134 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!135 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!136 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!137 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!138 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!139 = !{!140, !85, !141, !143, !144, !148, !4645, !4646, !180}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !142, line: 154, baseType: !7)
!142 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!143 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 61, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !146, line: 72, baseType: !147)
!146 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !146, line: 16, baseType: !143)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_led", file: !3, line: 38, size: 3392, elements: !150)
!150 = !{!151, !4367, !4644}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !149, file: !3, line: 39, baseType: !152, size: 3264)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !118, line: 99, size: 3264, elements: !153)
!153 = !{!154, !158, !159, !160, !161, !162, !163, !168, !172, !176, !181, !194, !198, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4326, !4327, !4328, !4329, !4330, !4331, !4348, !4349, !4350, !4351, !4352, !4353, !4357, !4358, !4362, !4366}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !118, line: 100, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !152, file: !118, line: 101, baseType: !7, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !152, file: !118, line: 102, baseType: !7, size: 32, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !152, file: !118, line: 103, baseType: !7, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !118, line: 104, baseType: !85, size: 32, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !152, file: !118, line: 120, baseType: !143, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !152, file: !118, line: 137, baseType: !164, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167, !117}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !152, file: !118, line: 143, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!85, !167, !117}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !152, file: !118, line: 146, baseType: !173, size: 64, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!117, !167}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !152, file: !118, line: 160, baseType: !177, size: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!85, !167, !180, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !152, file: !118, line: 164, baseType: !182, size: 64, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!85, !167, !185, !189, !85}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !118, line: 713, size: 64, elements: !187)
!187 = !{!188, !193}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !186, file: !118, line: 714, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !190, line: 21, baseType: !191)
!190 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !192, line: 27, baseType: !7)
!192 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!193 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !186, file: !118, line: 715, baseType: !85, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !152, file: !118, line: 166, baseType: !195, size: 64, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!85, !167}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !152, file: !118, line: 168, baseType: !199, size: 64, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !201)
!201 = !{!202, !3954, !3955, !3958, !3959, !4012, !4097, !4098, !4099, !4100, !4101, !4108, !4200, !4213, !4223, !4227, !4229, !4230, !4231, !4235, !4242, !4243, !4246, !4249, !4253, !4256, !4257, !4258, !4259, !4260, !4261, !4291, !4292, !4293, !4296, !4299, !4308, !4309, !4310, !4311, !4312, !4313}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !200, file: !70, line: 706, baseType: !203, size: 512)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !204, line: 64, size: 512, elements: !205)
!204 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!205 = !{!206, !207, !213, !215, !302, !3841, !3944, !3949, !3950, !3951, !3952, !3953}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !204, line: 65, baseType: !155, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !203, file: !204, line: 66, baseType: !208, size: 128, offset: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !142, line: 190, size: 128, elements: !209)
!209 = !{!210, !212}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !142, line: 191, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !208, file: !142, line: 191, baseType: !211, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !204, line: 67, baseType: !214, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !203, file: !204, line: 68, baseType: !216, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !204, line: 168, size: 768, elements: !218)
!218 = !{!219, !220, !261, !262}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !217, file: !204, line: 169, baseType: !208, size: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !217, file: !204, line: 170, baseType: !221, size: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !222, line: 29, baseType: !223)
!222 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !222, line: 17, size: 32, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !222, line: 18, baseType: !226, size: 32)
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !222, line: 18, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !226, file: !222, line: 19, baseType: !229, size: 32)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !230, line: 14, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !229, file: !230, line: 15, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !234, line: 44, baseType: !235)
!234 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !234, line: 14, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !234, line: 15, baseType: !238, size: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !234, line: 15, size: 32, elements: !239)
!239 = !{!240, !245, !253}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !238, file: !234, line: 16, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !142, line: 174, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 172, size: 32, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !242, file: !142, line: 173, baseType: !85, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !234, line: 24, baseType: !246, size: 16)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !234, line: 24, size: 16, elements: !247)
!247 = !{!248, !252}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !246, file: !234, line: 25, baseType: !249, size: 8)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !190, line: 17, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !192, line: 21, baseType: !251)
!251 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !246, file: !234, line: 26, baseType: !249, size: 8, offset: 8)
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !234, line: 28, baseType: !254, size: 32)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !234, line: 28, size: 32, elements: !255)
!255 = !{!256, !260}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !254, file: !234, line: 29, baseType: !257, size: 16)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !190, line: 19, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !192, line: 24, baseType: !259)
!259 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !254, file: !234, line: 30, baseType: !257, size: 16, offset: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !217, file: !204, line: 171, baseType: !203, size: 512, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !217, file: !204, line: 172, baseType: !263, size: 64, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !204, line: 133, size: 192, elements: !266)
!266 = !{!267, !274, !279}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !265, file: !204, line: 134, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!85, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !204, line: 135, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!155, !272}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !265, file: !204, line: 136, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!85, !272, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !204, line: 125, size: 20736, elements: !286)
!286 = !{!287, !292, !296, !297, !301}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !285, file: !204, line: 126, baseType: !288, size: 192)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 192, elements: !290)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!290 = !{!291}
!291 = !DISubrange(count: 3)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !285, file: !204, line: 127, baseType: !293, size: 4096, offset: 192)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 4096, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !285, file: !204, line: 128, baseType: !85, size: 32, offset: 4288)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !285, file: !204, line: 129, baseType: !298, size: 16384, offset: 4320)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 16384, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 2048)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !285, file: !204, line: 130, baseType: !85, size: 32, offset: 20704)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !203, file: !204, line: 69, baseType: !303, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !204, line: 116, size: 384, elements: !306)
!306 = !{!307, !311, !335, !3803, !3831, !3835}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !305, file: !204, line: 117, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !214}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !305, file: !204, line: 118, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !315, line: 254, size: 128, elements: !316)
!315 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!316 = !{!317, !331}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !314, file: !315, line: 255, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !214, !325, !289}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !142, line: 66, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !146, line: 73, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !146, line: 15, baseType: !324)
!324 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !315, line: 30, size: 128, elements: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !315, line: 31, baseType: !155, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !326, file: !315, line: 32, baseType: !330, size: 16, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !142, line: 24, baseType: !259)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !314, file: !315, line: 256, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!321, !214, !325, !155, !144}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !305, file: !204, line: 119, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !315, line: 84, size: 320, elements: !340)
!340 = !{!341, !342, !346, !3799, !3801}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !315, line: 85, baseType: !155, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !339, file: !315, line: 86, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!330, !214, !325, !85}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !339, file: !315, line: 88, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!330, !214, !350, !85}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !315, line: 175, size: 512, elements: !352)
!352 = !{!353, !354, !355, !356, !3790, !3794, !3795}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !351, file: !315, line: 176, baseType: !326, size: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !351, file: !315, line: 177, baseType: !144, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !351, file: !315, line: 178, baseType: !140, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !351, file: !315, line: 179, baseType: !357, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !362)
!362 = !{!363, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3784, !3785, !3786, !3787, !3788, !3789}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !361, file: !35, line: 473, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !366)
!366 = !{!367, !368, !369, !377, !378, !385, !386, !389, !390, !3562, !3563, !3564, !3565, !3566, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3606, !3609, !3610, !3611, !3620, !3621, !3622, !3623}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !365, file: !35, line: 642, baseType: !330, size: 16)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !365, file: !35, line: 643, baseType: !259, size: 16, offset: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !365, file: !35, line: 644, baseType: !370, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !371, line: 23, baseType: !372)
!371 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 21, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !372, file: !371, line: 22, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !142, line: 37, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !146, line: 49, baseType: !7)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !365, file: !35, line: 645, baseType: !208, size: 128, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !365, file: !35, line: 646, baseType: !379, size: 32, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !371, line: 28, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 26, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !380, file: !371, line: 27, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !142, line: 38, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !146, line: 50, baseType: !7)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !365, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !365, file: !35, line: 650, baseType: !387, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !365, file: !35, line: 651, baseType: !387, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !365, file: !35, line: 654, baseType: !391, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !394)
!394 = !{!395, !3390, !3400, !3404, !3408, !3412, !3416, !3420, !3424, !3428, !3432, !3433, !3437, !3441, !3478, !3507, !3511, !3517, !3521, !3525, !3529, !3533, !3537, !3543, !3547}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !393, file: !35, line: 1967, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !364, !399, !7}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !401, line: 82, size: 1536, elements: !402)
!401 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!402 = !{!403, !404, !414, !422, !423, !441, !442, !446, !459, !3373, !3374, !3375, !3376, !3382, !3383, !3384}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !400, file: !401, line: 84, baseType: !7, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !400, file: !401, line: 85, baseType: !405, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !406, line: 275, baseType: !407)
!406 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !406, line: 275, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !407, file: !406, line: 275, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !406, line: 69, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !406, line: 64, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !411, file: !406, line: 65, baseType: !7, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !400, file: !401, line: 86, baseType: !415, size: 128, offset: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !416, line: 38, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!417 = !{!418, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !416, line: 39, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !415, file: !416, line: 39, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !400, file: !401, line: 87, baseType: !399, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !400, file: !401, line: 88, baseType: !424, size: 128, offset: 256)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !401, line: 49, size: 128, elements: !425)
!425 = !{!426, !438}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !401, line: 50, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !401, line: 50, size: 64, elements: !428)
!428 = !{!429, !434}
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !401, line: 51, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !401, line: 51, size: 64, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !430, file: !401, line: 52, baseType: !189, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !430, file: !401, line: 52, baseType: !189, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !427, file: !401, line: 54, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !190, line: 23, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !192, line: 31, baseType: !437)
!437 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !424, file: !401, line: 56, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !400, file: !401, line: 89, baseType: !364, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !400, file: !401, line: 91, baseType: !443, size: 256, offset: 448)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 256, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !400, file: !401, line: 94, baseType: !447, size: 64, offset: 704)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !448, line: 25, size: 64, elements: !449)
!448 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !448, line: 26, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !448, line: 26, size: 64, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !451, file: !448, line: 28, baseType: !436, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !448, line: 30, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !448, line: 30, size: 64, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !455, file: !448, line: 31, baseType: !221, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !455, file: !448, line: 32, baseType: !85, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !400, file: !401, line: 95, baseType: !460, size: 64, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !401, line: 128, size: 1024, align: 512, elements: !463)
!463 = !{!464, !468, !469, !476, !482, !486, !490, !494, !495, !499, !503, !3363, !3367}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !462, file: !401, line: 129, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!85, !399, !7}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !462, file: !401, line: 130, baseType: !465, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !462, file: !401, line: 131, baseType: !470, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!85, !473, !475}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !462, file: !401, line: 132, baseType: !477, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!85, !473, !7, !155, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !462, file: !401, line: 134, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!85, !473}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !462, file: !401, line: 135, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!85, !399}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !462, file: !401, line: 136, baseType: !491, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !399}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !462, file: !401, line: 137, baseType: !491, size: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !462, file: !401, line: 138, baseType: !496, size: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !399, !364}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !462, file: !401, line: 139, baseType: !500, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!289, !399, !289, !85}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !462, file: !401, line: 140, baseType: !504, size: 64, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!507, !3362}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !509, line: 70, size: 256, elements: !510)
!509 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!510 = !{!511, !512, !3358, !3359}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !508, file: !509, line: 71, baseType: !399, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !508, file: !509, line: 72, baseType: !513, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !515)
!515 = !{!516, !517, !520, !521, !522, !526, !1005, !1145, !1185, !1275, !1279, !1280, !1281, !1282, !1283, !1292, !1293, !1294, !1295, !1300, !1304, !1305, !1308, !1311, !1314, !1317, !1318, !1319, !1360, !3291, !3292, !3293, !3294, !3295, !3296, !3299, !3301, !3308, !3309, !3310, !3311, !3312, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !514, file: !35, line: 1191, baseType: !208, size: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !514, file: !35, line: 1192, baseType: !518, size: 32, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !142, line: 21, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !142, line: 18, baseType: !189)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !514, file: !35, line: 1193, baseType: !251, size: 8, offset: 160)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !514, file: !35, line: 1194, baseType: !143, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !514, file: !35, line: 1195, baseType: !523, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !142, line: 52, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !146, line: 88, baseType: !525)
!525 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !514, file: !35, line: 1196, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !529)
!529 = !{!530, !531, !532, !539, !543, !547, !551, !990, !991, !995, !997, !998, !999, !1001, !1002, !1003, !1004}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !528, file: !35, line: 2367, baseType: !155, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !528, file: !35, line: 2368, baseType: !85, size: 32, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !528, file: !35, line: 2376, baseType: !533, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!85, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !538, line: 32, flags: DIFlagFwdDecl)
!538 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!539 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !528, file: !35, line: 2377, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !528, file: !35, line: 2378, baseType: !544, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!399, !527, !85, !155, !140}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !528, file: !35, line: 2380, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !513}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !528, file: !35, line: 2381, baseType: !552, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !554)
!554 = !{!555, !556, !557, !561, !583, !609, !610, !611, !612, !616, !621, !622, !642, !698, !699, !700, !701, !702, !705, !706, !707, !715, !719, !746, !767, !768, !769, !770, !779, !802, !803, !806, !809, !810, !811, !812, !813, !814, !815, !820, !821, !949, !957, !958, !959, !961, !965, !966, !970, !971, !972, !973, !974, !975, !976, !983, !984, !985, !989}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !553, file: !15, line: 403, baseType: !14, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !553, file: !15, line: 406, baseType: !208, size: 128, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !553, file: !15, line: 409, baseType: !558, size: 448, offset: 192)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 448, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 56)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !553, file: !15, line: 417, baseType: !562, size: 768, offset: 640)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !563)
!563 = !{!564, !565, !566, !567, !570}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !562, file: !15, line: 46, baseType: !203, size: 512)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !562, file: !15, line: 47, baseType: !552, size: 64, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !562, file: !15, line: 48, baseType: !214, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !562, file: !15, line: 49, baseType: !568, size: 64, offset: 640)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !562, file: !15, line: 50, baseType: !571, size: 64, offset: 704)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !573, line: 26, size: 256, elements: !574)
!573 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !572, file: !573, line: 27, baseType: !7, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !572, file: !573, line: 28, baseType: !577, size: 192, offset: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !578, line: 43, size: 192, elements: !579)
!578 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!579 = !{!580, !582}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !577, file: !578, line: 44, baseType: !581, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !230, line: 23, baseType: !229)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !577, file: !578, line: 45, baseType: !208, size: 128, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !553, file: !15, line: 418, baseType: !584, size: 64, offset: 1408)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !586)
!586 = !{!587, !588, !593, !597, !601, !605}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !585, file: !15, line: 54, baseType: !326, size: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !585, file: !15, line: 55, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!321, !584, !592, !289}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !585, file: !15, line: 57, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!321, !584, !592, !155, !144}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !585, file: !15, line: 59, baseType: !598, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !552, !155}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !585, file: !15, line: 60, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!85, !552}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !585, file: !15, line: 61, baseType: !606, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !552}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !553, file: !15, line: 419, baseType: !155, size: 64, offset: 1472)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !553, file: !15, line: 420, baseType: !155, size: 64, offset: 1536)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !553, file: !15, line: 421, baseType: !214, size: 64, offset: 1600)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !553, file: !15, line: 424, baseType: !613, size: 64, offset: 1664)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !553, file: !15, line: 425, baseType: !617, size: 64, offset: 1728)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !190, line: 20, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !192, line: 26, baseType: !85)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !553, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !553, file: !15, line: 435, baseType: !623, size: 256, offset: 1856)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !624, line: 66, size: 256, elements: !625)
!624 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!625 = !{!626, !635, !636, !641}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !623, file: !624, line: 67, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !628, line: 13, baseType: !629)
!628 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !142, line: 181, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 179, size: 64, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !630, file: !142, line: 180, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !190, line: 22, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !192, line: 30, baseType: !525)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !623, file: !624, line: 68, baseType: !581, size: 32, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !623, file: !624, line: 70, baseType: !637, size: 32, offset: 96)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !638, line: 15, size: 32, elements: !639)
!638 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !637, file: !638, line: 20, baseType: !241, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !623, file: !624, line: 72, baseType: !208, size: 128, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !553, file: !15, line: 437, baseType: !643, size: 64, offset: 2112)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !645, line: 69, size: 320, elements: !646)
!645 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!646 = !{!647, !648, !649, !669, !671, !675, !676}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !644, file: !645, line: 70, baseType: !155, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !644, file: !645, line: 71, baseType: !552, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !644, file: !645, line: 72, baseType: !650, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !645, line: 47, size: 256, elements: !653)
!653 = !{!654, !655, !661, !665}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !645, line: 49, baseType: !7, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !652, file: !645, line: 51, baseType: !656, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!85, !155, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !652, file: !645, line: 53, baseType: !662, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!85, !289, !659}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !652, file: !645, line: 55, baseType: !666, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !140}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !644, file: !645, line: 73, baseType: !670, size: 16, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !644, file: !645, line: 74, baseType: !672, size: 8, offset: 208)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !190, line: 16, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !192, line: 20, baseType: !674)
!674 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !645, line: 75, baseType: !249, size: 8, offset: 216)
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !645, line: 76, baseType: !677, size: 64, offset: 256)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !644, file: !645, line: 76, size: 64, elements: !678)
!678 = !{!679, !680, !687}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !677, file: !645, line: 77, baseType: !140, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !677, file: !645, line: 78, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !645, line: 86, size: 128, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !683, file: !645, line: 87, baseType: !7, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !683, file: !645, line: 88, baseType: !289, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !677, file: !645, line: 79, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !645, line: 92, size: 256, elements: !691)
!691 = !{!692, !693, !694, !696, !697}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !690, file: !645, line: 94, baseType: !7, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !690, file: !645, line: 95, baseType: !7, size: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !690, file: !645, line: 96, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !690, file: !645, line: 97, baseType: !650, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !690, file: !645, line: 98, baseType: !140, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !553, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !553, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !553, file: !15, line: 442, baseType: !613, size: 64, offset: 2240)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !553, file: !15, line: 443, baseType: !617, size: 64, offset: 2304)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !553, file: !15, line: 444, baseType: !703, size: 8, offset: 2368)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !142, line: 35, baseType: !704)
!704 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !553, file: !15, line: 451, baseType: !703, size: 8, offset: 2376)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !553, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !553, file: !15, line: 455, baseType: !708, size: 64, offset: 2432)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !710, line: 23, size: 96, elements: !711)
!710 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!711 = !{!712, !713, !714}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !709, file: !710, line: 24, baseType: !85, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !709, file: !710, line: 24, baseType: !85, size: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !709, file: !710, line: 24, baseType: !85, size: 32, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !553, file: !15, line: 458, baseType: !716, size: 64, offset: 2496)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!85}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !553, file: !15, line: 460, baseType: !720, size: 4032, align: 512, offset: 2560)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 4032, elements: !744)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !722)
!722 = !{!723, !724, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !721, file: !15, line: 363, baseType: !140, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !721, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !721, file: !15, line: 367, baseType: !726, size: 448, offset: 128)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !726, file: !15, line: 320, baseType: !552, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !726, file: !15, line: 321, baseType: !730, size: 384, offset: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !731, line: 40, size: 384, elements: !732)
!731 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !730, file: !731, line: 41, baseType: !734, size: 384, align: 64)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 384, align: 64, elements: !742)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !736, line: 5, size: 192, align: 64, elements: !737)
!736 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!737 = !{!738, !739, !741}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !735, file: !736, line: 6, baseType: !143, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !735, file: !736, line: 7, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !735, file: !736, line: 8, baseType: !740, size: 64, offset: 128)
!742 = !{!743}
!743 = !DISubrange(count: 2)
!744 = !{!745}
!745 = !DISubrange(count: 7)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !553, file: !15, line: 463, baseType: !747, size: 192, offset: 6592)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !748, line: 8, size: 192, elements: !749)
!748 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!749 = !{!750, !751, !753}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !747, file: !748, line: 10, baseType: !7, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !747, file: !748, line: 11, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !747, file: !748, line: 12, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !756, line: 59, size: 48, elements: !757)
!756 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!757 = !{!758, !762, !763, !764, !765, !766}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !755, file: !756, line: 60, baseType: !759, size: 16)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !190, line: 18, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !192, line: 23, baseType: !761)
!761 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !755, file: !756, line: 61, baseType: !759, size: 16, offset: 16)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !755, file: !756, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !755, file: !756, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !755, file: !756, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !755, file: !756, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !553, file: !15, line: 465, baseType: !143, size: 64, offset: 6784)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !553, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !553, file: !15, line: 470, baseType: !208, size: 128, offset: 6912)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !553, file: !15, line: 471, baseType: !771, size: 64, offset: 7040)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !773, line: 33, size: 96, elements: !774)
!773 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!774 = !{!775, !776, !777, !778}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !772, file: !773, line: 37, baseType: !85, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !772, file: !773, line: 43, baseType: !85, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !772, file: !773, line: 45, baseType: !259, size: 16, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !773, line: 47, baseType: !259, size: 16, offset: 80)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !553, file: !15, line: 476, baseType: !780, size: 64, offset: 7104)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !782)
!782 = !{!783, !799, !800, !801}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !781, file: !15, line: 379, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !786, line: 204, baseType: !787)
!786 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !786, line: 197, size: 192, elements: !788)
!788 = !{!789, !791, !792, !793, !795, !797}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !787, file: !786, line: 198, baseType: !790, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !786, line: 21, baseType: !191)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !787, file: !786, line: 199, baseType: !251, size: 8, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !787, file: !786, line: 200, baseType: !251, size: 8, offset: 40)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !787, file: !786, line: 201, baseType: !794, size: 16, offset: 48)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !786, line: 17, baseType: !258)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !787, file: !786, line: 202, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !786, line: 16, baseType: !436)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !787, file: !786, line: 203, baseType: !798, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !786, line: 22, baseType: !436)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !781, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !781, file: !15, line: 381, baseType: !289, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !781, file: !15, line: 382, baseType: !289, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !553, file: !15, line: 477, baseType: !781, size: 256, offset: 7168)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !553, file: !15, line: 480, baseType: !804, size: 64, offset: 7424)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !553, file: !15, line: 483, baseType: !807, size: 64, offset: 7488)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !553, file: !15, line: 488, baseType: !289, size: 64, offset: 7552)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !553, file: !15, line: 492, baseType: !140, size: 64, offset: 7616)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !553, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !553, file: !15, line: 495, baseType: !140, size: 64, offset: 7744)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !553, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !553, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !553, file: !15, line: 500, baseType: !816, size: 64, offset: 7872)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !818, line: 45, baseType: !819)
!818 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !553, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !553, file: !15, line: 504, baseType: !822, size: 64, offset: 8000)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !825, line: 96, size: 192, elements: !826)
!825 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!826 = !{!827, !828, !909, !913}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !824, file: !825, line: 97, baseType: !7, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !824, file: !825, line: 98, baseType: !829, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !825, line: 24, size: 3072, elements: !831)
!831 = !{!832, !834, !835, !836, !837, !861, !862, !863, !864, !882, !894, !895, !906, !907, !908}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !830, file: !825, line: 26, baseType: !833, size: 128)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 128, elements: !742)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !830, file: !825, line: 27, baseType: !833, size: 128, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !830, file: !825, line: 28, baseType: !85, size: 32, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !830, file: !825, line: 31, baseType: !221, size: 32, align: 512, offset: 512)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !830, file: !825, line: 32, baseType: !838, size: 960, offset: 576)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !839, line: 206, size: 960, elements: !840)
!839 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!840 = !{!841, !850, !855, !857, !858, !860}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !838, file: !839, line: 207, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !142, line: 232, size: 128, align: 64, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !843, file: !142, line: 233, baseType: !842, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !843, file: !142, line: 234, baseType: !847, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !842}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !838, file: !839, line: 208, baseType: !851, size: 256, offset: 64)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 256, elements: !853)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!853 = !{!854}
!854 = !DISubrange(count: 4)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !838, file: !839, line: 209, baseType: !856, size: 256, offset: 320)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !853)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !838, file: !839, line: 213, baseType: !324, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !838, file: !839, line: 215, baseType: !859, size: 256, offset: 640)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !853)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !839, line: 216, baseType: !249, size: 8, offset: 896)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !830, file: !825, line: 33, baseType: !143, size: 64, offset: 1536)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !830, file: !825, line: 34, baseType: !143, size: 64, offset: 1600)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !830, file: !825, line: 35, baseType: !703, size: 8, offset: 1664)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !830, file: !825, line: 36, baseType: !865, size: 320, offset: 1728)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !866, line: 11, size: 320, elements: !867)
!866 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!867 = !{!868, !875, !876, !881}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !865, file: !866, line: 16, baseType: !869, size: 128)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !142, line: 198, size: 128, elements: !870)
!870 = !{!871, !873}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !869, file: !142, line: 199, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !869, file: !142, line: 199, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !865, file: !866, line: 17, baseType: !143, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !865, file: !866, line: 18, baseType: !877, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !880}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !865, file: !866, line: 19, baseType: !189, size: 32, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !830, file: !825, line: 37, baseType: !883, size: 256, offset: 2048)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !884, line: 98, size: 256, elements: !885)
!884 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!885 = !{!886, !887, !888}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !883, file: !884, line: 99, baseType: !627, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !883, file: !884, line: 100, baseType: !208, size: 128, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !883, file: !884, line: 101, baseType: !889, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !884, line: 21, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !830, file: !825, line: 38, baseType: !843, size: 128, align: 64, offset: 2304)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !830, file: !825, line: 39, baseType: !896, size: 64, offset: 2432)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !825, line: 49, size: 768, elements: !898)
!898 = !{!899, !900, !901, !902, !903, !904, !905}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !897, file: !825, line: 50, baseType: !221, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !897, file: !825, line: 51, baseType: !856, size: 256, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !897, file: !825, line: 53, baseType: !856, size: 256, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !897, file: !825, line: 54, baseType: !143, size: 64, offset: 576)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !897, file: !825, line: 55, baseType: !896, size: 64, offset: 640)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !897, file: !825, line: 56, baseType: !85, size: 32, offset: 704)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !897, file: !825, line: 57, baseType: !85, size: 32, offset: 736)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !830, file: !825, line: 40, baseType: !143, size: 64, offset: 2496)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !830, file: !825, line: 42, baseType: !85, size: 32, offset: 2560)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !830, file: !825, line: 43, baseType: !823, size: 64, offset: 2624)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !824, file: !825, line: 99, baseType: !910, offset: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !911, line: 211, elements: !912)
!911 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!912 = !{}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !824, file: !825, line: 100, baseType: !914, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !825, line: 63, size: 3008, elements: !916)
!916 = !{!917, !918, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !948}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !915, file: !825, line: 64, baseType: !896, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !915, file: !825, line: 65, baseType: !919, size: 192, offset: 64)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 192, elements: !290)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !915, file: !825, line: 67, baseType: !85, size: 32, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !915, file: !825, line: 68, baseType: !623, size: 256, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !915, file: !825, line: 69, baseType: !221, size: 32, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !915, file: !825, line: 70, baseType: !623, size: 256, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !915, file: !825, line: 71, baseType: !143, size: 64, offset: 896)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !915, file: !825, line: 72, baseType: !143, size: 64, offset: 960)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !915, file: !825, line: 73, baseType: !143, size: 64, offset: 1024)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !915, file: !825, line: 74, baseType: !143, size: 64, offset: 1088)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !915, file: !825, line: 75, baseType: !143, size: 64, offset: 1152)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !915, file: !825, line: 76, baseType: !143, size: 64, offset: 1216)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !915, file: !825, line: 77, baseType: !143, size: 64, offset: 1280)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !915, file: !825, line: 78, baseType: !143, size: 64, offset: 1344)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !915, file: !825, line: 79, baseType: !703, size: 8, offset: 1408)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !915, file: !825, line: 80, baseType: !143, size: 64, offset: 1472)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !915, file: !825, line: 81, baseType: !623, size: 256, offset: 1536)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !915, file: !825, line: 82, baseType: !572, size: 256, offset: 1792)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !915, file: !825, line: 84, baseType: !241, size: 32, offset: 2048)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !915, file: !825, line: 87, baseType: !143, size: 64, offset: 2112)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !915, file: !825, line: 88, baseType: !143, size: 64, offset: 2176)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !915, file: !825, line: 89, baseType: !940, size: 704, offset: 2240)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !884, line: 111, size: 704, elements: !941)
!941 = !{!942, !943, !944, !947}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !940, file: !884, line: 112, baseType: !883, size: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !940, file: !884, line: 113, baseType: !865, size: 320, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !940, file: !884, line: 116, baseType: !945, size: 64, offset: 576)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !884, line: 18, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !940, file: !884, line: 117, baseType: !85, size: 32, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !915, file: !825, line: 90, baseType: !823, size: 64, offset: 2944)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !553, file: !15, line: 515, baseType: !950, size: 64, offset: 8064)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !952, line: 117, size: 128, elements: !953)
!952 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !951, file: !952, line: 118, baseType: !619, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !951, file: !952, line: 119, baseType: !619, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !951, file: !952, line: 120, baseType: !324, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !553, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !553, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !553, file: !15, line: 520, baseType: !960, size: 64, offset: 8192)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !553, file: !15, line: 523, baseType: !962, size: 64, offset: 8256)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !553, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !553, file: !15, line: 525, baseType: !967, size: 64, offset: 8384)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !553, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !553, file: !15, line: 533, baseType: !140, size: 64, offset: 8512)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !553, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !553, file: !15, line: 535, baseType: !180, size: 64, offset: 8640)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !553, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !553, file: !15, line: 539, baseType: !85, size: 32, offset: 8736)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !553, file: !15, line: 540, baseType: !977, size: 64, offset: 8768)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !979, line: 32, size: 64, elements: !980)
!979 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !978, file: !979, line: 33, baseType: !619, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !978, file: !979, line: 34, baseType: !619, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !553, file: !15, line: 563, baseType: !208, size: 128, offset: 8832)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !553, file: !15, line: 565, baseType: !208, size: 128, offset: 8960)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !553, file: !15, line: 568, baseType: !986, size: 64, offset: 9088)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{null}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !553, file: !15, line: 570, baseType: !241, size: 32, offset: 9152)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !35, line: 2382, baseType: !527, size: 64, offset: 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !528, file: !35, line: 2383, baseType: !992, size: 64, offset: 512)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !142, line: 194, size: 64, elements: !993)
!993 = !{!994}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !992, file: !142, line: 195, baseType: !872, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !528, file: !35, line: 2385, baseType: !996, offset: 576)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !911, line: 206, elements: !912)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !528, file: !35, line: 2386, baseType: !996, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !528, file: !35, line: 2387, baseType: !996, offset: 576)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !528, file: !35, line: 2388, baseType: !1000, offset: 576)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, elements: !290)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !528, file: !35, line: 2390, baseType: !996, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !528, file: !35, line: 2391, baseType: !996, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !528, file: !35, line: 2392, baseType: !996, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !528, file: !35, line: 2393, baseType: !996, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !514, file: !35, line: 1197, baseType: !1006, size: 64, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !1009)
!1009 = !{!1010, !1014, !1018, !1019, !1023, !1029, !1033, !1034, !1035, !1039, !1043, !1047, !1048, !1049, !1055, !1059, !1060, !1067, !1068, !1069, !1070, !1074, !1078, !1127, !1143, !1144}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1008, file: !35, line: 2058, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!364, !513}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1008, file: !35, line: 2059, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !364}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1008, file: !35, line: 2060, baseType: !1015, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1008, file: !35, line: 2062, baseType: !1020, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !364, !85}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1008, file: !35, line: 2063, baseType: !1024, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!85, !364, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1008, file: !35, line: 2064, baseType: !1030, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!85, !364}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1008, file: !35, line: 2065, baseType: !1015, size: 64, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1008, file: !35, line: 2066, baseType: !548, size: 64, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1008, file: !35, line: 2067, baseType: !1036, size: 64, offset: 512)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!85, !513, !85}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1008, file: !35, line: 2068, baseType: !1040, size: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!85, !513, !34}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1008, file: !35, line: 2069, baseType: !1044, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!85, !513}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1008, file: !35, line: 2070, baseType: !1040, size: 64, offset: 704)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1008, file: !35, line: 2071, baseType: !1044, size: 64, offset: 768)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1008, file: !35, line: 2072, baseType: !1050, size: 64, offset: 832)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!85, !399, !1053}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1008, file: !35, line: 2073, baseType: !1056, size: 64, offset: 896)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!85, !513, !752, !289}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1008, file: !35, line: 2074, baseType: !548, size: 64, offset: 960)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1008, file: !35, line: 2076, baseType: !1061, size: 64, offset: 1024)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!85, !1064, !399}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1066, line: 66, flags: DIFlagFwdDecl)
!1066 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1008, file: !35, line: 2077, baseType: !1061, size: 64, offset: 1088)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1008, file: !35, line: 2078, baseType: !1061, size: 64, offset: 1152)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1008, file: !35, line: 2079, baseType: !1061, size: 64, offset: 1216)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1008, file: !35, line: 2081, baseType: !1071, size: 64, offset: 1280)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!321, !513, !85, !289, !144, !523}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1008, file: !35, line: 2082, baseType: !1075, size: 64, offset: 1344)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!321, !513, !85, !155, !144, !523}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1008, file: !35, line: 2083, baseType: !1079, size: 64, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!1082, !364}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1110, !1111, !1112}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1084, file: !40, line: 297, baseType: !869, size: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1084, file: !40, line: 298, baseType: !208, size: 128, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1084, file: !40, line: 299, baseType: !208, size: 128, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1084, file: !40, line: 300, baseType: !208, size: 128, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1084, file: !40, line: 301, baseType: !623, size: 256, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1084, file: !40, line: 302, baseType: !221, size: 32, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1084, file: !40, line: 303, baseType: !241, size: 32, offset: 800)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1084, file: !40, line: 304, baseType: !513, size: 64, offset: 832)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1084, file: !40, line: 305, baseType: !1095, size: 64, offset: 896)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !1096)
!1096 = !{!1097, !1109}
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !40, line: 69, baseType: !1098, size: 32)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !40, line: 69, size: 32, elements: !1099)
!1099 = !{!1100, !1101, !1102}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1098, file: !40, line: 70, baseType: !370, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1098, file: !40, line: 71, baseType: !379, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1098, file: !40, line: 72, baseType: !1103, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1104, line: 24, baseType: !1105)
!1104 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1104, line: 22, size: 32, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1105, file: !1104, line: 23, baseType: !1108, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1104, line: 20, baseType: !376)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1095, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1084, file: !40, line: 306, baseType: !523, size: 64, offset: 960)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1084, file: !40, line: 307, baseType: !143, size: 64, offset: 1024)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1084, file: !40, line: 308, baseType: !1113, size: 576, offset: 1088)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !1114)
!1114 = !{!1115, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1126}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1113, file: !40, line: 206, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !525)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1113, file: !40, line: 207, baseType: !1116, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1113, file: !40, line: 208, baseType: !1116, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1113, file: !40, line: 209, baseType: !1116, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1113, file: !40, line: 210, baseType: !1116, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1113, file: !40, line: 211, baseType: !1116, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1113, file: !40, line: 212, baseType: !1116, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1113, file: !40, line: 213, baseType: !1124, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1125, line: 8, baseType: !634)
!1125 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1113, file: !40, line: 214, baseType: !1124, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1008, file: !35, line: 2085, baseType: !1128, size: 64, offset: 1472)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!324, !513, !1131}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1133, line: 15, size: 256, elements: !1134)
!1133 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1134 = !{!1135, !1136, !1137, !1138, !1139}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1132, file: !1133, line: 16, baseType: !141, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1132, file: !1133, line: 19, baseType: !85, size: 32, offset: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1132, file: !1133, line: 26, baseType: !143, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1132, file: !1133, line: 33, baseType: !143, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1132, file: !1133, line: 36, baseType: !1140, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1142, line: 33, flags: DIFlagFwdDecl)
!1142 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1008, file: !35, line: 2087, baseType: !1128, size: 64, offset: 1536)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1008, file: !35, line: 2089, baseType: !548, size: 64, offset: 1600)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !514, file: !35, line: 1198, baseType: !1146, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1148)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !1149)
!1149 = !{!1150, !1154, !1158, !1162, !1163, !1164, !1165, !1166, !1171, !1176, !1180}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1148, file: !40, line: 325, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!85, !1083}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1148, file: !40, line: 326, baseType: !1155, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!1083, !513, !85}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1148, file: !40, line: 327, baseType: !1159, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !1083}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1148, file: !40, line: 328, baseType: !1151, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1148, file: !40, line: 329, baseType: !1151, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1148, file: !40, line: 330, baseType: !1151, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1148, file: !40, line: 331, baseType: !1036, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1148, file: !40, line: 334, baseType: !1167, size: 64, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!1170, !364}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1148, file: !40, line: 335, baseType: !1172, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!85, !364, !1175}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1148, file: !40, line: 337, baseType: !1177, size: 64, offset: 576)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!85, !364, !1170}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1148, file: !40, line: 339, baseType: !1181, size: 64, offset: 640)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!85, !513, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !514, file: !35, line: 1199, baseType: !1186, size: 64, offset: 512)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !1189)
!1189 = !{!1190, !1201, !1202, !1206, !1207, !1208, !1223, !1246, !1250, !1251, !1274}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1188, file: !40, line: 431, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!85, !513, !85, !85, !1194}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1197, line: 8, size: 128, elements: !1198)
!1197 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1196, file: !1197, line: 9, baseType: !507, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1196, file: !1197, line: 10, baseType: !399, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1188, file: !40, line: 432, baseType: !1036, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1188, file: !40, line: 433, baseType: !1203, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!85, !513, !7}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1188, file: !40, line: 434, baseType: !1203, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1188, file: !40, line: 435, baseType: !1036, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1188, file: !40, line: 436, baseType: !1209, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!85, !513, !85, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1213, file: !40, line: 418, baseType: !85, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1213, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1213, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1213, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1213, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1213, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1213, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1213, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1188, file: !40, line: 437, baseType: !1224, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!85, !513, !1095, !1227}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1228, file: !40, line: 346, baseType: !85, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1228, file: !40, line: 347, baseType: !435, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1228, file: !40, line: 348, baseType: !435, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1228, file: !40, line: 349, baseType: !435, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1228, file: !40, line: 350, baseType: !435, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1228, file: !40, line: 351, baseType: !435, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1228, file: !40, line: 352, baseType: !435, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1228, file: !40, line: 353, baseType: !633, size: 64, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1228, file: !40, line: 355, baseType: !633, size: 64, offset: 512)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1228, file: !40, line: 356, baseType: !85, size: 32, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1228, file: !40, line: 357, baseType: !85, size: 32, offset: 608)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1228, file: !40, line: 358, baseType: !435, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1228, file: !40, line: 359, baseType: !435, size: 64, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1228, file: !40, line: 360, baseType: !435, size: 64, offset: 768)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1228, file: !40, line: 361, baseType: !633, size: 64, offset: 832)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1228, file: !40, line: 362, baseType: !85, size: 32, offset: 896)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1188, file: !40, line: 438, baseType: !1247, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!85, !513, !1184, !1227}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1188, file: !40, line: 440, baseType: !1224, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1188, file: !40, line: 441, baseType: !1252, size: 64, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!85, !513, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1256, file: !40, line: 412, baseType: !7, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1256, file: !40, line: 413, baseType: !1260, size: 1344, offset: 64)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1261, size: 1344, elements: !290)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1273}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1261, file: !40, line: 398, baseType: !7, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1261, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1261, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1261, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1261, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1261, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1261, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1261, file: !40, line: 406, baseType: !437, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1261, file: !40, line: 407, baseType: !1272, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !142, line: 132, baseType: !435)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1261, file: !40, line: 408, baseType: !1272, size: 64, offset: 384)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1188, file: !40, line: 442, baseType: !1203, size: 64, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !514, file: !35, line: 1200, baseType: !1276, size: 64, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !514, file: !35, line: 1201, baseType: !143, size: 64, offset: 640)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !514, file: !35, line: 1202, baseType: !143, size: 64, offset: 704)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !514, file: !35, line: 1203, baseType: !143, size: 64, offset: 768)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !514, file: !35, line: 1204, baseType: !399, size: 64, offset: 832)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !514, file: !35, line: 1205, baseType: !1284, size: 320, offset: 896)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1285, line: 48, size: 320, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1286 = !{!1287, !1288, !1289, !1290, !1291}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1284, file: !1285, line: 49, baseType: !627, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1284, file: !1285, line: 55, baseType: !627, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1284, file: !1285, line: 57, baseType: !637, size: 32, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1284, file: !1285, line: 59, baseType: !581, size: 32, offset: 160)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1284, file: !1285, line: 60, baseType: !208, size: 128, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !514, file: !35, line: 1206, baseType: !85, size: 32, offset: 1216)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !514, file: !35, line: 1207, baseType: !241, size: 32, offset: 1248)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !514, file: !35, line: 1209, baseType: !140, size: 64, offset: 1280)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !514, file: !35, line: 1211, baseType: !1296, size: 64, offset: 1344)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !514, file: !35, line: 1223, baseType: !1301, size: 64, offset: 1408)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !416, line: 34, size: 64, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1301, file: !416, line: 35, baseType: !419, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !514, file: !35, line: 1224, baseType: !208, size: 128, offset: 1472)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !514, file: !35, line: 1225, baseType: !1306, size: 64, offset: 1600)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !514, file: !35, line: 1226, baseType: !1309, size: 64, offset: 1664)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !514, file: !35, line: 1227, baseType: !1312, size: 64, offset: 1728)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !514, file: !35, line: 1228, baseType: !1315, size: 64, offset: 1792)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !514, file: !35, line: 1229, baseType: !869, size: 128, offset: 1856)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !514, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !514, file: !35, line: 1231, baseType: !1320, size: 2496, offset: 2048)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1326, !1358}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1320, file: !40, line: 522, baseType: !7, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1320, file: !40, line: 523, baseType: !1284, size: 320, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1320, file: !40, line: 524, baseType: !1325, size: 192, offset: 384)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 192, elements: !290)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1320, file: !40, line: 525, baseType: !1327, size: 1728, offset: 576)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1328, size: 1728, elements: !290)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !1329)
!1329 = !{!1330, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1328, file: !40, line: 223, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !1333)
!1333 = !{!1334, !1335, !1348, !1349}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1332, file: !40, line: 446, baseType: !85, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1332, file: !40, line: 447, baseType: !1336, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1338, file: !40, line: 313, baseType: !1036, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1338, file: !40, line: 314, baseType: !1036, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1338, file: !40, line: 315, baseType: !1036, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1338, file: !40, line: 316, baseType: !1036, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1338, file: !40, line: 317, baseType: !1151, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1338, file: !40, line: 318, baseType: !1151, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1338, file: !40, line: 319, baseType: !1151, size: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1338, file: !40, line: 320, baseType: !1181, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1332, file: !40, line: 448, baseType: !552, size: 64, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1332, file: !40, line: 449, baseType: !1331, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1328, file: !40, line: 224, baseType: !85, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1328, file: !40, line: 226, baseType: !208, size: 128, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1328, file: !40, line: 227, baseType: !143, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1328, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1328, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1328, file: !40, line: 230, baseType: !1116, size: 64, offset: 384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1328, file: !40, line: 231, baseType: !1116, size: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1328, file: !40, line: 232, baseType: !140, size: 64, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1320, file: !40, line: 526, baseType: !1359, size: 192, offset: 2304)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 192, elements: !290)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !514, file: !35, line: 1233, baseType: !1361, size: 2368, offset: 4544)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !1362)
!1362 = !{!1363, !1364, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1361, file: !35, line: 1185, baseType: !259, size: 16)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1361, file: !35, line: 1186, baseType: !259, size: 16, offset: 16)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1361, file: !35, line: 1187, baseType: !1366, size: 2304, offset: 64)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1367, size: 2304, elements: !290)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1368, line: 12, size: 768, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1369 = !{!1370, !1384, !1385, !3289, !3290}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1367, file: !1368, line: 13, baseType: !1371, size: 384)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1372, line: 17, size: 384, elements: !1373)
!1372 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1373 = !{!1374, !1375, !1376, !1383}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1371, file: !1372, line: 18, baseType: !85, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1371, file: !1372, line: 19, baseType: !85, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1371, file: !1372, line: 20, baseType: !1377, size: 192, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1378, line: 41, baseType: !1379)
!1378 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1378, line: 37, size: 192, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1379, file: !1378, line: 38, baseType: !221, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1379, file: !1378, line: 39, baseType: !208, size: 128, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1371, file: !1372, line: 22, baseType: !843, size: 128, align: 64, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1367, file: !1368, line: 14, baseType: !695, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1367, file: !1368, line: 15, baseType: !1386, size: 64, offset: 448)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1387, line: 16, size: 64, elements: !1388)
!1387 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1386, file: !1387, line: 17, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1066, line: 746, size: 58368, elements: !1392)
!1392 = !{!1393, !1401, !1402, !1403, !1409, !1410, !1411, !1412, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1483, !1494, !1589, !1593, !1596, !1627, !1628, !1629, !1630, !1641, !1643, !1644, !1645, !1646, !1647, !1648, !1659, !1660, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1677, !1678, !1685, !1686, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2414, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2462, !2468, !2469, !2470, !2471, !2472, !2476, !2479, !2486, !2491, !2494, !2497, !2500, !2504, !2642, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2680, !2681, !2682, !2691, !2699, !2700, !2701, !2702, !2703, !2708, !2709, !2710, !2713, !2714, !2717, !2720, !2723, !2731, !2734, !2735, !2821, !2822, !2823, !2824, !2825, !2831, !2832, !2833, !2834, !2837, !2838, !2841, !2844, !2845, !2848, !2849, !2850, !2853, !2854, !2855, !2856, !2857, !2858, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2890, !2891, !2957, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2969, !3041, !3043, !3044, !3045, !3046, !3047, !3048, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3066, !3067, !3068}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1391, file: !1066, line: 752, baseType: !1394, size: 192)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1395, line: 56, size: 192, elements: !1396)
!1395 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1396 = !{!1397, !1398, !1399, !1400}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1394, file: !1395, line: 57, baseType: !143, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1394, file: !1395, line: 58, baseType: !143, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1394, file: !1395, line: 59, baseType: !189, size: 32, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1394, file: !1395, line: 61, baseType: !189, size: 32, offset: 160)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1391, file: !1066, line: 754, baseType: !7, size: 32, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1391, file: !1066, line: 767, baseType: !140, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1391, file: !1066, line: 768, baseType: !1404, size: 32, offset: 320)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1405, line: 113, baseType: !1406)
!1405 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1405, line: 111, size: 32, elements: !1407)
!1407 = !{!1408}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1406, file: !1405, line: 112, baseType: !241, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1391, file: !1066, line: 770, baseType: !7, size: 32, offset: 352)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1391, file: !1066, line: 771, baseType: !7, size: 32, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1391, file: !1066, line: 774, baseType: !85, size: 32, offset: 416)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1391, file: !1066, line: 775, baseType: !1413, size: 128, offset: 448)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1414, line: 58, size: 128, elements: !1415)
!1414 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1415 = !{!1416, !1422, !1427, !1428}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1413, file: !1414, line: 59, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1418, line: 60, size: 64, elements: !1419)
!1418 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1417, file: !1418, line: 61, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !1414, line: 60, baseType: !1423, size: 32, offset: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1413, file: !1414, line: 60, size: 32, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1423, file: !1414, line: 61, baseType: !7, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1423, file: !1414, line: 62, baseType: !241, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1413, file: !1414, line: 65, baseType: !257, size: 16, offset: 96)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1413, file: !1414, line: 65, baseType: !257, size: 16, offset: 112)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1391, file: !1066, line: 776, baseType: !7, size: 32, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1391, file: !1066, line: 777, baseType: !143, size: 64, offset: 640)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1391, file: !1066, line: 778, baseType: !1390, size: 64, offset: 704)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1391, file: !1066, line: 787, baseType: !85, size: 32, offset: 768)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1391, file: !1066, line: 788, baseType: !85, size: 32, offset: 800)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1391, file: !1066, line: 790, baseType: !85, size: 32, offset: 832)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1391, file: !1066, line: 792, baseType: !85, size: 32, offset: 864)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1391, file: !1066, line: 793, baseType: !85, size: 32, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1391, file: !1066, line: 794, baseType: !85, size: 32, offset: 928)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1391, file: !1066, line: 795, baseType: !7, size: 32, offset: 960)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1391, file: !1066, line: 797, baseType: !1440, size: 2048, offset: 1024)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1066, line: 551, size: 2048, elements: !1441)
!1441 = !{!1442, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1462, !1465, !1466, !1467}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1440, file: !1066, line: 553, baseType: !1443, size: 128)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1066, line: 411, size: 128, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1443, file: !1066, line: 412, baseType: !143, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1443, file: !1066, line: 413, baseType: !189, size: 32, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1440, file: !1066, line: 554, baseType: !735, size: 192, align: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1440, file: !1066, line: 555, baseType: !435, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1440, file: !1066, line: 556, baseType: !435, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1440, file: !1066, line: 558, baseType: !208, size: 128, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1440, file: !1066, line: 559, baseType: !7, size: 32, offset: 576)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1440, file: !1066, line: 561, baseType: !435, size: 64, offset: 640)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1440, file: !1066, line: 562, baseType: !435, size: 64, offset: 704)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1440, file: !1066, line: 563, baseType: !435, size: 64, offset: 768)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1440, file: !1066, line: 564, baseType: !435, size: 64, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1440, file: !1066, line: 565, baseType: !633, size: 64, offset: 896)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1440, file: !1066, line: 566, baseType: !435, size: 64, offset: 960)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1440, file: !1066, line: 568, baseType: !435, size: 64, offset: 1024)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1440, file: !1066, line: 571, baseType: !85, size: 32, offset: 1088)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1440, file: !1066, line: 572, baseType: !1461, size: 64, offset: 1152)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1440, file: !1066, line: 574, baseType: !1463, size: 64, offset: 1216)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1066, line: 49, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1440, file: !1066, line: 576, baseType: !1463, size: 64, offset: 1280)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1440, file: !1066, line: 578, baseType: !143, size: 64, offset: 1344)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1440, file: !1066, line: 588, baseType: !1468, size: 512, align: 512, offset: 1536)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1066, line: 497, size: 512, align: 512, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1468, file: !1066, line: 498, baseType: !435, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1468, file: !1066, line: 499, baseType: !435, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1468, file: !1066, line: 500, baseType: !435, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1468, file: !1066, line: 501, baseType: !189, size: 32, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1468, file: !1066, line: 502, baseType: !189, size: 32, offset: 224)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1468, file: !1066, line: 503, baseType: !143, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1468, file: !1066, line: 504, baseType: !143, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1468, file: !1066, line: 505, baseType: !143, size: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1468, file: !1066, line: 506, baseType: !1479, size: 64, align: 64, offset: 448)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1066, line: 445, size: 64, align: 64, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1479, file: !1066, line: 446, baseType: !7, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1479, file: !1066, line: 447, baseType: !7, size: 32, offset: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1391, file: !1066, line: 798, baseType: !1484, size: 384, offset: 3072)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1066, line: 592, size: 384, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1484, file: !1066, line: 593, baseType: !208, size: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1484, file: !1066, line: 594, baseType: !143, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1484, file: !1066, line: 595, baseType: !143, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1484, file: !1066, line: 596, baseType: !7, size: 32, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1484, file: !1066, line: 597, baseType: !259, size: 16, offset: 288)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1484, file: !1066, line: 598, baseType: !259, size: 16, offset: 304)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1484, file: !1066, line: 600, baseType: !1493, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1391, file: !1066, line: 799, baseType: !1495, size: 1792, offset: 3456)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1066, line: 610, size: 1792, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1586, !1587}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1495, file: !1066, line: 611, baseType: !735, size: 192, align: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1495, file: !1066, line: 618, baseType: !435, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1495, file: !1066, line: 619, baseType: !435, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1495, file: !1066, line: 620, baseType: !435, size: 64, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1495, file: !1066, line: 621, baseType: !435, size: 64, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1495, file: !1066, line: 622, baseType: !435, size: 64, offset: 448)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1495, file: !1066, line: 629, baseType: !633, size: 64, offset: 512)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1495, file: !1066, line: 630, baseType: !435, size: 64, offset: 576)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1495, file: !1066, line: 631, baseType: !7, size: 32, offset: 640)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1495, file: !1066, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1495, file: !1066, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1495, file: !1066, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1495, file: !1066, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1495, file: !1066, line: 662, baseType: !1511, size: 512, offset: 704)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !1512)
!1512 = !{!1513, !1521, !1522, !1527, !1582, !1583, !1584, !1585}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1511, file: !46, line: 119, baseType: !1514, size: 256)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1515, line: 9, size: 256, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1514, file: !1515, line: 10, baseType: !735, size: 192, align: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1514, file: !1515, line: 11, baseType: !1519, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1520, line: 29, baseType: !633)
!1520 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1511, file: !46, line: 120, baseType: !1519, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1511, file: !46, line: 121, baseType: !1523, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!45, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1511, file: !46, line: 122, baseType: !1528, size: 64, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !1530)
!1530 = !{!1531, !1556, !1557, !1560, !1565, !1566, !1577, !1581}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1529, file: !46, line: 160, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1533, file: !46, line: 216, baseType: !581, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1533, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1533, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1533, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1533, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1533, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1533, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1533, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1533, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1533, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1533, file: !46, line: 227, baseType: !259, size: 16, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1533, file: !46, line: 228, baseType: !259, size: 16, offset: 208)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1533, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1533, file: !46, line: 235, baseType: !1519, size: 64, offset: 256)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1533, file: !46, line: 236, baseType: !1526, size: 64, offset: 320)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1533, file: !46, line: 237, baseType: !1519, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1533, file: !46, line: 238, baseType: !1526, size: 64, offset: 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1533, file: !46, line: 239, baseType: !1553, size: 4096, align: 512, offset: 512)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1529, size: 4096, align: 512, elements: !1554)
!1554 = !{!1555}
!1555 = !DISubrange(count: 8)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1529, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1529, file: !46, line: 162, baseType: !1558, size: 32, offset: 96)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !142, line: 32, baseType: !1559)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !146, line: 96, baseType: !85)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1529, file: !46, line: 163, baseType: !1561, size: 32, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !406, line: 274, baseType: !1562)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !406, line: 274, size: 32, elements: !1563)
!1563 = !{!1564}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1562, file: !406, line: 274, baseType: !410, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1529, file: !46, line: 164, baseType: !1526, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1529, file: !46, line: 165, baseType: !1567, size: 128, offset: 256)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1515, line: 14, size: 128, elements: !1568)
!1568 = !{!1569}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1567, file: !1515, line: 15, baseType: !1570, size: 128)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !736, line: 26, size: 128, elements: !1571)
!1571 = !{!1572, !1576}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1570, file: !736, line: 27, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !736, line: 12, size: 64, elements: !1574)
!1574 = !{!1575}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1573, file: !736, line: 13, baseType: !740, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1570, file: !736, line: 28, baseType: !740, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1529, file: !46, line: 166, baseType: !1578, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!1519}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1529, file: !46, line: 167, baseType: !1519, size: 64, offset: 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1511, file: !46, line: 123, baseType: !249, size: 8, offset: 448)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1511, file: !46, line: 124, baseType: !249, size: 8, offset: 456)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1511, file: !46, line: 125, baseType: !249, size: 8, offset: 464)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1511, file: !46, line: 126, baseType: !249, size: 8, offset: 472)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1495, file: !1066, line: 671, baseType: !1511, size: 512, offset: 1216)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1495, file: !1066, line: 679, baseType: !1588, size: 64, offset: 1728)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1391, file: !1066, line: 800, baseType: !1590, size: 64, offset: 5248)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1066, line: 800, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1391, file: !1066, line: 809, baseType: !1594, size: 64, offset: 5312)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1066, line: 70, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1391, file: !1066, line: 825, baseType: !1597, size: 2048, align: 512, offset: 5632)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1066, line: 509, size: 2048, align: 512, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1597, file: !1066, line: 511, baseType: !435, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1597, file: !1066, line: 512, baseType: !435, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1597, file: !1066, line: 513, baseType: !435, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1597, file: !1066, line: 514, baseType: !435, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1597, file: !1066, line: 515, baseType: !435, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1597, file: !1066, line: 516, baseType: !435, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1597, file: !1066, line: 518, baseType: !435, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1597, file: !1066, line: 519, baseType: !435, size: 64, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1597, file: !1066, line: 520, baseType: !633, size: 64, offset: 512)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1597, file: !1066, line: 522, baseType: !435, size: 64, offset: 576)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1597, file: !1066, line: 523, baseType: !435, size: 64, offset: 640)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1597, file: !1066, line: 524, baseType: !633, size: 64, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1597, file: !1066, line: 526, baseType: !633, size: 64, offset: 768)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1597, file: !1066, line: 527, baseType: !435, size: 64, offset: 832)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1597, file: !1066, line: 529, baseType: !435, size: 64, offset: 896)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1597, file: !1066, line: 530, baseType: !435, size: 64, offset: 960)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1597, file: !1066, line: 531, baseType: !435, size: 64, offset: 1024)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1597, file: !1066, line: 532, baseType: !435, size: 64, offset: 1088)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1597, file: !1066, line: 533, baseType: !435, size: 64, offset: 1152)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1597, file: !1066, line: 535, baseType: !435, size: 64, offset: 1216)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1597, file: !1066, line: 536, baseType: !435, size: 64, offset: 1280)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1597, file: !1066, line: 537, baseType: !435, size: 64, offset: 1344)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1597, file: !1066, line: 538, baseType: !435, size: 64, offset: 1408)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1597, file: !1066, line: 539, baseType: !435, size: 64, offset: 1472)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1597, file: !1066, line: 540, baseType: !435, size: 64, offset: 1536)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1597, file: !1066, line: 541, baseType: !435, size: 64, offset: 1600)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1597, file: !1066, line: 542, baseType: !435, size: 64, offset: 1664)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1597, file: !1066, line: 543, baseType: !435, size: 64, offset: 1728)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1391, file: !1066, line: 833, baseType: !7, size: 32, offset: 7680)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1391, file: !1066, line: 836, baseType: !7, size: 32, offset: 7712)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1391, file: !1066, line: 837, baseType: !85, size: 32, offset: 7744)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1391, file: !1066, line: 838, baseType: !1631, size: 64, offset: 7808)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1634, line: 19, baseType: !1635)
!1634 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1634, line: 19, size: 64, elements: !1636)
!1636 = !{!1637}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1635, file: !1634, line: 19, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 64, elements: !1639)
!1639 = !{!1640}
!1640 = !DISubrange(count: 1)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1391, file: !1066, line: 839, baseType: !1642, size: 64, offset: 7872)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1391, file: !1066, line: 840, baseType: !1633, size: 64, offset: 7936)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1391, file: !1066, line: 841, baseType: !140, size: 64, offset: 8000)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1391, file: !1066, line: 843, baseType: !259, size: 16, offset: 8064)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1391, file: !1066, line: 845, baseType: !259, size: 16, offset: 8080)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1391, file: !1066, line: 848, baseType: !85, size: 32, offset: 8096)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1391, file: !1066, line: 849, baseType: !1649, size: 32, offset: 8128)
!1649 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1066, line: 718, size: 32, elements: !1650)
!1650 = !{!1651, !1658}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1649, file: !1066, line: 724, baseType: !1652, size: 32)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1649, file: !1066, line: 719, size: 32, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1652, file: !1066, line: 720, baseType: !249, size: 8)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1652, file: !1066, line: 721, baseType: !249, size: 8, offset: 8)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1652, file: !1066, line: 722, baseType: !249, size: 8, offset: 16)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1652, file: !1066, line: 723, baseType: !249, size: 8, offset: 24)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1649, file: !1066, line: 725, baseType: !189, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1391, file: !1066, line: 850, baseType: !208, size: 128, offset: 8192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1391, file: !1066, line: 851, baseType: !1661, size: 64, offset: 8320)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1066, line: 60, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1391, file: !1066, line: 855, baseType: !143, size: 64, offset: 8384)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1391, file: !1066, line: 856, baseType: !249, size: 8, offset: 8448)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1391, file: !1066, line: 857, baseType: !249, size: 8, offset: 8456)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1391, file: !1066, line: 858, baseType: !85, size: 32, offset: 8480)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1391, file: !1066, line: 859, baseType: !208, size: 128, offset: 8512)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1391, file: !1066, line: 860, baseType: !85, size: 32, offset: 8640)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1391, file: !1066, line: 861, baseType: !208, size: 128, offset: 8704)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1391, file: !1066, line: 873, baseType: !1671, size: 256, offset: 8832)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1066, line: 376, size: 256, elements: !1672)
!1672 = !{!1673, !1674, !1675, !1676}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1671, file: !1066, line: 381, baseType: !143, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1671, file: !1066, line: 384, baseType: !437, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1671, file: !1066, line: 389, baseType: !437, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1671, file: !1066, line: 392, baseType: !437, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1391, file: !1066, line: 875, baseType: !208, size: 128, offset: 9088)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1391, file: !1066, line: 877, baseType: !1679, size: 320, offset: 9216)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1680, line: 86, size: 320, elements: !1681)
!1680 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1681 = !{!1682, !1683, !1684}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1679, file: !1680, line: 87, baseType: !85, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1679, file: !1680, line: 88, baseType: !208, size: 128, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1679, file: !1680, line: 89, baseType: !208, size: 128, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1391, file: !1066, line: 878, baseType: !735, size: 192, align: 64, offset: 9536)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1391, file: !1066, line: 881, baseType: !1687, size: 64, offset: 9728)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1142, line: 733, size: 10240, elements: !1689)
!1689 = !{!1690, !2333}
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1688, file: !1142, line: 734, baseType: !1691, size: 10240)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1688, file: !1142, line: 734, size: 10240, elements: !1692)
!1692 = !{!1693, !1697, !1710, !2210, !2211, !2212, !2213, !2214, !2215, !2222, !2223, !2224, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2263, !2265, !2268, !2313, !2314, !2315, !2318, !2319, !2320, !2323, !2324, !2325, !2331, !2332}
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !1142, line: 739, baseType: !1694, size: 512, align: 512)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !1142, line: 739, size: 512, align: 512, elements: !1695)
!1695 = !{!1696}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1694, file: !1142, line: 747, baseType: !241, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1691, file: !1142, line: 750, baseType: !1698, size: 128, offset: 512)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1699, line: 218, size: 128, elements: !1700)
!1699 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1700 = !{!1701, !1708, !1709}
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1698, file: !1699, line: 219, baseType: !1702, size: 32)
!1702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1698, file: !1699, line: 219, size: 32, elements: !1703)
!1703 = !{!1704, !1705}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1702, file: !1699, line: 220, baseType: !221, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1702, file: !1699, line: 221, baseType: !1706)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1699, line: 197, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1699, line: 197, elements: !912)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1698, file: !1699, line: 223, baseType: !7, size: 32, offset: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1698, file: !1699, line: 224, baseType: !140, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1691, file: !1142, line: 752, baseType: !1711, size: 64, offset: 640)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!143, !1714, !143, !143, !143, !143}
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !1716)
!1716 = !{!1717, !1723, !1724, !1726, !1727, !1728, !1729, !1730, !1780, !1970, !1979, !1980, !1981, !2200, !2201, !2202, !2203, !2205, !2206, !2209}
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !35, line: 995, baseType: !1718, size: 128)
!1718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !35, line: 995, size: 128, elements: !1719)
!1719 = !{!1720, !1721, !1722}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1718, file: !35, line: 996, baseType: !1417, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1718, file: !35, line: 997, baseType: !843, size: 128, align: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1718, file: !35, line: 998, baseType: !7, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1715, file: !35, line: 1005, baseType: !221, size: 32, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1715, file: !35, line: 1006, baseType: !1725, size: 32, offset: 160)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !142, line: 156, baseType: !7)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1715, file: !35, line: 1007, baseType: !627, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1715, file: !35, line: 1008, baseType: !623, size: 256, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1715, file: !35, line: 1009, baseType: !523, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1715, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1715, file: !35, line: 1011, baseType: !1731, size: 256, offset: 640)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !1732)
!1732 = !{!1733, !1754, !1776, !1777, !1778, !1779}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !35, line: 949, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1735, line: 34, baseType: !1736)
!1735 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1735, line: 25, size: 64, elements: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1736, file: !1735, line: 26, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1740, line: 27, baseType: !1741)
!1740 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1740, line: 13, size: 64, elements: !1742)
!1742 = !{!1743, !1753}
!1743 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1740, line: 14, baseType: !1744, size: 32)
!1744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !1740, line: 14, size: 32, elements: !1745)
!1745 = !{!1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1744, file: !1740, line: 15, baseType: !241, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1740, line: 16, baseType: !1748, size: 32)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1744, file: !1740, line: 16, size: 32, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1748, file: !1740, line: 18, baseType: !249, size: 8)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1748, file: !1740, line: 19, baseType: !1752, size: 24, offset: 8)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 24, elements: !290)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1741, file: !1740, line: 26, baseType: !233, size: 32, offset: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1731, file: !35, line: 950, baseType: !1755, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !1757)
!1757 = !{!1758, !1759, !1760, !1761, !1763, !1764, !1765, !1766}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1756, file: !6, line: 61, baseType: !1404, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1756, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1756, file: !6, line: 63, baseType: !221, size: 32, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1756, file: !6, line: 65, baseType: !1762, size: 256, offset: 128)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 256, elements: !853)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1756, file: !6, line: 66, baseType: !992, size: 64, offset: 384)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1756, file: !6, line: 68, baseType: !1377, size: 192, offset: 448)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1756, file: !6, line: 69, baseType: !843, size: 128, align: 64, offset: 640)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1756, file: !6, line: 70, baseType: !1767, offset: 768)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1768, elements: !1774)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !1769)
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1768, file: !6, line: 55, baseType: !85, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1768, file: !6, line: 56, baseType: !1772, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!1774 = !{!1775}
!1775 = !DISubrange(count: -1)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1731, file: !35, line: 951, baseType: !5, size: 32, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1731, file: !35, line: 952, baseType: !370, size: 32, offset: 160)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1731, file: !35, line: 952, baseType: !370, size: 32, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1731, file: !35, line: 953, baseType: !85, size: 32, offset: 224)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1715, file: !35, line: 1012, baseType: !1781, size: 64, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1783)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1784, line: 110, size: 1472, elements: !1785)
!1784 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1785 = !{!1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1802, !1803, !1804, !1805, !1806, !1807, !1915, !1916, !1917, !1918, !1919, !1950, !1953, !1957, !1965}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1783, file: !1784, line: 111, baseType: !627, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1783, file: !1784, line: 112, baseType: !370, size: 32, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1783, file: !1784, line: 113, baseType: !379, size: 32, offset: 96)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1783, file: !1784, line: 114, baseType: !370, size: 32, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1783, file: !1784, line: 115, baseType: !379, size: 32, offset: 160)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1783, file: !1784, line: 116, baseType: !370, size: 32, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1783, file: !1784, line: 117, baseType: !379, size: 32, offset: 224)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1783, file: !1784, line: 118, baseType: !370, size: 32, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1783, file: !1784, line: 119, baseType: !379, size: 32, offset: 288)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1783, file: !1784, line: 120, baseType: !7, size: 32, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1783, file: !1784, line: 121, baseType: !1797, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1798, line: 24, baseType: !1799)
!1798 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1798, line: 24, size: 64, elements: !1800)
!1800 = !{!1801}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1799, file: !1798, line: 24, baseType: !435, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1783, file: !1784, line: 122, baseType: !1797, size: 64, offset: 448)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1783, file: !1784, line: 123, baseType: !1797, size: 64, offset: 512)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1783, file: !1784, line: 124, baseType: !1797, size: 64, offset: 576)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1783, file: !1784, line: 125, baseType: !1797, size: 64, offset: 640)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1783, file: !1784, line: 127, baseType: !251, size: 8, offset: 704)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1783, file: !1784, line: 129, baseType: !1808, size: 64, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1810, line: 195, size: 1728, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1811 = !{!1812, !1813, !1816, !1821, !1822, !1825, !1826, !1831, !1832, !1833, !1834, !1837, !1838, !1839, !1840, !1841, !1879, !1900}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1809, file: !1810, line: 196, baseType: !1404, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1809, file: !1810, line: 197, baseType: !1814, size: 32, offset: 32)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1810, line: 28, baseType: !1815)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !142, line: 104, baseType: !619)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1810, line: 198, baseType: !1817, size: 192, offset: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !1810, line: 198, size: 192, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1817, file: !1810, line: 199, baseType: !208, size: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1817, file: !1810, line: 200, baseType: !735, size: 192, align: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1809, file: !1810, line: 205, baseType: !1284, size: 320, offset: 256)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1809, file: !1810, line: 206, baseType: !1823, size: 64, offset: 576)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1810, line: 206, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1809, file: !1810, line: 207, baseType: !140, size: 64, offset: 640)
!1826 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1810, line: 208, baseType: !1827, size: 64, offset: 704)
!1827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !1810, line: 208, size: 64, elements: !1828)
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1827, file: !1810, line: 209, baseType: !1124, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1827, file: !1810, line: 210, baseType: !1124, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1809, file: !1810, line: 212, baseType: !1124, size: 64, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1809, file: !1810, line: 213, baseType: !370, size: 32, offset: 832)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1809, file: !1810, line: 214, baseType: !379, size: 32, offset: 864)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1809, file: !1810, line: 215, baseType: !1835, size: 32, offset: 896)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1810, line: 31, baseType: !1836)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !142, line: 110, baseType: !189)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1809, file: !1810, line: 216, baseType: !259, size: 16, offset: 928)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1809, file: !1810, line: 217, baseType: !259, size: 16, offset: 944)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1809, file: !1810, line: 221, baseType: !761, size: 16, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1809, file: !1810, line: 228, baseType: !143, size: 64, offset: 1024)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1810, line: 245, baseType: !1842, size: 320, offset: 1088)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !1810, line: 245, size: 320, elements: !1843)
!1843 = !{!1844, !1871}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1842, file: !1810, line: 246, baseType: !1845, size: 320)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1810, line: 114, size: 320, elements: !1846)
!1846 = !{!1847, !1848, !1860, !1863, !1870}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1845, file: !1810, line: 116, baseType: !143, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1845, file: !1810, line: 117, baseType: !1849, size: 64, offset: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1845, file: !1810, line: 117, size: 64, elements: !1850)
!1850 = !{!1851, !1859}
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1810, line: 118, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1849, file: !1810, line: 118, size: 64, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1852, file: !1810, line: 120, baseType: !257, size: 16)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1852, file: !1810, line: 121, baseType: !1856, size: 48, offset: 16)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 48, elements: !1857)
!1857 = !{!1858}
!1858 = !DISubrange(count: 6)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1849, file: !1810, line: 127, baseType: !143, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1845, file: !1810, line: 129, baseType: !1861, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1810, line: 102, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1845, file: !1810, line: 130, baseType: !1864, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1810, line: 108, size: 192, elements: !1866)
!1866 = !{!1867, !1868, !1869}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1865, file: !1810, line: 109, baseType: !843, size: 128, align: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1865, file: !1810, line: 110, baseType: !1404, size: 32, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1865, file: !1810, line: 111, baseType: !703, size: 8, offset: 160)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1845, file: !1810, line: 131, baseType: !155, size: 64, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !1810, line: 247, baseType: !1872, size: 320)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1842, file: !1810, line: 247, size: 320, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1877, !1878}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1872, file: !1810, line: 248, baseType: !143, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1872, file: !1810, line: 249, baseType: !143, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1872, file: !1810, line: 250, baseType: !1861, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1872, file: !1810, line: 251, baseType: !1864, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1872, file: !1810, line: 252, baseType: !289, size: 64, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1810, line: 260, baseType: !1880, size: 256, offset: 1408)
!1880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !1810, line: 260, size: 256, elements: !1881)
!1881 = !{!1882, !1888}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1880, file: !1810, line: 261, baseType: !1883, size: 256)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1810, line: 134, size: 256, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1883, file: !1810, line: 135, baseType: !140, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1883, file: !1810, line: 136, baseType: !1887, size: 256)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !853)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !1810, line: 262, baseType: !1889, size: 256)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !1810, line: 262, size: 256, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1889, file: !1810, line: 264, baseType: !208, size: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1889, file: !1810, line: 265, baseType: !1893, size: 128, offset: 128)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1894, line: 22, size: 128, elements: !1895)
!1894 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1895 = !{!1896, !1899}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1893, file: !1894, line: 23, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1894, line: 23, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1893, file: !1894, line: 24, baseType: !143, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1809, file: !1810, line: 280, baseType: !1901, size: 64, offset: 1664)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1810, line: 176, size: 192, elements: !1903)
!1903 = !{!1904, !1913, !1914}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1902, file: !1810, line: 177, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1810, line: 171, baseType: !1906)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!85, !1808, !1909, !1911, !1808}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1862)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1883)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1902, file: !1810, line: 178, baseType: !1808, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1902, file: !1810, line: 179, baseType: !1861, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1783, file: !1784, line: 130, baseType: !1808, size: 64, offset: 832)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1783, file: !1784, line: 131, baseType: !1808, size: 64, offset: 896)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1783, file: !1784, line: 132, baseType: !1808, size: 64, offset: 960)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1783, file: !1784, line: 135, baseType: !140, size: 64, offset: 1024)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1783, file: !1784, line: 137, baseType: !1920, size: 64, offset: 1088)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1922, line: 14, size: 1088, elements: !1923)
!1922 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1923 = !{!1924, !1925, !1934, !1935, !1936, !1937, !1938, !1939}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1921, file: !1922, line: 15, baseType: !1404, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1921, file: !1922, line: 17, baseType: !1926, size: 320, offset: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1927, line: 22, size: 320, elements: !1928)
!1927 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1928 = !{!1929, !1930, !1931, !1932}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1926, file: !1927, line: 23, baseType: !581, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1926, file: !1927, line: 24, baseType: !633, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1926, file: !1927, line: 26, baseType: !208, size: 128, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1926, file: !1927, line: 28, baseType: !1933, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1921, file: !1922, line: 19, baseType: !143, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1921, file: !1922, line: 20, baseType: !627, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1921, file: !1922, line: 23, baseType: !869, size: 128, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1921, file: !1922, line: 24, baseType: !370, size: 32, offset: 640)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1921, file: !1922, line: 29, baseType: !627, size: 64, offset: 704)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1921, file: !1922, line: 36, baseType: !1940, size: 320, offset: 768)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1941, line: 15, size: 320, elements: !1942)
!1941 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1942 = !{!1943, !1944, !1945, !1946, !1947, !1948, !1949}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1940, file: !1941, line: 16, baseType: !581, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1940, file: !1941, line: 18, baseType: !85, size: 32, offset: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1940, file: !1941, line: 19, baseType: !85, size: 32, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1940, file: !1941, line: 20, baseType: !85, size: 32, offset: 96)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1940, file: !1941, line: 21, baseType: !85, size: 32, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1940, file: !1941, line: 22, baseType: !143, size: 64, offset: 192)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1940, file: !1941, line: 23, baseType: !143, size: 64, offset: 256)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1783, file: !1784, line: 138, baseType: !1951, size: 64, offset: 1152)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1142, line: 901, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1783, file: !1784, line: 139, baseType: !1954, size: 64, offset: 1216)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1956, line: 16, flags: DIFlagFwdDecl)
!1956 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1783, file: !1784, line: 140, baseType: !1958, size: 64, offset: 1280)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1784, line: 25, size: 64, elements: !1960)
!1960 = !{!1961, !1962, !1963}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1959, file: !1784, line: 26, baseType: !241, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1959, file: !1784, line: 27, baseType: !85, size: 32, offset: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1959, file: !1784, line: 28, baseType: !1964, offset: 64)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, elements: !1774)
!1965 = !DIDerivedType(tag: DW_TAG_member, scope: !1783, file: !1784, line: 142, baseType: !1966, size: 128, offset: 1344)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1783, file: !1784, line: 142, size: 128, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1966, file: !1784, line: 143, baseType: !85, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1966, file: !1784, line: 144, baseType: !843, size: 128, align: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1715, file: !35, line: 1013, baseType: !1971, size: 256, offset: 960)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !1972)
!1972 = !{!1973, !1974, !1975, !1976, !1977, !1978}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1971, file: !35, line: 971, baseType: !143, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1971, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1971, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1971, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1971, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1971, file: !35, line: 976, baseType: !523, size: 64, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1715, file: !35, line: 1014, baseType: !1196, size: 128, offset: 1216)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1715, file: !35, line: 1015, baseType: !364, size: 64, offset: 1344)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1715, file: !35, line: 1016, baseType: !1982, size: 64, offset: 1408)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !1985)
!1985 = !{!1986, !1987, !1991, !1996, !2000, !2028, !2029, !2035, !2048, !2056, !2060, !2061, !2122, !2123, !2127, !2132, !2133, !2137, !2141, !2147, !2148, !2152, !2153, !2159, !2163, !2167, !2173, !2177, !2181, !2185, !2189, !2190, !2196}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1984, file: !35, line: 1915, baseType: !552, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1984, file: !35, line: 1916, baseType: !1988, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!523, !1714, !523, !85}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1984, file: !35, line: 1917, baseType: !1992, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!321, !1714, !289, !144, !1995}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1984, file: !35, line: 1918, baseType: !1997, size: 64, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!321, !1714, !155, !144, !1995}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1984, file: !35, line: 1919, baseType: !2001, size: 64, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!321, !2004, !2026}
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !2006)
!2006 = !{!2007, !2008, !2009, !2013, !2014, !2015, !2016}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2005, file: !35, line: 374, baseType: !1714, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2005, file: !35, line: 375, baseType: !523, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2005, file: !35, line: 376, baseType: !2010, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !2004, !324}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2005, file: !35, line: 377, baseType: !140, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2005, file: !35, line: 378, baseType: !85, size: 32, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2005, file: !35, line: 379, baseType: !257, size: 16, offset: 288)
!2016 = !DIDerivedType(tag: DW_TAG_member, scope: !2005, file: !35, line: 380, baseType: !2017, size: 64, offset: 320)
!2017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2005, file: !35, line: 380, size: 64, elements: !2018)
!2018 = !{!2019, !2022}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2017, file: !35, line: 386, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2017, file: !35, line: 395, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!321, !140}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1984, file: !35, line: 1920, baseType: !2001, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1984, file: !35, line: 1921, baseType: !2030, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!85, !2004, !2033, !7}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1984, file: !35, line: 1923, baseType: !2036, size: 64, offset: 448)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!85, !1714, !2039}
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !2041)
!2041 = !{!2042, !2047}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2040, file: !35, line: 1859, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !2044)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!703, !2039, !155, !85, !523, !435, !7}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2040, file: !35, line: 1860, baseType: !523, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1984, file: !35, line: 1924, baseType: !2049, size: 64, offset: 512)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!2052, !1714, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2053, line: 59, baseType: !7)
!2053 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !538, line: 31, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1984, file: !35, line: 1925, baseType: !2057, size: 64, offset: 576)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!324, !1714, !7, !143}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1984, file: !35, line: 1926, baseType: !2057, size: 64, offset: 640)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1984, file: !35, line: 1927, baseType: !2062, size: 64, offset: 704)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!85, !1714, !2065}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1142, line: 625, size: 1344, elements: !2067)
!2067 = !{!2068, !2077, !2078, !2086, !2093, !2094, !2099, !2100, !2105, !2106, !2109, !2113, !2114, !2115, !2116, !2117, !2120}
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !1142, line: 628, baseType: !2069, size: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !1142, line: 628, size: 128, elements: !2070)
!2070 = !{!2071, !2076}
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2069, file: !1142, line: 629, baseType: !2072, size: 128)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !1142, line: 629, size: 128, elements: !2073)
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2072, file: !1142, line: 631, baseType: !143, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2072, file: !1142, line: 632, baseType: !143, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2069, file: !1142, line: 635, baseType: !843, size: 128, align: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2066, file: !1142, line: 639, baseType: !1687, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2066, file: !1142, line: 640, baseType: !2079, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2080, line: 297, baseType: !2081)
!2080 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2080, line: 297, size: 64, elements: !2082)
!2082 = !{!2083}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2081, file: !2080, line: 297, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2085, line: 19, baseType: !143)
!2085 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2086 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !1142, line: 646, baseType: !2087, size: 64, offset: 256)
!2087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !1142, line: 646, size: 64, elements: !2088)
!2088 = !{!2089, !2092}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2087, file: !1142, line: 647, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2091)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1142, line: 542, baseType: !143)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2087, file: !1142, line: 648, baseType: !2091, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2066, file: !1142, line: 666, baseType: !85, size: 32, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2066, file: !1142, line: 667, baseType: !2095, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1142, line: 579, size: 320, elements: !2097)
!2097 = !{!2098}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2096, file: !1142, line: 580, baseType: !1284, size: 320)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2066, file: !1142, line: 670, baseType: !703, size: 8, offset: 448)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2066, file: !1142, line: 681, baseType: !2101, size: 256, offset: 512)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2066, file: !1142, line: 678, size: 256, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2101, file: !1142, line: 679, baseType: !735, size: 192, align: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2101, file: !1142, line: 680, baseType: !143, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2066, file: !1142, line: 689, baseType: !208, size: 128, offset: 768)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2066, file: !1142, line: 691, baseType: !2107, size: 64, offset: 896)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1142, line: 691, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2066, file: !1142, line: 694, baseType: !2110, size: 64, offset: 960)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2112)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1142, line: 694, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2066, file: !1142, line: 697, baseType: !143, size: 64, offset: 1024)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2066, file: !1142, line: 699, baseType: !1714, size: 64, offset: 1088)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2066, file: !1142, line: 700, baseType: !140, size: 64, offset: 1152)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2066, file: !1142, line: 711, baseType: !627, size: 64, offset: 1216)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2066, file: !1142, line: 717, baseType: !2118, size: 64, offset: 1280)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1142, line: 717, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2066, file: !1142, line: 722, baseType: !2121, offset: 1344)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1142, line: 570, elements: !912)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1984, file: !35, line: 1928, baseType: !143, size: 64, offset: 768)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1984, file: !35, line: 1929, baseType: !2124, size: 64, offset: 832)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!85, !364, !1714}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1984, file: !35, line: 1930, baseType: !2128, size: 64, offset: 896)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!85, !1714, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !140)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1984, file: !35, line: 1931, baseType: !2124, size: 64, offset: 960)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1984, file: !35, line: 1932, baseType: !2134, size: 64, offset: 1024)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!85, !1714, !523, !523, !85}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1984, file: !35, line: 1933, baseType: !2138, size: 64, offset: 1088)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!85, !85, !1714, !85}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1984, file: !35, line: 1934, baseType: !2142, size: 64, offset: 1152)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!85, !1714, !85, !2145}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1984, file: !35, line: 1935, baseType: !1711, size: 64, offset: 1216)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1984, file: !35, line: 1936, baseType: !2149, size: 64, offset: 1280)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!85, !85}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1984, file: !35, line: 1937, baseType: !2142, size: 64, offset: 1344)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1984, file: !35, line: 1938, baseType: !2154, size: 64, offset: 1408)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!321, !2157, !1714, !1995, !144, !7}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1066, line: 59, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1984, file: !35, line: 1939, baseType: !2160, size: 64, offset: 1472)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!321, !1714, !1995, !2157, !144, !7}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1984, file: !35, line: 1940, baseType: !2164, size: 64, offset: 1536)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !1714}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1984, file: !35, line: 1941, baseType: !2168, size: 64, offset: 1600)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!85, !1714, !85, !2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1984, file: !35, line: 1942, baseType: !2174, size: 64, offset: 1664)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!324, !1714, !85, !523, !523}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1984, file: !35, line: 1944, baseType: !2178, size: 64, offset: 1728)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !1064, !1714}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1984, file: !35, line: 1948, baseType: !2182, size: 64, offset: 1792)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!321, !1714, !523, !1714, !523, !144, !7}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1984, file: !35, line: 1950, baseType: !2186, size: 64, offset: 1856)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!523, !1714, !523, !1714, !523, !523, !7}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1984, file: !35, line: 1953, baseType: !2134, size: 64, offset: 1920)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1984, file: !35, line: 1954, baseType: !2191, size: 64, offset: 1984)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!85, !2194, !7}
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1984, file: !35, line: 1955, baseType: !2197, size: 64, offset: 2048)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!85, !2194, !2033, !7}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1715, file: !35, line: 1018, baseType: !435, size: 64, offset: 1472)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1715, file: !35, line: 1020, baseType: !140, size: 64, offset: 1536)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1715, file: !35, line: 1023, baseType: !140, size: 64, offset: 1600)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1715, file: !35, line: 1027, baseType: !2204, size: 64, offset: 1664)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1715, file: !35, line: 1029, baseType: !360, size: 64, offset: 1728)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1715, file: !35, line: 1030, baseType: !2207, size: 32, offset: 1792)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2208, line: 8, baseType: !189)
!2208 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1715, file: !35, line: 1031, baseType: !2207, size: 32, offset: 1824)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1691, file: !1142, line: 756, baseType: !143, size: 64, offset: 704)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1691, file: !1142, line: 757, baseType: !143, size: 64, offset: 768)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1691, file: !1142, line: 760, baseType: !143, size: 64, offset: 832)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1691, file: !1142, line: 761, baseType: !143, size: 64, offset: 896)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1691, file: !1142, line: 763, baseType: !143, size: 64, offset: 960)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1691, file: !1142, line: 764, baseType: !2216, size: 64, offset: 1024)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2080, line: 299, baseType: !2218)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2080, line: 299, size: 64, elements: !2219)
!2219 = !{!2220}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2218, file: !2080, line: 299, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2085, line: 18, baseType: !143)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1691, file: !1142, line: 773, baseType: !241, size: 32, offset: 1088)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1691, file: !1142, line: 785, baseType: !241, size: 32, offset: 1120)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1691, file: !1142, line: 795, baseType: !2225, size: 64, offset: 1152)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1142, line: 726, size: 128, elements: !2227)
!2227 = !{!2228, !2229}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2226, file: !1142, line: 727, baseType: !435, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2226, file: !1142, line: 728, baseType: !85, size: 32, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1691, file: !1142, line: 801, baseType: !143, size: 64, offset: 1216)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1691, file: !1142, line: 804, baseType: !627, size: 64, offset: 1280)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1691, file: !1142, line: 806, baseType: !85, size: 32, offset: 1344)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1691, file: !1142, line: 808, baseType: !221, size: 32, offset: 1376)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1691, file: !1142, line: 823, baseType: !1284, size: 320, offset: 1408)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1691, file: !1142, line: 825, baseType: !208, size: 128, offset: 1728)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1691, file: !1142, line: 845, baseType: !85, size: 32, offset: 1856)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1691, file: !1142, line: 849, baseType: !143, size: 64, offset: 1920)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1691, file: !1142, line: 850, baseType: !143, size: 64, offset: 1984)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1691, file: !1142, line: 852, baseType: !143, size: 64, offset: 2048)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1691, file: !1142, line: 853, baseType: !143, size: 64, offset: 2112)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1691, file: !1142, line: 854, baseType: !629, size: 64, offset: 2176)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1691, file: !1142, line: 855, baseType: !143, size: 64, offset: 2240)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1691, file: !1142, line: 856, baseType: !143, size: 64, offset: 2304)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1691, file: !1142, line: 857, baseType: !143, size: 64, offset: 2368)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1691, file: !1142, line: 858, baseType: !143, size: 64, offset: 2432)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1691, file: !1142, line: 865, baseType: !410, size: 32, offset: 2496)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1691, file: !1142, line: 867, baseType: !221, size: 32, offset: 2528)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1691, file: !1142, line: 869, baseType: !143, size: 64, offset: 2560)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1691, file: !1142, line: 869, baseType: !143, size: 64, offset: 2624)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1691, file: !1142, line: 869, baseType: !143, size: 64, offset: 2688)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1691, file: !1142, line: 869, baseType: !143, size: 64, offset: 2752)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1691, file: !1142, line: 870, baseType: !143, size: 64, offset: 2816)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1691, file: !1142, line: 870, baseType: !143, size: 64, offset: 2880)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1691, file: !1142, line: 870, baseType: !143, size: 64, offset: 2944)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1691, file: !1142, line: 871, baseType: !143, size: 64, offset: 3008)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1691, file: !1142, line: 871, baseType: !143, size: 64, offset: 3072)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1691, file: !1142, line: 871, baseType: !143, size: 64, offset: 3136)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1691, file: !1142, line: 871, baseType: !143, size: 64, offset: 3200)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1691, file: !1142, line: 873, baseType: !2260, size: 3328, offset: 3264)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 3328, elements: !2261)
!2261 = !{!2262}
!2262 = !DISubrange(count: 52)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1691, file: !1142, line: 875, baseType: !2264, size: 1280, offset: 6592)
!2264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1926, size: 1280, elements: !853)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1691, file: !1142, line: 877, baseType: !2266, size: 64, offset: 7872)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1142, line: 877, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1691, file: !1142, line: 880, baseType: !2269, size: 1088, offset: 7936)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2270, line: 72, baseType: !2271)
!2270 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2270, line: 23, size: 1088, elements: !2272)
!2272 = !{!2273, !2274, !2275, !2276, !2277, !2280, !2281, !2282, !2283, !2310, !2311, !2312}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2271, file: !2270, line: 28, baseType: !435, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2271, file: !2270, line: 38, baseType: !629, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2271, file: !2270, line: 40, baseType: !143, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2271, file: !2270, line: 43, baseType: !1284, size: 320, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2271, file: !2270, line: 44, baseType: !2278, size: 64, offset: 512)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2270, line: 44, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2271, file: !2270, line: 48, baseType: !143, size: 64, offset: 576)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2271, file: !2270, line: 59, baseType: !623, size: 256, offset: 640)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2271, file: !2270, line: 60, baseType: !140, size: 64, offset: 896)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2271, file: !2270, line: 61, baseType: !2284, size: 64, offset: 960)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2286)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2287, line: 13, size: 1216, elements: !2288)
!2287 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2286, file: !2287, line: 14, baseType: !140, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2286, file: !2287, line: 15, baseType: !143, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2286, file: !2287, line: 17, baseType: !143, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2286, file: !2287, line: 17, baseType: !143, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2286, file: !2287, line: 18, baseType: !143, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2286, file: !2287, line: 18, baseType: !143, size: 64, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2286, file: !2287, line: 19, baseType: !2296, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2286, file: !2287, line: 21, baseType: !324, size: 64, offset: 448)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2286, file: !2287, line: 23, baseType: !324, size: 64, offset: 512)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2286, file: !2287, line: 24, baseType: !324, size: 64, offset: 576)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2286, file: !2287, line: 25, baseType: !324, size: 64, offset: 640)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2286, file: !2287, line: 26, baseType: !324, size: 64, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2286, file: !2287, line: 27, baseType: !324, size: 64, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2286, file: !2287, line: 28, baseType: !324, size: 64, offset: 832)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2286, file: !2287, line: 29, baseType: !324, size: 64, offset: 896)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2286, file: !2287, line: 30, baseType: !324, size: 64, offset: 960)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2286, file: !2287, line: 31, baseType: !324, size: 64, offset: 1024)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2286, file: !2287, line: 32, baseType: !324, size: 64, offset: 1088)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2286, file: !2287, line: 33, baseType: !324, size: 64, offset: 1152)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2271, file: !2270, line: 63, baseType: !241, size: 32, offset: 1024)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2271, file: !2270, line: 69, baseType: !257, size: 16, offset: 1056)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2271, file: !2270, line: 70, baseType: !759, size: 16, offset: 1072)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1691, file: !1142, line: 882, baseType: !143, size: 64, offset: 9024)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1691, file: !1142, line: 885, baseType: !221, size: 32, offset: 9088)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1691, file: !1142, line: 886, baseType: !2316, size: 64, offset: 9152)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1142, line: 732, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1691, file: !1142, line: 901, baseType: !1951, size: 64, offset: 9216)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1691, file: !1142, line: 904, baseType: !1714, size: 64, offset: 9280)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1691, file: !1142, line: 906, baseType: !2321, size: 64, offset: 9344)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1142, line: 906, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1691, file: !1142, line: 930, baseType: !241, size: 32, offset: 9408)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1691, file: !1142, line: 933, baseType: !241, size: 32, offset: 9440)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1691, file: !1142, line: 935, baseType: !2326, size: 64, offset: 9472)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !2327)
!2327 = !{!2328}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2326, file: !57, line: 104, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1691, file: !1142, line: 940, baseType: !627, size: 64, offset: 9536)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1691, file: !1142, line: 942, baseType: !883, size: 256, offset: 9600)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1688, file: !1142, line: 986, baseType: !2334, offset: 10240)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, elements: !1774)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1391, file: !1066, line: 882, baseType: !1687, size: 64, offset: 9792)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1391, file: !1066, line: 884, baseType: !85, size: 32, offset: 9856)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1391, file: !1066, line: 885, baseType: !85, size: 32, offset: 9888)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1391, file: !1066, line: 886, baseType: !85, size: 32, offset: 9920)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1391, file: !1066, line: 888, baseType: !85, size: 32, offset: 9952)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1391, file: !1066, line: 890, baseType: !143, size: 64, offset: 9984)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1391, file: !1066, line: 893, baseType: !7, size: 32, offset: 10048)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1391, file: !1066, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1391, file: !1066, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1391, file: !1066, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1391, file: !1066, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1391, file: !1066, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1391, file: !1066, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1391, file: !1066, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1391, file: !1066, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1391, file: !1066, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1391, file: !1066, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1391, file: !1066, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1391, file: !1066, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1391, file: !1066, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1391, file: !1066, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1391, file: !1066, line: 969, baseType: !143, size: 64, offset: 10176)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1391, file: !1066, line: 971, baseType: !2358, size: 448, offset: 10240)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !2359)
!2359 = !{!2360, !2361, !2366}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2358, file: !51, line: 26, baseType: !143, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2358, file: !51, line: 27, baseType: !2362, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!324, !2365}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, scope: !2358, file: !51, line: 28, baseType: !2367, size: 320, offset: 128)
!2367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2358, file: !51, line: 28, size: 320, elements: !2368)
!2368 = !{!2369, !2379, !2404}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2367, file: !51, line: 37, baseType: !2370, size: 320)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2367, file: !51, line: 30, size: 320, elements: !2371)
!2371 = !{!2372, !2374, !2375, !2376, !2377, !2378}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2370, file: !51, line: 31, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2370, file: !51, line: 32, baseType: !189, size: 32, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2370, file: !51, line: 33, baseType: !189, size: 32, offset: 96)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2370, file: !51, line: 34, baseType: !189, size: 32, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2370, file: !51, line: 35, baseType: !435, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2370, file: !51, line: 36, baseType: !2373, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2367, file: !51, line: 47, baseType: !2380, size: 192)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2367, file: !51, line: 39, size: 192, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2403}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2380, file: !51, line: 40, baseType: !1558, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2380, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, scope: !2380, file: !51, line: 42, baseType: !2385, size: 64, offset: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2380, file: !51, line: 42, size: 64, elements: !2386)
!2386 = !{!2387, !2395}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2385, file: !51, line: 43, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2390, line: 7, size: 128, elements: !2391)
!2390 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2391 = !{!2392, !2394}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2389, file: !2390, line: 8, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !146, line: 93, baseType: !525)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2389, file: !2390, line: 9, baseType: !525, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2385, file: !51, line: 44, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2398, line: 7, size: 64, elements: !2399)
!2398 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2399 = !{!2400, !2402}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2397, file: !2398, line: 8, baseType: !2401, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2398, line: 5, baseType: !619)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2397, file: !2398, line: 9, baseType: !619, size: 32, offset: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2380, file: !51, line: 46, baseType: !435, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2367, file: !51, line: 55, baseType: !2405, size: 256)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2367, file: !51, line: 49, size: 256, elements: !2406)
!2406 = !{!2407, !2410, !2411, !2412, !2413}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2405, file: !51, line: 50, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2405, file: !51, line: 51, baseType: !85, size: 32, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2405, file: !51, line: 52, baseType: !85, size: 32, offset: 96)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2405, file: !51, line: 53, baseType: !143, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2405, file: !51, line: 54, baseType: !143, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1391, file: !1066, line: 973, baseType: !2415, size: 32, offset: 10688)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !142, line: 27, baseType: !2416)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !146, line: 28, baseType: !85)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1391, file: !1066, line: 974, baseType: !2415, size: 32, offset: 10720)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1391, file: !1066, line: 978, baseType: !143, size: 64, offset: 10752)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1391, file: !1066, line: 987, baseType: !1390, size: 64, offset: 10816)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1391, file: !1066, line: 990, baseType: !1390, size: 64, offset: 10880)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1391, file: !1066, line: 995, baseType: !208, size: 128, offset: 10944)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1391, file: !1066, line: 996, baseType: !208, size: 128, offset: 11072)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1391, file: !1066, line: 997, baseType: !1390, size: 64, offset: 11200)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1391, file: !1066, line: 1005, baseType: !208, size: 128, offset: 11264)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1391, file: !1066, line: 1006, baseType: !208, size: 128, offset: 11392)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1391, file: !1066, line: 1009, baseType: !1755, size: 64, offset: 11520)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1391, file: !1066, line: 1010, baseType: !2428, size: 512, offset: 11584)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 512, elements: !853)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1391, file: !1066, line: 1011, baseType: !208, size: 128, offset: 12096)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1391, file: !1066, line: 1012, baseType: !208, size: 128, offset: 12224)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1391, file: !1066, line: 1014, baseType: !571, size: 64, offset: 12352)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1391, file: !1066, line: 1017, baseType: !752, size: 64, offset: 12416)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1391, file: !1066, line: 1020, baseType: !752, size: 64, offset: 12480)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1391, file: !1066, line: 1023, baseType: !140, size: 64, offset: 12544)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1391, file: !1066, line: 1025, baseType: !435, size: 64, offset: 12608)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1391, file: !1066, line: 1026, baseType: !435, size: 64, offset: 12672)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1391, file: !1066, line: 1031, baseType: !435, size: 64, offset: 12736)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1391, file: !1066, line: 1032, baseType: !2439, size: 192, offset: 12800)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1066, line: 324, size: 192, elements: !2440)
!2440 = !{!2441, !2442, !2443}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2439, file: !1066, line: 326, baseType: !435, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2439, file: !1066, line: 327, baseType: !435, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2439, file: !1066, line: 328, baseType: !581, size: 32, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1391, file: !1066, line: 1041, baseType: !143, size: 64, offset: 12992)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1391, file: !1066, line: 1042, baseType: !143, size: 64, offset: 13056)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1391, file: !1066, line: 1045, baseType: !435, size: 64, offset: 13120)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1391, file: !1066, line: 1048, baseType: !435, size: 64, offset: 13184)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1391, file: !1066, line: 1051, baseType: !143, size: 64, offset: 13248)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1391, file: !1066, line: 1052, baseType: !143, size: 64, offset: 13312)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1391, file: !1066, line: 1055, baseType: !2451, size: 640, offset: 13376)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2452, line: 132, size: 640, elements: !2453)
!2452 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2453 = !{!2454, !2460, !2461}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2451, file: !2452, line: 133, baseType: !2455, size: 576)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2456, size: 576, elements: !290)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2452, line: 117, size: 192, elements: !2457)
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2456, file: !2452, line: 118, baseType: !435, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2456, file: !2452, line: 119, baseType: !1567, size: 128, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2451, file: !2452, line: 134, baseType: !7, size: 32, offset: 576)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2451, file: !2452, line: 135, baseType: !7, size: 32, offset: 608)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1391, file: !1066, line: 1058, baseType: !2463, size: 448, offset: 14016)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2452, line: 144, size: 448, elements: !2464)
!2464 = !{!2465, !2466, !2467}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2463, file: !2452, line: 145, baseType: !843, size: 128, align: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2463, file: !2452, line: 146, baseType: !623, size: 256, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2463, file: !2452, line: 147, baseType: !7, size: 32, offset: 384)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1391, file: !1066, line: 1064, baseType: !1781, size: 64, offset: 14464)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1391, file: !1066, line: 1067, baseType: !1781, size: 64, offset: 14528)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1391, file: !1066, line: 1070, baseType: !1781, size: 64, offset: 14592)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1391, file: !1066, line: 1074, baseType: !1808, size: 64, offset: 14656)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1391, file: !1066, line: 1084, baseType: !2473, size: 128, offset: 14720)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 128, elements: !2474)
!2474 = !{!2475}
!2475 = !DISubrange(count: 16)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1391, file: !1066, line: 1086, baseType: !2477, size: 64, offset: 14848)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1066, line: 55, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1391, file: !1066, line: 1089, baseType: !2480, size: 64, offset: 14912)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2481, line: 12, size: 64, elements: !2482)
!2481 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2482 = !{!2483}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2480, file: !2481, line: 13, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2481, line: 8, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1391, file: !1066, line: 1090, baseType: !2487, size: 128, offset: 14976)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2488, line: 13, size: 128, elements: !2489)
!2488 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2489 = !{!2490}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2487, file: !2488, line: 14, baseType: !208, size: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1391, file: !1066, line: 1097, baseType: !2492, size: 64, offset: 15104)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1066, line: 50, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1391, file: !1066, line: 1100, baseType: !2495, size: 64, offset: 15168)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1066, line: 1100, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1391, file: !1066, line: 1103, baseType: !2498, size: 64, offset: 15232)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1066, line: 53, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1391, file: !1066, line: 1107, baseType: !2501, size: 64, offset: 15296)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2503, line: 35, flags: DIFlagFwdDecl)
!2503 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1391, file: !1066, line: 1110, baseType: !2505, size: 64, offset: 15360)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2507, line: 93, size: 8768, elements: !2508)
!2507 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2556, !2565, !2566, !2568, !2569, !2570, !2573, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2611, !2612, !2619, !2629, !2632, !2633, !2636, !2637, !2638, !2639, !2640, !2641}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2506, file: !2507, line: 94, baseType: !1404, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2506, file: !2507, line: 95, baseType: !241, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2506, file: !2507, line: 96, baseType: !85, size: 32, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2506, file: !2507, line: 97, baseType: !85, size: 32, offset: 96)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2506, file: !2507, line: 98, baseType: !208, size: 128, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2506, file: !2507, line: 100, baseType: !1377, size: 192, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2506, file: !2507, line: 103, baseType: !1390, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2506, file: !2507, line: 106, baseType: !2517, size: 192, offset: 512)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1956, line: 32, size: 192, elements: !2518)
!2518 = !{!2519, !2520}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2517, file: !1956, line: 33, baseType: !208, size: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2517, file: !1956, line: 34, baseType: !2521, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2522, line: 25, baseType: !2523)
!2522 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2522, line: 23, size: 64, elements: !2524)
!2524 = !{!2525}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2523, file: !2522, line: 24, baseType: !1638, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2506, file: !2507, line: 109, baseType: !992, size: 64, offset: 704)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2506, file: !2507, line: 112, baseType: !85, size: 32, offset: 768)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2506, file: !2507, line: 114, baseType: !85, size: 32, offset: 800)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2506, file: !2507, line: 115, baseType: !1390, size: 64, offset: 832)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2506, file: !2507, line: 118, baseType: !85, size: 32, offset: 896)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2506, file: !2507, line: 119, baseType: !7, size: 32, offset: 928)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2506, file: !2507, line: 121, baseType: !2533, size: 64, offset: 960)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2507, line: 80, size: 448, elements: !2535)
!2535 = !{!2536, !2537, !2543}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2534, file: !2507, line: 81, baseType: !241, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2534, file: !2507, line: 82, baseType: !2538, size: 128, offset: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2507, line: 75, size: 128, elements: !2539)
!2539 = !{!2540, !2541}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2538, file: !2507, line: 76, baseType: !1390, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2538, file: !2507, line: 77, baseType: !2542, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2534, file: !2507, line: 83, baseType: !572, size: 256, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2506, file: !2507, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2506, file: !2507, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2506, file: !2507, line: 138, baseType: !7, size: 32, offset: 1056)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2506, file: !2507, line: 139, baseType: !208, size: 128, offset: 1088)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2506, file: !2507, line: 142, baseType: !1511, size: 512, offset: 1216)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2506, file: !2507, line: 143, baseType: !1519, size: 64, offset: 1728)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2506, file: !2507, line: 150, baseType: !2551, size: 256, offset: 1792)
!2551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2552, size: 256, elements: !742)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2507, line: 38, size: 128, elements: !2553)
!2553 = !{!2554, !2555}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2552, file: !2507, line: 39, baseType: !435, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2552, file: !2507, line: 40, baseType: !435, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2506, file: !2507, line: 156, baseType: !2557, size: 192, offset: 2048)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2507, line: 66, size: 192, elements: !2558)
!2558 = !{!2559}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2557, file: !2507, line: 67, baseType: !2560, size: 192)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2507, line: 47, size: 192, elements: !2561)
!2561 = !{!2562, !2563, !2564}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2560, file: !2507, line: 48, baseType: !629, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2560, file: !2507, line: 49, baseType: !629, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2560, file: !2507, line: 50, baseType: !629, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2506, file: !2507, line: 160, baseType: !2451, size: 640, offset: 2240)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2506, file: !2507, line: 163, baseType: !2567, size: 256, offset: 2880)
!2567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1755, size: 256, elements: !853)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2506, file: !2507, line: 169, baseType: !1755, size: 64, offset: 3136)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2506, file: !2507, line: 172, baseType: !85, size: 32, offset: 3200)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2506, file: !2507, line: 174, baseType: !2571, size: 64, offset: 3264)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2507, line: 174, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2506, file: !2507, line: 185, baseType: !2574, size: 64, offset: 3328)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !406, line: 860, baseType: !2575)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 853, size: 64, elements: !2576)
!2576 = !{!2577, !2578}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2575, file: !406, line: 858, baseType: !405, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2575, file: !406, line: 859, baseType: !221, size: 32, offset: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2506, file: !2507, line: 186, baseType: !435, size: 64, offset: 3392)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2506, file: !2507, line: 186, baseType: !435, size: 64, offset: 3456)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2506, file: !2507, line: 186, baseType: !435, size: 64, offset: 3520)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2506, file: !2507, line: 186, baseType: !435, size: 64, offset: 3584)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2506, file: !2507, line: 187, baseType: !435, size: 64, offset: 3648)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2506, file: !2507, line: 188, baseType: !435, size: 64, offset: 3712)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2506, file: !2507, line: 189, baseType: !2439, size: 192, offset: 3776)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2506, file: !2507, line: 190, baseType: !143, size: 64, offset: 3968)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2506, file: !2507, line: 190, baseType: !143, size: 64, offset: 4032)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2506, file: !2507, line: 190, baseType: !143, size: 64, offset: 4096)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2506, file: !2507, line: 190, baseType: !143, size: 64, offset: 4160)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2506, file: !2507, line: 191, baseType: !143, size: 64, offset: 4224)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2506, file: !2507, line: 191, baseType: !143, size: 64, offset: 4288)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2506, file: !2507, line: 191, baseType: !143, size: 64, offset: 4352)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2506, file: !2507, line: 191, baseType: !143, size: 64, offset: 4416)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2506, file: !2507, line: 192, baseType: !143, size: 64, offset: 4480)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2506, file: !2507, line: 192, baseType: !143, size: 64, offset: 4544)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2506, file: !2507, line: 192, baseType: !143, size: 64, offset: 4608)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2506, file: !2507, line: 192, baseType: !143, size: 64, offset: 4672)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2506, file: !2507, line: 193, baseType: !143, size: 64, offset: 4736)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2506, file: !2507, line: 193, baseType: !143, size: 64, offset: 4800)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2506, file: !2507, line: 194, baseType: !2601, size: 448, offset: 4864)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2602, line: 12, size: 448, elements: !2603)
!2602 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2601, file: !2602, line: 15, baseType: !435, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2601, file: !2602, line: 17, baseType: !435, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2601, file: !2602, line: 19, baseType: !435, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2601, file: !2602, line: 21, baseType: !435, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2601, file: !2602, line: 29, baseType: !435, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2601, file: !2602, line: 35, baseType: !435, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2601, file: !2602, line: 44, baseType: !435, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2506, file: !2507, line: 202, baseType: !437, size: 64, offset: 5312)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2506, file: !2507, line: 213, baseType: !2613, size: 2048, offset: 5376)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2614, size: 2048, elements: !2474)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2615, line: 43, size: 128, elements: !2616)
!2615 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2616 = !{!2617, !2618}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2614, file: !2615, line: 44, baseType: !147, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2614, file: !2615, line: 45, baseType: !147, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2506, file: !2507, line: 216, baseType: !2620, size: 448, offset: 7424)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2507, line: 30, size: 448, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2627, !2628}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2620, file: !2507, line: 31, baseType: !85, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2620, file: !2507, line: 32, baseType: !324, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2620, file: !2507, line: 33, baseType: !143, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2620, file: !2507, line: 34, baseType: !435, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2620, file: !2507, line: 34, baseType: !435, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2620, file: !2507, line: 35, baseType: !143, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2620, file: !2507, line: 35, baseType: !143, size: 64, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2506, file: !2507, line: 219, baseType: !2630, size: 64, offset: 7872)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2507, line: 219, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2506, file: !2507, line: 222, baseType: !7, size: 32, offset: 7936)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2506, file: !2507, line: 223, baseType: !2634, size: 64, offset: 8000)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2507, line: 223, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2506, file: !2507, line: 230, baseType: !703, size: 8, offset: 8064)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2506, file: !2507, line: 231, baseType: !761, size: 16, offset: 8080)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2506, file: !2507, line: 232, baseType: !761, size: 16, offset: 8096)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2506, file: !2507, line: 234, baseType: !1687, size: 64, offset: 8128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2506, file: !2507, line: 237, baseType: !623, size: 256, offset: 8192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2506, file: !2507, line: 243, baseType: !1284, size: 320, offset: 8448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1391, file: !1066, line: 1111, baseType: !2643, size: 64, offset: 15424)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2507, line: 20, size: 16640, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2644, file: !2507, line: 21, baseType: !221, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2644, file: !2507, line: 22, baseType: !1404, size: 32, offset: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2644, file: !2507, line: 23, baseType: !1377, size: 192, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2644, file: !2507, line: 24, baseType: !2650, size: 16384, offset: 256)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2651, size: 16384, elements: !294)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1956, line: 51, size: 256, elements: !2652)
!2652 = !{!2653}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2651, file: !1956, line: 52, baseType: !2654, size: 256)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1956, line: 37, size: 256, elements: !2655)
!2655 = !{!2656, !2663, !2664, !2668}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2654, file: !1956, line: 39, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2658, line: 83, baseType: !2659)
!2658 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2658, line: 82, baseType: !2661)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{null, !85}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2654, file: !1956, line: 40, baseType: !143, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2654, file: !1956, line: 46, baseType: !2665, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2658, line: 86, baseType: !2666)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2658, line: 85, baseType: !987)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2654, file: !1956, line: 48, baseType: !2521, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1391, file: !1066, line: 1112, baseType: !2521, size: 64, offset: 15488)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1391, file: !1066, line: 1113, baseType: !2521, size: 64, offset: 15552)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1391, file: !1066, line: 1115, baseType: !2521, size: 64, offset: 15616)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1391, file: !1066, line: 1116, baseType: !2517, size: 192, offset: 15680)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1391, file: !1066, line: 1117, baseType: !143, size: 64, offset: 15872)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1391, file: !1066, line: 1118, baseType: !144, size: 64, offset: 15936)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1391, file: !1066, line: 1119, baseType: !7, size: 32, offset: 16000)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1391, file: !1066, line: 1121, baseType: !842, size: 64, offset: 16064)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1391, file: !1066, line: 1125, baseType: !2678, size: 64, offset: 16128)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1066, line: 43, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1391, file: !1066, line: 1127, baseType: !370, size: 32, offset: 16192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1391, file: !1066, line: 1128, baseType: !7, size: 32, offset: 16224)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1391, file: !1066, line: 1130, baseType: !2683, size: 128, offset: 16256)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2684, line: 37, size: 128, elements: !2685)
!2684 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2685 = !{!2686, !2687, !2688}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2683, file: !2684, line: 38, baseType: !85, size: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2683, file: !2684, line: 39, baseType: !241, size: 32, offset: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2683, file: !2684, line: 40, baseType: !2689, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2684, line: 24, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1391, file: !1066, line: 1131, baseType: !2692, size: 256, offset: 16384)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2693, line: 12, size: 256, elements: !2694)
!2693 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2694 = !{!2695, !2696, !2697, !2698}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2692, file: !2693, line: 13, baseType: !289, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2692, file: !2693, line: 14, baseType: !143, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2692, file: !2693, line: 15, baseType: !143, size: 64, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2692, file: !2693, line: 16, baseType: !703, size: 8, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1391, file: !1066, line: 1134, baseType: !435, size: 64, offset: 16640)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1391, file: !1066, line: 1135, baseType: !435, size: 64, offset: 16704)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1391, file: !1066, line: 1138, baseType: !221, size: 32, offset: 16768)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1391, file: !1066, line: 1141, baseType: !581, size: 32, offset: 16800)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1391, file: !1066, line: 1143, baseType: !2704, size: 64, offset: 16832)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1066, line: 735, size: 64, elements: !2705)
!2705 = !{!2706}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2704, file: !1066, line: 736, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1391, file: !1066, line: 1147, baseType: !1570, size: 128, offset: 16896)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1391, file: !1066, line: 1149, baseType: !1390, size: 64, offset: 17024)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1391, file: !1066, line: 1151, baseType: !2711, size: 64, offset: 17088)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1066, line: 1151, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1391, file: !1066, line: 1188, baseType: !140, size: 64, offset: 17152)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1391, file: !1066, line: 1191, baseType: !2715, size: 64, offset: 17216)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1066, line: 44, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1391, file: !1066, line: 1194, baseType: !2718, size: 64, offset: 17280)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1066, line: 45, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1391, file: !1066, line: 1197, baseType: !2721, size: 64, offset: 17344)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1066, line: 61, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1391, file: !1066, line: 1199, baseType: !2724, size: 64, offset: 17408)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2726, line: 99, size: 128, elements: !2727)
!2726 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2727 = !{!2728, !2729, !2730}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2725, file: !2726, line: 100, baseType: !627, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2725, file: !2726, line: 101, baseType: !241, size: 32, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2725, file: !2726, line: 103, baseType: !259, size: 16, offset: 96)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1391, file: !1066, line: 1202, baseType: !2732, size: 64, offset: 17472)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1066, line: 48, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1391, file: !1066, line: 1205, baseType: !143, size: 64, offset: 17536)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1391, file: !1066, line: 1206, baseType: !2736, size: 64, offset: 17600)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1956, line: 14, baseType: !2738)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1956, line: 12, size: 384, elements: !2739)
!2739 = !{!2740}
!2740 = !DIDerivedType(tag: DW_TAG_member, scope: !2738, file: !1956, line: 13, baseType: !2741, size: 384)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2738, file: !1956, line: 13, size: 384, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2741, file: !1956, line: 13, baseType: !85, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2741, file: !1956, line: 13, baseType: !85, size: 32, offset: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2741, file: !1956, line: 13, baseType: !85, size: 32, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2741, file: !1956, line: 13, baseType: !2747, size: 256, offset: 128)
!2747 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2748, line: 37, size: 256, elements: !2749)
!2748 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2749 = !{!2750, !2755, !2768, !2774, !2783, !2810, !2815}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2747, file: !2748, line: 42, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 39, size: 64, elements: !2752)
!2752 = !{!2753, !2754}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2751, file: !2748, line: 40, baseType: !2416, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2751, file: !2748, line: 41, baseType: !376, size: 32, offset: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2747, file: !2748, line: 50, baseType: !2756, size: 192)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 45, size: 192, elements: !2757)
!2757 = !{!2758, !2760, !2761, !2767}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2756, file: !2748, line: 46, baseType: !2759, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !146, line: 95, baseType: !85)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2756, file: !2748, line: 47, baseType: !85, size: 32, offset: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2756, file: !2748, line: 48, baseType: !2762, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2748, line: 11, baseType: !2763)
!2763 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2748, line: 8, size: 64, elements: !2764)
!2764 = !{!2765, !2766}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2763, file: !2748, line: 9, baseType: !85, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2763, file: !2748, line: 10, baseType: !140, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2756, file: !2748, line: 49, baseType: !85, size: 32, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2747, file: !2748, line: 57, baseType: !2769, size: 128)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 53, size: 128, elements: !2770)
!2770 = !{!2771, !2772, !2773}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2769, file: !2748, line: 54, baseType: !2416, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2769, file: !2748, line: 55, baseType: !376, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2769, file: !2748, line: 56, baseType: !2762, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2747, file: !2748, line: 66, baseType: !2775, size: 256)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 60, size: 256, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2780, !2782}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2775, file: !2748, line: 61, baseType: !2416, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2775, file: !2748, line: 62, baseType: !376, size: 32, offset: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2775, file: !2748, line: 63, baseType: !85, size: 32, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2775, file: !2748, line: 64, baseType: !2781, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !146, line: 94, baseType: !323)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2775, file: !2748, line: 65, baseType: !2781, size: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2747, file: !2748, line: 105, baseType: !2784, size: 256)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 69, size: 256, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2784, file: !2748, line: 70, baseType: !140, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, scope: !2784, file: !2748, line: 79, baseType: !2788, size: 192, offset: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2784, file: !2748, line: 79, size: 192, elements: !2789)
!2789 = !{!2790, !2791, !2792, !2799, !2804}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2788, file: !2748, line: 81, baseType: !85, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2788, file: !2748, line: 86, baseType: !761, size: 16)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2788, file: !2748, line: 92, baseType: !2793, size: 192)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2788, file: !2748, line: 88, size: 192, elements: !2794)
!2794 = !{!2795, !2797, !2798}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2793, file: !2748, line: 89, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 64, elements: !1554)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2793, file: !2748, line: 90, baseType: !140, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2793, file: !2748, line: 91, baseType: !140, size: 64, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2788, file: !2748, line: 97, baseType: !2800, size: 96)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2788, file: !2748, line: 94, size: 96, elements: !2801)
!2801 = !{!2802, !2803}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2800, file: !2748, line: 95, baseType: !2796, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2800, file: !2748, line: 96, baseType: !191, size: 32, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2788, file: !2748, line: 103, baseType: !2805, size: 128)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2788, file: !2748, line: 99, size: 128, elements: !2806)
!2806 = !{!2807, !2808, !2809}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2805, file: !2748, line: 100, baseType: !143, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2805, file: !2748, line: 101, baseType: !191, size: 32, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2805, file: !2748, line: 102, baseType: !191, size: 32, offset: 96)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2747, file: !2748, line: 111, baseType: !2811, size: 128)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 108, size: 128, elements: !2812)
!2812 = !{!2813, !2814}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2811, file: !2748, line: 109, baseType: !324, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2811, file: !2748, line: 110, baseType: !85, size: 32, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2747, file: !2748, line: 118, baseType: !2816, size: 128)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2747, file: !2748, line: 114, size: 128, elements: !2817)
!2817 = !{!2818, !2819, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2816, file: !2748, line: 115, baseType: !140, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2816, file: !2748, line: 116, baseType: !85, size: 32, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2816, file: !2748, line: 117, baseType: !7, size: 32, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1391, file: !1066, line: 1208, baseType: !2601, size: 448, offset: 17664)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1391, file: !1066, line: 1215, baseType: !435, size: 64, offset: 18112)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1391, file: !1066, line: 1217, baseType: !435, size: 64, offset: 18176)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1391, file: !1066, line: 1219, baseType: !435, size: 64, offset: 18240)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1391, file: !1066, line: 1223, baseType: !2826, size: 64, offset: 18304)
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2827, line: 99, baseType: !2828)
!2827 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2827, line: 99, size: 64, elements: !2829)
!2829 = !{!2830}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2828, file: !2827, line: 99, baseType: !1638, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1391, file: !1066, line: 1225, baseType: !405, size: 32, offset: 18368)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1391, file: !1066, line: 1226, baseType: !85, size: 32, offset: 18400)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1391, file: !1066, line: 1227, baseType: !85, size: 32, offset: 18432)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1391, file: !1066, line: 1231, baseType: !2835, size: 64, offset: 18496)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1066, line: 1231, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1391, file: !1066, line: 1233, baseType: !208, size: 128, offset: 18560)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1391, file: !1066, line: 1240, baseType: !2839, size: 64, offset: 18688)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1066, line: 62, flags: DIFlagFwdDecl)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1391, file: !1066, line: 1242, baseType: !2842, size: 64, offset: 18752)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1066, line: 1242, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1391, file: !1066, line: 1244, baseType: !208, size: 128, offset: 18816)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1391, file: !1066, line: 1245, baseType: !2846, size: 64, offset: 18944)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1066, line: 51, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1391, file: !1066, line: 1246, baseType: !623, size: 256, offset: 19008)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1391, file: !1066, line: 1247, baseType: !7, size: 32, offset: 19264)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1391, file: !1066, line: 1250, baseType: !2851, size: 64, offset: 19328)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1066, line: 57, flags: DIFlagFwdDecl)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1391, file: !1066, line: 1251, baseType: !623, size: 256, offset: 19392)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1391, file: !1066, line: 1252, baseType: !208, size: 128, offset: 19648)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1391, file: !1066, line: 1259, baseType: !2118, size: 64, offset: 19776)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1391, file: !1066, line: 1260, baseType: !761, size: 16, offset: 19840)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1391, file: !1066, line: 1261, baseType: !761, size: 16, offset: 19856)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1391, file: !1066, line: 1314, baseType: !2859, size: 64, offset: 19904)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2861, line: 62, size: 256, align: 256, elements: !2862)
!2861 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2862 = !{!2863, !2864, !2865, !2866, !2867, !2868, !2869}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2860, file: !2861, line: 75, baseType: !191, size: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2860, file: !2861, line: 90, baseType: !191, size: 32, offset: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2860, file: !2861, line: 112, baseType: !436, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2860, file: !2861, line: 132, baseType: !191, size: 32, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2860, file: !2861, line: 140, baseType: !191, size: 32, offset: 160)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2860, file: !2861, line: 149, baseType: !191, size: 32, offset: 192)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2860, file: !2861, line: 154, baseType: !2870, offset: 224)
!2870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, elements: !1774)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1391, file: !1066, line: 1315, baseType: !189, size: 32, offset: 19968)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1391, file: !1066, line: 1316, baseType: !189, size: 32, offset: 20000)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1391, file: !1066, line: 1321, baseType: !143, size: 64, offset: 20032)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1391, file: !1066, line: 1325, baseType: !85, size: 32, offset: 20096)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1391, file: !1066, line: 1326, baseType: !85, size: 32, offset: 20128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1391, file: !1066, line: 1327, baseType: !85, size: 32, offset: 20160)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1391, file: !1066, line: 1328, baseType: !85, size: 32, offset: 20192)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1391, file: !1066, line: 1329, baseType: !843, size: 128, align: 64, offset: 20224)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1391, file: !1066, line: 1332, baseType: !2880, size: 128, offset: 20352)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2881, line: 51, size: 128, elements: !2882)
!2881 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2882 = !{!2883, !2888, !2889}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2880, file: !2881, line: 60, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2885, line: 7, size: 64, elements: !2886)
!2885 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2886 = !{!2887}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2884, file: !2885, line: 12, baseType: !1635, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2880, file: !2881, line: 63, baseType: !703, size: 8, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2880, file: !2881, line: 70, baseType: !703, size: 8, offset: 72)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1391, file: !1066, line: 1335, baseType: !2157, size: 64, offset: 20480)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1391, file: !1066, line: 1337, baseType: !2892, size: 128, offset: 20544)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2881, line: 39, size: 128, elements: !2893)
!2893 = !{!2894, !2955, !2956}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2892, file: !2881, line: 40, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1142, line: 74, size: 512, align: 128, elements: !2897)
!2897 = !{!2898, !2899, !2949, !2954}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2896, file: !1142, line: 75, baseType: !143, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, scope: !2896, file: !1142, line: 83, baseType: !2900, size: 320, offset: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2896, file: !1142, line: 83, size: 320, elements: !2901)
!2901 = !{!2902, !2923, !2937, !2941, !2948}
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !2900, file: !1142, line: 84, baseType: !2903, size: 320)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2900, file: !1142, line: 84, size: 320, elements: !2904)
!2904 = !{!2905, !2916, !2917, !2922}
!2905 = !DIDerivedType(tag: DW_TAG_member, scope: !2903, file: !1142, line: 90, baseType: !2906, size: 128)
!2906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2903, file: !1142, line: 90, size: 128, elements: !2907)
!2907 = !{!2908, !2909, !2914, !2915}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2906, file: !1142, line: 91, baseType: !208, size: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, scope: !2906, file: !1142, line: 94, baseType: !2910, size: 128)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2906, file: !1142, line: 94, size: 128, elements: !2911)
!2911 = !{!2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2910, file: !1142, line: 96, baseType: !140, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2910, file: !1142, line: 98, baseType: !7, size: 32, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2906, file: !1142, line: 102, baseType: !208, size: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2906, file: !1142, line: 103, baseType: !208, size: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2903, file: !1142, line: 106, baseType: !360, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, scope: !2903, file: !1142, line: 107, baseType: !2918, size: 64, offset: 192)
!2918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2903, file: !1142, line: 107, size: 64, elements: !2919)
!2919 = !{!2920, !2921}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2918, file: !1142, line: 108, baseType: !143, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2918, file: !1142, line: 109, baseType: !143, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2903, file: !1142, line: 117, baseType: !143, size: 64, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !2900, file: !1142, line: 119, baseType: !2924, size: 320)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2900, file: !1142, line: 119, size: 320, elements: !2925)
!2925 = !{!2926, !2927, !2930, !2931, !2932}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2924, file: !1142, line: 124, baseType: !143, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2924, file: !1142, line: 125, baseType: !2928, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1142, line: 125, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2924, file: !1142, line: 126, baseType: !143, size: 64, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2924, file: !1142, line: 127, baseType: !143, size: 64, offset: 192)
!2932 = !DIDerivedType(tag: DW_TAG_member, scope: !2924, file: !1142, line: 128, baseType: !2933, size: 64, offset: 256)
!2933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2924, file: !1142, line: 128, size: 64, elements: !2934)
!2934 = !{!2935, !2936}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2933, file: !1142, line: 133, baseType: !143, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2933, file: !1142, line: 138, baseType: !627, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, scope: !2900, file: !1142, line: 141, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2900, file: !1142, line: 141, size: 64, elements: !2939)
!2939 = !{!2940}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2938, file: !1142, line: 142, baseType: !143, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, scope: !2900, file: !1142, line: 144, baseType: !2942, size: 128)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2900, file: !1142, line: 144, size: 128, elements: !2943)
!2943 = !{!2944, !2947}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2942, file: !1142, line: 146, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1142, line: 146, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2942, file: !1142, line: 147, baseType: !140, size: 64, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2900, file: !1142, line: 161, baseType: !843, size: 128, align: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !2896, file: !1142, line: 164, baseType: !2950, size: 32, offset: 384)
!2950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2896, file: !1142, line: 164, size: 32, elements: !2951)
!2951 = !{!2952, !2953}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2950, file: !1142, line: 169, baseType: !241, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2950, file: !1142, line: 177, baseType: !7, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2896, file: !1142, line: 181, baseType: !241, size: 32, offset: 416)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2892, file: !2881, line: 42, baseType: !191, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2892, file: !2881, line: 43, baseType: !191, size: 32, offset: 96)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1391, file: !1066, line: 1340, baseType: !2958, size: 64, offset: 20672)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1066, line: 69, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1391, file: !1066, line: 1351, baseType: !85, size: 32, offset: 20736)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1391, file: !1066, line: 1352, baseType: !85, size: 32, offset: 20768)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1391, file: !1066, line: 1354, baseType: !143, size: 64, offset: 20800)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1391, file: !1066, line: 1364, baseType: !435, size: 64, offset: 20864)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1391, file: !1066, line: 1365, baseType: !435, size: 64, offset: 20928)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1391, file: !1066, line: 1412, baseType: !143, size: 64, offset: 20992)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1391, file: !1066, line: 1453, baseType: !2967, size: 64, offset: 21056)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1066, line: 1453, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1391, file: !1066, line: 1457, baseType: !2970, size: 64, offset: 21120)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !2972)
!2972 = !{!2973, !2974, !2993, !2996, !2997, !3030, !3040}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2971, file: !57, line: 62, baseType: !56, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, scope: !2971, file: !57, line: 64, baseType: !2975, size: 192, offset: 64)
!2975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2971, file: !57, line: 64, size: 192, elements: !2976)
!2976 = !{!2977, !2988}
!2977 = !DIDerivedType(tag: DW_TAG_member, scope: !2975, file: !57, line: 65, baseType: !2978, size: 192)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2975, file: !57, line: 65, size: 192, elements: !2979)
!2979 = !{!2980, !2987}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2978, file: !57, line: 66, baseType: !2981, size: 128)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2982, line: 50, size: 128, elements: !2983)
!2982 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2983 = !{!2984, !2985, !2986}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2981, file: !2982, line: 52, baseType: !143, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2981, file: !2982, line: 54, baseType: !7, size: 32, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2981, file: !2982, line: 55, baseType: !7, size: 32, offset: 96)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2978, file: !57, line: 67, baseType: !143, size: 64, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, scope: !2975, file: !57, line: 70, baseType: !2989, size: 192)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2975, file: !57, line: 70, size: 192, elements: !2990)
!2990 = !{!2991, !2992}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2989, file: !57, line: 71, baseType: !843, size: 128, align: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2989, file: !57, line: 72, baseType: !143, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2971, file: !57, line: 76, baseType: !2994, size: 64, offset: 256)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2971, file: !57, line: 77, baseType: !143, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2971, file: !57, line: 79, baseType: !2998, size: 64, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2982, line: 25, size: 256, elements: !3000)
!3000 = !{!3001, !3007, !3011}
!3001 = !DIDerivedType(tag: DW_TAG_member, scope: !2999, file: !2982, line: 26, baseType: !3002, size: 128)
!3002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2999, file: !2982, line: 26, size: 128, elements: !3003)
!3003 = !{!3004, !3006}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3002, file: !2982, line: 27, baseType: !3005, size: 128)
!3005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 128, elements: !2474)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3002, file: !2982, line: 28, baseType: !3005, size: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2999, file: !2982, line: 31, baseType: !3008, size: 64, offset: 128)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3010)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2982, line: 23, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, scope: !2999, file: !2982, line: 33, baseType: !3012, size: 64, offset: 192)
!3012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2999, file: !2982, line: 33, size: 64, elements: !3013)
!3013 = !{!3014, !3020, !3025}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3012, file: !2982, line: 38, baseType: !3015, size: 64)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3012, file: !2982, line: 34, size: 64, elements: !3016)
!3016 = !{!3017, !3018, !3019}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3015, file: !2982, line: 35, baseType: !619, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3015, file: !2982, line: 36, baseType: !249, size: 8, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3015, file: !2982, line: 37, baseType: !249, size: 8, offset: 40)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3012, file: !2982, line: 42, baseType: !3021, size: 16)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3012, file: !2982, line: 39, size: 16, elements: !3022)
!3022 = !{!3023, !3024}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3021, file: !2982, line: 40, baseType: !249, size: 8)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3021, file: !2982, line: 41, baseType: !249, size: 8, offset: 8)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3012, file: !2982, line: 46, baseType: !3026, size: 16)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3012, file: !2982, line: 43, size: 16, elements: !3027)
!3027 = !{!3028, !3029}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3026, file: !2982, line: 44, baseType: !249, size: 8)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3026, file: !2982, line: 45, baseType: !249, size: 8, offset: 8)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2971, file: !57, line: 81, baseType: !3031, size: 64, offset: 448)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3033)
!3033 = !{!3034, !3035, !3036, !3037, !3038, !3039}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3032, file: !57, line: 86, baseType: !2994, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3032, file: !57, line: 87, baseType: !143, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3032, file: !57, line: 88, baseType: !143, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3032, file: !57, line: 89, baseType: !143, size: 64, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3032, file: !57, line: 90, baseType: !703, size: 8, offset: 256)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3032, file: !57, line: 92, baseType: !3031, size: 64, offset: 320)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2971, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1391, file: !1066, line: 1463, baseType: !3042, offset: 21184)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1066, line: 739, elements: !912)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1391, file: !1066, line: 1470, baseType: !843, size: 128, align: 64, offset: 21184)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1391, file: !1066, line: 1471, baseType: !1404, size: 32, offset: 21312)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1391, file: !1066, line: 1472, baseType: !85, size: 32, offset: 21344)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1391, file: !1066, line: 1474, baseType: !1390, size: 64, offset: 21376)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1391, file: !1066, line: 1475, baseType: !865, size: 320, offset: 21440)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1391, file: !1066, line: 1478, baseType: !3049, size: 64, offset: 21760)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3051, line: 14, flags: DIFlagFwdDecl)
!3051 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1391, file: !1066, line: 1482, baseType: !1404, size: 32, offset: 21824)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1391, file: !1066, line: 1489, baseType: !140, size: 64, offset: 21888)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1391, file: !1066, line: 1504, baseType: !140, size: 64, offset: 21952)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1391, file: !1066, line: 1505, baseType: !436, size: 64, offset: 22016)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1391, file: !1066, line: 1506, baseType: !435, size: 64, offset: 22080)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1391, file: !1066, line: 1507, baseType: !436, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1391, file: !1066, line: 1508, baseType: !436, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1391, file: !1066, line: 1509, baseType: !436, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1391, file: !1066, line: 1510, baseType: !843, size: 128, align: 64, offset: 22208)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1391, file: !1066, line: 1511, baseType: !85, size: 32, offset: 22336)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1391, file: !1066, line: 1515, baseType: !3063, size: 64, offset: 22400)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1418, line: 56, size: 64, elements: !3064)
!3064 = !{!3065}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3063, file: !1418, line: 57, baseType: !1421, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1391, file: !1066, line: 1518, baseType: !3063, size: 64, offset: 22464)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1391, file: !1066, line: 1528, baseType: !843, size: 128, align: 64, offset: 22528)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1391, file: !1066, line: 1552, baseType: !3069, size: 35328, offset: 23040)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3070, line: 430, size: 35328, elements: !3071)
!3070 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3071 = !{!3072, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3101, !3102, !3103, !3104, !3105, !3106, !3109, !3110, !3111, !3112}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3069, file: !3070, line: 432, baseType: !3073, size: 192)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3074, size: 192, elements: !290)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3075, line: 16, size: 64, elements: !3076)
!3075 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3076 = !{!3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3074, file: !3075, line: 17, baseType: !257, size: 16)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3074, file: !3075, line: 18, baseType: !257, size: 16, offset: 16)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3074, file: !3075, line: 19, baseType: !257, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3074, file: !3075, line: 19, baseType: !257, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3074, file: !3075, line: 19, baseType: !257, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3074, file: !3075, line: 19, baseType: !257, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3074, file: !3075, line: 19, baseType: !257, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3074, file: !3075, line: 20, baseType: !257, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3074, file: !3075, line: 20, baseType: !257, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3074, file: !3075, line: 20, baseType: !257, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3074, file: !3075, line: 20, baseType: !257, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3074, file: !3075, line: 20, baseType: !257, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3074, file: !3075, line: 20, baseType: !257, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3069, file: !3070, line: 436, baseType: !143, size: 64, offset: 192)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3069, file: !3070, line: 440, baseType: !259, size: 16, offset: 256)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3069, file: !3070, line: 441, baseType: !259, size: 16, offset: 272)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3069, file: !3070, line: 442, baseType: !259, size: 16, offset: 288)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3069, file: !3070, line: 443, baseType: !259, size: 16, offset: 304)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3069, file: !3070, line: 447, baseType: !143, size: 64, offset: 320)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3069, file: !3070, line: 448, baseType: !143, size: 64, offset: 384)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3069, file: !3070, line: 459, baseType: !3098, size: 256, offset: 448)
!3098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3099, size: 256, elements: !853)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3070, line: 428, flags: DIFlagFwdDecl)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3069, file: !3070, line: 461, baseType: !143, size: 64, offset: 704)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3069, file: !3070, line: 463, baseType: !143, size: 64, offset: 768)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3069, file: !3070, line: 465, baseType: !143, size: 64, offset: 832)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3069, file: !3070, line: 466, baseType: !143, size: 64, offset: 896)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3069, file: !3070, line: 467, baseType: !143, size: 64, offset: 960)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3069, file: !3070, line: 473, baseType: !3107, size: 64, offset: 1024)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3070, line: 10, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3069, file: !3070, line: 480, baseType: !143, size: 64, offset: 1088)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3069, file: !3070, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3069, file: !3070, line: 491, baseType: !189, size: 32, offset: 1184)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3069, file: !3070, line: 501, baseType: !3113, size: 33792, offset: 1536)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3114, line: 448, size: 33792, elements: !3115)
!3114 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3115 = !{!3116, !3117, !3118, !3280, !3281, !3287, !3288}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3113, file: !3114, line: 461, baseType: !7, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3113, file: !3114, line: 468, baseType: !143, size: 64, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3113, file: !3114, line: 476, baseType: !3119, size: 64, offset: 128)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3114, line: 356, size: 33280, align: 512, elements: !3121)
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3120, file: !3114, line: 358, baseType: !7, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3120, file: !3114, line: 361, baseType: !7, size: 32, offset: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3120, file: !3114, line: 364, baseType: !435, size: 64, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3120, file: !3114, line: 367, baseType: !435, size: 64, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3120, file: !3114, line: 370, baseType: !435, size: 64, offset: 192)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3120, file: !3114, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3120, file: !3114, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3120, file: !3114, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3120, file: !3114, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3120, file: !3114, line: 397, baseType: !3132, size: 32768, offset: 512)
!3132 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3114, line: 348, size: 32768, elements: !3133)
!3133 = !{!3134, !3149, !3186, !3263, !3276}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3132, file: !3114, line: 349, baseType: !3135, size: 896)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3114, line: 12, size: 896, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3148}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3135, file: !3114, line: 13, baseType: !189, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3135, file: !3114, line: 14, baseType: !189, size: 32, offset: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3135, file: !3114, line: 15, baseType: !189, size: 32, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3135, file: !3114, line: 16, baseType: !189, size: 32, offset: 96)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3135, file: !3114, line: 17, baseType: !189, size: 32, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3135, file: !3114, line: 18, baseType: !189, size: 32, offset: 160)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3135, file: !3114, line: 19, baseType: !189, size: 32, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3135, file: !3114, line: 22, baseType: !3145, size: 640, offset: 224)
!3145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 640, elements: !3146)
!3146 = !{!3147}
!3147 = !DISubrange(count: 20)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3135, file: !3114, line: 25, baseType: !189, size: 32, offset: 864)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3132, file: !3114, line: 350, baseType: !3150, size: 4096, align: 128)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3114, line: 34, size: 4096, align: 128, elements: !3151)
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3171, !3172, !3173, !3175, !3177, !3181}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3150, file: !3114, line: 35, baseType: !257, size: 16)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3150, file: !3114, line: 36, baseType: !257, size: 16, offset: 16)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3150, file: !3114, line: 37, baseType: !257, size: 16, offset: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3150, file: !3114, line: 38, baseType: !257, size: 16, offset: 48)
!3156 = !DIDerivedType(tag: DW_TAG_member, scope: !3150, file: !3114, line: 39, baseType: !3157, size: 128, offset: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3150, file: !3114, line: 39, size: 128, elements: !3158)
!3158 = !{!3159, !3164}
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !3114, line: 40, baseType: !3160, size: 128)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3157, file: !3114, line: 40, size: 128, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3160, file: !3114, line: 41, baseType: !435, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3160, file: !3114, line: 42, baseType: !435, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !3114, line: 44, baseType: !3165, size: 128)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3157, file: !3114, line: 44, size: 128, elements: !3166)
!3166 = !{!3167, !3168, !3169, !3170}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3165, file: !3114, line: 45, baseType: !189, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3165, file: !3114, line: 46, baseType: !189, size: 32, offset: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3165, file: !3114, line: 47, baseType: !189, size: 32, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3165, file: !3114, line: 48, baseType: !189, size: 32, offset: 96)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3150, file: !3114, line: 51, baseType: !189, size: 32, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3150, file: !3114, line: 52, baseType: !189, size: 32, offset: 224)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3150, file: !3114, line: 55, baseType: !3174, size: 1024, offset: 256)
!3174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 1024, elements: !444)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3150, file: !3114, line: 58, baseType: !3176, size: 2048, offset: 1280)
!3176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 2048, elements: !294)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3150, file: !3114, line: 60, baseType: !3178, size: 384, offset: 3328)
!3178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 384, elements: !3179)
!3179 = !{!3180}
!3180 = !DISubrange(count: 12)
!3181 = !DIDerivedType(tag: DW_TAG_member, scope: !3150, file: !3114, line: 62, baseType: !3182, size: 384, offset: 3712)
!3182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3150, file: !3114, line: 62, size: 384, elements: !3183)
!3183 = !{!3184, !3185}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3182, file: !3114, line: 63, baseType: !3178, size: 384)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3182, file: !3114, line: 64, baseType: !3178, size: 384)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3132, file: !3114, line: 351, baseType: !3187, size: 1088)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3114, line: 79, size: 1088, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3262}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3187, file: !3114, line: 80, baseType: !189, size: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3187, file: !3114, line: 81, baseType: !189, size: 32, offset: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3187, file: !3114, line: 82, baseType: !189, size: 32, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3187, file: !3114, line: 83, baseType: !189, size: 32, offset: 96)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3187, file: !3114, line: 84, baseType: !189, size: 32, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3187, file: !3114, line: 85, baseType: !189, size: 32, offset: 160)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3187, file: !3114, line: 86, baseType: !189, size: 32, offset: 192)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3187, file: !3114, line: 88, baseType: !3145, size: 640, offset: 224)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3187, file: !3114, line: 89, baseType: !249, size: 8, offset: 864)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3187, file: !3114, line: 90, baseType: !249, size: 8, offset: 872)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3187, file: !3114, line: 91, baseType: !249, size: 8, offset: 880)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3187, file: !3114, line: 92, baseType: !249, size: 8, offset: 888)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3187, file: !3114, line: 93, baseType: !249, size: 8, offset: 896)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3187, file: !3114, line: 94, baseType: !249, size: 8, offset: 904)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3187, file: !3114, line: 95, baseType: !3204, size: 64, offset: 960)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3206, line: 11, size: 128, elements: !3207)
!3206 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3207 = !{!3208, !3209}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3205, file: !3206, line: 12, baseType: !324, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3205, file: !3206, line: 13, baseType: !3210, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3212, line: 103, size: 1344, elements: !3213)
!3212 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3213 = !{!3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3242, !3243, !3244}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3211, file: !3212, line: 109, baseType: !143, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3211, file: !3212, line: 110, baseType: !143, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3211, file: !3212, line: 111, baseType: !143, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3211, file: !3212, line: 112, baseType: !143, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3211, file: !3212, line: 113, baseType: !143, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3211, file: !3212, line: 114, baseType: !143, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3211, file: !3212, line: 117, baseType: !143, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3211, file: !3212, line: 118, baseType: !143, size: 64, offset: 448)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3211, file: !3212, line: 119, baseType: !143, size: 64, offset: 512)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3211, file: !3212, line: 120, baseType: !143, size: 64, offset: 576)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3211, file: !3212, line: 121, baseType: !143, size: 64, offset: 640)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3211, file: !3212, line: 122, baseType: !143, size: 64, offset: 704)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3211, file: !3212, line: 123, baseType: !143, size: 64, offset: 768)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3211, file: !3212, line: 124, baseType: !143, size: 64, offset: 832)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3211, file: !3212, line: 125, baseType: !143, size: 64, offset: 896)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3211, file: !3212, line: 139, baseType: !143, size: 64, offset: 960)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3211, file: !3212, line: 142, baseType: !143, size: 64, offset: 1024)
!3231 = !DIDerivedType(tag: DW_TAG_member, scope: !3211, file: !3212, line: 144, baseType: !3232, size: 64, offset: 1088)
!3232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3211, file: !3212, line: 144, size: 64, elements: !3233)
!3233 = !{!3234, !3235, !3236}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3232, file: !3212, line: 146, baseType: !257, size: 16)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3232, file: !3212, line: 148, baseType: !435, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3232, file: !3212, line: 150, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3212, line: 59, size: 64, elements: !3238)
!3238 = !{!3239, !3240, !3241}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3237, file: !3212, line: 61, baseType: !435, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3237, file: !3212, line: 63, baseType: !435, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3237, file: !3212, line: 65, baseType: !435, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3211, file: !3212, line: 153, baseType: !143, size: 64, offset: 1152)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3211, file: !3212, line: 154, baseType: !143, size: 64, offset: 1216)
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3211, file: !3212, line: 156, baseType: !3245, size: 64, offset: 1280)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3211, file: !3212, line: 156, size: 64, elements: !3246)
!3246 = !{!3247, !3248, !3249}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3245, file: !3212, line: 158, baseType: !257, size: 16)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3245, file: !3212, line: 160, baseType: !435, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3245, file: !3212, line: 162, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3212, line: 69, size: 64, elements: !3251)
!3251 = !{!3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3250, file: !3212, line: 71, baseType: !435, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3250, file: !3212, line: 73, baseType: !435, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3250, file: !3212, line: 75, baseType: !435, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3250, file: !3212, line: 77, baseType: !435, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3250, file: !3212, line: 80, baseType: !435, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3250, file: !3212, line: 83, baseType: !435, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3250, file: !3212, line: 86, baseType: !435, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3250, file: !3212, line: 88, baseType: !435, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3250, file: !3212, line: 93, baseType: !435, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3250, file: !3212, line: 100, baseType: !435, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3187, file: !3114, line: 96, baseType: !189, size: 32, offset: 1024)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3132, file: !3114, line: 352, baseType: !3264, size: 4608, align: 512)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3114, line: 333, size: 4608, align: 512, elements: !3265)
!3265 = !{!3266, !3267, !3274}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3264, file: !3114, line: 334, baseType: !3150, size: 4096, align: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3264, file: !3114, line: 335, baseType: !3268, size: 512, offset: 4096)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3114, line: 312, size: 512, elements: !3269)
!3269 = !{!3270, !3271, !3272}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3268, file: !3114, line: 313, baseType: !435, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3268, file: !3114, line: 314, baseType: !435, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3268, file: !3114, line: 315, baseType: !3273, size: 384, offset: 128)
!3273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 384, elements: !1857)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3264, file: !3114, line: 336, baseType: !3275, offset: 4608)
!3275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, elements: !1774)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3132, file: !3114, line: 353, baseType: !3277, size: 32768)
!3277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 32768, elements: !3278)
!3278 = !{!3279}
!3279 = !DISubrange(count: 4096)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3113, file: !3114, line: 484, baseType: !3119, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3113, file: !3114, line: 491, baseType: !3282, size: 128, offset: 256)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3114, line: 404, size: 128, elements: !3283)
!3283 = !{!3284, !3285, !3286}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3282, file: !3114, line: 424, baseType: !435, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3282, file: !3114, line: 432, baseType: !7, size: 32, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3282, file: !3114, line: 440, baseType: !7, size: 32, offset: 96)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3113, file: !3114, line: 498, baseType: !3282, size: 128, offset: 384)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3113, file: !3114, line: 508, baseType: !3120, size: 33280, align: 512, offset: 512)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1367, file: !1368, line: 16, baseType: !1377, size: 192, offset: 512)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1367, file: !1368, line: 17, baseType: !241, size: 32, offset: 704)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !514, file: !35, line: 1240, baseType: !140, size: 64, offset: 6912)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !514, file: !35, line: 1243, baseType: !189, size: 32, offset: 6976)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !514, file: !35, line: 1245, baseType: !1124, size: 64, offset: 7040)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !514, file: !35, line: 1246, baseType: !1124, size: 64, offset: 7104)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !514, file: !35, line: 1248, baseType: !191, size: 32, offset: 7168)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !514, file: !35, line: 1249, baseType: !3297, size: 64, offset: 7232)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !514, file: !35, line: 1252, baseType: !3300, size: 256, offset: 7296)
!3300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !444)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !514, file: !35, line: 1253, baseType: !3302, size: 128, offset: 7552)
!3302 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3303, line: 21, baseType: !3304)
!3303 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3303, line: 19, size: 128, elements: !3305)
!3305 = !{!3306}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3304, file: !3303, line: 20, baseType: !3307, size: 128)
!3307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 128, elements: !2474)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !514, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !514, file: !35, line: 1261, baseType: !623, size: 256, offset: 7744)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !514, file: !35, line: 1267, baseType: !155, size: 64, offset: 8000)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !514, file: !35, line: 1269, baseType: !460, size: 64, offset: 8064)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !514, file: !35, line: 1271, baseType: !3313, size: 448, offset: 8128)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1133, line: 63, size: 448, elements: !3314)
!3314 = !{!3315, !3320, !3321, !3322, !3323, !3324, !3325}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3313, file: !1133, line: 64, baseType: !3316, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!143, !3319, !1131}
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3313, file: !1133, line: 66, baseType: !3316, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3313, file: !1133, line: 69, baseType: !324, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3313, file: !1133, line: 70, baseType: !85, size: 32, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3313, file: !1133, line: 71, baseType: !7, size: 32, offset: 224)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3313, file: !1133, line: 74, baseType: !208, size: 128, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3313, file: !1133, line: 85, baseType: !3326, size: 64, offset: 384)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !514, file: !35, line: 1274, baseType: !627, size: 64, offset: 8576)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !514, file: !35, line: 1280, baseType: !627, size: 64, offset: 8640)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !514, file: !35, line: 1283, baseType: !85, size: 32, offset: 8704)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !514, file: !35, line: 1286, baseType: !2207, size: 32, offset: 8736)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !514, file: !35, line: 1289, baseType: !945, size: 64, offset: 8768)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !514, file: !35, line: 1290, baseType: !992, size: 64, offset: 8832)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !514, file: !35, line: 1297, baseType: !1951, size: 64, offset: 8896)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !514, file: !35, line: 1304, baseType: !3335, size: 64, offset: 8960)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3336, line: 49, size: 64, elements: !3337)
!3336 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3337 = !{!3338}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3335, file: !3336, line: 50, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3336, line: 41, size: 512, align: 512, elements: !3341)
!3341 = !{!3342, !3343, !3348}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3340, file: !3336, line: 43, baseType: !221, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3340, file: !3336, line: 45, baseType: !3344, size: 192, offset: 64)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3336, line: 29, size: 192, elements: !3345)
!3345 = !{!3346, !3347}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3344, file: !3336, line: 30, baseType: !208, size: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3344, file: !3336, line: 32, baseType: !324, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3340, file: !3336, line: 46, baseType: !324, size: 64, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !514, file: !35, line: 1305, baseType: !3335, size: 64, offset: 9024)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !514, file: !35, line: 1306, baseType: !843, size: 128, align: 64, offset: 9088)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !514, file: !35, line: 1307, baseType: !883, size: 256, offset: 9216)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !514, file: !35, line: 1309, baseType: !623, size: 256, offset: 9472)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !514, file: !35, line: 1314, baseType: !85, size: 32, offset: 9728)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !514, file: !35, line: 1317, baseType: !221, size: 32, align: 512, offset: 10240)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !514, file: !35, line: 1318, baseType: !208, size: 128, offset: 10304)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !514, file: !35, line: 1320, baseType: !221, size: 32, offset: 10432)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !514, file: !35, line: 1321, baseType: !208, size: 128, offset: 10496)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !508, file: !509, line: 73, baseType: !85, size: 32, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !508, file: !509, line: 74, baseType: !3360, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1798, line: 42, flags: DIFlagFwdDecl)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !462, file: !401, line: 141, baseType: !3364, size: 64, offset: 704)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!85, !1194, !703}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !462, file: !401, line: 142, baseType: !3368, size: 64, offset: 768)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!399, !399, !3371}
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !400, file: !401, line: 96, baseType: !513, size: 64, offset: 832)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !400, file: !401, line: 97, baseType: !143, size: 64, offset: 896)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !400, file: !401, line: 98, baseType: !140, size: 64, offset: 960)
!3376 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !401, line: 100, baseType: !3377, size: 128, offset: 1024)
!3377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 100, size: 128, elements: !3378)
!3378 = !{!3379, !3380}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3377, file: !401, line: 101, baseType: !208, size: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3377, file: !401, line: 102, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !400, file: !401, line: 104, baseType: !208, size: 128, offset: 1152)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !400, file: !401, line: 105, baseType: !208, size: 128, offset: 1280)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !400, file: !401, line: 113, baseType: !3385, size: 128, offset: 1408)
!3385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 109, size: 128, elements: !3386)
!3386 = !{!3387, !3388, !3389}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3385, file: !401, line: 110, baseType: !869, size: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3385, file: !401, line: 111, baseType: !415, size: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3385, file: !401, line: 112, baseType: !843, size: 128, align: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !393, file: !35, line: 1968, baseType: !3391, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!155, !399, !364, !3394}
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3396, line: 10, size: 128, elements: !3397)
!3396 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3397 = !{!3398, !3399}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3395, file: !3396, line: 11, baseType: !666, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3395, file: !3396, line: 12, baseType: !140, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !393, file: !35, line: 1969, baseType: !3401, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!85, !3360, !364, !85}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !393, file: !35, line: 1970, baseType: !3405, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!387, !364, !85, !703}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !393, file: !35, line: 1972, baseType: !3409, size: 64, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!85, !399, !289, !85}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !393, file: !35, line: 1974, baseType: !3413, size: 64, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!85, !3360, !364, !399, !330, !703}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !393, file: !35, line: 1976, baseType: !3417, size: 64, offset: 384)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!85, !399, !364, !399}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !393, file: !35, line: 1977, baseType: !3421, size: 64, offset: 448)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!85, !364, !399}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !393, file: !35, line: 1978, baseType: !3425, size: 64, offset: 512)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!85, !3360, !364, !399, !155}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !393, file: !35, line: 1980, baseType: !3429, size: 64, offset: 576)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!85, !3360, !364, !399, !330}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !393, file: !35, line: 1982, baseType: !3421, size: 64, offset: 640)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !393, file: !35, line: 1983, baseType: !3434, size: 64, offset: 704)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!85, !3360, !364, !399, !330, !518}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !393, file: !35, line: 1985, baseType: !3438, size: 64, offset: 768)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!85, !3360, !364, !399, !364, !399, !7}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !393, file: !35, line: 1987, baseType: !3442, size: 64, offset: 832)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!85, !3360, !399, !3445}
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3460, !3469, !3470, !3475, !3476, !3477}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3446, file: !35, line: 227, baseType: !7, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3446, file: !35, line: 228, baseType: !330, size: 16, offset: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, scope: !3446, file: !35, line: 241, baseType: !3451, size: 32, offset: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3446, file: !35, line: 241, size: 32, elements: !3452)
!3452 = !{!3453, !3454}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3451, file: !35, line: 242, baseType: !370, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3451, file: !35, line: 243, baseType: !3455, size: 32)
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3456, line: 16, baseType: !3457)
!3456 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3456, line: 14, size: 32, elements: !3458)
!3458 = !{!3459}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3457, file: !3456, line: 15, baseType: !375, size: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, scope: !3446, file: !35, line: 245, baseType: !3461, size: 32, offset: 96)
!3461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3446, file: !35, line: 245, size: 32, elements: !3462)
!3462 = !{!3463, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3461, file: !35, line: 246, baseType: !379, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3461, file: !35, line: 247, baseType: !3465, size: 32)
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3456, line: 20, baseType: !3466)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3456, line: 18, size: 32, elements: !3467)
!3467 = !{!3468}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3466, file: !3456, line: 19, baseType: !383, size: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3446, file: !35, line: 249, baseType: !523, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3446, file: !35, line: 250, baseType: !3471, size: 128, offset: 192)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1125, line: 13, size: 128, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3471, file: !1125, line: 14, baseType: !1124, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3471, file: !1125, line: 15, baseType: !324, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3446, file: !35, line: 251, baseType: !3471, size: 128, offset: 320)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3446, file: !35, line: 252, baseType: !3471, size: 128, offset: 448)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3446, file: !35, line: 259, baseType: !1714, size: 64, offset: 576)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !393, file: !35, line: 1988, baseType: !3479, size: 64, offset: 896)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!85, !3360, !1194, !3482, !189, !7}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3484, line: 22, size: 1280, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3483, file: !3484, line: 23, baseType: !189, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3483, file: !3484, line: 24, baseType: !330, size: 16, offset: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3483, file: !3484, line: 25, baseType: !7, size: 32, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3483, file: !3484, line: 26, baseType: !1836, size: 32, offset: 96)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3483, file: !3484, line: 27, baseType: !435, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3483, file: !3484, line: 28, baseType: !435, size: 64, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3483, file: !3484, line: 41, baseType: !435, size: 64, offset: 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3483, file: !3484, line: 42, baseType: !518, size: 32, offset: 320)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3483, file: !3484, line: 43, baseType: !518, size: 32, offset: 352)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3483, file: !3484, line: 44, baseType: !370, size: 32, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3483, file: !3484, line: 45, baseType: !379, size: 32, offset: 416)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3483, file: !3484, line: 46, baseType: !523, size: 64, offset: 448)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3483, file: !3484, line: 47, baseType: !3471, size: 128, offset: 512)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3483, file: !3484, line: 48, baseType: !3471, size: 128, offset: 640)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3483, file: !3484, line: 49, baseType: !3471, size: 128, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3483, file: !3484, line: 50, baseType: !3471, size: 128, offset: 896)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3483, file: !3484, line: 51, baseType: !435, size: 64, offset: 1024)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3483, file: !3484, line: 52, baseType: !435, size: 64, offset: 1088)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3483, file: !3484, line: 53, baseType: !189, size: 32, offset: 1152)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3483, file: !3484, line: 54, baseType: !189, size: 32, offset: 1184)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3483, file: !3484, line: 55, baseType: !435, size: 64, offset: 1216)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !393, file: !35, line: 1990, baseType: !3508, size: 64, offset: 960)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!321, !399, !289, !144}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !393, file: !35, line: 1991, baseType: !3512, size: 64, offset: 1024)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!85, !364, !3515, !435, !435}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !393, file: !35, line: 1993, baseType: !3518, size: 64, offset: 1088)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!85, !364, !85}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !393, file: !35, line: 1994, baseType: !3522, size: 64, offset: 1152)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!85, !364, !399, !1714, !7, !330}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !393, file: !35, line: 1997, baseType: !3526, size: 64, offset: 1216)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!85, !3360, !364, !1714, !330}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !393, file: !35, line: 1999, baseType: !3530, size: 64, offset: 1280)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!387, !3360, !399, !85}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !393, file: !35, line: 2001, baseType: !3534, size: 64, offset: 1344)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!85, !3360, !399, !387, !85}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !393, file: !35, line: 2003, baseType: !3538, size: 64, offset: 1408)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!85, !3360, !399, !3541}
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !393, file: !35, line: 2005, baseType: !3544, size: 64, offset: 1472)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!85, !399, !3541}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !393, file: !35, line: 2006, baseType: !3548, size: 64, offset: 1536)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!3551, !364}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !3553)
!3553 = !{!3554, !3561}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3552, file: !35, line: 3193, baseType: !3555, size: 128)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3556, line: 296, size: 128, elements: !3557)
!3556 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3557 = !{!3558, !3559, !3560}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3555, file: !3556, line: 297, baseType: !221, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3555, file: !3556, line: 299, baseType: !141, size: 32, offset: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3555, file: !3556, line: 300, baseType: !140, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3552, file: !35, line: 3194, baseType: !189, size: 32, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !365, file: !35, line: 655, baseType: !513, size: 64, offset: 448)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !365, file: !35, line: 656, baseType: !360, size: 64, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !365, file: !35, line: 659, baseType: !140, size: 64, offset: 576)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !365, file: !35, line: 663, baseType: !143, size: 64, offset: 640)
!3566 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !35, line: 671, baseType: !3567, size: 32, offset: 704)
!3567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !35, line: 671, size: 32, elements: !3568)
!3568 = !{!3569, !3571}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3567, file: !35, line: 672, baseType: !3570, size: 32)
!3570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3567, file: !35, line: 673, baseType: !7, size: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !365, file: !35, line: 675, baseType: !518, size: 32, offset: 736)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !365, file: !35, line: 676, baseType: !523, size: 64, offset: 768)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !365, file: !35, line: 677, baseType: !3471, size: 128, offset: 832)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !365, file: !35, line: 678, baseType: !3471, size: 128, offset: 960)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !365, file: !35, line: 679, baseType: !3471, size: 128, offset: 1088)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !365, file: !35, line: 680, baseType: !221, size: 32, offset: 1216)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !365, file: !35, line: 681, baseType: !259, size: 16, offset: 1248)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !365, file: !35, line: 682, baseType: !249, size: 8, offset: 1264)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !365, file: !35, line: 683, baseType: !249, size: 8, offset: 1272)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !365, file: !35, line: 684, baseType: !1272, size: 64, offset: 1280)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !365, file: !35, line: 691, baseType: !143, size: 64, offset: 1344)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !365, file: !35, line: 692, baseType: !1284, size: 320, offset: 1408)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !365, file: !35, line: 694, baseType: !143, size: 64, offset: 1728)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !365, file: !35, line: 695, baseType: !143, size: 64, offset: 1792)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !365, file: !35, line: 697, baseType: !869, size: 128, offset: 1856)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !365, file: !35, line: 698, baseType: !208, size: 128, offset: 1984)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !365, file: !35, line: 707, baseType: !208, size: 128, offset: 2112)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !365, file: !35, line: 708, baseType: !208, size: 128, offset: 2240)
!3590 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !35, line: 709, baseType: !3591, size: 128, offset: 2368)
!3591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !35, line: 709, size: 128, elements: !3592)
!3592 = !{!3593, !3594}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3591, file: !35, line: 710, baseType: !992, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3591, file: !35, line: 711, baseType: !843, size: 128, align: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !365, file: !35, line: 713, baseType: !629, size: 64, offset: 2496)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !365, file: !35, line: 714, baseType: !629, size: 64, offset: 2560)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !365, file: !35, line: 715, baseType: !241, size: 32, offset: 2624)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !365, file: !35, line: 716, baseType: !241, size: 32, offset: 2656)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !365, file: !35, line: 717, baseType: !241, size: 32, offset: 2688)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !365, file: !35, line: 719, baseType: !241, size: 32, offset: 2720)
!3601 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !35, line: 721, baseType: !3602, size: 64, offset: 2752)
!3602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !35, line: 721, size: 64, elements: !3603)
!3603 = !{!3604, !3605}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3602, file: !35, line: 722, baseType: !1982, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3602, file: !35, line: 723, baseType: !1015, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !365, file: !35, line: 725, baseType: !3607, size: 64, offset: 2816)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !365, file: !35, line: 726, baseType: !361, size: 1536, align: 64, offset: 2880)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !365, file: !35, line: 727, baseType: !208, size: 128, offset: 4416)
!3611 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !35, line: 728, baseType: !3612, size: 64, offset: 4544)
!3612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !35, line: 728, size: 64, elements: !3613)
!3613 = !{!3614, !3615, !3618, !3619}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3612, file: !35, line: 729, baseType: !2157, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3612, file: !35, line: 730, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3612, file: !35, line: 731, baseType: !289, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3612, file: !35, line: 732, baseType: !7, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !365, file: !35, line: 735, baseType: !191, size: 32, offset: 4608)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !365, file: !35, line: 738, baseType: !191, size: 32, offset: 4640)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !365, file: !35, line: 739, baseType: !3297, size: 64, offset: 4672)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !365, file: !35, line: 750, baseType: !140, size: 64, offset: 4736)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !361, file: !35, line: 474, baseType: !3555, size: 128, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !361, file: !35, line: 475, baseType: !1284, size: 320, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !361, file: !35, line: 476, baseType: !141, size: 32, offset: 512)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !361, file: !35, line: 477, baseType: !241, size: 32, offset: 544)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !361, file: !35, line: 482, baseType: !1570, size: 128, offset: 576)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !361, file: !35, line: 483, baseType: !143, size: 64, offset: 704)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !361, file: !35, line: 484, baseType: !143, size: 64, offset: 768)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !361, file: !35, line: 485, baseType: !3632, size: 64, offset: 832)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3634)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !3635)
!3635 = !{!3636, !3640, !3710, !3714, !3718, !3724, !3729, !3733, !3738, !3742, !3746, !3750, !3751, !3755, !3759, !3763, !3768, !3772, !3779, !3780}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3634, file: !35, line: 405, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!85, !2895, !1027}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3634, file: !35, line: 406, baseType: !3641, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!85, !1714, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1142, line: 293, size: 1536, elements: !3646)
!3646 = !{!3647, !3677, !3691}
!3647 = !DIDerivedType(tag: DW_TAG_member, scope: !3645, file: !1142, line: 295, baseType: !3648, size: 512)
!3648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3645, file: !1142, line: 295, size: 512, elements: !3649)
!3649 = !{!3650, !3676}
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !3648, file: !1142, line: 296, baseType: !3651, size: 448)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3648, file: !1142, line: 296, size: 448, elements: !3652)
!3652 = !{!3653, !3654, !3663, !3664, !3665, !3674, !3675}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3651, file: !1142, line: 298, baseType: !143, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, scope: !3651, file: !1142, line: 299, baseType: !3655, size: 128, offset: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3651, file: !1142, line: 299, size: 128, elements: !3656)
!3656 = !{!3657, !3658}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3655, file: !1142, line: 300, baseType: !208, size: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !1142, line: 302, baseType: !3659, size: 128)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3655, file: !1142, line: 302, size: 128, elements: !3660)
!3660 = !{!3661, !3662}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3659, file: !1142, line: 303, baseType: !140, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3659, file: !1142, line: 305, baseType: !7, size: 32, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3651, file: !1142, line: 310, baseType: !360, size: 64, offset: 192)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3651, file: !1142, line: 311, baseType: !143, size: 64, offset: 256)
!3665 = !DIDerivedType(tag: DW_TAG_member, scope: !3651, file: !1142, line: 312, baseType: !3666, size: 64, offset: 320)
!3666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3651, file: !1142, line: 312, size: 64, elements: !3667)
!3667 = !{!3668, !3669}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3666, file: !1142, line: 313, baseType: !140, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3666, file: !1142, line: 314, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1142, line: 257, baseType: !3671)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1142, line: 255, size: 64, elements: !3672)
!3672 = !{!3673}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3671, file: !1142, line: 256, baseType: !143, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3651, file: !1142, line: 316, baseType: !241, size: 32, offset: 384)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3651, file: !1142, line: 317, baseType: !241, size: 32, offset: 416)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3648, file: !1142, line: 323, baseType: !2896, size: 512, align: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, scope: !3645, file: !1142, line: 325, baseType: !3678, size: 512, offset: 512)
!3678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3645, file: !1142, line: 325, size: 512, elements: !3679)
!3679 = !{!3680, !3690}
!3680 = !DIDerivedType(tag: DW_TAG_member, scope: !3678, file: !1142, line: 326, baseType: !3681, size: 320)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3678, file: !1142, line: 326, size: 320, elements: !3682)
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688, !3689}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3681, file: !1142, line: 327, baseType: !143, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3681, file: !1142, line: 328, baseType: !143, size: 64, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3681, file: !1142, line: 329, baseType: !143, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3681, file: !1142, line: 331, baseType: !241, size: 32, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3681, file: !1142, line: 332, baseType: !241, size: 32, offset: 224)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3681, file: !1142, line: 333, baseType: !241, size: 32, offset: 256)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3681, file: !1142, line: 335, baseType: !7, size: 32, offset: 288)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3678, file: !1142, line: 339, baseType: !2896, size: 512, align: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, scope: !3645, file: !1142, line: 341, baseType: !3692, size: 512, offset: 1024)
!3692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3645, file: !1142, line: 341, size: 512, elements: !3693)
!3693 = !{!3694, !3703, !3709}
!3694 = !DIDerivedType(tag: DW_TAG_member, scope: !3692, file: !1142, line: 342, baseType: !3695, size: 384)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !1142, line: 342, size: 384, elements: !3696)
!3696 = !{!3697, !3698, !3699, !3700, !3701, !3702}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3695, file: !1142, line: 343, baseType: !143, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3695, file: !1142, line: 344, baseType: !143, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3695, file: !1142, line: 346, baseType: !140, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3695, file: !1142, line: 347, baseType: !140, size: 64, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3695, file: !1142, line: 348, baseType: !140, size: 64, offset: 256)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3695, file: !1142, line: 349, baseType: !140, size: 64, offset: 320)
!3703 = !DIDerivedType(tag: DW_TAG_member, scope: !3692, file: !1142, line: 352, baseType: !3704, size: 256)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !1142, line: 352, size: 256, elements: !3705)
!3705 = !{!3706, !3707, !3708}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3704, file: !1142, line: 353, baseType: !143, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3704, file: !1142, line: 354, baseType: !143, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3704, file: !1142, line: 356, baseType: !208, size: 128, offset: 128)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3692, file: !1142, line: 359, baseType: !2896, size: 512, align: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3634, file: !35, line: 409, baseType: !3711, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!85, !360, !1027}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3634, file: !35, line: 412, baseType: !3715, size: 64, offset: 192)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!703, !360, !3644}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3634, file: !35, line: 414, baseType: !3719, size: 64, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{null, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3634, file: !35, line: 416, baseType: !3725, size: 64, offset: 320)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!85, !1714, !360, !523, !7, !3728, !2172}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3634, file: !35, line: 419, baseType: !3730, size: 64, offset: 384)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!85, !1714, !360, !523, !7, !7, !2895, !140}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3634, file: !35, line: 424, baseType: !3734, size: 64, offset: 448)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!3737, !360, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !142, line: 131, baseType: !435)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3634, file: !35, line: 425, baseType: !3739, size: 64, offset: 512)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{null, !3644, !144, !144}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3634, file: !35, line: 426, baseType: !3743, size: 64, offset: 576)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!703, !3644, !141}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3634, file: !35, line: 427, baseType: !3747, size: 64, offset: 640)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !3644}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3634, file: !35, line: 428, baseType: !2001, size: 64, offset: 704)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3634, file: !35, line: 433, baseType: !3752, size: 64, offset: 768)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!85, !360, !3644, !3644, !21}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3634, file: !35, line: 435, baseType: !3756, size: 64, offset: 832)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!85, !3644}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3634, file: !35, line: 436, baseType: !3760, size: 64, offset: 896)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!703, !3644, !144, !144}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3634, file: !35, line: 438, baseType: !3764, size: 64, offset: 960)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !3644, !3767, !3767}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3634, file: !35, line: 439, baseType: !3769, size: 64, offset: 1024)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!85, !360, !2895}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3634, file: !35, line: 442, baseType: !3773, size: 64, offset: 1088)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!85, !3776, !1714, !3778}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3634, file: !35, line: 444, baseType: !2164, size: 64, offset: 1152)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3634, file: !35, line: 445, baseType: !3781, size: 64, offset: 1216)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!85, !2004, !2026}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !35, line: 486, baseType: !143, size: 64, offset: 896)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !361, file: !35, line: 487, baseType: !1284, size: 320, offset: 960)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !361, file: !35, line: 488, baseType: !2207, size: 32, offset: 1280)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !361, file: !35, line: 489, baseType: !221, size: 32, offset: 1312)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !361, file: !35, line: 490, baseType: !208, size: 128, offset: 1344)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !361, file: !35, line: 491, baseType: !140, size: 64, offset: 1472)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !351, file: !315, line: 180, baseType: !3791, size: 64, offset: 320)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!321, !1714, !214, !350, !289, !523, !144}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !351, file: !315, line: 182, baseType: !3791, size: 64, offset: 384)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !351, file: !315, line: 184, baseType: !3796, size: 64, offset: 448)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!85, !1714, !214, !350, !2065}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !339, file: !315, line: 90, baseType: !3800, size: 64, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !339, file: !315, line: 91, baseType: !3802, size: 64, offset: 256)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !305, file: !204, line: 120, baseType: !3804, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!3807, !272}
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3809)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !3810)
!3810 = !{!3811, !3812, !3816, !3820, !3826, !3830}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3809, file: !29, line: 40, baseType: !28, size: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3809, file: !29, line: 41, baseType: !3813, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!703}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3809, file: !29, line: 42, baseType: !3817, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!140}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3809, file: !29, line: 43, baseType: !3821, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!2296, !3824}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3809, file: !29, line: 44, baseType: !3827, size: 64, offset: 256)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!2296}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3809, file: !29, line: 45, baseType: !666, size: 64, offset: 320)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !305, file: !204, line: 121, baseType: !3832, size: 64, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!2296, !272}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !305, file: !204, line: 122, baseType: !3836, size: 64, offset: 320)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !272, !3839, !3840}
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !203, file: !204, line: 70, baseType: !3842, size: 64, offset: 384)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !538, line: 190, size: 1152, elements: !3844)
!3844 = !{!3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3936, !3937, !3938, !3939, !3940, !3943}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3843, file: !538, line: 191, baseType: !241, size: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3843, file: !538, line: 192, baseType: !241, size: 32, offset: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3843, file: !538, line: 202, baseType: !3842, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3843, file: !538, line: 203, baseType: !155, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3843, file: !538, line: 205, baseType: !735, size: 192, align: 64, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3843, file: !538, line: 207, baseType: !2296, size: 64, offset: 384)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3843, file: !538, line: 208, baseType: !7, size: 32, offset: 448)
!3852 = !DIDerivedType(tag: DW_TAG_member, scope: !3843, file: !538, line: 209, baseType: !3853, size: 256, offset: 512)
!3853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3843, file: !538, line: 209, size: 256, elements: !3854)
!3854 = !{!3855, !3864, !3868}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3853, file: !538, line: 210, baseType: !3856, size: 256)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !538, line: 153, size: 256, elements: !3857)
!3857 = !{!3858, !3859, !3860, !3863}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3856, file: !538, line: 154, baseType: !143, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3856, file: !538, line: 156, baseType: !1573, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3856, file: !538, line: 162, baseType: !3861, size: 64, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !538, line: 162, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3856, file: !538, line: 167, baseType: !143, size: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3853, file: !538, line: 211, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !538, line: 170, size: 64, elements: !3866)
!3866 = !{!3867}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3865, file: !538, line: 171, baseType: !3842, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3853, file: !538, line: 212, baseType: !3869, size: 256)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !538, line: 174, size: 256, elements: !3870)
!3870 = !{!3871, !3931, !3934, !3935}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3869, file: !538, line: 175, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3874)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !538, line: 271, size: 768, elements: !3875)
!3875 = !{!3876, !3896, !3900, !3904, !3908, !3912, !3916, !3920, !3921, !3922, !3923, !3927}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3874, file: !538, line: 276, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!85, !3880}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !538, line: 251, size: 1216, elements: !3882)
!3882 = !{!3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3881, file: !538, line: 253, baseType: !3842, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3881, file: !538, line: 254, baseType: !1714, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3881, file: !538, line: 255, baseType: !1064, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3881, file: !538, line: 256, baseType: !140, size: 64, offset: 192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3881, file: !538, line: 259, baseType: !623, size: 256, offset: 256)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3881, file: !538, line: 260, baseType: !623, size: 256, offset: 512)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3881, file: !538, line: 261, baseType: !85, size: 32, offset: 768)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3881, file: !538, line: 262, baseType: !208, size: 128, offset: 832)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3881, file: !538, line: 263, baseType: !289, size: 64, offset: 960)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3881, file: !538, line: 265, baseType: !144, size: 64, offset: 1024)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3881, file: !538, line: 266, baseType: !703, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3881, file: !538, line: 267, baseType: !703, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3881, file: !538, line: 268, baseType: !2110, size: 64, offset: 1152)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3874, file: !538, line: 277, baseType: !3897, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{null, !3880}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3874, file: !538, line: 290, baseType: !3901, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!85, !1064, !140}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3874, file: !538, line: 292, baseType: !3905, size: 64, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!140, !1064, !1995}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3874, file: !538, line: 293, baseType: !3909, size: 64, offset: 256)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!140, !1064, !140, !1995}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3874, file: !538, line: 294, baseType: !3913, size: 64, offset: 320)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{null, !1064, !140}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3874, file: !538, line: 296, baseType: !3917, size: 64, offset: 384)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!321, !3880, !289, !144, !523}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3874, file: !538, line: 306, baseType: !144, size: 64, offset: 448)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3874, file: !538, line: 313, baseType: !703, size: 8, offset: 512)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3874, file: !538, line: 314, baseType: !3917, size: 64, offset: 576)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3874, file: !538, line: 317, baseType: !3924, size: 64, offset: 640)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!2052, !3880, !2054}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3874, file: !538, line: 320, baseType: !3928, size: 64, offset: 704)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!85, !3880, !2065}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3869, file: !538, line: 176, baseType: !3932, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !538, line: 35, flags: DIFlagFwdDecl)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3869, file: !538, line: 177, baseType: !523, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3869, file: !538, line: 178, baseType: !3842, size: 64, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3843, file: !538, line: 215, baseType: !140, size: 64, offset: 768)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3843, file: !538, line: 221, baseType: !435, size: 64, offset: 832)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3843, file: !538, line: 223, baseType: !259, size: 16, offset: 896)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3843, file: !538, line: 224, baseType: !330, size: 16, offset: 912)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3843, file: !538, line: 225, baseType: !3941, size: 64, offset: 960)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !538, line: 36, flags: DIFlagFwdDecl)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3843, file: !538, line: 227, baseType: !843, size: 128, align: 64, offset: 1024)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !203, file: !204, line: 71, baseType: !3945, size: 32, offset: 448)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3946, line: 19, size: 32, elements: !3947)
!3946 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3947 = !{!3948}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3945, file: !3946, line: 20, baseType: !1404, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !203, file: !204, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !203, file: !204, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !203, file: !204, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !203, file: !204, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !203, file: !204, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !70, line: 707, baseType: !199, size: 64, offset: 512)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !200, file: !70, line: 709, baseType: !3956, size: 64, offset: 576)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !200, file: !70, line: 711, baseType: !155, size: 64, offset: 640)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !70, line: 712, baseType: !3960, size: 64, offset: 704)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3962)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !3963)
!3963 = !{!3964, !3965, !3966, !3972, !3977, !3981}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3962, file: !70, line: 90, baseType: !155, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3962, file: !70, line: 91, baseType: !336, size: 64, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3962, file: !70, line: 92, baseType: !3967, size: 64, offset: 128)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!85, !3970, !284}
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3962, file: !70, line: 93, baseType: !3973, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!289, !3970, !3976, !3839, !3840}
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3962, file: !70, line: 95, baseType: !3978, size: 64, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{null, !199}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3962, file: !70, line: 97, baseType: !3982, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3984)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !3985)
!3985 = !{!3986, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3984, file: !77, line: 287, baseType: !3987, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!85, !199}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3984, file: !77, line: 288, baseType: !3978, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3984, file: !77, line: 289, baseType: !3987, size: 64, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3984, file: !77, line: 290, baseType: !3987, size: 64, offset: 192)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3984, file: !77, line: 291, baseType: !3987, size: 64, offset: 256)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3984, file: !77, line: 292, baseType: !3987, size: 64, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3984, file: !77, line: 293, baseType: !3987, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3984, file: !77, line: 294, baseType: !3987, size: 64, offset: 448)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3984, file: !77, line: 295, baseType: !3987, size: 64, offset: 512)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3984, file: !77, line: 296, baseType: !3987, size: 64, offset: 576)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3984, file: !77, line: 297, baseType: !3987, size: 64, offset: 640)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3984, file: !77, line: 298, baseType: !3987, size: 64, offset: 704)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3984, file: !77, line: 299, baseType: !3987, size: 64, offset: 768)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3984, file: !77, line: 300, baseType: !3987, size: 64, offset: 832)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3984, file: !77, line: 301, baseType: !3987, size: 64, offset: 896)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3984, file: !77, line: 302, baseType: !3987, size: 64, offset: 960)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3984, file: !77, line: 303, baseType: !3987, size: 64, offset: 1024)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3984, file: !77, line: 304, baseType: !3987, size: 64, offset: 1088)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3984, file: !77, line: 305, baseType: !3987, size: 64, offset: 1152)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3984, file: !77, line: 306, baseType: !3987, size: 64, offset: 1216)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3984, file: !77, line: 307, baseType: !3987, size: 64, offset: 1280)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3984, file: !77, line: 308, baseType: !3987, size: 64, offset: 1344)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3984, file: !77, line: 309, baseType: !3987, size: 64, offset: 1408)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !200, file: !70, line: 714, baseType: !4013, size: 64, offset: 768)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4015)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4016, line: 80, size: 1344, elements: !4017)
!4016 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4017 = !{!4018, !4019, !4020, !4021, !4022, !4023, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4096}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4015, file: !4016, line: 81, baseType: !155, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4015, file: !4016, line: 82, baseType: !155, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4015, file: !4016, line: 83, baseType: !336, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4015, file: !4016, line: 84, baseType: !336, size: 64, offset: 192)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4015, file: !4016, line: 85, baseType: !336, size: 64, offset: 256)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4015, file: !4016, line: 87, baseType: !4024, size: 64, offset: 320)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!85, !199, !4027}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4029)
!4029 = !{!4030, !4031, !4032, !4033, !4034, !4035, !4036, !4049, !4059, !4060, !4061, !4062, !4063, !4071, !4072, !4073, !4074, !4075, !4076}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4028, file: !64, line: 97, baseType: !155, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4028, file: !64, line: 98, baseType: !4013, size: 64, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4028, file: !64, line: 100, baseType: !552, size: 64, offset: 128)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4028, file: !64, line: 101, baseType: !155, size: 64, offset: 192)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4028, file: !64, line: 103, baseType: !703, size: 8, offset: 256)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4028, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4028, file: !64, line: 106, baseType: !4037, size: 64, offset: 320)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4039)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4040, line: 282, size: 1600, elements: !4041)
!4040 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4041 = !{!4042, !4043, !4044, !4048}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4039, file: !4040, line: 283, baseType: !3300, size: 256)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4039, file: !4040, line: 284, baseType: !3300, size: 256, offset: 256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4039, file: !4040, line: 285, baseType: !4045, size: 1024, offset: 512)
!4045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1024, elements: !4046)
!4046 = !{!4047}
!4047 = !DISubrange(count: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4039, file: !4040, line: 286, baseType: !2296, size: 64, offset: 1536)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4028, file: !64, line: 107, baseType: !4050, size: 64, offset: 384)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4052)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4040, line: 217, size: 256, elements: !4053)
!4053 = !{!4054, !4055, !4057, !4058}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4052, file: !4040, line: 218, baseType: !3307, size: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4052, file: !4040, line: 219, baseType: !4056, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4040, line: 15, baseType: !143)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4052, file: !4040, line: 220, baseType: !191, size: 32, offset: 192)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4052, file: !4040, line: 221, baseType: !191, size: 32, offset: 224)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4028, file: !64, line: 109, baseType: !3987, size: 64, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4028, file: !64, line: 110, baseType: !3978, size: 64, offset: 512)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4028, file: !64, line: 111, baseType: !3987, size: 64, offset: 576)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4028, file: !64, line: 112, baseType: !3978, size: 64, offset: 640)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4028, file: !64, line: 113, baseType: !4064, size: 64, offset: 704)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!85, !199, !4067}
!4067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4068)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4069)
!4069 = !{!4070}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4068, file: !77, line: 59, baseType: !85, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4028, file: !64, line: 114, baseType: !3987, size: 64, offset: 768)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4028, file: !64, line: 115, baseType: !336, size: 64, offset: 832)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4028, file: !64, line: 116, baseType: !336, size: 64, offset: 896)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4028, file: !64, line: 118, baseType: !3982, size: 64, offset: 960)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4028, file: !64, line: 119, baseType: !3978, size: 64, offset: 1024)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4028, file: !64, line: 121, baseType: !4077, size: 64, offset: 1088)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4015, file: !4016, line: 88, baseType: !3967, size: 64, offset: 384)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4015, file: !4016, line: 89, baseType: !3987, size: 64, offset: 448)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4015, file: !4016, line: 90, baseType: !3978, size: 64, offset: 512)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4015, file: !4016, line: 91, baseType: !3978, size: 64, offset: 576)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4015, file: !4016, line: 92, baseType: !3978, size: 64, offset: 640)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4015, file: !4016, line: 94, baseType: !3987, size: 64, offset: 704)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4015, file: !4016, line: 95, baseType: !3987, size: 64, offset: 768)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4015, file: !4016, line: 97, baseType: !4064, size: 64, offset: 832)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4015, file: !4016, line: 98, baseType: !3987, size: 64, offset: 896)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4015, file: !4016, line: 100, baseType: !3987, size: 64, offset: 960)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4015, file: !4016, line: 102, baseType: !3987, size: 64, offset: 1024)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4015, file: !4016, line: 103, baseType: !3978, size: 64, offset: 1088)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4015, file: !4016, line: 105, baseType: !3982, size: 64, offset: 1152)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4015, file: !4016, line: 107, baseType: !4093, size: 64, offset: 1216)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4095)
!4095 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4016, line: 107, flags: DIFlagFwdDecl)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4015, file: !4016, line: 109, baseType: !703, size: 8, offset: 1280)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !200, file: !70, line: 715, baseType: !4027, size: 64, offset: 832)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !200, file: !70, line: 717, baseType: !140, size: 64, offset: 896)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !200, file: !70, line: 719, baseType: !140, size: 64, offset: 960)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !200, file: !70, line: 721, baseType: !623, size: 256, offset: 1024)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !200, file: !70, line: 725, baseType: !4102, size: 448, offset: 1280)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4103)
!4103 = !{!4104, !4105, !4106, !4107}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4102, file: !70, line: 518, baseType: !208, size: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4102, file: !70, line: 519, baseType: !208, size: 128, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4102, file: !70, line: 520, baseType: !208, size: 128, offset: 256)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4102, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !200, file: !70, line: 726, baseType: !4109, size: 2496, offset: 1728)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4193, !4197}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4109, file: !77, line: 664, baseType: !4067, size: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4109, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4109, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4109, file: !77, line: 667, baseType: !703, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4109, file: !77, line: 668, baseType: !703, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4109, file: !77, line: 669, baseType: !703, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4109, file: !77, line: 670, baseType: !703, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4109, file: !77, line: 671, baseType: !703, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4109, file: !77, line: 672, baseType: !703, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4109, file: !77, line: 673, baseType: !703, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4109, file: !77, line: 674, baseType: !703, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4109, file: !77, line: 675, baseType: !189, size: 32, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4109, file: !77, line: 676, baseType: !221, size: 32, offset: 96)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4109, file: !77, line: 678, baseType: !208, size: 128, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4109, file: !77, line: 679, baseType: !572, size: 256, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4109, file: !77, line: 680, baseType: !4127, size: 64, offset: 512)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4129, line: 43, size: 1536, elements: !4130)
!4129 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4130 = !{!4131, !4132, !4133, !4134, !4135, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4128, file: !4129, line: 44, baseType: !155, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4128, file: !4129, line: 45, baseType: !85, size: 32, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4128, file: !4129, line: 46, baseType: !208, size: 128, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4128, file: !4129, line: 47, baseType: !221, size: 32, offset: 256)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4128, file: !4129, line: 48, baseType: !4136, size: 64, offset: 320)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4128, file: !4129, line: 49, baseType: !865, size: 320, offset: 384)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4128, file: !4129, line: 50, baseType: !143, size: 64, offset: 704)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4128, file: !4129, line: 51, baseType: !1519, size: 64, offset: 768)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4128, file: !4129, line: 52, baseType: !1519, size: 64, offset: 832)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4128, file: !4129, line: 53, baseType: !1519, size: 64, offset: 896)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4128, file: !4129, line: 54, baseType: !1519, size: 64, offset: 960)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4128, file: !4129, line: 55, baseType: !1519, size: 64, offset: 1024)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4128, file: !4129, line: 56, baseType: !143, size: 64, offset: 1088)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4128, file: !4129, line: 57, baseType: !143, size: 64, offset: 1152)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4128, file: !4129, line: 58, baseType: !143, size: 64, offset: 1216)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4128, file: !4129, line: 59, baseType: !143, size: 64, offset: 1280)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4128, file: !4129, line: 60, baseType: !143, size: 64, offset: 1344)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4128, file: !4129, line: 61, baseType: !199, size: 64, offset: 1408)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4128, file: !4129, line: 62, baseType: !703, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4128, file: !4129, line: 63, baseType: !703, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4109, file: !77, line: 681, baseType: !703, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4109, file: !77, line: 682, baseType: !703, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4109, file: !77, line: 683, baseType: !703, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4109, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4109, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4109, file: !77, line: 690, baseType: !1511, size: 512, offset: 640)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4109, file: !77, line: 691, baseType: !435, size: 64, offset: 1152)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4109, file: !77, line: 692, baseType: !883, size: 256, offset: 1216)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4109, file: !77, line: 693, baseType: !1377, size: 192, offset: 1472)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4109, file: !77, line: 694, baseType: !4136, size: 64, offset: 1664)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4109, file: !77, line: 695, baseType: !241, size: 32, offset: 1728)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4109, file: !77, line: 696, baseType: !241, size: 32, offset: 1760)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4109, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4109, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4109, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4109, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4109, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4109, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4109, file: !77, line: 703, baseType: !703, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4109, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4109, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4109, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4109, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4109, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4109, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4109, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4109, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4109, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4109, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4109, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4109, file: !77, line: 715, baseType: !435, size: 64, offset: 2048)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4109, file: !77, line: 716, baseType: !435, size: 64, offset: 2112)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4109, file: !77, line: 717, baseType: !435, size: 64, offset: 2176)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4109, file: !77, line: 718, baseType: !435, size: 64, offset: 2240)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4109, file: !77, line: 720, baseType: !4188, size: 64, offset: 2304)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4190)
!4190 = !{!4191, !4192}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4189, file: !77, line: 633, baseType: !221, size: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4189, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4109, file: !77, line: 721, baseType: !4194, size: 64, offset: 2368)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !199, !619}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4109, file: !77, line: 722, baseType: !4198, size: 64, offset: 2432)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !200, file: !70, line: 727, baseType: !4201, size: 64, offset: 4224)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4203)
!4203 = !{!4204, !4205, !4206, !4210, !4211, !4212}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4202, file: !77, line: 743, baseType: !3984, size: 1472)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4202, file: !77, line: 744, baseType: !3987, size: 64, offset: 1472)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4202, file: !77, line: 745, baseType: !4207, size: 64, offset: 1536)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{null, !199, !703}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4202, file: !77, line: 746, baseType: !3987, size: 64, offset: 1600)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4202, file: !77, line: 747, baseType: !3978, size: 64, offset: 1664)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4202, file: !77, line: 748, baseType: !3978, size: 64, offset: 1728)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !200, file: !70, line: 736, baseType: !4214, size: 128, offset: 4288)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4215)
!4215 = !{!4216, !4220}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4214, file: !70, line: 531, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4219, line: 13, flags: DIFlagFwdDecl)
!4219 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4214, file: !70, line: 532, baseType: !4221, size: 64, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !200, file: !70, line: 738, baseType: !4224, size: 64, offset: 4416)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4226)
!4226 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !200, file: !70, line: 740, baseType: !4228, size: 64, offset: 4480)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !200, file: !70, line: 741, baseType: !435, size: 64, offset: 4544)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !200, file: !70, line: 746, baseType: !435, size: 64, offset: 4608)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !200, file: !70, line: 747, baseType: !4232, size: 64, offset: 4672)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4234)
!4234 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !200, file: !70, line: 749, baseType: !4236, size: 64, offset: 4736)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4238)
!4238 = !{!4239, !4240, !4241}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4237, file: !70, line: 433, baseType: !7, size: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4237, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4237, file: !70, line: 435, baseType: !143, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !200, file: !70, line: 751, baseType: !208, size: 128, offset: 4800)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !200, file: !70, line: 762, baseType: !4244, size: 64, offset: 4928)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !200, file: !70, line: 770, baseType: !4247, offset: 4992)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4248, line: 5, elements: !912)
!4248 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !200, file: !70, line: 772, baseType: !4250, size: 64, offset: 4992)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4252, line: 18, flags: DIFlagFwdDecl)
!4252 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !200, file: !70, line: 773, baseType: !4254, size: 64, offset: 5056)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4016, line: 22, flags: DIFlagFwdDecl)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !200, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !200, file: !70, line: 778, baseType: !518, size: 32, offset: 5152)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !200, file: !70, line: 779, baseType: !189, size: 32, offset: 5184)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !200, file: !70, line: 781, baseType: !221, size: 32, offset: 5216)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !200, file: !70, line: 782, baseType: !208, size: 128, offset: 5248)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !200, file: !70, line: 784, baseType: !4262, size: 64, offset: 5376)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4264)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4265, line: 52, size: 768, elements: !4266)
!4265 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4266 = !{!4267, !4268, !4269, !4270, !4271, !4275, !4279, !4280, !4281, !4282, !4286, !4290}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4264, file: !4265, line: 53, baseType: !155, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4264, file: !4265, line: 55, baseType: !336, size: 64, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4264, file: !4265, line: 56, baseType: !336, size: 64, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4264, file: !4265, line: 58, baseType: !3967, size: 64, offset: 192)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4264, file: !4265, line: 59, baseType: !4272, size: 64, offset: 256)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!289, !3970, !3976}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4264, file: !4265, line: 61, baseType: !4276, size: 64, offset: 320)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{null, !4262}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4264, file: !4265, line: 62, baseType: !3978, size: 64, offset: 384)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4264, file: !4265, line: 64, baseType: !3987, size: 64, offset: 448)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4264, file: !4265, line: 66, baseType: !3807, size: 64, offset: 512)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4264, file: !4265, line: 67, baseType: !4283, size: 64, offset: 576)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!2296, !3970}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4264, file: !4265, line: 69, baseType: !4287, size: 64, offset: 640)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{null, !3970, !3839, !3840}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4264, file: !4265, line: 71, baseType: !3982, size: 64, offset: 704)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !200, file: !70, line: 785, baseType: !336, size: 64, offset: 5440)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !200, file: !70, line: 787, baseType: !3978, size: 64, offset: 5504)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !200, file: !70, line: 788, baseType: !4294, size: 64, offset: 5568)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !200, file: !70, line: 789, baseType: !4297, size: 64, offset: 5632)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !200, file: !70, line: 791, baseType: !4300, size: 64, offset: 5696)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4302)
!4302 = !{!4303, !4304, !4305, !4306, !4307}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4301, file: !70, line: 598, baseType: !92, size: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4301, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4301, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4301, file: !70, line: 601, baseType: !703, size: 8, offset: 96)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4301, file: !70, line: 602, baseType: !703, size: 8, offset: 104)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !200, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !200, file: !70, line: 795, baseType: !703, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !200, file: !70, line: 796, baseType: !703, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !200, file: !70, line: 797, baseType: !703, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !200, file: !70, line: 798, baseType: !703, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !200, file: !70, line: 799, baseType: !703, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !152, file: !118, line: 169, baseType: !336, size: 64, offset: 704)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !152, file: !118, line: 171, baseType: !208, size: 128, offset: 768)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !152, file: !118, line: 172, baseType: !155, size: 64, offset: 896)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !152, file: !118, line: 174, baseType: !143, size: 64, offset: 960)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !152, file: !118, line: 174, baseType: !143, size: 64, offset: 1024)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !152, file: !118, line: 175, baseType: !865, size: 320, offset: 1088)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !152, file: !118, line: 176, baseType: !85, size: 32, offset: 1408)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !152, file: !118, line: 177, baseType: !85, size: 32, offset: 1440)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !152, file: !118, line: 178, baseType: !4323, size: 64, offset: 1472)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{null, !167}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !152, file: !118, line: 180, baseType: !883, size: 256, offset: 1536)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !152, file: !118, line: 181, baseType: !85, size: 32, offset: 1792)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_on", scope: !152, file: !118, line: 182, baseType: !143, size: 64, offset: 1856)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_off", scope: !152, file: !118, line: 183, baseType: !143, size: 64, offset: 1920)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_lock", scope: !152, file: !118, line: 187, baseType: !1284, size: 320, offset: 1984)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !152, file: !118, line: 189, baseType: !4332, size: 64, offset: 2304)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !118, line: 471, size: 704, elements: !4334)
!4334 = !{!4335, !4336, !4337, !4338, !4339, !4344, !4345, !4346, !4347}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4333, file: !118, line: 473, baseType: !155, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4333, file: !118, line: 474, baseType: !195, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4333, file: !118, line: 475, baseType: !4323, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4333, file: !118, line: 478, baseType: !117, size: 32, offset: 192)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !4333, file: !118, line: 481, baseType: !4340, size: 64, offset: 256)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_hw_trigger_type", file: !118, line: 95, size: 32, elements: !4342)
!4342 = !{!4343}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !4341, file: !118, line: 96, baseType: !85, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "leddev_list_lock", scope: !4333, file: !118, line: 484, baseType: !221, size: 32, offset: 320)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "led_cdevs", scope: !4333, file: !118, line: 485, baseType: !208, size: 128, offset: 384)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "next_trig", scope: !4333, file: !118, line: 488, baseType: !208, size: 128, offset: 512)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4333, file: !118, line: 490, baseType: !336, size: 64, offset: 640)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "trig_list", scope: !152, file: !118, line: 190, baseType: !208, size: 128, offset: 2368)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_data", scope: !152, file: !118, line: 191, baseType: !140, size: 64, offset: 2496)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "activated", scope: !152, file: !118, line: 193, baseType: !703, size: 8, offset: 2560)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !152, file: !118, line: 196, baseType: !4340, size: 64, offset: 2624)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_trigger", scope: !152, file: !118, line: 199, baseType: !155, size: 64, offset: 2688)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_is_supported", scope: !152, file: !118, line: 209, baseType: !4354, size: 64, offset: 2752)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!85, !167, !143}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_set", scope: !152, file: !118, line: 220, baseType: !4354, size: 64, offset: 2816)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get", scope: !152, file: !118, line: 232, baseType: !4359, size: 64, offset: 2880)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!85, !167, !180}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get_device", scope: !152, file: !118, line: 239, baseType: !4363, size: 64, offset: 2944)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!199, !167}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !152, file: !118, line: 248, baseType: !623, size: 256, offset: 3008)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !149, file: !3, line: 40, baseType: !4368, size: 64, offset: 3264)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4370, line: 345, size: 576, elements: !4371)
!4370 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!4371 = !{!4372, !4373, !4374, !4375, !4581, !4642, !4643}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4369, file: !4370, line: 347, baseType: !140, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4369, file: !4370, line: 349, baseType: !85, size: 32, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4369, file: !4370, line: 350, baseType: !155, size: 64, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4369, file: !4370, line: 352, baseType: !4376, size: 64, offset: 192)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4370, line: 137, size: 10880, elements: !4378)
!4378 = !{!4379, !4380, !4381, !4382, !4390, !4391, !4392, !4394, !4395, !4396, !4397, !4398, !4399, !4401, !4402, !4403, !4404, !4405, !4406, !4420, !4425, !4520, !4523, !4524, !4525, !4527, !4530, !4540, !4541, !4542, !4543, !4544, !4548, !4552, !4556, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4577, !4578, !4580}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4377, file: !4370, line: 138, baseType: !155, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4377, file: !4370, line: 139, baseType: !155, size: 64, offset: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4377, file: !4370, line: 140, baseType: !155, size: 64, offset: 128)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4377, file: !4370, line: 141, baseType: !4383, size: 64, offset: 192)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4384, line: 59, size: 64, elements: !4385)
!4384 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!4385 = !{!4386, !4387, !4388, !4389}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4383, file: !4384, line: 60, baseType: !258, size: 16)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4383, file: !4384, line: 61, baseType: !258, size: 16, offset: 16)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4383, file: !4384, line: 62, baseType: !258, size: 16, offset: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4383, file: !4384, line: 63, baseType: !258, size: 16, offset: 48)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4377, file: !4370, line: 143, baseType: !1638, size: 64, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4377, file: !4370, line: 145, baseType: !1638, size: 64, offset: 320)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4377, file: !4370, line: 146, baseType: !4393, size: 768, offset: 384)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 768, elements: !3179)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4377, file: !4370, line: 147, baseType: !1638, size: 64, offset: 1152)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4377, file: !4370, line: 148, baseType: !1638, size: 64, offset: 1216)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4377, file: !4370, line: 149, baseType: !1638, size: 64, offset: 1280)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4377, file: !4370, line: 150, baseType: !1638, size: 64, offset: 1344)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4377, file: !4370, line: 151, baseType: !1638, size: 64, offset: 1408)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4377, file: !4370, line: 152, baseType: !4400, size: 128, offset: 1472)
!4400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !742)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4377, file: !4370, line: 153, baseType: !1638, size: 64, offset: 1600)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4377, file: !4370, line: 155, baseType: !7, size: 32, offset: 1664)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4377, file: !4370, line: 157, baseType: !7, size: 32, offset: 1696)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4377, file: !4370, line: 158, baseType: !7, size: 32, offset: 1728)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4377, file: !4370, line: 159, baseType: !140, size: 64, offset: 1792)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4377, file: !4370, line: 161, baseType: !4407, size: 64, offset: 1856)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!85, !4376, !4410, !695}
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4412)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4384, line: 117, size: 320, elements: !4413)
!4413 = !{!4414, !4415, !4416, !4417, !4418}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4412, file: !4384, line: 119, baseType: !250, size: 8)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4412, file: !4384, line: 120, baseType: !250, size: 8, offset: 8)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4412, file: !4384, line: 121, baseType: !258, size: 16, offset: 16)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4412, file: !4384, line: 122, baseType: !191, size: 32, offset: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4412, file: !4384, line: 123, baseType: !4419, size: 256, offset: 64)
!4419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 256, elements: !444)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4377, file: !4370, line: 164, baseType: !4421, size: 64, offset: 1920)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!85, !4376, !4424}
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4377, file: !4370, line: 167, baseType: !4426, size: 64, offset: 1984)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4370, line: 546, size: 960, elements: !4428)
!4428 = !{!4429, !4496, !4500, !4504, !4508, !4509, !4513, !4514, !4515, !4516, !4517, !4518}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4427, file: !4370, line: 547, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!85, !4376, !4433, !4433}
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4384, line: 454, size: 384, elements: !4435)
!4435 = !{!4436, !4437, !4438, !4439, !4444, !4449}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4434, file: !4384, line: 455, baseType: !258, size: 16)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4434, file: !4384, line: 456, baseType: !760, size: 16, offset: 16)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4434, file: !4384, line: 457, baseType: !258, size: 16, offset: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4434, file: !4384, line: 458, baseType: !4440, size: 32, offset: 48)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4384, line: 320, size: 32, elements: !4441)
!4441 = !{!4442, !4443}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4440, file: !4384, line: 321, baseType: !258, size: 16)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4440, file: !4384, line: 322, baseType: !258, size: 16, offset: 16)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4434, file: !4384, line: 459, baseType: !4445, size: 32, offset: 80)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4384, line: 310, size: 32, elements: !4446)
!4446 = !{!4447, !4448}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4445, file: !4384, line: 311, baseType: !258, size: 16)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4445, file: !4384, line: 312, baseType: !258, size: 16, offset: 16)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4434, file: !4384, line: 467, baseType: !4450, size: 256, offset: 128)
!4450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4434, file: !4384, line: 461, size: 256, elements: !4451)
!4451 = !{!4452, !4463, !4469, !4481, !4491}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4450, file: !4384, line: 462, baseType: !4453, size: 80)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4384, line: 349, size: 80, elements: !4454)
!4454 = !{!4455, !4456}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4453, file: !4384, line: 350, baseType: !760, size: 16)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4453, file: !4384, line: 351, baseType: !4457, size: 64, offset: 16)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4384, line: 337, size: 64, elements: !4458)
!4458 = !{!4459, !4460, !4461, !4462}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4457, file: !4384, line: 338, baseType: !258, size: 16)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4457, file: !4384, line: 339, baseType: !258, size: 16, offset: 16)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4457, file: !4384, line: 340, baseType: !258, size: 16, offset: 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4457, file: !4384, line: 341, baseType: !258, size: 16, offset: 48)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4450, file: !4384, line: 463, baseType: !4464, size: 96)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4384, line: 360, size: 96, elements: !4465)
!4465 = !{!4466, !4467, !4468}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4464, file: !4384, line: 361, baseType: !760, size: 16)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4464, file: !4384, line: 362, baseType: !760, size: 16, offset: 16)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4464, file: !4384, line: 363, baseType: !4457, size: 64, offset: 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4450, file: !4384, line: 464, baseType: !4470, size: 256)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4384, line: 405, size: 256, elements: !4471)
!4471 = !{!4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4470, file: !4384, line: 406, baseType: !258, size: 16)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4470, file: !4384, line: 407, baseType: !258, size: 16, offset: 16)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4470, file: !4384, line: 408, baseType: !760, size: 16, offset: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4470, file: !4384, line: 409, baseType: !760, size: 16, offset: 48)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4470, file: !4384, line: 410, baseType: !258, size: 16, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4470, file: !4384, line: 412, baseType: !4457, size: 64, offset: 80)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4470, file: !4384, line: 414, baseType: !191, size: 32, offset: 160)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4470, file: !4384, line: 415, baseType: !4480, size: 64, offset: 192)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4450, file: !4384, line: 465, baseType: !4482, size: 192)
!4482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4483, size: 192, elements: !742)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4384, line: 376, size: 96, elements: !4484)
!4484 = !{!4485, !4486, !4487, !4488, !4489, !4490}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4483, file: !4384, line: 377, baseType: !258, size: 16)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4483, file: !4384, line: 378, baseType: !258, size: 16, offset: 16)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4483, file: !4384, line: 380, baseType: !760, size: 16, offset: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4483, file: !4384, line: 381, baseType: !760, size: 16, offset: 48)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4483, file: !4384, line: 383, baseType: !258, size: 16, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4483, file: !4384, line: 384, baseType: !760, size: 16, offset: 80)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4450, file: !4384, line: 466, baseType: !4492, size: 32)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4384, line: 426, size: 32, elements: !4493)
!4493 = !{!4494, !4495}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4492, file: !4384, line: 427, baseType: !258, size: 16)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4492, file: !4384, line: 428, baseType: !258, size: 16, offset: 16)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4427, file: !4370, line: 549, baseType: !4497, size: 64, offset: 64)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!85, !4376, !85}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4427, file: !4370, line: 551, baseType: !4501, size: 64, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!85, !4376, !85, !85}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4427, file: !4370, line: 552, baseType: !4505, size: 64, offset: 192)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{null, !4376, !257}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4427, file: !4370, line: 553, baseType: !4505, size: 64, offset: 256)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4427, file: !4370, line: 555, baseType: !4510, size: 64, offset: 320)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{null, !4426}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4427, file: !4370, line: 557, baseType: !140, size: 64, offset: 384)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4427, file: !4370, line: 559, baseType: !4400, size: 128, offset: 448)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4427, file: !4370, line: 561, baseType: !623, size: 256, offset: 576)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4427, file: !4370, line: 563, baseType: !85, size: 32, offset: 832)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4427, file: !4370, line: 564, baseType: !4433, size: 64, offset: 896)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4427, file: !4370, line: 565, baseType: !4519, offset: 960)
!4519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1714, elements: !1774)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4377, file: !4370, line: 169, baseType: !4521, size: 64, offset: 2048)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4370, line: 24, flags: DIFlagFwdDecl)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4377, file: !4370, line: 171, baseType: !7, size: 32, offset: 2112)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4377, file: !4370, line: 172, baseType: !865, size: 320, offset: 2176)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4377, file: !4370, line: 174, baseType: !4526, size: 64, offset: 2496)
!4526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !742)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4377, file: !4370, line: 176, baseType: !4528, size: 64, offset: 2560)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4370, line: 176, flags: DIFlagFwdDecl)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4377, file: !4370, line: 178, baseType: !4531, size: 64, offset: 2624)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4384, line: 93, size: 192, elements: !4533)
!4533 = !{!4534, !4535, !4536, !4537, !4538, !4539}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4532, file: !4384, line: 94, baseType: !620, size: 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4532, file: !4384, line: 95, baseType: !620, size: 32, offset: 32)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4532, file: !4384, line: 96, baseType: !620, size: 32, offset: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4532, file: !4384, line: 97, baseType: !620, size: 32, offset: 96)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4532, file: !4384, line: 98, baseType: !620, size: 32, offset: 128)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4532, file: !4384, line: 99, baseType: !620, size: 32, offset: 160)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4377, file: !4370, line: 180, baseType: !4393, size: 768, offset: 2688)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4377, file: !4370, line: 181, baseType: !1638, size: 64, offset: 3456)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4377, file: !4370, line: 182, baseType: !1638, size: 64, offset: 3520)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4377, file: !4370, line: 183, baseType: !1638, size: 64, offset: 3584)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4377, file: !4370, line: 185, baseType: !4545, size: 64, offset: 3648)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!85, !4376}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4377, file: !4370, line: 186, baseType: !4549, size: 64, offset: 3712)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{null, !4376}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4377, file: !4370, line: 187, baseType: !4553, size: 64, offset: 3776)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!85, !4376, !1714}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4377, file: !4370, line: 188, baseType: !4557, size: 64, offset: 3840)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!85, !4376, !7, !7, !85}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4377, file: !4370, line: 190, baseType: !4368, size: 64, offset: 3904)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4377, file: !4370, line: 192, baseType: !221, size: 32, offset: 3968)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4377, file: !4370, line: 193, baseType: !623, size: 256, offset: 4032)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4377, file: !4370, line: 195, baseType: !7, size: 32, offset: 4288)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4377, file: !4370, line: 196, baseType: !703, size: 8, offset: 4320)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4377, file: !4370, line: 198, baseType: !200, size: 5824, offset: 4352)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4377, file: !4370, line: 200, baseType: !208, size: 128, offset: 10176)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4377, file: !4370, line: 201, baseType: !208, size: 128, offset: 10304)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4377, file: !4370, line: 203, baseType: !7, size: 32, offset: 10432)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4377, file: !4370, line: 204, baseType: !7, size: 32, offset: 10464)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4377, file: !4370, line: 205, baseType: !4571, size: 64, offset: 10496)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4370, line: 32, size: 64, elements: !4573)
!4573 = !{!4574, !4575, !4576}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4572, file: !4370, line: 33, baseType: !258, size: 16)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4572, file: !4370, line: 34, baseType: !258, size: 16, offset: 16)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4572, file: !4370, line: 35, baseType: !620, size: 32, offset: 32)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4377, file: !4370, line: 207, baseType: !703, size: 8, offset: 10560)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4377, file: !4370, line: 209, baseType: !4579, size: 192, offset: 10624)
!4579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 192, elements: !290)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !4377, file: !4370, line: 211, baseType: !703, size: 8, offset: 10816)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4369, file: !4370, line: 353, baseType: !4582, size: 64, offset: 256)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4370, line: 310, size: 960, elements: !4584)
!4584 = !{!4585, !4586, !4590, !4596, !4600, !4604, !4631, !4635, !4636, !4637, !4638, !4639, !4640, !4641}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4583, file: !4370, line: 312, baseType: !140, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4583, file: !4370, line: 314, baseType: !4587, size: 64, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{null, !4368, !7, !7, !85}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4583, file: !4370, line: 315, baseType: !4591, size: 64, offset: 128)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{null, !4368, !4594, !7}
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4572)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4583, file: !4370, line: 317, baseType: !4597, size: 64, offset: 192)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!703, !4368, !7, !7, !85}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4583, file: !4370, line: 318, baseType: !4601, size: 64, offset: 256)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!703, !4582, !4376}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4583, file: !4370, line: 319, baseType: !4605, size: 64, offset: 320)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!85, !4582, !4376, !4608}
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4610)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4040, line: 362, size: 1600, elements: !4611)
!4611 = !{!4612, !4613, !4614, !4615, !4616, !4617, !4619, !4621, !4622, !4623, !4624, !4625, !4626, !4628, !4629, !4630}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4610, file: !4040, line: 364, baseType: !4056, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4610, file: !4040, line: 366, baseType: !258, size: 16, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4610, file: !4040, line: 367, baseType: !258, size: 16, offset: 80)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4610, file: !4040, line: 368, baseType: !258, size: 16, offset: 96)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4610, file: !4040, line: 369, baseType: !258, size: 16, offset: 112)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4610, file: !4040, line: 371, baseType: !4618, size: 64, offset: 128)
!4618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4056, size: 64, elements: !1639)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4610, file: !4040, line: 372, baseType: !4620, size: 768, offset: 192)
!4620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4056, size: 768, elements: !3179)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4610, file: !4040, line: 373, baseType: !4618, size: 64, offset: 960)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4610, file: !4040, line: 374, baseType: !4618, size: 64, offset: 1024)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4610, file: !4040, line: 375, baseType: !4618, size: 64, offset: 1088)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4610, file: !4040, line: 376, baseType: !4618, size: 64, offset: 1152)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4610, file: !4040, line: 377, baseType: !4618, size: 64, offset: 1216)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4610, file: !4040, line: 378, baseType: !4627, size: 128, offset: 1280)
!4627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4056, size: 128, elements: !742)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4610, file: !4040, line: 379, baseType: !4618, size: 64, offset: 1408)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4610, file: !4040, line: 380, baseType: !4618, size: 64, offset: 1472)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4610, file: !4040, line: 382, baseType: !4056, size: 64, offset: 1536)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4583, file: !4370, line: 320, baseType: !4632, size: 64, offset: 384)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4368}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4583, file: !4370, line: 321, baseType: !4632, size: 64, offset: 448)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4583, file: !4370, line: 323, baseType: !703, size: 8, offset: 512)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4583, file: !4370, line: 324, baseType: !85, size: 32, offset: 544)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4583, file: !4370, line: 325, baseType: !155, size: 64, offset: 576)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4583, file: !4370, line: 327, baseType: !4608, size: 64, offset: 640)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4583, file: !4370, line: 329, baseType: !208, size: 128, offset: 704)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4583, file: !4370, line: 330, baseType: !208, size: 128, offset: 832)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4369, file: !4370, line: 355, baseType: !208, size: 128, offset: 320)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4369, file: !4370, line: 356, baseType: !208, size: 128, offset: 448)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !149, file: !3, line: 41, baseType: !7, size: 32, offset: 3328)
!4645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !142, line: 42, baseType: !143)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!4648 = !{!0, !4649, !4653, !4658, !4663, !4668, !4673, !4678, !4683, !4685, !4688, !4693, !4698, !4700, !4703, !4708, !4713, !4718, !4723, !4725, !4727, !4729, !4731, !4733, !4735, !4737, !4739, !4741, !4749}
!4649 = !DIGlobalVariableExpression(var: !4650, expr: !DIExpression())
!4650 = distinct !DIGlobalVariable(name: "__exitcall_input_leds_exit", scope: !2, file: !3, line: 215, type: !4651, isLocal: true, isDefinition: true)
!4651 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4652, line: 120, baseType: !986)
!4652 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4653 = !DIGlobalVariableExpression(var: !4654, expr: !DIExpression())
!4654 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author269", scope: !2, file: !3, line: 217, type: !4655, isLocal: true, isDefinition: true, align: 8)
!4655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 520, elements: !4656)
!4656 = !{!4657}
!4657 = !DISubrange(count: 65)
!4658 = !DIGlobalVariableExpression(var: !4659, expr: !DIExpression())
!4659 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author270", scope: !2, file: !3, line: 218, type: !4660, isLocal: true, isDefinition: true, align: 8)
!4660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 496, elements: !4661)
!4661 = !{!4662}
!4662 = !DISubrange(count: 62)
!4663 = !DIGlobalVariableExpression(var: !4664, expr: !DIExpression())
!4664 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description271", scope: !2, file: !3, line: 219, type: !4665, isLocal: true, isDefinition: true, align: 8)
!4665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 352, elements: !4666)
!4666 = !{!4667}
!4667 = !DISubrange(count: 44)
!4668 = !DIGlobalVariableExpression(var: !4669, expr: !DIExpression())
!4669 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file272", scope: !2, file: !3, line: 220, type: !4670, isLocal: true, isDefinition: true, align: 8)
!4670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 328, elements: !4671)
!4671 = !{!4672}
!4672 = !DISubrange(count: 41)
!4673 = !DIGlobalVariableExpression(var: !4674, expr: !DIExpression())
!4674 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license273", scope: !2, file: !3, line: 220, type: !4675, isLocal: true, isDefinition: true, align: 8)
!4675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 208, elements: !4676)
!4676 = !{!4677}
!4677 = !DISubrange(count: 26)
!4678 = !DIGlobalVariableExpression(var: !4679, expr: !DIExpression())
!4679 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !4680, isLocal: true, isDefinition: true)
!4680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 40, elements: !4681)
!4681 = !{!4682}
!4682 = !DISubrange(count: 5)
!4683 = !DIGlobalVariableExpression(var: !4684, expr: !DIExpression())
!4684 = distinct !DIGlobalVariable(name: "input_leds_handler", scope: !2, file: !3, line: 197, type: !4583, isLocal: true, isDefinition: true)
!4685 = !DIGlobalVariableExpression(var: !4686, expr: !DIExpression())
!4686 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !4687, isLocal: true, isDefinition: true)
!4687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 56, elements: !744)
!4688 = !DIGlobalVariableExpression(var: !4689, expr: !DIExpression())
!4689 = distinct !DIGlobalVariable(scope: null, file: !3, line: 141, type: !4690, isLocal: true, isDefinition: true)
!4690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 248, elements: !4691)
!4691 = !{!4692}
!4692 = !DISubrange(count: 31)
!4693 = !DIGlobalVariableExpression(var: !4694, expr: !DIExpression())
!4694 = distinct !DIGlobalVariable(scope: null, file: !130, line: 480, type: !4695, isLocal: true, isDefinition: true)
!4695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 168, elements: !4696)
!4696 = !{!4697}
!4697 = !DISubrange(count: 21)
!4698 = !DIGlobalVariableExpression(var: !4699, expr: !DIExpression())
!4699 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !2796, isLocal: true, isDefinition: true)
!4700 = !DIGlobalVariableExpression(var: !4701, expr: !DIExpression())
!4701 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !4702, isLocal: true, isDefinition: true)
!4702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 96, elements: !3179)
!4703 = !DIGlobalVariableExpression(var: !4704, expr: !DIExpression())
!4704 = distinct !DIGlobalVariable(scope: null, file: !3, line: 26, type: !4705, isLocal: true, isDefinition: true)
!4705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 72, elements: !4706)
!4706 = !{!4707}
!4707 = !DISubrange(count: 9)
!4708 = !DIGlobalVariableExpression(var: !4709, expr: !DIExpression())
!4709 = distinct !DIGlobalVariable(scope: null, file: !3, line: 26, type: !4710, isLocal: true, isDefinition: true)
!4710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 104, elements: !4711)
!4711 = !{!4712}
!4712 = !DISubrange(count: 13)
!4713 = !DIGlobalVariableExpression(var: !4714, expr: !DIExpression())
!4714 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !4715, isLocal: true, isDefinition: true)
!4715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 88, elements: !4716)
!4716 = !{!4717}
!4717 = !DISubrange(count: 11)
!4718 = !DIGlobalVariableExpression(var: !4719, expr: !DIExpression())
!4719 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !4720, isLocal: true, isDefinition: true)
!4720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 120, elements: !4721)
!4721 = !{!4722}
!4722 = !DISubrange(count: 15)
!4723 = !DIGlobalVariableExpression(var: !4724, expr: !DIExpression())
!4724 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !2796, isLocal: true, isDefinition: true)
!4725 = !DIGlobalVariableExpression(var: !4726, expr: !DIExpression())
!4726 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !4680, isLocal: true, isDefinition: true)
!4727 = !DIGlobalVariableExpression(var: !4728, expr: !DIExpression())
!4728 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !4710, isLocal: true, isDefinition: true)
!4729 = !DIGlobalVariableExpression(var: !4730, expr: !DIExpression())
!4730 = distinct !DIGlobalVariable(scope: null, file: !3, line: 30, type: !1856, isLocal: true, isDefinition: true)
!4731 = !DIGlobalVariableExpression(var: !4732, expr: !DIExpression())
!4732 = distinct !DIGlobalVariable(scope: null, file: !3, line: 31, type: !2796, isLocal: true, isDefinition: true)
!4733 = !DIGlobalVariableExpression(var: !4734, expr: !DIExpression())
!4734 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !4680, isLocal: true, isDefinition: true)
!4735 = !DIGlobalVariableExpression(var: !4736, expr: !DIExpression())
!4736 = distinct !DIGlobalVariable(scope: null, file: !3, line: 33, type: !4680, isLocal: true, isDefinition: true)
!4737 = !DIGlobalVariableExpression(var: !4738, expr: !DIExpression())
!4738 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !4680, isLocal: true, isDefinition: true)
!4739 = !DIGlobalVariableExpression(var: !4740, expr: !DIExpression())
!4740 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !4705, isLocal: true, isDefinition: true)
!4741 = !DIGlobalVariableExpression(var: !4742, expr: !DIExpression())
!4742 = distinct !DIGlobalVariable(name: "input_led_info", scope: !2, file: !3, line: 24, type: !4743, isLocal: true, isDefinition: true)
!4743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4744, size: 2048, elements: !2474)
!4744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4745)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 21, size: 128, elements: !4746)
!4746 = !{!4747, !4748}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4745, file: !3, line: 22, baseType: !155, size: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4745, file: !3, line: 23, baseType: !155, size: 64, offset: 64)
!4749 = !DIGlobalVariableExpression(var: !4750, expr: !DIExpression())
!4750 = distinct !DIGlobalVariable(name: "input_leds_ids", scope: !2, file: !3, line: 188, type: !4751, isLocal: true, isDefinition: true)
!4751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4609, size: 3200, elements: !742)
!4752 = !{i32 7, !"Dwarf Version", i32 5}
!4753 = !{i32 2, !"Debug Info Version", i32 3}
!4754 = !{i32 1, !"wchar_size", i32 2}
!4755 = !{i32 8, !"cf-protection-branch", i32 1}
!4756 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4757 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4758 = !{i32 1, !"Code Model", i32 2}
!4759 = !{i32 1, !"override-stack-alignment", i32 8}
!4760 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4761 = distinct !DISubprogram(name: "__initstub__kmod_input_leds__267_209_input_leds_init6", scope: !3, file: !3, line: 209, type: !717, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4762 = !DILocation(line: 209, column: 1, scope: !4761)
!4763 = distinct !DISubprogram(name: "input_leds_init", scope: !3, file: !3, line: 205, type: !717, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4764 = !DILocation(line: 207, column: 9, scope: !4763)
!4765 = !DILocation(line: 207, column: 2, scope: !4763)
!4766 = distinct !DISubprogram(name: "input_leds_exit", scope: !3, file: !3, line: 211, type: !987, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4767 = !DILocation(line: 213, column: 2, scope: !4766)
!4768 = !DILocation(line: 214, column: 1, scope: !4766)
!4769 = !DISubprogram(name: "input_unregister_handler", scope: !4370, file: !4370, line: 397, type: !4770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{null, !4582}
!4772 = !DISubprogram(name: "input_register_handler", scope: !4370, file: !4370, line: 396, type: !4773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!85, !4582}
!4775 = distinct !DISubprogram(name: "input_leds_event", scope: !3, file: !3, line: 66, type: !4588, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4776)
!4776 = !{!4777, !4778, !4779, !4780}
!4777 = !DILocalVariable(name: "handle", arg: 1, scope: !4775, file: !3, line: 66, type: !4368)
!4778 = !DILocalVariable(name: "type", arg: 2, scope: !4775, file: !3, line: 66, type: !7)
!4779 = !DILocalVariable(name: "code", arg: 3, scope: !4775, file: !3, line: 67, type: !7)
!4780 = !DILocalVariable(name: "value", arg: 4, scope: !4775, file: !3, line: 67, type: !85)
!4781 = !DILocation(line: 66, column: 51, scope: !4775)
!4782 = !DILocation(line: 66, column: 72, scope: !4775)
!4783 = !DILocation(line: 67, column: 22, scope: !4775)
!4784 = !DILocation(line: 67, column: 32, scope: !4775)
!4785 = !DILocation(line: 69, column: 1, scope: !4775)
!4786 = distinct !DISubprogram(name: "input_leds_connect", scope: !3, file: !3, line: 83, type: !4606, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4787)
!4787 = !{!4788, !4789, !4790, !4791, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4807, !4808}
!4788 = !DILocalVariable(name: "handler", arg: 1, scope: !4786, file: !3, line: 83, type: !4582)
!4789 = !DILocalVariable(name: "dev", arg: 2, scope: !4786, file: !3, line: 84, type: !4376)
!4790 = !DILocalVariable(name: "id", arg: 3, scope: !4786, file: !3, line: 85, type: !4608)
!4791 = !DILocalVariable(name: "leds", scope: !4786, file: !3, line: 87, type: !4792)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_leds", file: !3, line: 44, size: 640, elements: !4794)
!4794 = !{!4795, !4796, !4797}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4793, file: !3, line: 45, baseType: !4369, size: 576)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "num_leds", scope: !4793, file: !3, line: 46, baseType: !7, size: 32, offset: 576)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "leds", scope: !4793, file: !3, line: 47, baseType: !4798, offset: 640)
!4798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, elements: !1774)
!4799 = !DILocalVariable(name: "led", scope: !4786, file: !3, line: 88, type: !148)
!4800 = !DILocalVariable(name: "num_leds", scope: !4786, file: !3, line: 89, type: !7)
!4801 = !DILocalVariable(name: "led_code", scope: !4786, file: !3, line: 90, type: !7)
!4802 = !DILocalVariable(name: "led_no", scope: !4786, file: !3, line: 91, type: !85)
!4803 = !DILocalVariable(name: "error", scope: !4786, file: !3, line: 92, type: !85)
!4804 = !DILabel(scope: !4786, name: "err_unregister_leds", file: !3, line: 152)
!4805 = !DILocalVariable(name: "led", scope: !4806, file: !3, line: 154, type: !148)
!4806 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 153, column: 24)
!4807 = !DILabel(scope: !4786, name: "err_unregister_handle", file: !3, line: 162)
!4808 = !DILabel(scope: !4786, name: "err_free_mem", file: !3, line: 165)
!4809 = !DILocation(line: 83, column: 53, scope: !4786)
!4810 = !DILocation(line: 84, column: 28, scope: !4786)
!4811 = !DILocation(line: 85, column: 40, scope: !4786)
!4812 = !DILocation(line: 87, column: 2, scope: !4786)
!4813 = !DILocation(line: 87, column: 21, scope: !4786)
!4814 = !DILocation(line: 88, column: 2, scope: !4786)
!4815 = !DILocation(line: 88, column: 20, scope: !4786)
!4816 = !DILocation(line: 89, column: 2, scope: !4786)
!4817 = !DILocation(line: 89, column: 15, scope: !4786)
!4818 = !DILocation(line: 90, column: 2, scope: !4786)
!4819 = !DILocation(line: 90, column: 15, scope: !4786)
!4820 = !DILocation(line: 91, column: 2, scope: !4786)
!4821 = !DILocation(line: 91, column: 6, scope: !4786)
!4822 = !DILocation(line: 92, column: 2, scope: !4786)
!4823 = !DILocation(line: 92, column: 6, scope: !4786)
!4824 = !DILocation(line: 94, column: 34, scope: !4786)
!4825 = !DILocation(line: 94, column: 13, scope: !4786)
!4826 = !DILocation(line: 94, column: 11, scope: !4786)
!4827 = !DILocation(line: 95, column: 7, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 95, column: 6)
!4829 = !DILocation(line: 95, column: 6, scope: !4786)
!4830 = !DILocation(line: 96, column: 3, scope: !4828)
!4831 = !DILocation(line: 98, column: 17, scope: !4786)
!4832 = !DILocation(line: 98, column: 9, scope: !4786)
!4833 = !DILocation(line: 98, column: 7, scope: !4786)
!4834 = !DILocation(line: 99, column: 7, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 99, column: 6)
!4836 = !DILocation(line: 99, column: 6, scope: !4786)
!4837 = !DILocation(line: 100, column: 3, scope: !4835)
!4838 = !DILocation(line: 102, column: 19, scope: !4786)
!4839 = !DILocation(line: 102, column: 2, scope: !4786)
!4840 = !DILocation(line: 102, column: 8, scope: !4786)
!4841 = !DILocation(line: 102, column: 17, scope: !4786)
!4842 = !DILocation(line: 104, column: 21, scope: !4786)
!4843 = !DILocation(line: 104, column: 2, scope: !4786)
!4844 = !DILocation(line: 104, column: 8, scope: !4786)
!4845 = !DILocation(line: 104, column: 15, scope: !4786)
!4846 = !DILocation(line: 104, column: 19, scope: !4786)
!4847 = !DILocation(line: 105, column: 25, scope: !4786)
!4848 = !DILocation(line: 105, column: 2, scope: !4786)
!4849 = !DILocation(line: 105, column: 8, scope: !4786)
!4850 = !DILocation(line: 105, column: 15, scope: !4786)
!4851 = !DILocation(line: 105, column: 23, scope: !4786)
!4852 = !DILocation(line: 106, column: 2, scope: !4786)
!4853 = !DILocation(line: 106, column: 8, scope: !4786)
!4854 = !DILocation(line: 106, column: 15, scope: !4786)
!4855 = !DILocation(line: 106, column: 20, scope: !4786)
!4856 = !DILocation(line: 107, column: 25, scope: !4786)
!4857 = !DILocation(line: 107, column: 2, scope: !4786)
!4858 = !DILocation(line: 107, column: 8, scope: !4786)
!4859 = !DILocation(line: 107, column: 15, scope: !4786)
!4860 = !DILocation(line: 107, column: 23, scope: !4786)
!4861 = !DILocation(line: 109, column: 33, scope: !4786)
!4862 = !DILocation(line: 109, column: 39, scope: !4786)
!4863 = !DILocation(line: 109, column: 10, scope: !4786)
!4864 = !DILocation(line: 109, column: 8, scope: !4786)
!4865 = !DILocation(line: 110, column: 6, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 110, column: 6)
!4867 = !DILocation(line: 110, column: 6, scope: !4786)
!4868 = !DILocation(line: 111, column: 3, scope: !4866)
!4869 = !DILocation(line: 113, column: 29, scope: !4786)
!4870 = !DILocation(line: 113, column: 35, scope: !4786)
!4871 = !DILocation(line: 113, column: 10, scope: !4786)
!4872 = !DILocation(line: 113, column: 8, scope: !4786)
!4873 = !DILocation(line: 114, column: 6, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 114, column: 6)
!4875 = !DILocation(line: 114, column: 6, scope: !4786)
!4876 = !DILocation(line: 115, column: 3, scope: !4874)
!4877 = !DILocation(line: 117, column: 9, scope: !4786)
!4878 = !DILocation(line: 118, column: 2, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 118, column: 2)
!4880 = !DILocation(line: 118, column: 2, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4879, file: !3, line: 118, column: 2)
!4882 = !DILocation(line: 119, column: 23, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 119, column: 7)
!4884 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 118, column: 51)
!4885 = !DILocation(line: 119, column: 8, scope: !4883)
!4886 = !DILocation(line: 119, column: 33, scope: !4883)
!4887 = !DILocation(line: 119, column: 7, scope: !4884)
!4888 = !DILocation(line: 120, column: 4, scope: !4883)
!4889 = !DILocation(line: 122, column: 10, scope: !4884)
!4890 = !DILocation(line: 122, column: 16, scope: !4884)
!4891 = !DILocation(line: 122, column: 21, scope: !4884)
!4892 = !DILocation(line: 122, column: 7, scope: !4884)
!4893 = !DILocation(line: 123, column: 18, scope: !4884)
!4894 = !DILocation(line: 123, column: 24, scope: !4884)
!4895 = !DILocation(line: 123, column: 3, scope: !4884)
!4896 = !DILocation(line: 123, column: 8, scope: !4884)
!4897 = !DILocation(line: 123, column: 15, scope: !4884)
!4898 = !DILocation(line: 124, column: 15, scope: !4884)
!4899 = !DILocation(line: 124, column: 3, scope: !4884)
!4900 = !DILocation(line: 124, column: 8, scope: !4884)
!4901 = !DILocation(line: 124, column: 13, scope: !4884)
!4902 = !DILocation(line: 127, column: 19, scope: !4884)
!4903 = !DILocation(line: 127, column: 24, scope: !4884)
!4904 = !DILocation(line: 127, column: 9, scope: !4884)
!4905 = !DILocation(line: 128, column: 24, scope: !4884)
!4906 = !DILocation(line: 128, column: 9, scope: !4884)
!4907 = !DILocation(line: 128, column: 34, scope: !4884)
!4908 = !DILocation(line: 126, column: 20, scope: !4884)
!4909 = !DILocation(line: 126, column: 3, scope: !4884)
!4910 = !DILocation(line: 126, column: 8, scope: !4884)
!4911 = !DILocation(line: 126, column: 13, scope: !4884)
!4912 = !DILocation(line: 126, column: 18, scope: !4884)
!4913 = !DILocation(line: 129, column: 8, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 129, column: 7)
!4915 = !DILocation(line: 129, column: 13, scope: !4914)
!4916 = !DILocation(line: 129, column: 18, scope: !4914)
!4917 = !DILocation(line: 129, column: 7, scope: !4884)
!4918 = !DILocation(line: 130, column: 10, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 129, column: 24)
!4920 = !DILocation(line: 131, column: 4, scope: !4919)
!4921 = !DILocation(line: 134, column: 3, scope: !4884)
!4922 = !DILocation(line: 134, column: 8, scope: !4884)
!4923 = !DILocation(line: 134, column: 13, scope: !4884)
!4924 = !DILocation(line: 134, column: 28, scope: !4884)
!4925 = !DILocation(line: 135, column: 3, scope: !4884)
!4926 = !DILocation(line: 135, column: 8, scope: !4884)
!4927 = !DILocation(line: 135, column: 13, scope: !4884)
!4928 = !DILocation(line: 135, column: 28, scope: !4884)
!4929 = !DILocation(line: 136, column: 3, scope: !4884)
!4930 = !DILocation(line: 136, column: 8, scope: !4884)
!4931 = !DILocation(line: 136, column: 13, scope: !4884)
!4932 = !DILocation(line: 136, column: 28, scope: !4884)
!4933 = !DILocation(line: 137, column: 46, scope: !4884)
!4934 = !DILocation(line: 137, column: 31, scope: !4884)
!4935 = !DILocation(line: 137, column: 56, scope: !4884)
!4936 = !DILocation(line: 137, column: 3, scope: !4884)
!4937 = !DILocation(line: 137, column: 8, scope: !4884)
!4938 = !DILocation(line: 137, column: 13, scope: !4884)
!4939 = !DILocation(line: 137, column: 29, scope: !4884)
!4940 = !DILocation(line: 139, column: 34, scope: !4884)
!4941 = !DILocation(line: 139, column: 39, scope: !4884)
!4942 = !DILocation(line: 139, column: 45, scope: !4884)
!4943 = !DILocation(line: 139, column: 50, scope: !4884)
!4944 = !DILocation(line: 139, column: 11, scope: !4884)
!4945 = !DILocation(line: 139, column: 9, scope: !4884)
!4946 = !DILocation(line: 140, column: 7, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 140, column: 7)
!4948 = !DILocation(line: 140, column: 7, scope: !4884)
!4949 = !DILocation(line: 141, column: 4, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 141, column: 4)
!4951 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 140, column: 14)
!4952 = !DILocation(line: 141, column: 4, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 141, column: 4)
!4954 = !DILocation(line: 143, column: 10, scope: !4951)
!4955 = !DILocation(line: 143, column: 15, scope: !4951)
!4956 = !DILocation(line: 143, column: 20, scope: !4951)
!4957 = !DILocation(line: 143, column: 4, scope: !4951)
!4958 = !DILocation(line: 144, column: 4, scope: !4951)
!4959 = !DILocation(line: 147, column: 9, scope: !4884)
!4960 = !DILocation(line: 148, column: 2, scope: !4884)
!4961 = distinct !{!4961, !4878, !4962, !4963, !4964}
!4962 = !DILocation(line: 148, column: 2, scope: !4879)
!4963 = !{!"llvm.loop.mustprogress"}
!4964 = !{!"llvm.loop.unroll.disable"}
!4965 = !DILocation(line: 150, column: 2, scope: !4786)
!4966 = !DILocation(line: 152, column: 1, scope: !4786)
!4967 = !DILocation(line: 153, column: 2, scope: !4786)
!4968 = !DILocation(line: 153, column: 9, scope: !4786)
!4969 = !DILocation(line: 153, column: 18, scope: !4786)
!4970 = !DILocation(line: 154, column: 3, scope: !4806)
!4971 = !DILocation(line: 154, column: 21, scope: !4806)
!4972 = !DILocation(line: 154, column: 28, scope: !4806)
!4973 = !DILocation(line: 154, column: 34, scope: !4806)
!4974 = !DILocation(line: 154, column: 39, scope: !4806)
!4975 = !DILocation(line: 156, column: 28, scope: !4806)
!4976 = !DILocation(line: 156, column: 33, scope: !4806)
!4977 = !DILocation(line: 156, column: 3, scope: !4806)
!4978 = !DILocation(line: 157, column: 9, scope: !4806)
!4979 = !DILocation(line: 157, column: 14, scope: !4806)
!4980 = !DILocation(line: 157, column: 19, scope: !4806)
!4981 = !DILocation(line: 157, column: 3, scope: !4806)
!4982 = !DILocation(line: 158, column: 2, scope: !4786)
!4983 = distinct !{!4983, !4967, !4982, !4963, !4964}
!4984 = !DILocation(line: 160, column: 22, scope: !4786)
!4985 = !DILocation(line: 160, column: 28, scope: !4786)
!4986 = !DILocation(line: 160, column: 2, scope: !4786)
!4987 = !DILocation(line: 162, column: 1, scope: !4786)
!4988 = !DILocation(line: 163, column: 27, scope: !4786)
!4989 = !DILocation(line: 163, column: 33, scope: !4786)
!4990 = !DILocation(line: 163, column: 2, scope: !4786)
!4991 = !DILocation(line: 165, column: 1, scope: !4786)
!4992 = !DILocation(line: 166, column: 8, scope: !4786)
!4993 = !DILocation(line: 166, column: 2, scope: !4786)
!4994 = !DILocation(line: 167, column: 9, scope: !4786)
!4995 = !DILocation(line: 167, column: 2, scope: !4786)
!4996 = !DILocation(line: 168, column: 1, scope: !4786)
!4997 = distinct !DISubprogram(name: "input_leds_disconnect", scope: !3, file: !3, line: 170, type: !4633, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4998)
!4998 = !{!4999, !5000, !5001, !5002}
!4999 = !DILocalVariable(name: "handle", arg: 1, scope: !4997, file: !3, line: 170, type: !4368)
!5000 = !DILocalVariable(name: "leds", scope: !4997, file: !3, line: 172, type: !4792)
!5001 = !DILocalVariable(name: "i", scope: !4997, file: !3, line: 173, type: !85)
!5002 = !DILocalVariable(name: "led", scope: !5003, file: !3, line: 176, type: !148)
!5003 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 175, column: 39)
!5004 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 175, column: 2)
!5005 = distinct !DILexicalBlock(scope: !4997, file: !3, line: 175, column: 2)
!5006 = !DILocation(line: 170, column: 56, scope: !4997)
!5007 = !DILocation(line: 172, column: 2, scope: !4997)
!5008 = !DILocation(line: 172, column: 21, scope: !4997)
!5009 = !DILocation(line: 172, column: 28, scope: !4997)
!5010 = !DILocation(line: 172, column: 36, scope: !4997)
!5011 = !DILocation(line: 173, column: 2, scope: !4997)
!5012 = !DILocation(line: 173, column: 6, scope: !4997)
!5013 = !DILocation(line: 175, column: 9, scope: !5005)
!5014 = !DILocation(line: 175, column: 7, scope: !5005)
!5015 = !DILocation(line: 175, column: 14, scope: !5004)
!5016 = !DILocation(line: 175, column: 18, scope: !5004)
!5017 = !DILocation(line: 175, column: 24, scope: !5004)
!5018 = !DILocation(line: 175, column: 16, scope: !5004)
!5019 = !DILocation(line: 175, column: 2, scope: !5005)
!5020 = !DILocation(line: 176, column: 3, scope: !5003)
!5021 = !DILocation(line: 176, column: 21, scope: !5003)
!5022 = !DILocation(line: 176, column: 28, scope: !5003)
!5023 = !DILocation(line: 176, column: 34, scope: !5003)
!5024 = !DILocation(line: 176, column: 39, scope: !5003)
!5025 = !DILocation(line: 178, column: 28, scope: !5003)
!5026 = !DILocation(line: 178, column: 33, scope: !5003)
!5027 = !DILocation(line: 178, column: 3, scope: !5003)
!5028 = !DILocation(line: 179, column: 9, scope: !5003)
!5029 = !DILocation(line: 179, column: 14, scope: !5003)
!5030 = !DILocation(line: 179, column: 19, scope: !5003)
!5031 = !DILocation(line: 179, column: 3, scope: !5003)
!5032 = !DILocation(line: 180, column: 2, scope: !5004)
!5033 = !DILocation(line: 180, column: 2, scope: !5003)
!5034 = !DILocation(line: 175, column: 35, scope: !5004)
!5035 = !DILocation(line: 175, column: 2, scope: !5004)
!5036 = distinct !{!5036, !5019, !5037, !4963, !4964}
!5037 = !DILocation(line: 180, column: 2, scope: !5005)
!5038 = !DILocation(line: 182, column: 21, scope: !4997)
!5039 = !DILocation(line: 182, column: 2, scope: !4997)
!5040 = !DILocation(line: 183, column: 26, scope: !4997)
!5041 = !DILocation(line: 183, column: 2, scope: !4997)
!5042 = !DILocation(line: 185, column: 8, scope: !4997)
!5043 = !DILocation(line: 185, column: 2, scope: !4997)
!5044 = !DILocation(line: 186, column: 1, scope: !4997)
!5045 = distinct !DISubprogram(name: "input_leds_get_count", scope: !3, file: !3, line: 71, type: !4546, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5046)
!5046 = !{!5047, !5048, !5049}
!5047 = !DILocalVariable(name: "dev", arg: 1, scope: !5045, file: !3, line: 71, type: !4376)
!5048 = !DILocalVariable(name: "led_code", scope: !5045, file: !3, line: 73, type: !7)
!5049 = !DILocalVariable(name: "count", scope: !5045, file: !3, line: 74, type: !85)
!5050 = !DILocation(line: 71, column: 51, scope: !5045)
!5051 = !DILocation(line: 73, column: 2, scope: !5045)
!5052 = !DILocation(line: 73, column: 15, scope: !5045)
!5053 = !DILocation(line: 74, column: 2, scope: !5045)
!5054 = !DILocation(line: 74, column: 6, scope: !5045)
!5055 = !DILocation(line: 76, column: 2, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 76, column: 2)
!5057 = !DILocation(line: 76, column: 2, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 76, column: 2)
!5059 = !DILocation(line: 77, column: 22, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 77, column: 7)
!5061 = !DILocation(line: 77, column: 7, scope: !5060)
!5062 = !DILocation(line: 77, column: 32, scope: !5060)
!5063 = !DILocation(line: 77, column: 7, scope: !5058)
!5064 = !DILocation(line: 78, column: 9, scope: !5060)
!5065 = !DILocation(line: 78, column: 4, scope: !5060)
!5066 = distinct !{!5066, !5055, !5067, !4963, !4964}
!5067 = !DILocation(line: 78, column: 9, scope: !5056)
!5068 = !DILocation(line: 80, column: 9, scope: !5045)
!5069 = !DILocation(line: 81, column: 1, scope: !5045)
!5070 = !DILocation(line: 80, column: 2, scope: !5045)
!5071 = distinct !DISubprogram(name: "kzalloc", scope: !130, file: !130, line: 719, type: !5072, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5074)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!140, !144, !141}
!5074 = !{!5075, !5076}
!5075 = !DILocalVariable(name: "size", arg: 1, scope: !5071, file: !130, line: 719, type: !144)
!5076 = !DILocalVariable(name: "flags", arg: 2, scope: !5071, file: !130, line: 719, type: !141)
!5077 = !DILocation(line: 719, column: 52, scope: !5071)
!5078 = !DILocation(line: 719, column: 64, scope: !5071)
!5079 = !DILocation(line: 721, column: 17, scope: !5071)
!5080 = !DILocation(line: 721, column: 23, scope: !5071)
!5081 = !DILocation(line: 721, column: 29, scope: !5071)
!5082 = !DILocation(line: 721, column: 9, scope: !5071)
!5083 = !DILocation(line: 721, column: 2, scope: !5071)
!5084 = distinct !DISubprogram(name: "size_add", scope: !5085, file: !5085, line: 208, type: !5086, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5088)
!5085 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!144, !144, !144}
!5088 = !{!5089, !5090, !5091}
!5089 = !DILocalVariable(name: "addend1", arg: 1, scope: !5084, file: !5085, line: 208, type: !144)
!5090 = !DILocalVariable(name: "addend2", arg: 2, scope: !5084, file: !5085, line: 208, type: !144)
!5091 = !DILocalVariable(name: "bytes", scope: !5084, file: !5085, line: 210, type: !144)
!5092 = !DILocation(line: 208, column: 51, scope: !5084)
!5093 = !DILocation(line: 208, column: 67, scope: !5084)
!5094 = !DILocation(line: 210, column: 2, scope: !5084)
!5095 = !DILocation(line: 210, column: 9, scope: !5084)
!5096 = !DILocation(line: 212, column: 6, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5084, file: !5085, line: 212, column: 6)
!5098 = !DILocation(line: 212, column: 6, scope: !5084)
!5099 = !DILocation(line: 213, column: 3, scope: !5097)
!5100 = !DILocation(line: 215, column: 9, scope: !5084)
!5101 = !DILocation(line: 215, column: 2, scope: !5084)
!5102 = !DILocation(line: 216, column: 1, scope: !5084)
!5103 = distinct !DISubprogram(name: "size_mul", scope: !5085, file: !5085, line: 189, type: !5086, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5104)
!5104 = !{!5105, !5106, !5107}
!5105 = !DILocalVariable(name: "factor1", arg: 1, scope: !5103, file: !5085, line: 189, type: !144)
!5106 = !DILocalVariable(name: "factor2", arg: 2, scope: !5103, file: !5085, line: 189, type: !144)
!5107 = !DILocalVariable(name: "bytes", scope: !5103, file: !5085, line: 191, type: !144)
!5108 = !DILocation(line: 189, column: 51, scope: !5103)
!5109 = !DILocation(line: 189, column: 67, scope: !5103)
!5110 = !DILocation(line: 191, column: 2, scope: !5103)
!5111 = !DILocation(line: 191, column: 9, scope: !5103)
!5112 = !DILocation(line: 193, column: 6, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5103, file: !5085, line: 193, column: 6)
!5114 = !DILocation(line: 193, column: 6, scope: !5103)
!5115 = !DILocation(line: 194, column: 3, scope: !5113)
!5116 = !DILocation(line: 196, column: 9, scope: !5103)
!5117 = !DILocation(line: 196, column: 2, scope: !5103)
!5118 = !DILocation(line: 197, column: 1, scope: !5103)
!5119 = !DISubprogram(name: "input_register_handle", scope: !4370, file: !4370, line: 406, type: !5120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!85, !4368}
!5122 = !DISubprogram(name: "input_open_device", scope: !4370, file: !4370, line: 412, type: !5120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5123 = distinct !DISubprogram(name: "find_next_bit", scope: !5124, file: !5124, line: 54, type: !5125, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5127)
!5124 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!143, !4646, !143, !143}
!5127 = !{!5128, !5129, !5130, !5131}
!5128 = !DILocalVariable(name: "addr", arg: 1, scope: !5123, file: !5124, line: 54, type: !4646)
!5129 = !DILocalVariable(name: "size", arg: 2, scope: !5123, file: !5124, line: 54, type: !143)
!5130 = !DILocalVariable(name: "offset", arg: 3, scope: !5123, file: !5124, line: 55, type: !143)
!5131 = !DILocalVariable(name: "val", scope: !5132, file: !5124, line: 58, type: !143)
!5132 = distinct !DILexicalBlock(scope: !5133, file: !5124, line: 57, column: 31)
!5133 = distinct !DILexicalBlock(scope: !5123, file: !5124, line: 57, column: 6)
!5134 = !DILocation(line: 54, column: 50, scope: !5123)
!5135 = !DILocation(line: 54, column: 70, scope: !5123)
!5136 = !DILocation(line: 55, column: 22, scope: !5123)
!5137 = !DILocation(line: 57, column: 6, scope: !5133)
!5138 = !DILocation(line: 57, column: 6, scope: !5123)
!5139 = !DILocation(line: 58, column: 3, scope: !5132)
!5140 = !DILocation(line: 58, column: 17, scope: !5132)
!5141 = !DILocation(line: 60, column: 7, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5132, file: !5124, line: 60, column: 7)
!5143 = !DILocation(line: 60, column: 7, scope: !5132)
!5144 = !DILocation(line: 61, column: 11, scope: !5142)
!5145 = !DILocation(line: 61, column: 4, scope: !5142)
!5146 = !DILocation(line: 63, column: 10, scope: !5132)
!5147 = !DILocation(line: 63, column: 9, scope: !5132)
!5148 = !DILocation(line: 63, column: 17, scope: !5132)
!5149 = !DILocation(line: 63, column: 15, scope: !5132)
!5150 = !DILocation(line: 63, column: 7, scope: !5132)
!5151 = !DILocation(line: 64, column: 10, scope: !5132)
!5152 = !DILocation(line: 64, column: 16, scope: !5132)
!5153 = !DILocation(line: 64, column: 29, scope: !5132)
!5154 = !DILocation(line: 64, column: 3, scope: !5132)
!5155 = !DILocation(line: 65, column: 2, scope: !5133)
!5156 = !DILocation(line: 67, column: 24, scope: !5123)
!5157 = !DILocation(line: 67, column: 30, scope: !5123)
!5158 = !DILocation(line: 67, column: 36, scope: !5123)
!5159 = !DILocation(line: 67, column: 9, scope: !5123)
!5160 = !DILocation(line: 67, column: 2, scope: !5123)
!5161 = !DILocation(line: 68, column: 1, scope: !5123)
!5162 = !DISubprogram(name: "kasprintf", scope: !5163, file: !5163, line: 16, type: !5164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5163 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!289, !141, !155, null}
!5166 = distinct !DISubprogram(name: "dev_name", scope: !70, file: !70, line: 858, type: !5167, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5169)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!155, !3970}
!5169 = !{!5170}
!5170 = !DILocalVariable(name: "dev", arg: 1, scope: !5166, file: !70, line: 858, type: !3970)
!5171 = !DILocation(line: 858, column: 57, scope: !5166)
!5172 = !DILocation(line: 861, column: 6, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5166, file: !70, line: 861, column: 6)
!5174 = !DILocation(line: 861, column: 11, scope: !5173)
!5175 = !DILocation(line: 861, column: 6, scope: !5166)
!5176 = !DILocation(line: 862, column: 10, scope: !5173)
!5177 = !DILocation(line: 862, column: 15, scope: !5173)
!5178 = !DILocation(line: 862, column: 3, scope: !5173)
!5179 = !DILocation(line: 864, column: 23, scope: !5166)
!5180 = !DILocation(line: 864, column: 28, scope: !5166)
!5181 = !DILocation(line: 864, column: 9, scope: !5166)
!5182 = !DILocation(line: 864, column: 2, scope: !5166)
!5183 = !DILocation(line: 865, column: 1, scope: !5166)
!5184 = distinct !DISubprogram(name: "input_leds_brightness_get", scope: !3, file: !3, line: 50, type: !174, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5185)
!5185 = !{!5186, !5187, !5188, !5190}
!5186 = !DILocalVariable(name: "cdev", arg: 1, scope: !5184, file: !3, line: 50, type: !167)
!5187 = !DILocalVariable(name: "led", scope: !5184, file: !3, line: 52, type: !148)
!5188 = !DILocalVariable(name: "__mptr", scope: !5189, file: !3, line: 52, type: !140)
!5189 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 52, column: 26)
!5190 = !DILocalVariable(name: "input", scope: !5184, file: !3, line: 53, type: !4376)
!5191 = !DILocation(line: 50, column: 75, scope: !5184)
!5192 = !DILocation(line: 52, column: 2, scope: !5184)
!5193 = !DILocation(line: 52, column: 20, scope: !5184)
!5194 = !DILocation(line: 52, column: 26, scope: !5189)
!5195 = !DILocation(line: 52, column: 26, scope: !5184)
!5196 = !DILocation(line: 53, column: 2, scope: !5184)
!5197 = !DILocation(line: 53, column: 20, scope: !5184)
!5198 = !DILocation(line: 53, column: 28, scope: !5184)
!5199 = !DILocation(line: 53, column: 33, scope: !5184)
!5200 = !DILocation(line: 53, column: 41, scope: !5184)
!5201 = !DILocation(line: 55, column: 9, scope: !5184)
!5202 = !DILocation(line: 55, column: 43, scope: !5184)
!5203 = !DILocation(line: 55, column: 49, scope: !5184)
!5204 = !DILocation(line: 56, column: 1, scope: !5184)
!5205 = !DILocation(line: 55, column: 2, scope: !5184)
!5206 = distinct !DISubprogram(name: "input_leds_brightness_set", scope: !3, file: !3, line: 58, type: !165, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5207)
!5207 = !{!5208, !5209, !5210, !5211}
!5208 = !DILocalVariable(name: "cdev", arg: 1, scope: !5206, file: !3, line: 58, type: !167)
!5209 = !DILocalVariable(name: "brightness", arg: 2, scope: !5206, file: !3, line: 59, type: !117)
!5210 = !DILocalVariable(name: "led", scope: !5206, file: !3, line: 61, type: !148)
!5211 = !DILocalVariable(name: "__mptr", scope: !5212, file: !3, line: 61, type: !140)
!5212 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 61, column: 26)
!5213 = !DILocation(line: 58, column: 60, scope: !5206)
!5214 = !DILocation(line: 59, column: 31, scope: !5206)
!5215 = !DILocation(line: 61, column: 2, scope: !5206)
!5216 = !DILocation(line: 61, column: 20, scope: !5206)
!5217 = !DILocation(line: 61, column: 26, scope: !5212)
!5218 = !DILocation(line: 61, column: 26, scope: !5206)
!5219 = !DILocation(line: 63, column: 21, scope: !5206)
!5220 = !DILocation(line: 63, column: 26, scope: !5206)
!5221 = !DILocation(line: 63, column: 42, scope: !5206)
!5222 = !DILocation(line: 63, column: 47, scope: !5206)
!5223 = !DILocation(line: 63, column: 55, scope: !5206)
!5224 = !DILocation(line: 63, column: 54, scope: !5206)
!5225 = !DILocation(line: 63, column: 53, scope: !5206)
!5226 = !DILocation(line: 63, column: 2, scope: !5206)
!5227 = !DILocation(line: 64, column: 1, scope: !5206)
!5228 = distinct !DISubprogram(name: "led_classdev_register", scope: !118, file: !118, line: 276, type: !5229, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5231)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{!85, !199, !167}
!5231 = !{!5232, !5233}
!5232 = !DILocalVariable(name: "parent", arg: 1, scope: !5228, file: !118, line: 276, type: !199)
!5233 = !DILocalVariable(name: "led_cdev", arg: 2, scope: !5228, file: !118, line: 277, type: !167)
!5234 = !DILocation(line: 276, column: 56, scope: !5228)
!5235 = !DILocation(line: 277, column: 27, scope: !5228)
!5236 = !DILocation(line: 279, column: 35, scope: !5228)
!5237 = !DILocation(line: 279, column: 43, scope: !5228)
!5238 = !DILocation(line: 279, column: 9, scope: !5228)
!5239 = !DILocation(line: 279, column: 2, scope: !5228)
!5240 = !DISubprogram(name: "_dev_err", scope: !5241, file: !5241, line: 50, type: !5242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5241 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5242 = !DISubroutineType(types: !5243)
!5243 = !{null, !3970, !155, null}
!5244 = !DISubprogram(name: "kfree", scope: !130, file: !130, line: 227, type: !5245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{null, !2296}
!5247 = !DISubprogram(name: "led_classdev_unregister", scope: !118, file: !118, line: 301, type: !4324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5248 = !DISubprogram(name: "input_close_device", scope: !4370, file: !4370, line: 413, type: !4633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5249 = !DISubprogram(name: "input_unregister_handle", scope: !4370, file: !4370, line: 407, type: !4633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5250 = distinct !DISubprogram(name: "kmalloc", scope: !130, file: !130, line: 591, type: !5072, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5251)
!5251 = !{!5252, !5253, !5254}
!5252 = !DILocalVariable(name: "size", arg: 1, scope: !5250, file: !130, line: 591, type: !144)
!5253 = !DILocalVariable(name: "flags", arg: 2, scope: !5250, file: !130, line: 591, type: !141)
!5254 = !DILocalVariable(name: "index", scope: !5255, file: !130, line: 594, type: !7)
!5255 = distinct !DILexicalBlock(scope: !5256, file: !130, line: 593, column: 42)
!5256 = distinct !DILexicalBlock(scope: !5250, file: !130, line: 593, column: 6)
!5257 = !DILocation(line: 591, column: 61, scope: !5250)
!5258 = !DILocation(line: 591, column: 73, scope: !5250)
!5259 = !DILocation(line: 593, column: 27, scope: !5256)
!5260 = !DILocation(line: 593, column: 6, scope: !5256)
!5261 = !DILocation(line: 593, column: 33, scope: !5256)
!5262 = !DILocation(line: 593, column: 36, scope: !5256)
!5263 = !DILocation(line: 593, column: 6, scope: !5250)
!5264 = !DILocation(line: 594, column: 3, scope: !5255)
!5265 = !DILocation(line: 594, column: 16, scope: !5255)
!5266 = !DILocation(line: 596, column: 7, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5255, file: !130, line: 596, column: 7)
!5268 = !DILocation(line: 596, column: 12, scope: !5267)
!5269 = !DILocation(line: 596, column: 7, scope: !5255)
!5270 = !DILocation(line: 597, column: 25, scope: !5267)
!5271 = !DILocation(line: 597, column: 31, scope: !5267)
!5272 = !DILocation(line: 597, column: 11, scope: !5267)
!5273 = !DILocation(line: 597, column: 4, scope: !5267)
!5274 = !DILocation(line: 599, column: 11, scope: !5255)
!5275 = !DILocation(line: 599, column: 9, scope: !5255)
!5276 = !DILocation(line: 601, column: 33, scope: !5255)
!5277 = !DILocation(line: 601, column: 40, scope: !5255)
!5278 = !DILocation(line: 601, column: 20, scope: !5255)
!5279 = !DILocation(line: 601, column: 5, scope: !5255)
!5280 = !DILocation(line: 601, column: 51, scope: !5255)
!5281 = !DILocation(line: 602, column: 5, scope: !5255)
!5282 = !DILocation(line: 602, column: 12, scope: !5255)
!5283 = !DILocation(line: 600, column: 10, scope: !5255)
!5284 = !DILocation(line: 600, column: 3, scope: !5255)
!5285 = !DILocation(line: 603, column: 2, scope: !5256)
!5286 = !DILocation(line: 604, column: 19, scope: !5250)
!5287 = !DILocation(line: 604, column: 25, scope: !5250)
!5288 = !DILocation(line: 604, column: 9, scope: !5250)
!5289 = !DILocation(line: 604, column: 2, scope: !5250)
!5290 = !DILocation(line: 605, column: 1, scope: !5250)
!5291 = !DISubprogram(name: "kmalloc_large", scope: !130, file: !130, line: 531, type: !5072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5292 = distinct !DISubprogram(name: "__kmalloc_index", scope: !130, file: !130, line: 444, type: !5293, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5295)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!7, !144, !703}
!5295 = !{!5296, !5297}
!5296 = !DILocalVariable(name: "size", arg: 1, scope: !5292, file: !130, line: 444, type: !144)
!5297 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5292, file: !130, line: 445, type: !703)
!5298 = !DILocation(line: 444, column: 60, scope: !5292)
!5299 = !DILocation(line: 445, column: 16, scope: !5292)
!5300 = !DILocation(line: 447, column: 7, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 447, column: 6)
!5302 = !DILocation(line: 447, column: 6, scope: !5292)
!5303 = !DILocation(line: 448, column: 3, scope: !5301)
!5304 = !DILocation(line: 450, column: 6, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 450, column: 6)
!5306 = !DILocation(line: 450, column: 11, scope: !5305)
!5307 = !DILocation(line: 450, column: 6, scope: !5292)
!5308 = !DILocation(line: 451, column: 3, scope: !5305)
!5309 = !DILocation(line: 453, column: 32, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 453, column: 6)
!5311 = !DILocation(line: 453, column: 37, scope: !5310)
!5312 = !DILocation(line: 453, column: 42, scope: !5310)
!5313 = !DILocation(line: 453, column: 45, scope: !5310)
!5314 = !DILocation(line: 453, column: 50, scope: !5310)
!5315 = !DILocation(line: 453, column: 6, scope: !5292)
!5316 = !DILocation(line: 454, column: 3, scope: !5310)
!5317 = !DILocation(line: 455, column: 32, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 455, column: 6)
!5319 = !DILocation(line: 455, column: 37, scope: !5318)
!5320 = !DILocation(line: 455, column: 43, scope: !5318)
!5321 = !DILocation(line: 455, column: 46, scope: !5318)
!5322 = !DILocation(line: 455, column: 51, scope: !5318)
!5323 = !DILocation(line: 455, column: 6, scope: !5292)
!5324 = !DILocation(line: 456, column: 3, scope: !5318)
!5325 = !DILocation(line: 457, column: 6, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 457, column: 6)
!5327 = !DILocation(line: 457, column: 11, scope: !5326)
!5328 = !DILocation(line: 457, column: 6, scope: !5292)
!5329 = !DILocation(line: 457, column: 26, scope: !5326)
!5330 = !DILocation(line: 458, column: 6, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 458, column: 6)
!5332 = !DILocation(line: 458, column: 11, scope: !5331)
!5333 = !DILocation(line: 458, column: 6, scope: !5292)
!5334 = !DILocation(line: 458, column: 26, scope: !5331)
!5335 = !DILocation(line: 459, column: 6, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 459, column: 6)
!5337 = !DILocation(line: 459, column: 11, scope: !5336)
!5338 = !DILocation(line: 459, column: 6, scope: !5292)
!5339 = !DILocation(line: 459, column: 26, scope: !5336)
!5340 = !DILocation(line: 460, column: 6, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 460, column: 6)
!5342 = !DILocation(line: 460, column: 11, scope: !5341)
!5343 = !DILocation(line: 460, column: 6, scope: !5292)
!5344 = !DILocation(line: 460, column: 26, scope: !5341)
!5345 = !DILocation(line: 461, column: 6, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 461, column: 6)
!5347 = !DILocation(line: 461, column: 11, scope: !5346)
!5348 = !DILocation(line: 461, column: 6, scope: !5292)
!5349 = !DILocation(line: 461, column: 26, scope: !5346)
!5350 = !DILocation(line: 462, column: 6, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 462, column: 6)
!5352 = !DILocation(line: 462, column: 11, scope: !5351)
!5353 = !DILocation(line: 462, column: 6, scope: !5292)
!5354 = !DILocation(line: 462, column: 26, scope: !5351)
!5355 = !DILocation(line: 463, column: 6, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 463, column: 6)
!5357 = !DILocation(line: 463, column: 11, scope: !5356)
!5358 = !DILocation(line: 463, column: 6, scope: !5292)
!5359 = !DILocation(line: 463, column: 26, scope: !5356)
!5360 = !DILocation(line: 464, column: 6, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 464, column: 6)
!5362 = !DILocation(line: 464, column: 11, scope: !5361)
!5363 = !DILocation(line: 464, column: 6, scope: !5292)
!5364 = !DILocation(line: 464, column: 26, scope: !5361)
!5365 = !DILocation(line: 465, column: 6, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 465, column: 6)
!5367 = !DILocation(line: 465, column: 11, scope: !5366)
!5368 = !DILocation(line: 465, column: 6, scope: !5292)
!5369 = !DILocation(line: 465, column: 26, scope: !5366)
!5370 = !DILocation(line: 466, column: 6, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 466, column: 6)
!5372 = !DILocation(line: 466, column: 11, scope: !5371)
!5373 = !DILocation(line: 466, column: 6, scope: !5292)
!5374 = !DILocation(line: 466, column: 26, scope: !5371)
!5375 = !DILocation(line: 467, column: 6, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 467, column: 6)
!5377 = !DILocation(line: 467, column: 11, scope: !5376)
!5378 = !DILocation(line: 467, column: 6, scope: !5292)
!5379 = !DILocation(line: 467, column: 26, scope: !5376)
!5380 = !DILocation(line: 468, column: 6, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 468, column: 6)
!5382 = !DILocation(line: 468, column: 11, scope: !5381)
!5383 = !DILocation(line: 468, column: 6, scope: !5292)
!5384 = !DILocation(line: 468, column: 26, scope: !5381)
!5385 = !DILocation(line: 469, column: 6, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 469, column: 6)
!5387 = !DILocation(line: 469, column: 11, scope: !5386)
!5388 = !DILocation(line: 469, column: 6, scope: !5292)
!5389 = !DILocation(line: 469, column: 26, scope: !5386)
!5390 = !DILocation(line: 470, column: 6, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 470, column: 6)
!5392 = !DILocation(line: 470, column: 11, scope: !5391)
!5393 = !DILocation(line: 470, column: 6, scope: !5292)
!5394 = !DILocation(line: 470, column: 26, scope: !5391)
!5395 = !DILocation(line: 471, column: 6, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 471, column: 6)
!5397 = !DILocation(line: 471, column: 11, scope: !5396)
!5398 = !DILocation(line: 471, column: 6, scope: !5292)
!5399 = !DILocation(line: 471, column: 26, scope: !5396)
!5400 = !DILocation(line: 472, column: 6, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 472, column: 6)
!5402 = !DILocation(line: 472, column: 11, scope: !5401)
!5403 = !DILocation(line: 472, column: 6, scope: !5292)
!5404 = !DILocation(line: 472, column: 26, scope: !5401)
!5405 = !DILocation(line: 473, column: 6, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 473, column: 6)
!5407 = !DILocation(line: 473, column: 11, scope: !5406)
!5408 = !DILocation(line: 473, column: 6, scope: !5292)
!5409 = !DILocation(line: 473, column: 26, scope: !5406)
!5410 = !DILocation(line: 474, column: 6, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 474, column: 6)
!5412 = !DILocation(line: 474, column: 11, scope: !5411)
!5413 = !DILocation(line: 474, column: 6, scope: !5292)
!5414 = !DILocation(line: 474, column: 27, scope: !5411)
!5415 = !DILocation(line: 475, column: 6, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 475, column: 6)
!5417 = !DILocation(line: 475, column: 11, scope: !5416)
!5418 = !DILocation(line: 475, column: 6, scope: !5292)
!5419 = !DILocation(line: 475, column: 32, scope: !5416)
!5420 = !DILocation(line: 477, column: 50, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5292, file: !130, line: 477, column: 6)
!5422 = !{i8 0, i8 2}
!5423 = !DILocation(line: 477, column: 6, scope: !5292)
!5424 = !DILocation(line: 478, column: 3, scope: !5421)
!5425 = !DILocation(line: 478, column: 3, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5427, file: !130, line: 478, column: 3)
!5427 = distinct !DILexicalBlock(scope: !5421, file: !130, line: 478, column: 3)
!5428 = !{i32 -2143558077}
!5429 = !DILocation(line: 478, column: 3, scope: !5427)
!5430 = !DILocation(line: 480, column: 3, scope: !5421)
!5431 = !DILocation(line: 480, column: 3, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5421, file: !130, line: 480, column: 3)
!5433 = !DILocation(line: 480, column: 3, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5432, file: !130, line: 480, column: 3)
!5435 = !DILocation(line: 480, column: 3, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5432, file: !130, line: 480, column: 3)
!5437 = !{i64 2151409422, i64 2151409451, i64 2151409497, i64 2151409555, i64 2151409609, i64 2151409663, i64 2151409718, i64 2151409749}
!5438 = !DILocation(line: 483, column: 2, scope: !5292)
!5439 = !DILocation(line: 484, column: 1, scope: !5292)
!5440 = !DISubprogram(name: "kmalloc_trace", scope: !130, file: !130, line: 525, type: !5441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5441 = !DISubroutineType(types: !5442)
!5442 = !{!140, !5443, !141, !144}
!5443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5444, size: 64)
!5444 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3051, line: 11, flags: DIFlagFwdDecl)
!5445 = distinct !DISubprogram(name: "kmalloc_type", scope: !130, file: !130, line: 401, type: !5446, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5448)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!129, !141, !143}
!5448 = !{!5449, !5450}
!5449 = !DILocalVariable(name: "flags", arg: 1, scope: !5445, file: !130, line: 401, type: !141)
!5450 = !DILocalVariable(name: "caller", arg: 2, scope: !5445, file: !130, line: 401, type: !143)
!5451 = !DILocation(line: 401, column: 67, scope: !5445)
!5452 = !DILocation(line: 401, column: 88, scope: !5445)
!5453 = !DILocation(line: 407, column: 6, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5445, file: !130, line: 407, column: 6)
!5455 = !DILocation(line: 407, column: 6, scope: !5445)
!5456 = !DILocation(line: 413, column: 3, scope: !5454)
!5457 = !DILocation(line: 423, column: 38, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5445, file: !130, line: 423, column: 6)
!5459 = !DILocation(line: 423, column: 44, scope: !5458)
!5460 = !DILocation(line: 423, column: 6, scope: !5445)
!5461 = !DILocation(line: 424, column: 3, scope: !5458)
!5462 = !DILocation(line: 426, column: 3, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5445, file: !130, line: 425, column: 6)
!5464 = !DILocation(line: 429, column: 1, scope: !5445)
!5465 = !DISubprogram(name: "__kmalloc", scope: !130, file: !130, line: 488, type: !5072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5466 = !DISubprogram(name: "__compiletime_assert_117", scope: !130, file: !130, line: 478, type: !987, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5467 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5085, file: !5085, line: 51, type: !5468, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5470)
!5468 = !DISubroutineType(types: !5469)
!5469 = !{!703, !703}
!5470 = !{!5471}
!5471 = !DILocalVariable(name: "overflow", arg: 1, scope: !5467, file: !5085, line: 51, type: !703)
!5472 = !DILocation(line: 51, column: 60, scope: !5467)
!5473 = !DILocation(line: 53, column: 9, scope: !5467)
!5474 = !DILocation(line: 53, column: 2, scope: !5467)
!5475 = distinct !DISubprogram(name: "variable__ffs", scope: !5476, file: !5476, line: 250, type: !5477, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5479)
!5476 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5477 = !DISubroutineType(types: !5478)
!5478 = !{!143, !143}
!5479 = !{!5480}
!5480 = !DILocalVariable(name: "word", arg: 1, scope: !5475, file: !5476, line: 250, type: !143)
!5481 = !DILocation(line: 250, column: 66, scope: !5475)
!5482 = !DILocation(line: 254, column: 11, scope: !5475)
!5483 = !DILocation(line: 252, column: 2, scope: !5475)
!5484 = !{i64 298167}
!5485 = !DILocation(line: 255, column: 9, scope: !5475)
!5486 = !DILocation(line: 255, column: 2, scope: !5475)
!5487 = !DISubprogram(name: "_find_next_bit", scope: !5124, file: !5124, line: 11, type: !5125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5488 = distinct !DISubprogram(name: "kobject_name", scope: !204, file: !204, line: 87, type: !277, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5489)
!5489 = !{!5490}
!5490 = !DILocalVariable(name: "kobj", arg: 1, scope: !5488, file: !204, line: 87, type: !272)
!5491 = !DILocation(line: 87, column: 62, scope: !5488)
!5492 = !DILocation(line: 89, column: 9, scope: !5488)
!5493 = !DILocation(line: 89, column: 15, scope: !5488)
!5494 = !DILocation(line: 89, column: 2, scope: !5488)
!5495 = distinct !DISubprogram(name: "const_test_bit", scope: !5496, file: !5496, line: 166, type: !5497, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5502)
!5496 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5497 = !DISubroutineType(types: !5498)
!5498 = !{!703, !143, !5499}
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5501)
!5501 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !143)
!5502 = !{!5503, !5504, !5505, !5506, !5507}
!5503 = !DILocalVariable(name: "nr", arg: 1, scope: !5495, file: !5496, line: 166, type: !143)
!5504 = !DILocalVariable(name: "addr", arg: 2, scope: !5495, file: !5496, line: 166, type: !5499)
!5505 = !DILocalVariable(name: "p", scope: !5495, file: !5496, line: 168, type: !4646)
!5506 = !DILocalVariable(name: "mask", scope: !5495, file: !5496, line: 169, type: !143)
!5507 = !DILocalVariable(name: "val", scope: !5495, file: !5496, line: 170, type: !143)
!5508 = !DILocation(line: 166, column: 30, scope: !5495)
!5509 = !DILocation(line: 166, column: 64, scope: !5495)
!5510 = !DILocation(line: 168, column: 2, scope: !5495)
!5511 = !DILocation(line: 168, column: 23, scope: !5495)
!5512 = !DILocation(line: 168, column: 50, scope: !5495)
!5513 = !DILocation(line: 168, column: 57, scope: !5495)
!5514 = !DILocation(line: 168, column: 55, scope: !5495)
!5515 = !DILocation(line: 169, column: 2, scope: !5495)
!5516 = !DILocation(line: 169, column: 16, scope: !5495)
!5517 = !DILocation(line: 169, column: 23, scope: !5495)
!5518 = !DILocation(line: 170, column: 2, scope: !5495)
!5519 = !DILocation(line: 170, column: 16, scope: !5495)
!5520 = !DILocation(line: 170, column: 23, scope: !5495)
!5521 = !DILocation(line: 170, column: 22, scope: !5495)
!5522 = !DILocation(line: 172, column: 12, scope: !5495)
!5523 = !DILocation(line: 172, column: 18, scope: !5495)
!5524 = !DILocation(line: 172, column: 16, scope: !5495)
!5525 = !DILocation(line: 172, column: 10, scope: !5495)
!5526 = !DILocation(line: 172, column: 9, scope: !5495)
!5527 = !DILocation(line: 173, column: 1, scope: !5495)
!5528 = !DILocation(line: 172, column: 2, scope: !5495)
!5529 = distinct !DISubprogram(name: "_test_bit", scope: !5530, file: !5530, line: 139, type: !5497, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5531)
!5530 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5531 = !{!5532, !5533}
!5532 = !DILocalVariable(name: "nr", arg: 1, scope: !5529, file: !5530, line: 139, type: !143)
!5533 = !DILocalVariable(name: "addr", arg: 2, scope: !5529, file: !5530, line: 139, type: !5499)
!5534 = !DILocation(line: 139, column: 25, scope: !5529)
!5535 = !DILocation(line: 139, column: 59, scope: !5529)
!5536 = !DILocation(line: 141, column: 25, scope: !5529)
!5537 = !DILocation(line: 141, column: 32, scope: !5529)
!5538 = !DILocation(line: 141, column: 30, scope: !5529)
!5539 = !DILocation(line: 141, column: 2, scope: !5529)
!5540 = !DILocation(line: 142, column: 23, scope: !5529)
!5541 = !DILocation(line: 142, column: 27, scope: !5529)
!5542 = !DILocation(line: 142, column: 9, scope: !5529)
!5543 = !DILocation(line: 142, column: 2, scope: !5529)
!5544 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5545, file: !5545, line: 66, type: !5546, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5551)
!5545 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5546 = !DISubroutineType(types: !5547)
!5547 = !{null, !5548, !144}
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5550)
!5550 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5551 = !{!5552, !5553}
!5552 = !DILocalVariable(name: "v", arg: 1, scope: !5544, file: !5545, line: 66, type: !5548)
!5553 = !DILocalVariable(name: "size", arg: 2, scope: !5544, file: !5545, line: 66, type: !144)
!5554 = !DILocation(line: 66, column: 73, scope: !5544)
!5555 = !DILocation(line: 66, column: 83, scope: !5544)
!5556 = !DILocation(line: 68, column: 19, scope: !5544)
!5557 = !DILocation(line: 68, column: 22, scope: !5544)
!5558 = !DILocation(line: 68, column: 2, scope: !5544)
!5559 = !DILocation(line: 69, column: 2, scope: !5544)
!5560 = !DILocation(line: 70, column: 1, scope: !5544)
!5561 = distinct !DISubprogram(name: "arch_test_bit", scope: !5476, file: !5476, line: 237, type: !5497, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5562)
!5562 = !{!5563, !5564}
!5563 = !DILocalVariable(name: "nr", arg: 1, scope: !5561, file: !5476, line: 237, type: !143)
!5564 = !DILocalVariable(name: "addr", arg: 2, scope: !5561, file: !5476, line: 237, type: !5499)
!5565 = !DILocation(line: 237, column: 29, scope: !5561)
!5566 = !DILocation(line: 237, column: 63, scope: !5561)
!5567 = !DILocation(line: 239, column: 30, scope: !5561)
!5568 = !DILocation(line: 239, column: 9, scope: !5561)
!5569 = !DILocation(line: 239, column: 54, scope: !5561)
!5570 = !DILocation(line: 239, column: 58, scope: !5561)
!5571 = !DILocation(line: 239, column: 36, scope: !5561)
!5572 = !DILocation(line: 240, column: 26, scope: !5561)
!5573 = !DILocation(line: 240, column: 30, scope: !5561)
!5574 = !DILocation(line: 240, column: 8, scope: !5561)
!5575 = !DILocation(line: 239, column: 2, scope: !5561)
!5576 = distinct !DISubprogram(name: "kasan_check_read", scope: !5577, file: !5577, line: 40, type: !5578, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5580)
!5577 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5578 = !DISubroutineType(types: !5579)
!5579 = !{!703, !5548, !7}
!5580 = !{!5581, !5582}
!5581 = !DILocalVariable(name: "p", arg: 1, scope: !5576, file: !5577, line: 40, type: !5548)
!5582 = !DILocalVariable(name: "size", arg: 2, scope: !5576, file: !5577, line: 40, type: !7)
!5583 = !DILocation(line: 40, column: 58, scope: !5576)
!5584 = !DILocation(line: 40, column: 74, scope: !5576)
!5585 = !DILocation(line: 42, column: 2, scope: !5576)
!5586 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5587, file: !5587, line: 229, type: !5588, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5590)
!5587 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5588 = !DISubroutineType(types: !5589)
!5589 = !{null, !5548, !144, !85}
!5590 = !{!5591, !5592, !5593}
!5591 = !DILocalVariable(name: "ptr", arg: 1, scope: !5586, file: !5587, line: 229, type: !5548)
!5592 = !DILocalVariable(name: "size", arg: 2, scope: !5586, file: !5587, line: 229, type: !144)
!5593 = !DILocalVariable(name: "type", arg: 3, scope: !5586, file: !5587, line: 230, type: !85)
!5594 = !DILocation(line: 229, column: 60, scope: !5586)
!5595 = !DILocation(line: 229, column: 72, scope: !5586)
!5596 = !DILocation(line: 230, column: 15, scope: !5586)
!5597 = !DILocation(line: 230, column: 23, scope: !5586)
!5598 = distinct !DISubprogram(name: "constant_test_bit", scope: !5476, file: !5476, line: 204, type: !5599, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5601)
!5599 = !DISubroutineType(types: !5600)
!5600 = !{!703, !324, !5499}
!5601 = !{!5602, !5603}
!5602 = !DILocalVariable(name: "nr", arg: 1, scope: !5598, file: !5476, line: 204, type: !324)
!5603 = !DILocalVariable(name: "addr", arg: 2, scope: !5598, file: !5476, line: 204, type: !5499)
!5604 = !DILocation(line: 204, column: 52, scope: !5598)
!5605 = !DILocation(line: 204, column: 86, scope: !5598)
!5606 = !DILocation(line: 206, column: 19, scope: !5598)
!5607 = !DILocation(line: 206, column: 22, scope: !5598)
!5608 = !DILocation(line: 206, column: 15, scope: !5598)
!5609 = !DILocation(line: 207, column: 4, scope: !5598)
!5610 = !DILocation(line: 207, column: 9, scope: !5598)
!5611 = !DILocation(line: 207, column: 12, scope: !5598)
!5612 = !DILocation(line: 206, column: 44, scope: !5598)
!5613 = !DILocation(line: 207, column: 37, scope: !5598)
!5614 = !DILocation(line: 206, column: 2, scope: !5598)
!5615 = distinct !DISubprogram(name: "variable_test_bit", scope: !5476, file: !5476, line: 224, type: !5599, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5616)
!5616 = !{!5617, !5618, !5619}
!5617 = !DILocalVariable(name: "nr", arg: 1, scope: !5615, file: !5476, line: 224, type: !324)
!5618 = !DILocalVariable(name: "addr", arg: 2, scope: !5615, file: !5476, line: 224, type: !5499)
!5619 = !DILocalVariable(name: "oldbit", scope: !5615, file: !5476, line: 226, type: !703)
!5620 = !DILocation(line: 224, column: 52, scope: !5615)
!5621 = !DILocation(line: 224, column: 86, scope: !5615)
!5622 = !DILocation(line: 226, column: 2, scope: !5615)
!5623 = !DILocation(line: 226, column: 7, scope: !5615)
!5624 = !DILocation(line: 231, column: 33, scope: !5615)
!5625 = !DILocation(line: 231, column: 46, scope: !5615)
!5626 = !DILocation(line: 228, column: 2, scope: !5615)
!5627 = !{i64 2147803092, i64 2147803166}
!5628 = !DILocation(line: 233, column: 9, scope: !5615)
!5629 = !DILocation(line: 234, column: 1, scope: !5615)
!5630 = !DILocation(line: 233, column: 2, scope: !5615)
!5631 = !DISubprogram(name: "input_inject_event", scope: !4370, file: !4370, line: 421, type: !4588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5632 = !DISubprogram(name: "led_classdev_register_ext", scope: !118, file: !118, line: 262, type: !5633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5633 = !DISubroutineType(types: !5634)
!5634 = !{!85, !199, !167, !5635}
!5635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5636, size: 64)
!5636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_init_data", file: !118, line: 61, size: 256, elements: !5637)
!5637 = !{!5638, !5639, !5640, !5641}
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5636, file: !118, line: 63, baseType: !4254, size: 64)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "default_label", scope: !5636, file: !118, line: 70, baseType: !155, size: 64, offset: 64)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "devicename", scope: !5636, file: !118, line: 76, baseType: !155, size: 64, offset: 128)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "devname_mandatory", scope: !5636, file: !118, line: 82, baseType: !703, size: 8, offset: 192)
