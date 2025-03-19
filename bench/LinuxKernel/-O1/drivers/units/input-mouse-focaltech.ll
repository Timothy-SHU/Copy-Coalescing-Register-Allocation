; ModuleID = 'drivers/input/mouse/focaltech.c'
source_filename = "drivers/input/mouse/focaltech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i64, i64, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i64, [8 x i8], i8, i8, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.focaltech_data = type { i32, i32, %struct.focaltech_hw_state }
%struct.focaltech_hw_state = type { [5 x %struct.focaltech_finger_state], i32, i8 }
%struct.focaltech_finger_state = type { i8, i8, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@focaltech_pnp_ids = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null], align 16, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"FocalTech\00", align 1, !dbg !206
@.str.1 = private unnamed_addr constant [9 x i8] c"Touchpad\00", align 1, !dbg !212
@.str.2 = private unnamed_addr constant [52 x i8] c"focaltech: Unable to read the size of the touchpad\0A\00", align 1, !dbg !217
@.str.3 = private unnamed_addr constant [44 x i8] c"focaltech: Unable to initialize the device\0A\00", align 1, !dbg !222
@.str.4 = private unnamed_addr constant [8 x i8] c"FLT0101\00", align 1, !dbg !227
@.str.5 = private unnamed_addr constant [8 x i8] c"FLT0102\00", align 1, !dbg !232
@.str.6 = private unnamed_addr constant [8 x i8] c"FLT0103\00", align 1, !dbg !234
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !236
@.str.8 = private unnamed_addr constant [38 x i8] c"focaltech: Unknown packet type: %02x\0A\00", align 1, !dbg !241
@.str.9 = private unnamed_addr constant [45 x i8] c"focaltech: Invalid finger in abs packet: %d\0A\00", align 1, !dbg !246
@.str.10 = private unnamed_addr constant [51 x i8] c"focaltech: First finger in rel packet invalid: %d\0A\00", align 1, !dbg !251

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @focaltech_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) #0 align 16 !dbg !271 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %set_properties.addr = alloca i8, align 1
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4833, metadata !DIExpression()), !dbg !4835
  %frombool = zext i1 %set_properties to i8
  store i8 %frombool, ptr %set_properties.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %set_properties.addr, metadata !4834, metadata !DIExpression()), !dbg !4836
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !4837
  %call = call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef @focaltech_pnp_ids) #14, !dbg !4839
  br i1 %call, label %if.end, label %if.then, !dbg !4840

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !4841
  br label %return, !dbg !4841

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %set_properties.addr, align 1, !dbg !4842, !range !4844, !noundef !1572
  %tobool = trunc i8 %1 to i1, !dbg !4842
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !4845

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !4846
  %vendor = getelementptr inbounds %struct.psmouse, ptr %2, i32 0, i32 4, !dbg !4848
  store ptr @.str, ptr %vendor, align 8, !dbg !4849
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !4850
  %name = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 5, !dbg !4851
  store ptr @.str.1, ptr %name, align 8, !dbg !4852
  br label %if.end2, !dbg !4853

if.end2:                                          ; preds = %if.then1, %if.end
  store i32 0, ptr %retval, align 4, !dbg !4854
  br label %return, !dbg !4854

return:                                           ; preds = %if.end2, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !4855
  ret i32 %4, !dbg !4855
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4856 dso_local zeroext i1 @psmouse_matches_pnp_id(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @focaltech_init(ptr noundef %psmouse) #0 align 16 !dbg !4860 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4862, metadata !DIExpression()), !dbg !4886
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #15, !dbg !4887
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !4863, metadata !DIExpression()), !dbg !4888
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !4889
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4884, metadata !DIExpression()), !dbg !4890
  %call = call noalias ptr @kzalloc(i64 noundef 76, i32 noundef 3264) #16, !dbg !4891
  store ptr %call, ptr %priv, align 8, !dbg !4892
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !4893
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !4894
  store ptr %call, ptr %private, align 8, !dbg !4895
  %1 = load ptr, ptr %priv, align 8, !dbg !4896
  %tobool = icmp ne ptr %1, null, !dbg !4896
  br i1 %tobool, label %if.end, label %if.then, !dbg !4898

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !4899

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !4900
  call void @focaltech_reset(ptr noundef %2) #14, !dbg !4901
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !4902
  %call1 = call i32 @focaltech_read_size(ptr noundef %3) #14, !dbg !4903
  store i32 %call1, ptr %error, align 4, !dbg !4904
  %4 = load i32, ptr %error, align 4, !dbg !4905
  %tobool2 = icmp ne i32 %4, 0, !dbg !4905
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4907

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !4908

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !4911

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4911

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %psmouse.addr, align 8, !dbg !4908
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2, !dbg !4908
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !4908
  %6 = load ptr, ptr %serio, align 8, !dbg !4908
  %dev = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 18, !dbg !4908
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.2) #17, !dbg !4908
  br label %fail, !dbg !4913

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %psmouse.addr, align 8, !dbg !4914
  %call5 = call i32 @focaltech_switch_protocol(ptr noundef %7) #14, !dbg !4915
  store i32 %call5, ptr %error, align 4, !dbg !4916
  %8 = load i32, ptr %error, align 4, !dbg !4917
  %tobool6 = icmp ne i32 %8, 0, !dbg !4917
  br i1 %tobool6, label %if.then7, label %if.end14, !dbg !4919

if.then7:                                         ; preds = %if.end4
  br label %do.body8, !dbg !4920

do.body8:                                         ; preds = %if.then7
  br label %do.cond9, !dbg !4923

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4923

do.end10:                                         ; preds = %do.cond9
  %9 = load ptr, ptr %psmouse.addr, align 8, !dbg !4920
  %ps2dev11 = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 2, !dbg !4920
  %serio12 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev11, i32 0, i32 0, !dbg !4920
  %10 = load ptr, ptr %serio12, align 8, !dbg !4920
  %dev13 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18, !dbg !4920
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef @.str.3) #17, !dbg !4920
  br label %fail, !dbg !4925

if.end14:                                         ; preds = %if.end4
  %11 = load ptr, ptr %psmouse.addr, align 8, !dbg !4926
  call void @focaltech_set_input_params(ptr noundef %11) #14, !dbg !4927
  %12 = load ptr, ptr %psmouse.addr, align 8, !dbg !4928
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %12, i32 0, i32 26, !dbg !4929
  store ptr @focaltech_process_byte, ptr %protocol_handler, align 8, !dbg !4930
  %13 = load ptr, ptr %psmouse.addr, align 8, !dbg !4931
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 10, !dbg !4932
  store i8 6, ptr %pktsize, align 2, !dbg !4933
  %14 = load ptr, ptr %psmouse.addr, align 8, !dbg !4934
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %14, i32 0, i32 32, !dbg !4935
  store ptr @focaltech_disconnect, ptr %disconnect, align 8, !dbg !4936
  %15 = load ptr, ptr %psmouse.addr, align 8, !dbg !4937
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %15, i32 0, i32 30, !dbg !4938
  store ptr @focaltech_reconnect, ptr %reconnect, align 8, !dbg !4939
  %16 = load ptr, ptr %psmouse.addr, align 8, !dbg !4940
  %cleanup = getelementptr inbounds %struct.psmouse, ptr %16, i32 0, i32 33, !dbg !4941
  store ptr @focaltech_reset, ptr %cleanup, align 8, !dbg !4942
  %17 = load ptr, ptr %psmouse.addr, align 8, !dbg !4943
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %17, i32 0, i32 24, !dbg !4944
  store i32 0, ptr %resync_time, align 8, !dbg !4945
  %18 = load ptr, ptr %psmouse.addr, align 8, !dbg !4946
  %set_resolution = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 28, !dbg !4947
  store ptr @focaltech_set_resolution, ptr %set_resolution, align 8, !dbg !4948
  %19 = load ptr, ptr %psmouse.addr, align 8, !dbg !4949
  %set_rate = getelementptr inbounds %struct.psmouse, ptr %19, i32 0, i32 27, !dbg !4950
  store ptr @focaltech_set_rate, ptr %set_rate, align 8, !dbg !4951
  %20 = load ptr, ptr %psmouse.addr, align 8, !dbg !4952
  %set_scale = getelementptr inbounds %struct.psmouse, ptr %20, i32 0, i32 29, !dbg !4953
  store ptr @focaltech_set_scale, ptr %set_scale, align 8, !dbg !4954
  store i32 0, ptr %retval, align 4, !dbg !4955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !4955

fail:                                             ; preds = %do.end10, %do.end
  call void @llvm.dbg.label(metadata !4885), !dbg !4956
  %21 = load ptr, ptr %psmouse.addr, align 8, !dbg !4957
  call void @focaltech_reset(ptr noundef %21) #14, !dbg !4958
  %22 = load ptr, ptr %priv, align 8, !dbg !4959
  call void @kfree(ptr noundef %22) #14, !dbg !4960
  %23 = load i32, ptr %error, align 4, !dbg !4961
  store i32 %23, ptr %retval, align 4, !dbg !4962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !4962

cleanup15:                                        ; preds = %fail, %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !4963
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #15, !dbg !4963
  %24 = load i32, ptr %retval, align 4, !dbg !4963
  ret i32 %24, !dbg !4963
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !4964 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4968, metadata !DIExpression()), !dbg !4970
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4969, metadata !DIExpression()), !dbg !4971
  %0 = load i64, ptr %size.addr, align 8, !dbg !4972
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4973
  %or = or i32 %1, 256, !dbg !4974
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !4975
  ret ptr %call, !dbg !4976
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_reset(ptr noundef %psmouse) #0 align 16 !dbg !4977 {
entry:
  %psmouse.addr = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4979, metadata !DIExpression()), !dbg !4980
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !4981
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !4982
  %call = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 246) #14, !dbg !4983
  %1 = load ptr, ptr %psmouse.addr, align 8, !dbg !4984
  %call1 = call i32 @psmouse_reset(ptr noundef %1) #14, !dbg !4985
  ret void, !dbg !4986
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @focaltech_read_size(ptr noundef %psmouse) #0 align 16 !dbg !4987 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %ps2dev = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %param = alloca [3 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4989, metadata !DIExpression()), !dbg !4994
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps2dev) #15, !dbg !4995
  call void @llvm.dbg.declare(metadata ptr %ps2dev, metadata !4990, metadata !DIExpression()), !dbg !4996
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !4997
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !4998
  store ptr %ps2dev1, ptr %ps2dev, align 8, !dbg !4996
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #15, !dbg !4999
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !4991, metadata !DIExpression()), !dbg !5000
  %1 = load ptr, ptr %psmouse.addr, align 8, !dbg !5001
  %private = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 0, !dbg !5002
  %2 = load ptr, ptr %private, align 8, !dbg !5002
  store ptr %2, ptr %priv, align 8, !dbg !5000
  call void @llvm.lifetime.start.p0(i64 3, ptr %param) #15, !dbg !5003
  call void @llvm.dbg.declare(metadata ptr %param, metadata !4992, metadata !DIExpression()), !dbg !5004
  %3 = load ptr, ptr %ps2dev, align 8, !dbg !5005
  %arraydecay = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5007
  %call = call i32 @focaltech_read_register(ptr noundef %3, i32 noundef 2, ptr noundef %arraydecay) #14, !dbg !5008
  %tobool = icmp ne i32 %call, 0, !dbg !5008
  br i1 %tobool, label %if.then, label %if.end, !dbg !5009

if.then:                                          ; preds = %entry
  store i32 -5, ptr %retval, align 4, !dbg !5010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5010

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x i8], ptr %param, i64 0, i64 1, !dbg !5011
  %4 = load i8, ptr %arrayidx, align 1, !dbg !5011
  %conv = zext i8 %4 to i32, !dbg !5012
  %mul = mul i32 %conv, 128, !dbg !5013
  %5 = load ptr, ptr %priv, align 8, !dbg !5014
  %x_max = getelementptr inbounds %struct.focaltech_data, ptr %5, i32 0, i32 0, !dbg !5015
  store i32 %mul, ptr %x_max, align 4, !dbg !5016
  %arrayidx2 = getelementptr [3 x i8], ptr %param, i64 0, i64 2, !dbg !5017
  %6 = load i8, ptr %arrayidx2, align 1, !dbg !5017
  %conv3 = zext i8 %6 to i32, !dbg !5018
  %mul4 = mul i32 %conv3, 128, !dbg !5019
  %7 = load ptr, ptr %priv, align 8, !dbg !5020
  %y_max = getelementptr inbounds %struct.focaltech_data, ptr %7, i32 0, i32 1, !dbg !5021
  store i32 %mul4, ptr %y_max, align 4, !dbg !5022
  store i32 0, ptr %retval, align 4, !dbg !5023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5023

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 3, ptr %param) #15, !dbg !5024
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #15, !dbg !5024
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps2dev) #15, !dbg !5024
  %8 = load i32, ptr %retval, align 4, !dbg !5024
  ret i32 %8, !dbg !5024
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5025 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @focaltech_switch_protocol(ptr noundef %psmouse) #0 align 16 !dbg !5029 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %ps2dev = alloca ptr, align 8
  %param = alloca [3 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5031, metadata !DIExpression()), !dbg !5035
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps2dev) #15, !dbg !5036
  call void @llvm.dbg.declare(metadata ptr %ps2dev, metadata !5032, metadata !DIExpression()), !dbg !5037
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5038
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !5039
  store ptr %ps2dev1, ptr %ps2dev, align 8, !dbg !5037
  call void @llvm.lifetime.start.p0(i64 3, ptr %param) #15, !dbg !5040
  call void @llvm.dbg.declare(metadata ptr %param, metadata !5033, metadata !DIExpression()), !dbg !5041
  %arrayidx = getelementptr [3 x i8], ptr %param, i64 0, i64 0, !dbg !5042
  store i8 0, ptr %arrayidx, align 1, !dbg !5043
  %1 = load ptr, ptr %ps2dev, align 8, !dbg !5044
  %arraydecay = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5046
  %call = call i32 @ps2_command(ptr noundef %1, ptr noundef %arraydecay, i32 noundef 4344) #14, !dbg !5047
  %tobool = icmp ne i32 %call, 0, !dbg !5047
  br i1 %tobool, label %if.then, label %if.end, !dbg !5048

if.then:                                          ; preds = %entry
  store i32 -5, ptr %retval, align 4, !dbg !5049
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5049

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ps2dev, align 8, !dbg !5050
  %arraydecay2 = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5052
  %call3 = call i32 @ps2_command(ptr noundef %2, ptr noundef %arraydecay2, i32 noundef 4344) #14, !dbg !5053
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5053
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5054

if.then5:                                         ; preds = %if.end
  store i32 -5, ptr %retval, align 4, !dbg !5055
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5055

if.end6:                                          ; preds = %if.end
  %3 = load ptr, ptr %ps2dev, align 8, !dbg !5056
  %arraydecay7 = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5058
  %call8 = call i32 @ps2_command(ptr noundef %3, ptr noundef %arraydecay7, i32 noundef 4344) #14, !dbg !5059
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5059
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5060

if.then10:                                        ; preds = %if.end6
  store i32 -5, ptr %retval, align 4, !dbg !5061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5061

if.end11:                                         ; preds = %if.end6
  %arrayidx12 = getelementptr [3 x i8], ptr %param, i64 0, i64 0, !dbg !5062
  store i8 1, ptr %arrayidx12, align 1, !dbg !5063
  %4 = load ptr, ptr %ps2dev, align 8, !dbg !5064
  %arraydecay13 = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5066
  %call14 = call i32 @ps2_command(ptr noundef %4, ptr noundef %arraydecay13, i32 noundef 4344) #14, !dbg !5067
  %tobool15 = icmp ne i32 %call14, 0, !dbg !5067
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5068

if.then16:                                        ; preds = %if.end11
  store i32 -5, ptr %retval, align 4, !dbg !5069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5069

if.end17:                                         ; preds = %if.end11
  %5 = load ptr, ptr %ps2dev, align 8, !dbg !5070
  %arraydecay18 = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5072
  %call19 = call i32 @ps2_command(ptr noundef %5, ptr noundef %arraydecay18, i32 noundef 230) #14, !dbg !5073
  %tobool20 = icmp ne i32 %call19, 0, !dbg !5073
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !5074

if.then21:                                        ; preds = %if.end17
  store i32 -5, ptr %retval, align 4, !dbg !5075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5075

if.end22:                                         ; preds = %if.end17
  %6 = load ptr, ptr %ps2dev, align 8, !dbg !5076
  %arraydecay23 = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5078
  %call24 = call i32 @ps2_command(ptr noundef %6, ptr noundef %arraydecay23, i32 noundef 244) #14, !dbg !5079
  %tobool25 = icmp ne i32 %call24, 0, !dbg !5079
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5080

if.then26:                                        ; preds = %if.end22
  store i32 -5, ptr %retval, align 4, !dbg !5081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5081

if.end27:                                         ; preds = %if.end22
  store i32 0, ptr %retval, align 4, !dbg !5082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5082

cleanup:                                          ; preds = %if.end27, %if.then26, %if.then21, %if.then16, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 3, ptr %param) #15, !dbg !5083
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps2dev) #15, !dbg !5083
  %7 = load i32, ptr %retval, align 4, !dbg !5083
  ret i32 %7, !dbg !5083
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_set_input_params(ptr noundef %psmouse) #0 align 16 !dbg !5084 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %priv = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5086, metadata !DIExpression()), !dbg !5089
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5090
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5087, metadata !DIExpression()), !dbg !5091
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5092
  %dev1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1, !dbg !5093
  %1 = load ptr, ptr %dev1, align 8, !dbg !5093
  store ptr %1, ptr %dev, align 8, !dbg !5091
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #15, !dbg !5094
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !5088, metadata !DIExpression()), !dbg !5095
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5096
  %private = getelementptr inbounds %struct.psmouse, ptr %2, i32 0, i32 0, !dbg !5097
  %3 = load ptr, ptr %private, align 8, !dbg !5097
  store ptr %3, ptr %priv, align 8, !dbg !5095
  %4 = load ptr, ptr %dev, align 8, !dbg !5098
  %evbit = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 5, !dbg !5098
  %arraydecay = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !5098
  %5 = ptrtoint ptr %arraydecay to i64, !dbg !5098
  %cmp = icmp ne i64 %5, 0, !dbg !5098
  %conv = zext i1 %cmp to i32, !dbg !5098
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5098
  br i1 %6, label %land.lhs.true, label %cond.false, !dbg !5098

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %dev, align 8, !dbg !5098
  %evbit2 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5, !dbg !5098
  %arraydecay3 = getelementptr inbounds [1 x i64], ptr %evbit2, i64 0, i64 0, !dbg !5098
  %8 = ptrtoint ptr %arraydecay3 to i64, !dbg !5098
  %cmp4 = icmp ne i64 %8, 0, !dbg !5098
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !5098

land.lhs.true6:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %dev, align 8, !dbg !5098
  %evbit7 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 5, !dbg !5098
  %arraydecay8 = getelementptr inbounds [1 x i64], ptr %evbit7, i64 0, i64 0, !dbg !5098
  %10 = load i64, ptr %arraydecay8, align 8, !dbg !5098
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5098
  br i1 %11, label %cond.true, label %cond.false, !dbg !5098

cond.true:                                        ; preds = %land.lhs.true6
  %12 = load ptr, ptr %dev, align 8, !dbg !5098
  %evbit9 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 5, !dbg !5098
  %arraydecay10 = getelementptr inbounds [1 x i64], ptr %evbit9, i64 0, i64 0, !dbg !5098
  call void @generic___clear_bit(i64 noundef 2, ptr noundef %arraydecay10) #14, !dbg !5098
  br label %cond.end, !dbg !5098

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true, %entry
  %13 = load ptr, ptr %dev, align 8, !dbg !5098
  %evbit11 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 5, !dbg !5098
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %evbit11, i64 0, i64 0, !dbg !5098
  call void @___clear_bit(i64 noundef 2, ptr noundef %arraydecay12) #14, !dbg !5098
  br label %cond.end, !dbg !5098

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = load ptr, ptr %dev, align 8, !dbg !5099
  %relbit = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 7, !dbg !5099
  %arraydecay13 = getelementptr inbounds [1 x i64], ptr %relbit, i64 0, i64 0, !dbg !5099
  %15 = ptrtoint ptr %arraydecay13 to i64, !dbg !5099
  %cmp14 = icmp ne i64 %15, 0, !dbg !5099
  %conv15 = zext i1 %cmp14 to i32, !dbg !5099
  %16 = call i1 @llvm.is.constant.i32(i32 %conv15), !dbg !5099
  br i1 %16, label %land.lhs.true16, label %cond.false27, !dbg !5099

land.lhs.true16:                                  ; preds = %cond.end
  %17 = load ptr, ptr %dev, align 8, !dbg !5099
  %relbit17 = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 7, !dbg !5099
  %arraydecay18 = getelementptr inbounds [1 x i64], ptr %relbit17, i64 0, i64 0, !dbg !5099
  %18 = ptrtoint ptr %arraydecay18 to i64, !dbg !5099
  %cmp19 = icmp ne i64 %18, 0, !dbg !5099
  br i1 %cmp19, label %land.lhs.true21, label %cond.false27, !dbg !5099

land.lhs.true21:                                  ; preds = %land.lhs.true16
  %19 = load ptr, ptr %dev, align 8, !dbg !5099
  %relbit22 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 7, !dbg !5099
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %relbit22, i64 0, i64 0, !dbg !5099
  %20 = load i64, ptr %arraydecay23, align 8, !dbg !5099
  %21 = call i1 @llvm.is.constant.i64(i64 %20), !dbg !5099
  br i1 %21, label %cond.true24, label %cond.false27, !dbg !5099

cond.true24:                                      ; preds = %land.lhs.true21
  %22 = load ptr, ptr %dev, align 8, !dbg !5099
  %relbit25 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 7, !dbg !5099
  %arraydecay26 = getelementptr inbounds [1 x i64], ptr %relbit25, i64 0, i64 0, !dbg !5099
  call void @generic___clear_bit(i64 noundef 0, ptr noundef %arraydecay26) #14, !dbg !5099
  br label %cond.end30, !dbg !5099

cond.false27:                                     ; preds = %land.lhs.true21, %land.lhs.true16, %cond.end
  %23 = load ptr, ptr %dev, align 8, !dbg !5099
  %relbit28 = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 7, !dbg !5099
  %arraydecay29 = getelementptr inbounds [1 x i64], ptr %relbit28, i64 0, i64 0, !dbg !5099
  call void @___clear_bit(i64 noundef 0, ptr noundef %arraydecay29) #14, !dbg !5099
  br label %cond.end30, !dbg !5099

cond.end30:                                       ; preds = %cond.false27, %cond.true24
  %24 = load ptr, ptr %dev, align 8, !dbg !5100
  %relbit31 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 7, !dbg !5100
  %arraydecay32 = getelementptr inbounds [1 x i64], ptr %relbit31, i64 0, i64 0, !dbg !5100
  %25 = ptrtoint ptr %arraydecay32 to i64, !dbg !5100
  %cmp33 = icmp ne i64 %25, 0, !dbg !5100
  %conv34 = zext i1 %cmp33 to i32, !dbg !5100
  %26 = call i1 @llvm.is.constant.i32(i32 %conv34), !dbg !5100
  br i1 %26, label %land.lhs.true35, label %cond.false46, !dbg !5100

land.lhs.true35:                                  ; preds = %cond.end30
  %27 = load ptr, ptr %dev, align 8, !dbg !5100
  %relbit36 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 7, !dbg !5100
  %arraydecay37 = getelementptr inbounds [1 x i64], ptr %relbit36, i64 0, i64 0, !dbg !5100
  %28 = ptrtoint ptr %arraydecay37 to i64, !dbg !5100
  %cmp38 = icmp ne i64 %28, 0, !dbg !5100
  br i1 %cmp38, label %land.lhs.true40, label %cond.false46, !dbg !5100

land.lhs.true40:                                  ; preds = %land.lhs.true35
  %29 = load ptr, ptr %dev, align 8, !dbg !5100
  %relbit41 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 7, !dbg !5100
  %arraydecay42 = getelementptr inbounds [1 x i64], ptr %relbit41, i64 0, i64 0, !dbg !5100
  %30 = load i64, ptr %arraydecay42, align 8, !dbg !5100
  %31 = call i1 @llvm.is.constant.i64(i64 %30), !dbg !5100
  br i1 %31, label %cond.true43, label %cond.false46, !dbg !5100

cond.true43:                                      ; preds = %land.lhs.true40
  %32 = load ptr, ptr %dev, align 8, !dbg !5100
  %relbit44 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 7, !dbg !5100
  %arraydecay45 = getelementptr inbounds [1 x i64], ptr %relbit44, i64 0, i64 0, !dbg !5100
  call void @generic___clear_bit(i64 noundef 1, ptr noundef %arraydecay45) #14, !dbg !5100
  br label %cond.end49, !dbg !5100

cond.false46:                                     ; preds = %land.lhs.true40, %land.lhs.true35, %cond.end30
  %33 = load ptr, ptr %dev, align 8, !dbg !5100
  %relbit47 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 7, !dbg !5100
  %arraydecay48 = getelementptr inbounds [1 x i64], ptr %relbit47, i64 0, i64 0, !dbg !5100
  call void @___clear_bit(i64 noundef 1, ptr noundef %arraydecay48) #14, !dbg !5100
  br label %cond.end49, !dbg !5100

cond.end49:                                       ; preds = %cond.false46, %cond.true43
  %34 = load ptr, ptr %dev, align 8, !dbg !5101
  %keybit = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 6, !dbg !5101
  %arraydecay50 = getelementptr inbounds [12 x i64], ptr %keybit, i64 0, i64 0, !dbg !5101
  %35 = ptrtoint ptr %arraydecay50 to i64, !dbg !5101
  %cmp51 = icmp ne i64 %35, 0, !dbg !5101
  %conv52 = zext i1 %cmp51 to i32, !dbg !5101
  %36 = call i1 @llvm.is.constant.i32(i32 %conv52), !dbg !5101
  br i1 %36, label %land.lhs.true53, label %cond.false64, !dbg !5101

land.lhs.true53:                                  ; preds = %cond.end49
  %37 = load ptr, ptr %dev, align 8, !dbg !5101
  %keybit54 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 6, !dbg !5101
  %arraydecay55 = getelementptr inbounds [12 x i64], ptr %keybit54, i64 0, i64 0, !dbg !5101
  %38 = ptrtoint ptr %arraydecay55 to i64, !dbg !5101
  %cmp56 = icmp ne i64 %38, 0, !dbg !5101
  br i1 %cmp56, label %land.lhs.true58, label %cond.false64, !dbg !5101

land.lhs.true58:                                  ; preds = %land.lhs.true53
  %39 = load ptr, ptr %dev, align 8, !dbg !5101
  %keybit59 = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 6, !dbg !5101
  %arraydecay60 = getelementptr inbounds [12 x i64], ptr %keybit59, i64 0, i64 0, !dbg !5101
  %40 = load i64, ptr %arraydecay60, align 8, !dbg !5101
  %41 = call i1 @llvm.is.constant.i64(i64 %40), !dbg !5101
  br i1 %41, label %cond.true61, label %cond.false64, !dbg !5101

cond.true61:                                      ; preds = %land.lhs.true58
  %42 = load ptr, ptr %dev, align 8, !dbg !5101
  %keybit62 = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 6, !dbg !5101
  %arraydecay63 = getelementptr inbounds [12 x i64], ptr %keybit62, i64 0, i64 0, !dbg !5101
  call void @generic___clear_bit(i64 noundef 273, ptr noundef %arraydecay63) #14, !dbg !5101
  br label %cond.end67, !dbg !5101

cond.false64:                                     ; preds = %land.lhs.true58, %land.lhs.true53, %cond.end49
  %43 = load ptr, ptr %dev, align 8, !dbg !5101
  %keybit65 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 6, !dbg !5101
  %arraydecay66 = getelementptr inbounds [12 x i64], ptr %keybit65, i64 0, i64 0, !dbg !5101
  call void @___clear_bit(i64 noundef 273, ptr noundef %arraydecay66) #14, !dbg !5101
  br label %cond.end67, !dbg !5101

cond.end67:                                       ; preds = %cond.false64, %cond.true61
  %44 = load ptr, ptr %dev, align 8, !dbg !5102
  %keybit68 = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 6, !dbg !5102
  %arraydecay69 = getelementptr inbounds [12 x i64], ptr %keybit68, i64 0, i64 0, !dbg !5102
  %45 = ptrtoint ptr %arraydecay69 to i64, !dbg !5102
  %cmp70 = icmp ne i64 %45, 0, !dbg !5102
  %conv71 = zext i1 %cmp70 to i32, !dbg !5102
  %46 = call i1 @llvm.is.constant.i32(i32 %conv71), !dbg !5102
  br i1 %46, label %land.lhs.true72, label %cond.false83, !dbg !5102

land.lhs.true72:                                  ; preds = %cond.end67
  %47 = load ptr, ptr %dev, align 8, !dbg !5102
  %keybit73 = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 6, !dbg !5102
  %arraydecay74 = getelementptr inbounds [12 x i64], ptr %keybit73, i64 0, i64 0, !dbg !5102
  %48 = ptrtoint ptr %arraydecay74 to i64, !dbg !5102
  %cmp75 = icmp ne i64 %48, 0, !dbg !5102
  br i1 %cmp75, label %land.lhs.true77, label %cond.false83, !dbg !5102

land.lhs.true77:                                  ; preds = %land.lhs.true72
  %49 = load ptr, ptr %dev, align 8, !dbg !5102
  %keybit78 = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 6, !dbg !5102
  %arraydecay79 = getelementptr inbounds [12 x i64], ptr %keybit78, i64 0, i64 0, !dbg !5102
  %50 = load i64, ptr %arraydecay79, align 8, !dbg !5102
  %51 = call i1 @llvm.is.constant.i64(i64 %50), !dbg !5102
  br i1 %51, label %cond.true80, label %cond.false83, !dbg !5102

cond.true80:                                      ; preds = %land.lhs.true77
  %52 = load ptr, ptr %dev, align 8, !dbg !5102
  %keybit81 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 6, !dbg !5102
  %arraydecay82 = getelementptr inbounds [12 x i64], ptr %keybit81, i64 0, i64 0, !dbg !5102
  call void @generic___clear_bit(i64 noundef 274, ptr noundef %arraydecay82) #14, !dbg !5102
  br label %cond.end86, !dbg !5102

cond.false83:                                     ; preds = %land.lhs.true77, %land.lhs.true72, %cond.end67
  %53 = load ptr, ptr %dev, align 8, !dbg !5102
  %keybit84 = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 6, !dbg !5102
  %arraydecay85 = getelementptr inbounds [12 x i64], ptr %keybit84, i64 0, i64 0, !dbg !5102
  call void @___clear_bit(i64 noundef 274, ptr noundef %arraydecay85) #14, !dbg !5102
  br label %cond.end86, !dbg !5102

cond.end86:                                       ; preds = %cond.false83, %cond.true80
  %54 = load ptr, ptr %dev, align 8, !dbg !5103
  %evbit87 = getelementptr inbounds %struct.input_dev, ptr %54, i32 0, i32 5, !dbg !5103
  %arraydecay88 = getelementptr inbounds [1 x i64], ptr %evbit87, i64 0, i64 0, !dbg !5103
  %55 = ptrtoint ptr %arraydecay88 to i64, !dbg !5103
  %cmp89 = icmp ne i64 %55, 0, !dbg !5103
  %conv90 = zext i1 %cmp89 to i32, !dbg !5103
  %56 = call i1 @llvm.is.constant.i32(i32 %conv90), !dbg !5103
  br i1 %56, label %land.lhs.true91, label %cond.false102, !dbg !5103

land.lhs.true91:                                  ; preds = %cond.end86
  %57 = load ptr, ptr %dev, align 8, !dbg !5103
  %evbit92 = getelementptr inbounds %struct.input_dev, ptr %57, i32 0, i32 5, !dbg !5103
  %arraydecay93 = getelementptr inbounds [1 x i64], ptr %evbit92, i64 0, i64 0, !dbg !5103
  %58 = ptrtoint ptr %arraydecay93 to i64, !dbg !5103
  %cmp94 = icmp ne i64 %58, 0, !dbg !5103
  br i1 %cmp94, label %land.lhs.true96, label %cond.false102, !dbg !5103

land.lhs.true96:                                  ; preds = %land.lhs.true91
  %59 = load ptr, ptr %dev, align 8, !dbg !5103
  %evbit97 = getelementptr inbounds %struct.input_dev, ptr %59, i32 0, i32 5, !dbg !5103
  %arraydecay98 = getelementptr inbounds [1 x i64], ptr %evbit97, i64 0, i64 0, !dbg !5103
  %60 = load i64, ptr %arraydecay98, align 8, !dbg !5103
  %61 = call i1 @llvm.is.constant.i64(i64 %60), !dbg !5103
  br i1 %61, label %cond.true99, label %cond.false102, !dbg !5103

cond.true99:                                      ; preds = %land.lhs.true96
  %62 = load ptr, ptr %dev, align 8, !dbg !5103
  %evbit100 = getelementptr inbounds %struct.input_dev, ptr %62, i32 0, i32 5, !dbg !5103
  %arraydecay101 = getelementptr inbounds [1 x i64], ptr %evbit100, i64 0, i64 0, !dbg !5103
  call void @generic___set_bit(i64 noundef 3, ptr noundef %arraydecay101) #14, !dbg !5103
  br label %cond.end105, !dbg !5103

cond.false102:                                    ; preds = %land.lhs.true96, %land.lhs.true91, %cond.end86
  %63 = load ptr, ptr %dev, align 8, !dbg !5103
  %evbit103 = getelementptr inbounds %struct.input_dev, ptr %63, i32 0, i32 5, !dbg !5103
  %arraydecay104 = getelementptr inbounds [1 x i64], ptr %evbit103, i64 0, i64 0, !dbg !5103
  call void @___set_bit(i64 noundef 3, ptr noundef %arraydecay104) #14, !dbg !5103
  br label %cond.end105, !dbg !5103

cond.end105:                                      ; preds = %cond.false102, %cond.true99
  %64 = load ptr, ptr %dev, align 8, !dbg !5104
  %65 = load ptr, ptr %priv, align 8, !dbg !5105
  %x_max = getelementptr inbounds %struct.focaltech_data, ptr %65, i32 0, i32 0, !dbg !5106
  %66 = load i32, ptr %x_max, align 4, !dbg !5106
  call void @input_set_abs_params(ptr noundef %64, i32 noundef 53, i32 noundef 0, i32 noundef %66, i32 noundef 0, i32 noundef 0) #14, !dbg !5107
  %67 = load ptr, ptr %dev, align 8, !dbg !5108
  %68 = load ptr, ptr %priv, align 8, !dbg !5109
  %y_max = getelementptr inbounds %struct.focaltech_data, ptr %68, i32 0, i32 1, !dbg !5110
  %69 = load i32, ptr %y_max, align 4, !dbg !5110
  call void @input_set_abs_params(ptr noundef %67, i32 noundef 54, i32 noundef 0, i32 noundef %69, i32 noundef 0, i32 noundef 0) #14, !dbg !5111
  %70 = load ptr, ptr %dev, align 8, !dbg !5112
  call void @input_set_abs_params(ptr noundef %70, i32 noundef 28, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #14, !dbg !5113
  %71 = load ptr, ptr %dev, align 8, !dbg !5114
  %call = call i32 @input_mt_init_slots(ptr noundef %71, i32 noundef 5, i32 noundef 1) #14, !dbg !5115
  %72 = load ptr, ptr %dev, align 8, !dbg !5116
  %propbit = getelementptr inbounds %struct.input_dev, ptr %72, i32 0, i32 4, !dbg !5116
  %arraydecay106 = getelementptr inbounds [1 x i64], ptr %propbit, i64 0, i64 0, !dbg !5116
  %73 = ptrtoint ptr %arraydecay106 to i64, !dbg !5116
  %cmp107 = icmp ne i64 %73, 0, !dbg !5116
  %conv108 = zext i1 %cmp107 to i32, !dbg !5116
  %74 = call i1 @llvm.is.constant.i32(i32 %conv108), !dbg !5116
  br i1 %74, label %land.lhs.true109, label %cond.false120, !dbg !5116

land.lhs.true109:                                 ; preds = %cond.end105
  %75 = load ptr, ptr %dev, align 8, !dbg !5116
  %propbit110 = getelementptr inbounds %struct.input_dev, ptr %75, i32 0, i32 4, !dbg !5116
  %arraydecay111 = getelementptr inbounds [1 x i64], ptr %propbit110, i64 0, i64 0, !dbg !5116
  %76 = ptrtoint ptr %arraydecay111 to i64, !dbg !5116
  %cmp112 = icmp ne i64 %76, 0, !dbg !5116
  br i1 %cmp112, label %land.lhs.true114, label %cond.false120, !dbg !5116

land.lhs.true114:                                 ; preds = %land.lhs.true109
  %77 = load ptr, ptr %dev, align 8, !dbg !5116
  %propbit115 = getelementptr inbounds %struct.input_dev, ptr %77, i32 0, i32 4, !dbg !5116
  %arraydecay116 = getelementptr inbounds [1 x i64], ptr %propbit115, i64 0, i64 0, !dbg !5116
  %78 = load i64, ptr %arraydecay116, align 8, !dbg !5116
  %79 = call i1 @llvm.is.constant.i64(i64 %78), !dbg !5116
  br i1 %79, label %cond.true117, label %cond.false120, !dbg !5116

cond.true117:                                     ; preds = %land.lhs.true114
  %80 = load ptr, ptr %dev, align 8, !dbg !5116
  %propbit118 = getelementptr inbounds %struct.input_dev, ptr %80, i32 0, i32 4, !dbg !5116
  %arraydecay119 = getelementptr inbounds [1 x i64], ptr %propbit118, i64 0, i64 0, !dbg !5116
  call void @generic___set_bit(i64 noundef 2, ptr noundef %arraydecay119) #14, !dbg !5116
  br label %cond.end123, !dbg !5116

cond.false120:                                    ; preds = %land.lhs.true114, %land.lhs.true109, %cond.end105
  %81 = load ptr, ptr %dev, align 8, !dbg !5116
  %propbit121 = getelementptr inbounds %struct.input_dev, ptr %81, i32 0, i32 4, !dbg !5116
  %arraydecay122 = getelementptr inbounds [1 x i64], ptr %propbit121, i64 0, i64 0, !dbg !5116
  call void @___set_bit(i64 noundef 2, ptr noundef %arraydecay122) #14, !dbg !5116
  br label %cond.end123, !dbg !5116

cond.end123:                                      ; preds = %cond.false120, %cond.true117
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #15, !dbg !5117
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5117
  ret void, !dbg !5117
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @focaltech_process_byte(ptr noundef %psmouse) #0 align 16 !dbg !5118 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5120, metadata !DIExpression()), !dbg !5121
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5122
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9, !dbg !5124
  %1 = load i8, ptr %pktcnt, align 1, !dbg !5124
  %conv = zext i8 %1 to i32, !dbg !5122
  %cmp = icmp sge i32 %conv, 6, !dbg !5125
  br i1 %cmp, label %if.then, label %if.end, !dbg !5126

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5127
  call void @focaltech_process_packet(ptr noundef %2) #14, !dbg !5129
  store i32 2, ptr %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5131
  br label %return, !dbg !5131

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !5132
  ret i32 %3, !dbg !5132
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_disconnect(ptr noundef %psmouse) #0 align 16 !dbg !5133 {
entry:
  %psmouse.addr = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5137
  call void @focaltech_reset(ptr noundef %0) #14, !dbg !5138
  %1 = load ptr, ptr %psmouse.addr, align 8, !dbg !5139
  %private = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 0, !dbg !5140
  %2 = load ptr, ptr %private, align 8, !dbg !5140
  call void @kfree(ptr noundef %2) #14, !dbg !5141
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !5142
  %private1 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 0, !dbg !5143
  store ptr null, ptr %private1, align 8, !dbg !5144
  ret void, !dbg !5145
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @focaltech_reconnect(ptr noundef %psmouse) #0 align 16 !dbg !5146 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5148, metadata !DIExpression()), !dbg !5150
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !5151
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5149, metadata !DIExpression()), !dbg !5152
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5153
  call void @focaltech_reset(ptr noundef %0) #14, !dbg !5154
  %1 = load ptr, ptr %psmouse.addr, align 8, !dbg !5155
  %call = call i32 @focaltech_switch_protocol(ptr noundef %1) #14, !dbg !5156
  store i32 %call, ptr %error, align 4, !dbg !5157
  %2 = load i32, ptr %error, align 4, !dbg !5158
  %tobool = icmp ne i32 %2, 0, !dbg !5158
  br i1 %tobool, label %if.then, label %if.end, !dbg !5160

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5161

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5164

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5164

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !5161
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 2, !dbg !5161
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !5161
  %4 = load ptr, ptr %serio, align 8, !dbg !5161
  %dev = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 18, !dbg !5161
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.3) #17, !dbg !5161
  %5 = load i32, ptr %error, align 4, !dbg !5166
  store i32 %5, ptr %retval, align 4, !dbg !5167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5167

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5168

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !5169
  %6 = load i32, ptr %retval, align 4, !dbg !5169
  ret i32 %6, !dbg !5169
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_set_resolution(ptr noundef %psmouse, i32 noundef %resolution) #0 align 16 !dbg !5170 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %resolution.addr = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5172, metadata !DIExpression()), !dbg !5174
  store i32 %resolution, ptr %resolution.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resolution.addr, metadata !5173, metadata !DIExpression()), !dbg !5175
  ret void, !dbg !5176
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_set_rate(ptr noundef %psmouse, i32 noundef %rate) #0 align 16 !dbg !5177 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %rate.addr = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5179, metadata !DIExpression()), !dbg !5181
  store i32 %rate, ptr %rate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rate.addr, metadata !5180, metadata !DIExpression()), !dbg !5182
  ret void, !dbg !5183
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_set_scale(ptr noundef %psmouse, i32 noundef %scale) #0 align 16 !dbg !5184 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %scale.addr = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5186, metadata !DIExpression()), !dbg !5188
  store i32 %scale, ptr %scale.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %scale.addr, metadata !5187, metadata !DIExpression()), !dbg !5189
  ret void, !dbg !5190
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5191 dso_local void @kfree(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5194 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5196, metadata !DIExpression()), !dbg !5201
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5197, metadata !DIExpression()), !dbg !5202
  %0 = load i64, ptr %size.addr, align 8, !dbg !5203
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5204
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5205

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5206
  %tobool = icmp ne i64 %2, 0, !dbg !5206
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5207

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5208
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5198, metadata !DIExpression()), !dbg !5209
  %3 = load i64, ptr %size.addr, align 8, !dbg !5210
  %cmp = icmp ugt i64 %3, 8192, !dbg !5212
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5213

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5214
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5215
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !5216
  store ptr %call, ptr %retval, align 8, !dbg !5217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5217

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5218
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !5218
  store i32 %call2, ptr %index, align 4, !dbg !5219
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5220
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5221
  %9 = ptrtoint ptr %8 to i64, !dbg !5221
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !5222
  %idxprom = zext i32 %call3 to i64, !dbg !5223
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5223
  %10 = load i32, ptr %index, align 4, !dbg !5224
  %idxprom4 = zext i32 %10 to i64, !dbg !5223
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5223
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5223
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5225
  %13 = load i64, ptr %size.addr, align 8, !dbg !5226
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !5227
  store ptr %call6, ptr %retval, align 8, !dbg !5228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5228

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5229
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5230
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5231
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !5232
  store ptr %call8, ptr %retval, align 8, !dbg !5233
  br label %return, !dbg !5233

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5234
  ret ptr %16, !dbg !5234
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5235 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !5236 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5240, metadata !DIExpression()), !dbg !5242
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5241, metadata !DIExpression()), !dbg !5243
  %0 = load i64, ptr %size.addr, align 8, !dbg !5244
  %tobool = icmp ne i64 %0, 0, !dbg !5244
  br i1 %tobool, label %if.end, label %if.then, !dbg !5246

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5247
  br label %return, !dbg !5247

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5248
  %cmp = icmp ule i64 %1, 8, !dbg !5250
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5251

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5252
  br label %return, !dbg !5252

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5253
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5255
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5256

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5257
  %cmp4 = icmp ule i64 %3, 96, !dbg !5258
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5259

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5260
  br label %return, !dbg !5260

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5261
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5263
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5264

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5265
  %cmp9 = icmp ule i64 %5, 192, !dbg !5266
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5267

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5268
  br label %return, !dbg !5268

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5269
  %cmp12 = icmp ule i64 %6, 8, !dbg !5271
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5272

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5273
  br label %return, !dbg !5273

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5274
  %cmp15 = icmp ule i64 %7, 16, !dbg !5276
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5277

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5278
  br label %return, !dbg !5278

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5279
  %cmp18 = icmp ule i64 %8, 32, !dbg !5281
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5282

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5283
  br label %return, !dbg !5283

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5284
  %cmp21 = icmp ule i64 %9, 64, !dbg !5286
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5287

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5288
  br label %return, !dbg !5288

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5289
  %cmp24 = icmp ule i64 %10, 128, !dbg !5291
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5292

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5293
  br label %return, !dbg !5293

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5294
  %cmp27 = icmp ule i64 %11, 256, !dbg !5296
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5297

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5298
  br label %return, !dbg !5298

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5299
  %cmp30 = icmp ule i64 %12, 512, !dbg !5301
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5302

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5303
  br label %return, !dbg !5303

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5304
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5306
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5307

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5308
  br label %return, !dbg !5308

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5309
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5311
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5312

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5313
  br label %return, !dbg !5313

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5314
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5316
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5317

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5318
  br label %return, !dbg !5318

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5319
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5321
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5322

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5323
  br label %return, !dbg !5323

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5324
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5326
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5327

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5328
  br label %return, !dbg !5328

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5329
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5331
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5332

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5333
  br label %return, !dbg !5333

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5334
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5336
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5337

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5338
  br label %return, !dbg !5338

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5339
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5341
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5342

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5343
  br label %return, !dbg !5343

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5344
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5346
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5347

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5348
  br label %return, !dbg !5348

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5349
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5351
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5352

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5353
  br label %return, !dbg !5353

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5354
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5356
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5357

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5358
  br label %return, !dbg !5358

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5359
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5361
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5362

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5363
  br label %return, !dbg !5363

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5364, !range !4844, !noundef !1572
  %tobool69 = trunc i8 %25 to i1, !dbg !5364
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5366

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5367

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #19, !dbg !5368, !srcloc !5371
  unreachable, !dbg !5368

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5372

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5373

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5374

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5376

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5374

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 480, i32 0, i64 12) #15, !dbg !5378, !srcloc !5380
  br label %do.end75, !dbg !5378

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5374

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5381
  br label %return, !dbg !5381

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5382
  ret i32 %26, !dbg !5382
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5383 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !5389 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5393, metadata !DIExpression()), !dbg !5395
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5394, metadata !DIExpression()), !dbg !5396
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5397
  %and = and i32 %0, 17, !dbg !5397
  %cmp = icmp eq i32 %and, 0, !dbg !5397
  %lnot = xor i1 %cmp, true, !dbg !5397
  %lnot1 = xor i1 %lnot, true, !dbg !5397
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5397
  %conv = sext i32 %lnot.ext to i64, !dbg !5397
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5397
  %tobool = icmp ne i64 %expval, 0, !dbg !5397
  br i1 %tobool, label %if.then, label %if.end, !dbg !5399

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5400
  br label %return, !dbg !5400

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5401
  %and2 = and i32 %1, 1, !dbg !5403
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5403
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5404

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5405
  br label %return, !dbg !5405

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5406
  br label %return, !dbg !5406

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5408
  ret i32 %2, !dbg !5408
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5409 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5410 dso_local void @__compiletime_assert_263() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5411 dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5415 dso_local i32 @psmouse_reset(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @focaltech_read_register(ptr noundef %ps2dev, i32 noundef %reg, ptr noundef %param) #0 align 16 !dbg !5416 {
entry:
  %retval = alloca i32, align 4
  %ps2dev.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %param.addr = alloca ptr, align 8
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !5421, metadata !DIExpression()), !dbg !5424
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5422, metadata !DIExpression()), !dbg !5425
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5423, metadata !DIExpression()), !dbg !5426
  %0 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5427
  %1 = load ptr, ptr %param.addr, align 8, !dbg !5429
  %call = call i32 @ps2_command(ptr noundef %0, ptr noundef %1, i32 noundef 230) #14, !dbg !5430
  %tobool = icmp ne i32 %call, 0, !dbg !5430
  br i1 %tobool, label %if.then, label %if.end, !dbg !5431

if.then:                                          ; preds = %entry
  store i32 -5, ptr %retval, align 4, !dbg !5432
  br label %return, !dbg !5432

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %param.addr, align 8, !dbg !5433
  %arrayidx = getelementptr i8, ptr %2, i64 0, !dbg !5433
  store i8 0, ptr %arrayidx, align 1, !dbg !5434
  %3 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5435
  %4 = load ptr, ptr %param.addr, align 8, !dbg !5437
  %call1 = call i32 @ps2_command(ptr noundef %3, ptr noundef %4, i32 noundef 4328) #14, !dbg !5438
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5438
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5439

if.then3:                                         ; preds = %if.end
  store i32 -5, ptr %retval, align 4, !dbg !5440
  br label %return, !dbg !5440

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5441
  %6 = load ptr, ptr %param.addr, align 8, !dbg !5443
  %call5 = call i32 @ps2_command(ptr noundef %5, ptr noundef %6, i32 noundef 4328) #14, !dbg !5444
  %tobool6 = icmp ne i32 %call5, 0, !dbg !5444
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5445

if.then7:                                         ; preds = %if.end4
  store i32 -5, ptr %retval, align 4, !dbg !5446
  br label %return, !dbg !5446

if.end8:                                          ; preds = %if.end4
  %7 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5447
  %8 = load ptr, ptr %param.addr, align 8, !dbg !5449
  %call9 = call i32 @ps2_command(ptr noundef %7, ptr noundef %8, i32 noundef 4328) #14, !dbg !5450
  %tobool10 = icmp ne i32 %call9, 0, !dbg !5450
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5451

if.then11:                                        ; preds = %if.end8
  store i32 -5, ptr %retval, align 4, !dbg !5452
  br label %return, !dbg !5452

if.end12:                                         ; preds = %if.end8
  %9 = load i32, ptr %reg.addr, align 4, !dbg !5453
  %conv = trunc i32 %9 to i8, !dbg !5453
  %10 = load ptr, ptr %param.addr, align 8, !dbg !5454
  %arrayidx13 = getelementptr i8, ptr %10, i64 0, !dbg !5454
  store i8 %conv, ptr %arrayidx13, align 1, !dbg !5455
  %11 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5456
  %12 = load ptr, ptr %param.addr, align 8, !dbg !5458
  %call14 = call i32 @ps2_command(ptr noundef %11, ptr noundef %12, i32 noundef 4328) #14, !dbg !5459
  %tobool15 = icmp ne i32 %call14, 0, !dbg !5459
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5460

if.then16:                                        ; preds = %if.end12
  store i32 -5, ptr %retval, align 4, !dbg !5461
  br label %return, !dbg !5461

if.end17:                                         ; preds = %if.end12
  %13 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5462
  %14 = load ptr, ptr %param.addr, align 8, !dbg !5464
  %call18 = call i32 @ps2_command(ptr noundef %13, ptr noundef %14, i32 noundef 1001) #14, !dbg !5465
  %tobool19 = icmp ne i32 %call18, 0, !dbg !5465
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5466

if.then20:                                        ; preds = %if.end17
  store i32 -5, ptr %retval, align 4, !dbg !5467
  br label %return, !dbg !5467

if.end21:                                         ; preds = %if.end17
  store i32 0, ptr %retval, align 4, !dbg !5468
  br label %return, !dbg !5468

return:                                           ; preds = %if.end21, %if.then20, %if.then16, %if.then11, %if.then7, %if.then3, %if.then
  %15 = load i32, ptr %retval, align 4, !dbg !5469
  ret i32 %15, !dbg !5469
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5470 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5477, metadata !DIExpression()), !dbg !5481
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5478, metadata !DIExpression()), !dbg !5482
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !5483
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5479, metadata !DIExpression()), !dbg !5484
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5485
  %rem = urem i64 %0, 64, !dbg !5485
  %shl = shl i64 1, %rem, !dbg !5485
  store i64 %shl, ptr %mask, align 8, !dbg !5484
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !5486
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5480, metadata !DIExpression()), !dbg !5487
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5488
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5489
  %div = udiv i64 %2, 64, !dbg !5489
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5490
  store ptr %add.ptr, ptr %p, align 8, !dbg !5487
  %3 = load i64, ptr %mask, align 8, !dbg !5491
  %not = xor i64 %3, -1, !dbg !5492
  %4 = load ptr, ptr %p, align 8, !dbg !5493
  %5 = load i64, ptr %4, align 8, !dbg !5494
  %and = and i64 %5, %not, !dbg !5494
  store i64 %and, ptr %4, align 8, !dbg !5494
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !5495
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !5495
  ret void, !dbg !5495
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5496 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5499, metadata !DIExpression()), !dbg !5501
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5500, metadata !DIExpression()), !dbg !5502
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5503
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5504
  %div = udiv i64 %1, 64, !dbg !5504
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5505
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !5506
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5507
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5508
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !5509
  ret void, !dbg !5510
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5511 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5513, metadata !DIExpression()), !dbg !5517
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5514, metadata !DIExpression()), !dbg !5518
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !5519
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5515, metadata !DIExpression()), !dbg !5520
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5521
  %rem = urem i64 %0, 64, !dbg !5521
  %shl = shl i64 1, %rem, !dbg !5521
  store i64 %shl, ptr %mask, align 8, !dbg !5520
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5516, metadata !DIExpression()), !dbg !5523
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5524
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5525
  %div = udiv i64 %2, 64, !dbg !5525
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5526
  store ptr %add.ptr, ptr %p, align 8, !dbg !5523
  %3 = load i64, ptr %mask, align 8, !dbg !5527
  %4 = load ptr, ptr %p, align 8, !dbg !5528
  %5 = load i64, ptr %4, align 8, !dbg !5529
  %or = or i64 %5, %3, !dbg !5529
  store i64 %or, ptr %4, align 8, !dbg !5529
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !5530
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !5530
  ret void, !dbg !5530
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5531 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5533, metadata !DIExpression()), !dbg !5535
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5534, metadata !DIExpression()), !dbg !5536
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5537
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5538
  %div = udiv i64 %1, 64, !dbg !5538
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5539
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !5540
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5541
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5542
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !5543
  ret void, !dbg !5544
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5545 dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5548 dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !5551 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5559, metadata !DIExpression()), !dbg !5561
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5560, metadata !DIExpression()), !dbg !5562
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5563
  %1 = load i64, ptr %size.addr, align 8, !dbg !5564
  %conv = trunc i64 %1 to i32, !dbg !5564
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !5565
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5566
  %3 = load i64, ptr %size.addr, align 8, !dbg !5566
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #14, !dbg !5566
  ret void, !dbg !5567
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5568 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5571, metadata !DIExpression()), !dbg !5573
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5572, metadata !DIExpression()), !dbg !5574
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5575
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5576
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !5577, !srcloc !5578
  ret void, !dbg !5579
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #13 align 16 !dbg !5580 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5585, metadata !DIExpression()), !dbg !5587
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5586, metadata !DIExpression()), !dbg !5588
  ret i1 true, !dbg !5589
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #13 align 16 !dbg !5590 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5595, metadata !DIExpression()), !dbg !5598
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5596, metadata !DIExpression()), !dbg !5599
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5597, metadata !DIExpression()), !dbg !5600
  ret void, !dbg !5601
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5602 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5604, metadata !DIExpression()), !dbg !5606
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5605, metadata !DIExpression()), !dbg !5607
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5608
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5609
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !5610, !srcloc !5611
  ret void, !dbg !5612
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_process_packet(ptr noundef %psmouse) #0 align 16 !dbg !5613 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %packet = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5615, metadata !DIExpression()), !dbg !5617
  call void @llvm.lifetime.start.p0(i64 8, ptr %packet) #15, !dbg !5618
  call void @llvm.dbg.declare(metadata ptr %packet, metadata !5616, metadata !DIExpression()), !dbg !5619
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5620
  %packet1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7, !dbg !5621
  %arraydecay = getelementptr inbounds [8 x i8], ptr %packet1, i64 0, i64 0, !dbg !5620
  store ptr %arraydecay, ptr %packet, align 8, !dbg !5619
  %1 = load ptr, ptr %packet, align 8, !dbg !5622
  %arrayidx = getelementptr i8, ptr %1, i64 0, !dbg !5622
  %2 = load i8, ptr %arrayidx, align 1, !dbg !5622
  %conv = zext i8 %2 to i32, !dbg !5622
  %and = and i32 %conv, 15, !dbg !5623
  switch i32 %and, label %sw.default [
    i32 3, label %sw.bb
    i32 6, label %sw.bb2
    i32 9, label %sw.bb3
  ], !dbg !5624

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !5625
  %4 = load ptr, ptr %packet, align 8, !dbg !5627
  call void @focaltech_process_touch_packet(ptr noundef %3, ptr noundef %4) #14, !dbg !5628
  br label %sw.epilog, !dbg !5629

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %psmouse.addr, align 8, !dbg !5630
  %6 = load ptr, ptr %packet, align 8, !dbg !5631
  call void @focaltech_process_abs_packet(ptr noundef %5, ptr noundef %6) #14, !dbg !5632
  br label %sw.epilog, !dbg !5633

sw.bb3:                                           ; preds = %entry
  %7 = load ptr, ptr %psmouse.addr, align 8, !dbg !5634
  %8 = load ptr, ptr %packet, align 8, !dbg !5635
  call void @focaltech_process_rel_packet(ptr noundef %7, ptr noundef %8) #14, !dbg !5636
  br label %sw.epilog, !dbg !5637

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !5638

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !5640

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5640

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %psmouse.addr, align 8, !dbg !5638
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 2, !dbg !5638
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !5638
  %10 = load ptr, ptr %serio, align 8, !dbg !5638
  %dev = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18, !dbg !5638
  %11 = load ptr, ptr %packet, align 8, !dbg !5638
  %arrayidx4 = getelementptr i8, ptr %11, i64 0, !dbg !5638
  %12 = load i8, ptr %arrayidx4, align 1, !dbg !5638
  %conv5 = zext i8 %12 to i32, !dbg !5638
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.8, i32 noundef %conv5) #17, !dbg !5638
  br label %sw.epilog, !dbg !5642

sw.epilog:                                        ; preds = %do.end, %sw.bb3, %sw.bb2, %sw.bb
  %13 = load ptr, ptr %psmouse.addr, align 8, !dbg !5643
  call void @focaltech_report_state(ptr noundef %13) #14, !dbg !5644
  call void @llvm.lifetime.end.p0(i64 8, ptr %packet) #15, !dbg !5645
  ret void, !dbg !5645
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_process_touch_packet(ptr noundef %psmouse, ptr noundef %packet) #0 align 16 !dbg !5646 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %packet.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %state = alloca ptr, align 8
  %fingers = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5650, metadata !DIExpression()), !dbg !5657
  store ptr %packet, ptr %packet.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %packet.addr, metadata !5651, metadata !DIExpression()), !dbg !5658
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #15, !dbg !5659
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !5652, metadata !DIExpression()), !dbg !5660
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5661
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5662
  %1 = load ptr, ptr %private, align 8, !dbg !5662
  store ptr %1, ptr %priv, align 8, !dbg !5660
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #15, !dbg !5663
  call void @llvm.dbg.declare(metadata ptr %state, metadata !5653, metadata !DIExpression()), !dbg !5664
  %2 = load ptr, ptr %priv, align 8, !dbg !5665
  %state1 = getelementptr inbounds %struct.focaltech_data, ptr %2, i32 0, i32 2, !dbg !5666
  store ptr %state1, ptr %state, align 8, !dbg !5664
  call void @llvm.lifetime.start.p0(i64 1, ptr %fingers) #15, !dbg !5667
  call void @llvm.dbg.declare(metadata ptr %fingers, metadata !5655, metadata !DIExpression()), !dbg !5668
  %3 = load ptr, ptr %packet.addr, align 8, !dbg !5669
  %arrayidx = getelementptr i8, ptr %3, i64 1, !dbg !5669
  %4 = load i8, ptr %arrayidx, align 1, !dbg !5669
  store i8 %4, ptr %fingers, align 1, !dbg !5668
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5670
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5656, metadata !DIExpression()), !dbg !5671
  %5 = load ptr, ptr %packet.addr, align 8, !dbg !5672
  %arrayidx2 = getelementptr i8, ptr %5, i64 0, !dbg !5672
  %6 = load i8, ptr %arrayidx2, align 1, !dbg !5672
  %conv = zext i8 %6 to i32, !dbg !5672
  %shr = ashr i32 %conv, 4, !dbg !5673
  %and = and i32 %shr, 1, !dbg !5674
  %tobool = icmp ne i32 %and, 0, !dbg !5675
  %7 = load ptr, ptr %state, align 8, !dbg !5676
  %pressed = getelementptr inbounds %struct.focaltech_hw_state, ptr %7, i32 0, i32 2, !dbg !5677
  %frombool = zext i1 %tobool to i8, !dbg !5678
  store i8 %frombool, ptr %pressed, align 4, !dbg !5678
  store i32 0, ptr %i, align 4, !dbg !5679
  br label %for.cond, !dbg !5681

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %i, align 4, !dbg !5682
  %cmp = icmp slt i32 %8, 5, !dbg !5684
  br i1 %cmp, label %for.body, label %for.end, !dbg !5685

for.body:                                         ; preds = %for.cond
  %9 = load i8, ptr %fingers, align 1, !dbg !5686
  %conv4 = zext i8 %9 to i32, !dbg !5686
  %and5 = and i32 %conv4, 1, !dbg !5688
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5686
  %10 = load ptr, ptr %state, align 8, !dbg !5689
  %fingers7 = getelementptr inbounds %struct.focaltech_hw_state, ptr %10, i32 0, i32 0, !dbg !5690
  %11 = load i32, ptr %i, align 4, !dbg !5691
  %idxprom = sext i32 %11 to i64, !dbg !5689
  %arrayidx8 = getelementptr [5 x %struct.focaltech_finger_state], ptr %fingers7, i64 0, i64 %idxprom, !dbg !5689
  %active = getelementptr inbounds %struct.focaltech_finger_state, ptr %arrayidx8, i32 0, i32 0, !dbg !5692
  %frombool9 = zext i1 %tobool6 to i8, !dbg !5693
  store i8 %frombool9, ptr %active, align 4, !dbg !5693
  %12 = load ptr, ptr %state, align 8, !dbg !5694
  %fingers10 = getelementptr inbounds %struct.focaltech_hw_state, ptr %12, i32 0, i32 0, !dbg !5696
  %13 = load i32, ptr %i, align 4, !dbg !5697
  %idxprom11 = sext i32 %13 to i64, !dbg !5694
  %arrayidx12 = getelementptr [5 x %struct.focaltech_finger_state], ptr %fingers10, i64 0, i64 %idxprom11, !dbg !5694
  %active13 = getelementptr inbounds %struct.focaltech_finger_state, ptr %arrayidx12, i32 0, i32 0, !dbg !5698
  %14 = load i8, ptr %active13, align 4, !dbg !5698, !range !4844, !noundef !1572
  %tobool14 = trunc i8 %14 to i1, !dbg !5698
  br i1 %tobool14, label %if.end, label %if.then, !dbg !5699

if.then:                                          ; preds = %for.body
  %15 = load ptr, ptr %state, align 8, !dbg !5700
  %fingers15 = getelementptr inbounds %struct.focaltech_hw_state, ptr %15, i32 0, i32 0, !dbg !5702
  %16 = load i32, ptr %i, align 4, !dbg !5703
  %idxprom16 = sext i32 %16 to i64, !dbg !5700
  %arrayidx17 = getelementptr [5 x %struct.focaltech_finger_state], ptr %fingers15, i64 0, i64 %idxprom16, !dbg !5700
  %valid = getelementptr inbounds %struct.focaltech_finger_state, ptr %arrayidx17, i32 0, i32 1, !dbg !5704
  store i8 0, ptr %valid, align 1, !dbg !5705
  br label %if.end, !dbg !5706

if.end:                                           ; preds = %if.then, %for.body
  %17 = load i8, ptr %fingers, align 1, !dbg !5707
  %conv18 = zext i8 %17 to i32, !dbg !5707
  %shr19 = ashr i32 %conv18, 1, !dbg !5707
  %conv20 = trunc i32 %shr19 to i8, !dbg !5707
  store i8 %conv20, ptr %fingers, align 1, !dbg !5707
  br label %for.inc, !dbg !5708

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %i, align 4, !dbg !5709
  %inc = add i32 %18, 1, !dbg !5709
  store i32 %inc, ptr %i, align 4, !dbg !5709
  br label %for.cond, !dbg !5710, !llvm.loop !5711

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5715
  call void @llvm.lifetime.end.p0(i64 1, ptr %fingers) #15, !dbg !5715
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #15, !dbg !5715
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #15, !dbg !5715
  ret void, !dbg !5715
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_process_abs_packet(ptr noundef %psmouse, ptr noundef %packet) #0 align 16 !dbg !5716 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %packet.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %state = alloca ptr, align 8
  %finger = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5718, metadata !DIExpression()), !dbg !5723
  store ptr %packet, ptr %packet.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %packet.addr, metadata !5719, metadata !DIExpression()), !dbg !5724
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #15, !dbg !5725
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !5720, metadata !DIExpression()), !dbg !5726
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5727
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5728
  %1 = load ptr, ptr %private, align 8, !dbg !5728
  store ptr %1, ptr %priv, align 8, !dbg !5726
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #15, !dbg !5729
  call void @llvm.dbg.declare(metadata ptr %state, metadata !5721, metadata !DIExpression()), !dbg !5730
  %2 = load ptr, ptr %priv, align 8, !dbg !5731
  %state1 = getelementptr inbounds %struct.focaltech_data, ptr %2, i32 0, i32 2, !dbg !5732
  store ptr %state1, ptr %state, align 8, !dbg !5730
  call void @llvm.lifetime.start.p0(i64 4, ptr %finger) #15, !dbg !5733
  call void @llvm.dbg.declare(metadata ptr %finger, metadata !5722, metadata !DIExpression()), !dbg !5734
  %3 = load ptr, ptr %packet.addr, align 8, !dbg !5735
  %arrayidx = getelementptr i8, ptr %3, i64 1, !dbg !5735
  %4 = load i8, ptr %arrayidx, align 1, !dbg !5735
  %conv = zext i8 %4 to i32, !dbg !5735
  %shr = ashr i32 %conv, 4, !dbg !5736
  %sub = sub i32 %shr, 1, !dbg !5737
  store i32 %sub, ptr %finger, align 4, !dbg !5738
  %5 = load i32, ptr %finger, align 4, !dbg !5739
  %cmp = icmp uge i32 %5, 5, !dbg !5741
  br i1 %cmp, label %if.then, label %if.end, !dbg !5742

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5743

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5746

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5746

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %psmouse.addr, align 8, !dbg !5743
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 2, !dbg !5743
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !5743
  %7 = load ptr, ptr %serio, align 8, !dbg !5743
  %dev = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18, !dbg !5743
  %8 = load i32, ptr %finger, align 4, !dbg !5743
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.9, i32 noundef %8) #17, !dbg !5743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5748

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %packet.addr, align 8, !dbg !5749
  %arrayidx3 = getelementptr i8, ptr %9, i64 0, !dbg !5749
  %10 = load i8, ptr %arrayidx3, align 1, !dbg !5749
  %conv4 = zext i8 %10 to i32, !dbg !5749
  %shr5 = ashr i32 %conv4, 4, !dbg !5750
  %and = and i32 %shr5, 1, !dbg !5751
  %tobool = icmp ne i32 %and, 0, !dbg !5752
  %11 = load ptr, ptr %state, align 8, !dbg !5753
  %pressed = getelementptr inbounds %struct.focaltech_hw_state, ptr %11, i32 0, i32 2, !dbg !5754
  %frombool = zext i1 %tobool to i8, !dbg !5755
  store i8 %frombool, ptr %pressed, align 4, !dbg !5755
  %12 = load ptr, ptr %packet.addr, align 8, !dbg !5756
  %arrayidx6 = getelementptr i8, ptr %12, i64 1, !dbg !5756
  %13 = load i8, ptr %arrayidx6, align 1, !dbg !5756
  %conv7 = zext i8 %13 to i32, !dbg !5756
  %and8 = and i32 %conv7, 15, !dbg !5757
  %shl = shl i32 %and8, 8, !dbg !5758
  %14 = load ptr, ptr %packet.addr, align 8, !dbg !5759
  %arrayidx9 = getelementptr i8, ptr %14, i64 2, !dbg !5759
  %15 = load i8, ptr %arrayidx9, align 1, !dbg !5759
  %conv10 = zext i8 %15 to i32, !dbg !5759
  %or = or i32 %shl, %conv10, !dbg !5760
  %16 = load ptr, ptr %state, align 8, !dbg !5761
  %fingers = getelementptr inbounds %struct.focaltech_hw_state, ptr %16, i32 0, i32 0, !dbg !5762
  %17 = load i32, ptr %finger, align 4, !dbg !5763
  %idxprom = zext i32 %17 to i64, !dbg !5761
  %arrayidx11 = getelementptr [5 x %struct.focaltech_finger_state], ptr %fingers, i64 0, i64 %idxprom, !dbg !5761
  %x = getelementptr inbounds %struct.focaltech_finger_state, ptr %arrayidx11, i32 0, i32 2, !dbg !5764
  store i32 %or, ptr %x, align 4, !dbg !5765
  %18 = load ptr, ptr %packet.addr, align 8, !dbg !5766
  %arrayidx12 = getelementptr i8, ptr %18, i64 3, !dbg !5766
  %19 = load i8, ptr %arrayidx12, align 1, !dbg !5766
  %conv13 = zext i8 %19 to i32, !dbg !5766
  %shl14 = shl i32 %conv13, 8, !dbg !5767
  %20 = load ptr, ptr %packet.addr, align 8, !dbg !5768
  %arrayidx15 = getelementptr i8, ptr %20, i64 4, !dbg !5768
  %21 = load i8, ptr %arrayidx15, align 1, !dbg !5768
  %conv16 = zext i8 %21 to i32, !dbg !5768
  %or17 = or i32 %shl14, %conv16, !dbg !5769
  %22 = load ptr, ptr %state, align 8, !dbg !5770
  %fingers18 = getelementptr inbounds %struct.focaltech_hw_state, ptr %22, i32 0, i32 0, !dbg !5771
  %23 = load i32, ptr %finger, align 4, !dbg !5772
  %idxprom19 = zext i32 %23 to i64, !dbg !5770
  %arrayidx20 = getelementptr [5 x %struct.focaltech_finger_state], ptr %fingers18, i64 0, i64 %idxprom19, !dbg !5770
  %y = getelementptr inbounds %struct.focaltech_finger_state, ptr %arrayidx20, i32 0, i32 3, !dbg !5773
  store i32 %or17, ptr %y, align 4, !dbg !5774
  %24 = load ptr, ptr %packet.addr, align 8, !dbg !5775
  %arrayidx21 = getelementptr i8, ptr %24, i64 5, !dbg !5775
  %25 = load i8, ptr %arrayidx21, align 1, !dbg !5775
  %conv22 = zext i8 %25 to i32, !dbg !5775
  %shr23 = ashr i32 %conv22, 4, !dbg !5776
  %26 = load ptr, ptr %state, align 8, !dbg !5777
  %width = getelementptr inbounds %struct.focaltech_hw_state, ptr %26, i32 0, i32 1, !dbg !5778
  store i32 %shr23, ptr %width, align 4, !dbg !5779
  %27 = load ptr, ptr %state, align 8, !dbg !5780
  %fingers24 = getelementptr inbounds %struct.focaltech_hw_state, ptr %27, i32 0, i32 0, !dbg !5781
  %28 = load i32, ptr %finger, align 4, !dbg !5782
  %idxprom25 = zext i32 %28 to i64, !dbg !5780
  %arrayidx26 = getelementptr [5 x %struct.focaltech_finger_state], ptr %fingers24, i64 0, i64 %idxprom25, !dbg !5780
  %valid = getelementptr inbounds %struct.focaltech_finger_state, ptr %arrayidx26, i32 0, i32 1, !dbg !5783
  store i8 1, ptr %valid, align 1, !dbg !5784
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5785
  br label %cleanup, !dbg !5785

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %finger) #15, !dbg !5785
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #15, !dbg !5785
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #15, !dbg !5785
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5785

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_process_rel_packet(ptr noundef %psmouse, ptr noundef %packet) #0 align 16 !dbg !5786 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %packet.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %state = alloca ptr, align 8
  %finger1 = alloca i32, align 4
  %finger2 = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5788, metadata !DIExpression()), !dbg !5794
  store ptr %packet, ptr %packet.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %packet.addr, metadata !5789, metadata !DIExpression()), !dbg !5795
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #15, !dbg !5796
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !5790, metadata !DIExpression()), !dbg !5797
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5798
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5799
  %1 = load ptr, ptr %private, align 8, !dbg !5799
  store ptr %1, ptr %priv, align 8, !dbg !5797
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #15, !dbg !5800
  call void @llvm.dbg.declare(metadata ptr %state, metadata !5791, metadata !DIExpression()), !dbg !5801
  %2 = load ptr, ptr %priv, align 8, !dbg !5802
  %state1 = getelementptr inbounds %struct.focaltech_data, ptr %2, i32 0, i32 2, !dbg !5803
  store ptr %state1, ptr %state, align 8, !dbg !5801
  call void @llvm.lifetime.start.p0(i64 4, ptr %finger1) #15, !dbg !5804
  call void @llvm.dbg.declare(metadata ptr %finger1, metadata !5792, metadata !DIExpression()), !dbg !5805
  call void @llvm.lifetime.start.p0(i64 4, ptr %finger2) #15, !dbg !5804
  call void @llvm.dbg.declare(metadata ptr %finger2, metadata !5793, metadata !DIExpression()), !dbg !5806
  %3 = load ptr, ptr %packet.addr, align 8, !dbg !5807
  %arrayidx = getelementptr i8, ptr %3, i64 0, !dbg !5807
  %4 = load i8, ptr %arrayidx, align 1, !dbg !5807
  %conv = zext i8 %4 to i32, !dbg !5807
  %shr = ashr i32 %conv, 7, !dbg !5808
  %tobool = icmp ne i32 %shr, 0, !dbg !5807
  %5 = load ptr, ptr %state, align 8, !dbg !5809
  %pressed = getelementptr inbounds %struct.focaltech_hw_state, ptr %5, i32 0, i32 2, !dbg !5810
  %frombool = zext i1 %tobool to i8, !dbg !5811
  store i8 %frombool, ptr %pressed, align 4, !dbg !5811
  %6 = load ptr, ptr %packet.addr, align 8, !dbg !5812
  %arrayidx2 = getelementptr i8, ptr %6, i64 0, !dbg !5812
  %7 = load i8, ptr %arrayidx2, align 1, !dbg !5812
  %conv3 = zext i8 %7 to i32, !dbg !5812
  %shr4 = ashr i32 %conv3, 4, !dbg !5813
  %and = and i32 %shr4, 7, !dbg !5814
  %sub = sub i32 %and, 1, !dbg !5815
  store i32 %sub, ptr %finger1, align 4, !dbg !5816
  %8 = load i32, ptr %finger1, align 4, !dbg !5817
  %cmp = icmp slt i32 %8, 5, !dbg !5819
  br i1 %cmp, label %if.then, label %if.else, !dbg !5820

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %packet.addr, align 8, !dbg !5821
  %arrayidx6 = getelementptr i8, ptr %9, i64 1, !dbg !5821
  %10 = load i8, ptr %arrayidx6, align 1, !dbg !5821
  %conv7 = sext i8 %10 to i32, !dbg !5823
  %11 = load ptr, ptr %state, align 8, !dbg !5824
  %fingers = getelementptr inbounds %struct.focaltech_hw_state, ptr %11, i32 0, i32 0, !dbg !5825
  %12 = load i32, ptr %finger1, align 4, !dbg !5826
  %idxprom = sext i32 %12 to i64, !dbg !5824
  %arrayidx8 = getelementptr [5 x %struct.focaltech_finger_state], ptr %fingers, i64 0, i64 %idxprom, !dbg !5824
  %x = getelementptr inbounds %struct.focaltech_finger_state, ptr %arrayidx8, i32 0, i32 2, !dbg !5827
  %13 = load i32, ptr %x, align 4, !dbg !5828
  %add = add i32 %13, %conv7, !dbg !5828
  store i32 %add, ptr %x, align 4, !dbg !5828
  %14 = load ptr, ptr %packet.addr, align 8, !dbg !5829
  %arrayidx9 = getelementptr i8, ptr %14, i64 2, !dbg !5829
  %15 = load i8, ptr %arrayidx9, align 1, !dbg !5829
  %conv10 = sext i8 %15 to i32, !dbg !5830
  %16 = load ptr, ptr %state, align 8, !dbg !5831
  %fingers11 = getelementptr inbounds %struct.focaltech_hw_state, ptr %16, i32 0, i32 0, !dbg !5832
  %17 = load i32, ptr %finger1, align 4, !dbg !5833
  %idxprom12 = sext i32 %17 to i64, !dbg !5831
  %arrayidx13 = getelementptr [5 x %struct.focaltech_finger_state], ptr %fingers11, i64 0, i64 %idxprom12, !dbg !5831
  %y = getelementptr inbounds %struct.focaltech_finger_state, ptr %arrayidx13, i32 0, i32 3, !dbg !5834
  %18 = load i32, ptr %y, align 4, !dbg !5835
  %add14 = add i32 %18, %conv10, !dbg !5835
  store i32 %add14, ptr %y, align 4, !dbg !5835
  br label %if.end, !dbg !5836

if.else:                                          ; preds = %entry
  br label %do.body, !dbg !5837

do.body:                                          ; preds = %if.else
  br label %do.cond, !dbg !5840

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5840

do.end:                                           ; preds = %do.cond
  %19 = load ptr, ptr %psmouse.addr, align 8, !dbg !5837
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %19, i32 0, i32 2, !dbg !5837
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !5837
  %20 = load ptr, ptr %serio, align 8, !dbg !5837
  %dev = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18, !dbg !5837
  %21 = load i32, ptr %finger1, align 4, !dbg !5837
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.10, i32 noundef %21) #17, !dbg !5837
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %22 = load ptr, ptr %packet.addr, align 8, !dbg !5842
  %arrayidx15 = getelementptr i8, ptr %22, i64 3, !dbg !5842
  %23 = load i8, ptr %arrayidx15, align 1, !dbg !5842
  %conv16 = zext i8 %23 to i32, !dbg !5842
  %shr17 = ashr i32 %conv16, 4, !dbg !5843
  %and18 = and i32 %shr17, 7, !dbg !5844
  %sub19 = sub i32 %and18, 1, !dbg !5845
  store i32 %sub19, ptr %finger2, align 4, !dbg !5846
  %24 = load i32, ptr %finger2, align 4, !dbg !5847
  %cmp20 = icmp slt i32 %24, 5, !dbg !5849
  br i1 %cmp20, label %if.then22, label %if.end37, !dbg !5850

if.then22:                                        ; preds = %if.end
  %25 = load ptr, ptr %packet.addr, align 8, !dbg !5851
  %arrayidx23 = getelementptr i8, ptr %25, i64 4, !dbg !5851
  %26 = load i8, ptr %arrayidx23, align 1, !dbg !5851
  %conv24 = sext i8 %26 to i32, !dbg !5853
  %27 = load ptr, ptr %state, align 8, !dbg !5854
  %fingers25 = getelementptr inbounds %struct.focaltech_hw_state, ptr %27, i32 0, i32 0, !dbg !5855
  %28 = load i32, ptr %finger2, align 4, !dbg !5856
  %idxprom26 = sext i32 %28 to i64, !dbg !5854
  %arrayidx27 = getelementptr [5 x %struct.focaltech_finger_state], ptr %fingers25, i64 0, i64 %idxprom26, !dbg !5854
  %x28 = getelementptr inbounds %struct.focaltech_finger_state, ptr %arrayidx27, i32 0, i32 2, !dbg !5857
  %29 = load i32, ptr %x28, align 4, !dbg !5858
  %add29 = add i32 %29, %conv24, !dbg !5858
  store i32 %add29, ptr %x28, align 4, !dbg !5858
  %30 = load ptr, ptr %packet.addr, align 8, !dbg !5859
  %arrayidx30 = getelementptr i8, ptr %30, i64 5, !dbg !5859
  %31 = load i8, ptr %arrayidx30, align 1, !dbg !5859
  %conv31 = sext i8 %31 to i32, !dbg !5860
  %32 = load ptr, ptr %state, align 8, !dbg !5861
  %fingers32 = getelementptr inbounds %struct.focaltech_hw_state, ptr %32, i32 0, i32 0, !dbg !5862
  %33 = load i32, ptr %finger2, align 4, !dbg !5863
  %idxprom33 = sext i32 %33 to i64, !dbg !5861
  %arrayidx34 = getelementptr [5 x %struct.focaltech_finger_state], ptr %fingers32, i64 0, i64 %idxprom33, !dbg !5861
  %y35 = getelementptr inbounds %struct.focaltech_finger_state, ptr %arrayidx34, i32 0, i32 3, !dbg !5864
  %34 = load i32, ptr %y35, align 4, !dbg !5865
  %add36 = add i32 %34, %conv31, !dbg !5865
  store i32 %add36, ptr %y35, align 4, !dbg !5865
  br label %if.end37, !dbg !5866

if.end37:                                         ; preds = %if.then22, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %finger2) #15, !dbg !5867
  call void @llvm.lifetime.end.p0(i64 4, ptr %finger1) #15, !dbg !5867
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #15, !dbg !5867
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #15, !dbg !5867
  ret void, !dbg !5867
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @focaltech_report_state(ptr noundef %psmouse) #0 align 16 !dbg !5868 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %state = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %i = alloca i32, align 4
  %finger = alloca ptr, align 8
  %active = alloca i8, align 1
  %clamped_x = alloca i32, align 4
  %clamped_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___val267 = alloca i32, align 4
  %__UNIQUE_ID___lo268 = alloca i32, align 4
  %__UNIQUE_ID___hi269 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %__UNIQUE_ID___val270 = alloca i32, align 4
  %__UNIQUE_ID___lo271 = alloca i32, align 4
  %__UNIQUE_ID___hi272 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5870, metadata !DIExpression()), !dbg !5895
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #15, !dbg !5896
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !5871, metadata !DIExpression()), !dbg !5897
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5898
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5899
  %1 = load ptr, ptr %private, align 8, !dbg !5899
  store ptr %1, ptr %priv, align 8, !dbg !5897
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #15, !dbg !5900
  call void @llvm.dbg.declare(metadata ptr %state, metadata !5872, metadata !DIExpression()), !dbg !5901
  %2 = load ptr, ptr %priv, align 8, !dbg !5902
  %state1 = getelementptr inbounds %struct.focaltech_data, ptr %2, i32 0, i32 2, !dbg !5903
  store ptr %state1, ptr %state, align 8, !dbg !5901
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5904
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5873, metadata !DIExpression()), !dbg !5905
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !5906
  %dev2 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 1, !dbg !5907
  %4 = load ptr, ptr %dev2, align 8, !dbg !5907
  store ptr %4, ptr %dev, align 8, !dbg !5905
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5908
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5874, metadata !DIExpression()), !dbg !5909
  store i32 0, ptr %i, align 4, !dbg !5910
  br label %for.cond, !dbg !5911

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !dbg !5912
  %cmp = icmp slt i32 %5, 5, !dbg !5913
  br i1 %cmp, label %for.body, label %for.end, !dbg !5914

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %finger) #15, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %finger, metadata !5875, metadata !DIExpression()), !dbg !5916
  %6 = load ptr, ptr %state, align 8, !dbg !5917
  %fingers = getelementptr inbounds %struct.focaltech_hw_state, ptr %6, i32 0, i32 0, !dbg !5918
  %7 = load i32, ptr %i, align 4, !dbg !5919
  %idxprom = sext i32 %7 to i64, !dbg !5917
  %arrayidx = getelementptr [5 x %struct.focaltech_finger_state], ptr %fingers, i64 0, i64 %idxprom, !dbg !5917
  store ptr %arrayidx, ptr %finger, align 8, !dbg !5916
  call void @llvm.lifetime.start.p0(i64 1, ptr %active) #15, !dbg !5920
  call void @llvm.dbg.declare(metadata ptr %active, metadata !5880, metadata !DIExpression()), !dbg !5921
  %8 = load ptr, ptr %finger, align 8, !dbg !5922
  %active3 = getelementptr inbounds %struct.focaltech_finger_state, ptr %8, i32 0, i32 0, !dbg !5923
  %9 = load i8, ptr %active3, align 4, !dbg !5923, !range !4844, !noundef !1572
  %tobool = trunc i8 %9 to i1, !dbg !5923
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5924

land.rhs:                                         ; preds = %for.body
  %10 = load ptr, ptr %finger, align 8, !dbg !5925
  %valid = getelementptr inbounds %struct.focaltech_finger_state, ptr %10, i32 0, i32 1, !dbg !5926
  %11 = load i8, ptr %valid, align 1, !dbg !5926, !range !4844, !noundef !1572
  %tobool4 = trunc i8 %11 to i1, !dbg !5926
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %12 = phi i1 [ false, %for.body ], [ %tobool4, %land.rhs ], !dbg !5927
  %frombool = zext i1 %12 to i8, !dbg !5921
  store i8 %frombool, ptr %active, align 1, !dbg !5921
  %13 = load ptr, ptr %dev, align 8, !dbg !5928
  %14 = load i32, ptr %i, align 4, !dbg !5929
  call void @input_mt_slot(ptr noundef %13, i32 noundef %14) #14, !dbg !5930
  %15 = load ptr, ptr %dev, align 8, !dbg !5931
  %16 = load i8, ptr %active, align 1, !dbg !5932, !range !4844, !noundef !1572
  %tobool5 = trunc i8 %16 to i1, !dbg !5932
  %call = call zeroext i1 @input_mt_report_slot_state(ptr noundef %15, i32 noundef 0, i1 noundef zeroext %tobool5) #14, !dbg !5933
  %17 = load i8, ptr %active, align 1, !dbg !5934, !range !4844, !noundef !1572
  %tobool6 = trunc i8 %17 to i1, !dbg !5934
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5935

if.then:                                          ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %clamped_x) #15, !dbg !5936
  call void @llvm.dbg.declare(metadata ptr %clamped_x, metadata !5881, metadata !DIExpression()), !dbg !5937
  call void @llvm.lifetime.start.p0(i64 4, ptr %clamped_y) #15, !dbg !5936
  call void @llvm.dbg.declare(metadata ptr %clamped_y, metadata !5884, metadata !DIExpression()), !dbg !5938
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val267) #15, !dbg !5939
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val267, metadata !5885, metadata !DIExpression()), !dbg !5939
  %18 = load ptr, ptr %finger, align 8, !dbg !5939
  %x = getelementptr inbounds %struct.focaltech_finger_state, ptr %18, i32 0, i32 2, !dbg !5939
  %19 = load i32, ptr %x, align 4, !dbg !5939
  store i32 %19, ptr %__UNIQUE_ID___val267, align 4, !dbg !5939
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo268) #15, !dbg !5939
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo268, metadata !5888, metadata !DIExpression()), !dbg !5939
  store i32 0, ptr %__UNIQUE_ID___lo268, align 4, !dbg !5939
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi269) #15, !dbg !5939
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi269, metadata !5889, metadata !DIExpression()), !dbg !5939
  %20 = load ptr, ptr %priv, align 8, !dbg !5939
  %x_max = getelementptr inbounds %struct.focaltech_data, ptr %20, i32 0, i32 0, !dbg !5939
  %21 = load i32, ptr %x_max, align 4, !dbg !5939
  store i32 %21, ptr %__UNIQUE_ID___hi269, align 4, !dbg !5939
  %22 = load i32, ptr %__UNIQUE_ID___val267, align 4, !dbg !5939
  %23 = load i32, ptr %__UNIQUE_ID___hi269, align 4, !dbg !5939
  %cmp8 = icmp uge i32 %22, %23, !dbg !5939
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !5939

cond.true:                                        ; preds = %if.then
  %24 = load i32, ptr %__UNIQUE_ID___hi269, align 4, !dbg !5939
  br label %cond.end12, !dbg !5939

cond.false:                                       ; preds = %if.then
  %25 = load i32, ptr %__UNIQUE_ID___val267, align 4, !dbg !5939
  %26 = load i32, ptr %__UNIQUE_ID___lo268, align 4, !dbg !5939
  %cmp9 = icmp ule i32 %25, %26, !dbg !5939
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5939

cond.true10:                                      ; preds = %cond.false
  %27 = load i32, ptr %__UNIQUE_ID___lo268, align 4, !dbg !5939
  br label %cond.end, !dbg !5939

cond.false11:                                     ; preds = %cond.false
  %28 = load i32, ptr %__UNIQUE_ID___val267, align 4, !dbg !5939
  br label %cond.end, !dbg !5939

cond.end:                                         ; preds = %cond.false11, %cond.true10
  %cond = phi i32 [ %27, %cond.true10 ], [ %28, %cond.false11 ], !dbg !5939
  br label %cond.end12, !dbg !5939

cond.end12:                                       ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ %24, %cond.true ], [ %cond, %cond.end ], !dbg !5939
  store i32 %cond13, ptr %tmp7, align 4, !dbg !5939
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi269) #15, !dbg !5940
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo268) #15, !dbg !5940
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val267) #15, !dbg !5940
  %29 = load i32, ptr %tmp7, align 4, !dbg !5939
  store i32 %29, ptr %tmp, align 4, !dbg !5941
  %30 = load i32, ptr %tmp, align 4, !dbg !5940
  store i32 %30, ptr %clamped_x, align 4, !dbg !5942
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val270) #15, !dbg !5943
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val270, metadata !5890, metadata !DIExpression()), !dbg !5943
  %31 = load ptr, ptr %finger, align 8, !dbg !5943
  %y = getelementptr inbounds %struct.focaltech_finger_state, ptr %31, i32 0, i32 3, !dbg !5943
  %32 = load i32, ptr %y, align 4, !dbg !5943
  store i32 %32, ptr %__UNIQUE_ID___val270, align 4, !dbg !5943
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo271) #15, !dbg !5943
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo271, metadata !5893, metadata !DIExpression()), !dbg !5943
  store i32 0, ptr %__UNIQUE_ID___lo271, align 4, !dbg !5943
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi272) #15, !dbg !5943
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi272, metadata !5894, metadata !DIExpression()), !dbg !5943
  %33 = load ptr, ptr %priv, align 8, !dbg !5943
  %y_max = getelementptr inbounds %struct.focaltech_data, ptr %33, i32 0, i32 1, !dbg !5943
  %34 = load i32, ptr %y_max, align 4, !dbg !5943
  store i32 %34, ptr %__UNIQUE_ID___hi272, align 4, !dbg !5943
  %35 = load i32, ptr %__UNIQUE_ID___val270, align 4, !dbg !5943
  %36 = load i32, ptr %__UNIQUE_ID___hi272, align 4, !dbg !5943
  %cmp16 = icmp uge i32 %35, %36, !dbg !5943
  br i1 %cmp16, label %cond.true17, label %cond.false18, !dbg !5943

cond.true17:                                      ; preds = %cond.end12
  %37 = load i32, ptr %__UNIQUE_ID___hi272, align 4, !dbg !5943
  br label %cond.end24, !dbg !5943

cond.false18:                                     ; preds = %cond.end12
  %38 = load i32, ptr %__UNIQUE_ID___val270, align 4, !dbg !5943
  %39 = load i32, ptr %__UNIQUE_ID___lo271, align 4, !dbg !5943
  %cmp19 = icmp ule i32 %38, %39, !dbg !5943
  br i1 %cmp19, label %cond.true20, label %cond.false21, !dbg !5943

cond.true20:                                      ; preds = %cond.false18
  %40 = load i32, ptr %__UNIQUE_ID___lo271, align 4, !dbg !5943
  br label %cond.end22, !dbg !5943

cond.false21:                                     ; preds = %cond.false18
  %41 = load i32, ptr %__UNIQUE_ID___val270, align 4, !dbg !5943
  br label %cond.end22, !dbg !5943

cond.end22:                                       ; preds = %cond.false21, %cond.true20
  %cond23 = phi i32 [ %40, %cond.true20 ], [ %41, %cond.false21 ], !dbg !5943
  br label %cond.end24, !dbg !5943

cond.end24:                                       ; preds = %cond.end22, %cond.true17
  %cond25 = phi i32 [ %37, %cond.true17 ], [ %cond23, %cond.end22 ], !dbg !5943
  store i32 %cond25, ptr %tmp15, align 4, !dbg !5943
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi272) #15, !dbg !5944
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo271) #15, !dbg !5944
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val270) #15, !dbg !5944
  %42 = load i32, ptr %tmp15, align 4, !dbg !5943
  store i32 %42, ptr %tmp14, align 4, !dbg !5945
  %43 = load i32, ptr %tmp14, align 4, !dbg !5944
  store i32 %43, ptr %clamped_y, align 4, !dbg !5946
  %44 = load ptr, ptr %dev, align 8, !dbg !5947
  %45 = load i32, ptr %clamped_x, align 4, !dbg !5948
  call void @input_report_abs(ptr noundef %44, i32 noundef 53, i32 noundef %45) #14, !dbg !5949
  %46 = load ptr, ptr %dev, align 8, !dbg !5950
  %47 = load ptr, ptr %priv, align 8, !dbg !5951
  %y_max26 = getelementptr inbounds %struct.focaltech_data, ptr %47, i32 0, i32 1, !dbg !5952
  %48 = load i32, ptr %y_max26, align 4, !dbg !5952
  %49 = load i32, ptr %clamped_y, align 4, !dbg !5953
  %sub = sub i32 %48, %49, !dbg !5954
  call void @input_report_abs(ptr noundef %46, i32 noundef 54, i32 noundef %sub) #14, !dbg !5955
  %50 = load ptr, ptr %dev, align 8, !dbg !5956
  %51 = load ptr, ptr %state, align 8, !dbg !5957
  %width = getelementptr inbounds %struct.focaltech_hw_state, ptr %51, i32 0, i32 1, !dbg !5958
  %52 = load i32, ptr %width, align 4, !dbg !5958
  call void @input_report_abs(ptr noundef %50, i32 noundef 28, i32 noundef %52) #14, !dbg !5959
  call void @llvm.lifetime.end.p0(i64 4, ptr %clamped_y) #15, !dbg !5960
  call void @llvm.lifetime.end.p0(i64 4, ptr %clamped_x) #15, !dbg !5960
  br label %if.end, !dbg !5961

if.end:                                           ; preds = %cond.end24, %land.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %active) #15, !dbg !5962
  call void @llvm.lifetime.end.p0(i64 8, ptr %finger) #15, !dbg !5962
  br label %for.inc, !dbg !5963

for.inc:                                          ; preds = %if.end
  %53 = load i32, ptr %i, align 4, !dbg !5964
  %inc = add i32 %53, 1, !dbg !5964
  store i32 %inc, ptr %i, align 4, !dbg !5964
  br label %for.cond, !dbg !5965, !llvm.loop !5966

for.end:                                          ; preds = %for.cond
  %54 = load ptr, ptr %dev, align 8, !dbg !5968
  call void @input_mt_report_pointer_emulation(ptr noundef %54, i1 noundef zeroext true) #14, !dbg !5969
  %55 = load ptr, ptr %dev, align 8, !dbg !5970
  %56 = load ptr, ptr %state, align 8, !dbg !5971
  %pressed = getelementptr inbounds %struct.focaltech_hw_state, ptr %56, i32 0, i32 2, !dbg !5972
  %57 = load i8, ptr %pressed, align 4, !dbg !5972, !range !4844, !noundef !1572
  %tobool27 = trunc i8 %57 to i1, !dbg !5972
  %conv = zext i1 %tobool27 to i32, !dbg !5971
  call void @input_report_key(ptr noundef %55, i32 noundef 272, i32 noundef %conv) #14, !dbg !5973
  %58 = load ptr, ptr %dev, align 8, !dbg !5974
  call void @input_sync(ptr noundef %58) #14, !dbg !5975
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5976
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5976
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #15, !dbg !5976
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #15, !dbg !5976
  ret void, !dbg !5976
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_mt_slot(ptr noundef %dev, i32 noundef %slot) #13 align 16 !dbg !5977 {
entry:
  %dev.addr = alloca ptr, align 8
  %slot.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5981, metadata !DIExpression()), !dbg !5983
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5982, metadata !DIExpression()), !dbg !5984
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5985
  %1 = load i32, ptr %slot.addr, align 4, !dbg !5986
  call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 47, i32 noundef %1) #14, !dbg !5987
  ret void, !dbg !5988
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5989 dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_abs(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #13 align 16 !dbg !5992 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5996, metadata !DIExpression()), !dbg !5999
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5997, metadata !DIExpression()), !dbg !6000
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5998, metadata !DIExpression()), !dbg !6001
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6002
  %1 = load i32, ptr %code.addr, align 4, !dbg !6003
  %2 = load i32, ptr %value.addr, align 4, !dbg !6004
  call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef %1, i32 noundef %2) #14, !dbg !6005
  ret void, !dbg !6006
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6007 dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_key(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #13 align 16 !dbg !6010 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6012, metadata !DIExpression()), !dbg !6015
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !6013, metadata !DIExpression()), !dbg !6016
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6014, metadata !DIExpression()), !dbg !6017
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6018
  %1 = load i32, ptr %code.addr, align 4, !dbg !6019
  %2 = load i32, ptr %value.addr, align 4, !dbg !6020
  %tobool = icmp ne i32 %2, 0, !dbg !6021
  %lnot = xor i1 %tobool, true, !dbg !6021
  %lnot1 = xor i1 %lnot, true, !dbg !6022
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6022
  call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %lnot.ext) #14, !dbg !6023
  ret void, !dbg !6024
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_sync(ptr noundef %dev) #13 align 16 !dbg !6025 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6027, metadata !DIExpression()), !dbg !6028
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6029
  call void @input_event(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14, !dbg !6030
  ret void, !dbg !6031
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6032 dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!262, !263, !264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "focaltech_pnp_ids", scope: !2, file: !3, line: 22, type: !256, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/mouse/.focaltech.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/mouse/psmouse\22 -D KBUILD_BASENAME=\22focaltech\22 -D KBUILD_MODNAME=\22psmouse\22 -D __KBUILD_MODNAME=kmod_psmouse -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/mouse/focaltech.ll drivers/input/mouse/focaltech.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !187, globals: !205, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/mouse/focaltech.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31d84e6af551fa9ebe949b46b7e77e5a")
!4 = !{!5, !14, !21, !28, !34, !39, !45, !50, !56, !63, !69, !76, !84, !92, !101, !106, !111, !117, !123, !129, !156, !163, !168, !172, !177}
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
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !118, line: 11, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!121 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!122 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ps2_disposition", file: !124, line: 24, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/libps2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "81c7f532c535ab7e59f124f9e08a3713")
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "PS2_PROCESS", value: 0)
!127 = !DIEnumerator(name: "PS2_IGNORE", value: 1)
!128 = !DIEnumerator(name: "PS2_ERROR", value: 2)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_type", file: !130, line: 48, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "drivers/input/mouse/psmouse.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "365ff56d7a22250c467c4cd08801fb3c")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!132 = !DIEnumerator(name: "PSMOUSE_NONE", value: 0)
!133 = !DIEnumerator(name: "PSMOUSE_PS2", value: 1)
!134 = !DIEnumerator(name: "PSMOUSE_PS2PP", value: 2)
!135 = !DIEnumerator(name: "PSMOUSE_THINKPS", value: 3)
!136 = !DIEnumerator(name: "PSMOUSE_GENPS", value: 4)
!137 = !DIEnumerator(name: "PSMOUSE_IMPS", value: 5)
!138 = !DIEnumerator(name: "PSMOUSE_IMEX", value: 6)
!139 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS", value: 7)
!140 = !DIEnumerator(name: "PSMOUSE_ALPS", value: 8)
!141 = !DIEnumerator(name: "PSMOUSE_LIFEBOOK", value: 9)
!142 = !DIEnumerator(name: "PSMOUSE_TRACKPOINT", value: 10)
!143 = !DIEnumerator(name: "PSMOUSE_TOUCHKIT_PS2", value: 11)
!144 = !DIEnumerator(name: "PSMOUSE_CORTRON", value: 12)
!145 = !DIEnumerator(name: "PSMOUSE_HGPK", value: 13)
!146 = !DIEnumerator(name: "PSMOUSE_ELANTECH", value: 14)
!147 = !DIEnumerator(name: "PSMOUSE_FSP", value: 15)
!148 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_RELATIVE", value: 16)
!149 = !DIEnumerator(name: "PSMOUSE_CYPRESS", value: 17)
!150 = !DIEnumerator(name: "PSMOUSE_FOCALTECH", value: 18)
!151 = !DIEnumerator(name: "PSMOUSE_VMMOUSE", value: 19)
!152 = !DIEnumerator(name: "PSMOUSE_BYD", value: 20)
!153 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_SMBUS", value: 21)
!154 = !DIEnumerator(name: "PSMOUSE_ELANTECH_SMBUS", value: 22)
!155 = !DIEnumerator(name: "PSMOUSE_AUTO", value: 23)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_state", file: !130, line: 28, baseType: !7, size: 32, elements: !157)
!157 = !{!158, !159, !160, !161, !162}
!158 = !DIEnumerator(name: "PSMOUSE_IGNORE", value: 0)
!159 = !DIEnumerator(name: "PSMOUSE_INITIALIZING", value: 1)
!160 = !DIEnumerator(name: "PSMOUSE_RESYNCING", value: 2)
!161 = !DIEnumerator(name: "PSMOUSE_CMD_MODE", value: 3)
!162 = !DIEnumerator(name: "PSMOUSE_ACTIVATED", value: 4)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 37, baseType: !7, size: 32, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "PSMOUSE_BAD_DATA", value: 0)
!166 = !DIEnumerator(name: "PSMOUSE_GOOD_DATA", value: 1)
!167 = !DIEnumerator(name: "PSMOUSE_FULL_PACKET", value: 2)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_scale", file: !130, line: 43, baseType: !7, size: 32, elements: !169)
!169 = !{!170, !171}
!170 = !DIEnumerator(name: "PSMOUSE_SCALE11", value: 0)
!171 = !DIEnumerator(name: "PSMOUSE_SCALE21", value: 1)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !173, line: 10, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!174 = !{!175, !176}
!175 = !DIEnumerator(name: "false", value: 0)
!176 = !DIEnumerator(name: "true", value: 1)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !178, line: 364, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!179 = !{!180, !181, !182, !183, !184, !185, !186}
!180 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!181 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!182 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!183 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!184 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!185 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!186 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!187 = !{!188, !190, !191, !192, !193, !194, !196, !197, !200}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !189, line: 154, baseType: !7)
!189 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!191 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!192 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !189, line: 42, baseType: !191)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !199)
!199 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !201, line: 16, baseType: !202)
!201 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !203, line: 20, baseType: !204)
!203 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!204 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!205 = !{!206, !212, !217, !222, !227, !232, !234, !0, !236, !241, !246, !251}
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 80, elements: !210)
!209 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!210 = !{!211}
!211 = !DISubrange(count: 10)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 72, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 9)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !3, line: 420, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 416, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 52)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 427, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 352, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 44)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 23, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 64, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 8)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !3, line: 24, type: !229, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !229, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !178, line: 480, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 168, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 21)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 244, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 304, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 38)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 360, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 45)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 408, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 51)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 256, elements: !260)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!260 = !{!261}
!261 = !DISubrange(count: 4)
!262 = !{i32 7, !"Dwarf Version", i32 5}
!263 = !{i32 2, !"Debug Info Version", i32 3}
!264 = !{i32 1, !"wchar_size", i32 2}
!265 = !{i32 8, !"cf-protection-branch", i32 1}
!266 = !{i32 4, !"function_return_thunk_extern", i32 1}
!267 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!268 = !{i32 1, !"Code Model", i32 2}
!269 = !{i32 1, !"override-stack-alignment", i32 8}
!270 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!271 = distinct !DISubprogram(name: "focaltech_detect", scope: !3, file: !3, line: 35, type: !272, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4832)
!272 = !DISubroutineType(types: !273)
!273 = !{!85, !274, !732}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse", file: !130, line: 89, size: 3904, elements: !276)
!276 = !{!277, !278, !4680, !4766, !4767, !4768, !4769, !4787, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4813, !4817, !4818, !4822, !4823, !4824, !4828, !4829, !4830, !4831}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !275, file: !130, line: 90, baseType: !190, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !275, file: !130, line: 91, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !281, line: 137, size: 10880, elements: !282)
!281 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!282 = !{!283, !284, !285, !286, !296, !300, !301, !305, !306, !307, !308, !309, !310, !314, !315, !316, !317, !318, !319, !338, !343, !4167, !4170, !4171, !4172, !4174, !4195, !4205, !4206, !4207, !4208, !4209, !4213, !4217, !4221, !4225, !4303, !4304, !4305, !4306, !4307, !4670, !4671, !4672, !4673, !4674, !4676, !4677, !4679}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !281, line: 138, baseType: !258, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !280, file: !281, line: 139, baseType: !258, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !280, file: !281, line: 140, baseType: !258, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !280, file: !281, line: 141, baseType: !287, size: 64, offset: 192)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !288, line: 59, size: 64, elements: !289)
!288 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!289 = !{!290, !293, !294, !295}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !287, file: !288, line: 60, baseType: !291, size: 16)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !203, line: 24, baseType: !292)
!292 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !287, file: !288, line: 61, baseType: !291, size: 16, offset: 16)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !287, file: !288, line: 62, baseType: !291, size: 16, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !287, file: !288, line: 63, baseType: !291, size: 16, offset: 48)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !280, file: !281, line: 143, baseType: !297, size: 64, offset: 256)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 64, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 1)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !280, file: !281, line: 145, baseType: !297, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !280, file: !281, line: 146, baseType: !302, size: 768, offset: 384)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 768, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 12)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !280, file: !281, line: 147, baseType: !297, size: 64, offset: 1152)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !280, file: !281, line: 148, baseType: !297, size: 64, offset: 1216)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !280, file: !281, line: 149, baseType: !297, size: 64, offset: 1280)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !280, file: !281, line: 150, baseType: !297, size: 64, offset: 1344)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !280, file: !281, line: 151, baseType: !297, size: 64, offset: 1408)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !280, file: !281, line: 152, baseType: !311, size: 128, offset: 1472)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 128, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 2)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !280, file: !281, line: 153, baseType: !297, size: 64, offset: 1600)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !280, file: !281, line: 155, baseType: !7, size: 32, offset: 1664)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !280, file: !281, line: 157, baseType: !7, size: 32, offset: 1696)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !280, file: !281, line: 158, baseType: !7, size: 32, offset: 1728)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !280, file: !281, line: 159, baseType: !190, size: 64, offset: 1792)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !280, file: !281, line: 161, baseType: !320, size: 64, offset: 1856)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!85, !279, !323, !337}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !288, line: 117, size: 320, elements: !326)
!326 = !{!327, !329, !330, !331, !333}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !288, line: 119, baseType: !328, size: 8)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !203, line: 21, baseType: !192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !325, file: !288, line: 120, baseType: !328, size: 8, offset: 8)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !325, file: !288, line: 121, baseType: !291, size: 16, offset: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !325, file: !288, line: 122, baseType: !332, size: 32, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !203, line: 27, baseType: !7)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !325, file: !288, line: 123, baseType: !334, size: 256, offset: 64)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 256, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 32)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !280, file: !281, line: 164, baseType: !339, size: 64, offset: 1920)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!85, !279, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !280, file: !281, line: 167, baseType: !344, size: 64, offset: 1984)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !281, line: 546, size: 960, elements: !346)
!346 = !{!347, !416, !420, !424, !429, !430, !434, !435, !436, !490, !491, !492}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !345, file: !281, line: 547, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!85, !279, !351, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !288, line: 454, size: 384, elements: !353)
!353 = !{!354, !355, !358, !359, !364, !369}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !352, file: !288, line: 455, baseType: !291, size: 16)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !352, file: !288, line: 456, baseType: !356, size: 16, offset: 16)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !203, line: 23, baseType: !357)
!357 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !352, file: !288, line: 457, baseType: !291, size: 16, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !352, file: !288, line: 458, baseType: !360, size: 32, offset: 48)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !288, line: 320, size: 32, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !360, file: !288, line: 321, baseType: !291, size: 16)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !360, file: !288, line: 322, baseType: !291, size: 16, offset: 16)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !352, file: !288, line: 459, baseType: !365, size: 32, offset: 80)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !288, line: 310, size: 32, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !365, file: !288, line: 311, baseType: !291, size: 16)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !365, file: !288, line: 312, baseType: !291, size: 16, offset: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !352, file: !288, line: 467, baseType: !370, size: 256, offset: 128)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !288, line: 461, size: 256, elements: !371)
!371 = !{!372, !383, !389, !401, !411}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !370, file: !288, line: 462, baseType: !373, size: 80)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !288, line: 349, size: 80, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !373, file: !288, line: 350, baseType: !356, size: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !373, file: !288, line: 351, baseType: !377, size: 64, offset: 16)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !288, line: 337, size: 64, elements: !378)
!378 = !{!379, !380, !381, !382}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !377, file: !288, line: 338, baseType: !291, size: 16)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !377, file: !288, line: 339, baseType: !291, size: 16, offset: 16)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !377, file: !288, line: 340, baseType: !291, size: 16, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !377, file: !288, line: 341, baseType: !291, size: 16, offset: 48)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !370, file: !288, line: 463, baseType: !384, size: 96)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !288, line: 360, size: 96, elements: !385)
!385 = !{!386, !387, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !384, file: !288, line: 361, baseType: !356, size: 16)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !384, file: !288, line: 362, baseType: !356, size: 16, offset: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !384, file: !288, line: 363, baseType: !377, size: 64, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !370, file: !288, line: 464, baseType: !390, size: 256)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !288, line: 405, size: 256, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !390, file: !288, line: 406, baseType: !291, size: 16)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !390, file: !288, line: 407, baseType: !291, size: 16, offset: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !390, file: !288, line: 408, baseType: !356, size: 16, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !390, file: !288, line: 409, baseType: !356, size: 16, offset: 48)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !390, file: !288, line: 410, baseType: !291, size: 16, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !390, file: !288, line: 412, baseType: !377, size: 64, offset: 80)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !390, file: !288, line: 414, baseType: !332, size: 32, offset: 160)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !390, file: !288, line: 415, baseType: !400, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !370, file: !288, line: 465, baseType: !402, size: 192)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 192, elements: !312)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !288, line: 376, size: 96, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !403, file: !288, line: 377, baseType: !291, size: 16)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !403, file: !288, line: 378, baseType: !291, size: 16, offset: 16)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !403, file: !288, line: 380, baseType: !356, size: 16, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !403, file: !288, line: 381, baseType: !356, size: 16, offset: 48)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !403, file: !288, line: 383, baseType: !291, size: 16, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !403, file: !288, line: 384, baseType: !356, size: 16, offset: 80)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !370, file: !288, line: 466, baseType: !412, size: 32)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !288, line: 426, size: 32, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !412, file: !288, line: 427, baseType: !291, size: 16)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !412, file: !288, line: 428, baseType: !291, size: 16, offset: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !345, file: !281, line: 549, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!85, !279, !85}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !345, file: !281, line: 551, baseType: !421, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!85, !279, !85, !85}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !345, file: !281, line: 552, baseType: !425, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !279, !428}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !201, line: 19, baseType: !291)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !345, file: !281, line: 553, baseType: !425, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !345, file: !281, line: 555, baseType: !431, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !344}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !345, file: !281, line: 557, baseType: !190, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !345, file: !281, line: 559, baseType: !311, size: 128, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !345, file: !281, line: 561, baseType: !437, size: 256, offset: 576)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !438, line: 66, size: 256, elements: !439)
!438 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!439 = !{!440, !450, !479, !484}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !437, file: !438, line: 67, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !442, line: 13, baseType: !443)
!442 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !189, line: 181, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 179, size: 64, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !444, file: !189, line: 180, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !201, line: 22, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !203, line: 30, baseType: !449)
!449 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !437, file: !438, line: 68, baseType: !451, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !452, line: 23, baseType: !453)
!452 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !452, line: 14, size: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !453, file: !452, line: 15, baseType: !456, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !457, line: 44, baseType: !458)
!457 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !457, line: 14, size: 32, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !457, line: 15, baseType: !461, size: 32)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !458, file: !457, line: 15, size: 32, elements: !462)
!462 = !{!463, !468, !474}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !461, file: !457, line: 16, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !189, line: 174, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 172, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !465, file: !189, line: 173, baseType: !85, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !457, line: 24, baseType: !469, size: 16)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !461, file: !457, line: 24, size: 16, elements: !470)
!470 = !{!471, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !469, file: !457, line: 25, baseType: !472, size: 8)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !201, line: 17, baseType: !328)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !469, file: !457, line: 26, baseType: !472, size: 8, offset: 8)
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !457, line: 28, baseType: !475, size: 32)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !461, file: !457, line: 28, size: 32, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !475, file: !457, line: 29, baseType: !428, size: 16)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !475, file: !457, line: 30, baseType: !428, size: 16, offset: 16)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !437, file: !438, line: 70, baseType: !480, size: 32, offset: 96)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !481, line: 15, size: 32, elements: !482)
!481 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !480, file: !481, line: 20, baseType: !464, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !437, file: !438, line: 72, baseType: !485, size: 128, offset: 128)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !189, line: 190, size: 128, elements: !486)
!486 = !{!487, !489}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !189, line: 191, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !485, file: !189, line: 191, baseType: !488, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !345, file: !281, line: 563, baseType: !85, size: 32, offset: 832)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !345, file: !281, line: 564, baseType: !351, size: 64, offset: 896)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !345, file: !281, line: 565, baseType: !493, offset: 960)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, elements: !600)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !496)
!496 = !{!497, !516, !525, !527, !528, !529, !533, !534, !613, !835, !844, !4157, !4158, !4159, !4160, !4161, !4162, !4164, !4165, !4166}
!497 = !DIDerivedType(tag: DW_TAG_member, scope: !495, file: !35, line: 995, baseType: !498, size: 128)
!498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !495, file: !35, line: 995, size: 128, elements: !499)
!499 = !{!500, !506, !515}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !498, file: !35, line: 996, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !502, line: 60, size: 64, elements: !503)
!502 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !501, file: !502, line: 61, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !498, file: !35, line: 997, baseType: !507, size: 128, align: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !189, line: 232, size: 128, align: 64, elements: !508)
!508 = !{!509, !511}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !507, file: !189, line: 233, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !507, file: !189, line: 234, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !510}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !498, file: !35, line: 998, baseType: !7, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !495, file: !35, line: 1005, baseType: !517, size: 32, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !518, line: 29, baseType: !519)
!518 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !518, line: 17, size: 32, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !518, line: 18, baseType: !522, size: 32)
!522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !518, line: 18, size: 32, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !522, file: !518, line: 19, baseType: !453, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !495, file: !35, line: 1006, baseType: !526, size: 32, offset: 160)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !189, line: 156, baseType: !7)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !495, file: !35, line: 1007, baseType: !441, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !495, file: !35, line: 1008, baseType: !437, size: 256, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !495, file: !35, line: 1009, baseType: !530, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !189, line: 52, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !532, line: 88, baseType: !449)
!532 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!533 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !495, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !495, file: !35, line: 1011, baseType: !535, size: 256, offset: 640)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !536)
!536 = !{!537, !560, !602, !603, !611, !612}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !535, file: !35, line: 949, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !539, line: 34, baseType: !540)
!539 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 25, size: 64, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !540, file: !539, line: 26, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !544, line: 27, baseType: !545)
!544 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !544, line: 13, size: 64, elements: !546)
!546 = !{!547, !559}
!547 = !DIDerivedType(tag: DW_TAG_member, scope: !545, file: !544, line: 14, baseType: !548, size: 32)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !545, file: !544, line: 14, size: 32, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !548, file: !544, line: 15, baseType: !464, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !544, line: 16, baseType: !552, size: 32)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !548, file: !544, line: 16, size: 32, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !552, file: !544, line: 18, baseType: !472, size: 8)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !552, file: !544, line: 19, baseType: !556, size: 24, offset: 8)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 24, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 3)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !545, file: !544, line: 26, baseType: !456, size: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !535, file: !35, line: 950, baseType: !561, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !563)
!563 = !{!564, !570, !571, !572, !583, !584, !591, !592}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !562, file: !6, line: 61, baseType: !565, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !566, line: 113, baseType: !567)
!566 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !566, line: 111, size: 32, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !567, file: !566, line: 112, baseType: !464, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !562, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !562, file: !6, line: 63, baseType: !517, size: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !562, file: !6, line: 65, baseType: !573, size: 256, offset: 128)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 256, elements: !260)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !189, line: 194, size: 64, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !574, file: !189, line: 195, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !189, line: 198, size: 128, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !578, file: !189, line: 199, baseType: !577, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !578, file: !189, line: 199, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !562, file: !6, line: 66, baseType: !574, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !562, file: !6, line: 68, baseType: !585, size: 192, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !586, line: 41, baseType: !587)
!586 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !586, line: 37, size: 192, elements: !588)
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !587, file: !586, line: 38, baseType: !517, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !587, file: !586, line: 39, baseType: !485, size: 128, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !562, file: !6, line: 69, baseType: !507, size: 128, align: 64, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !562, file: !6, line: 70, baseType: !593, offset: 768)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, elements: !600)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !594, file: !6, line: 55, baseType: !85, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !594, file: !6, line: 56, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!600 = !{!601}
!601 = !DISubrange(count: -1)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !535, file: !35, line: 951, baseType: !5, size: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !535, file: !35, line: 952, baseType: !604, size: 32, offset: 160)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !605, line: 23, baseType: !606)
!605 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !605, line: 21, size: 32, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !606, file: !605, line: 22, baseType: !609, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !189, line: 37, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !532, line: 49, baseType: !7)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !535, file: !35, line: 952, baseType: !604, size: 32, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !535, file: !35, line: 953, baseType: !85, size: 32, offset: 224)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !495, file: !35, line: 1012, baseType: !614, size: 64, offset: 896)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !617, line: 110, size: 1472, elements: !618)
!617 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!618 = !{!619, !620, !621, !628, !629, !630, !631, !632, !633, !634, !635, !644, !645, !646, !647, !648, !649, !780, !781, !782, !783, !784, !815, !818, !822, !830}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !616, file: !617, line: 111, baseType: !441, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !616, file: !617, line: 112, baseType: !604, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !616, file: !617, line: 113, baseType: !622, size: 32, offset: 96)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !605, line: 28, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !605, line: 26, size: 32, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !623, file: !605, line: 27, baseType: !626, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !189, line: 38, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !532, line: 50, baseType: !7)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !616, file: !617, line: 114, baseType: !604, size: 32, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !616, file: !617, line: 115, baseType: !622, size: 32, offset: 160)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !616, file: !617, line: 116, baseType: !604, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !616, file: !617, line: 117, baseType: !622, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !616, file: !617, line: 118, baseType: !604, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !616, file: !617, line: 119, baseType: !622, size: 32, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !616, file: !617, line: 120, baseType: !7, size: 32, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !616, file: !617, line: 121, baseType: !636, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !637, line: 24, baseType: !638)
!637 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !637, line: 24, size: 64, elements: !639)
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !638, file: !637, line: 24, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !201, line: 23, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !203, line: 31, baseType: !643)
!643 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !616, file: !617, line: 122, baseType: !636, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !616, file: !617, line: 123, baseType: !636, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !616, file: !617, line: 124, baseType: !636, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !616, file: !617, line: 125, baseType: !636, size: 64, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !616, file: !617, line: 127, baseType: !192, size: 8, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !616, file: !617, line: 129, baseType: !650, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !652, line: 195, size: 1728, elements: !653)
!652 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!653 = !{!654, !655, !660, !672, !681, !684, !685, !692, !693, !694, !695, !699, !700, !701, !702, !703, !744, !765}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !651, file: !652, line: 196, baseType: !565, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !651, file: !652, line: 197, baseType: !656, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !652, line: 28, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !189, line: 104, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !201, line: 20, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !203, line: 26, baseType: !85)
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 198, baseType: !661, size: 192, offset: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 198, size: 192, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !661, file: !652, line: 199, baseType: !485, size: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !661, file: !652, line: 200, baseType: !665, size: 192, align: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !666, line: 5, size: 192, align: 64, elements: !667)
!666 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!667 = !{!668, !669, !671}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !665, file: !666, line: 6, baseType: !191, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !665, file: !666, line: 7, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !665, file: !666, line: 8, baseType: !670, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !651, file: !652, line: 205, baseType: !673, size: 320, offset: 256)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !674, line: 48, size: 320, elements: !675)
!674 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!675 = !{!676, !677, !678, !679, !680}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !673, file: !674, line: 49, baseType: !441, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !673, file: !674, line: 55, baseType: !441, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !673, file: !674, line: 57, baseType: !480, size: 32, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !673, file: !674, line: 59, baseType: !451, size: 32, offset: 160)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !673, file: !674, line: 60, baseType: !485, size: 128, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !651, file: !652, line: 206, baseType: !682, size: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !652, line: 206, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !651, file: !652, line: 207, baseType: !190, size: 64, offset: 640)
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 208, baseType: !686, size: 64, offset: 704)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 208, size: 64, elements: !687)
!687 = !{!688, !691}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !686, file: !652, line: 209, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !690, line: 8, baseType: !448)
!690 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!691 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !686, file: !652, line: 210, baseType: !689, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !651, file: !652, line: 212, baseType: !689, size: 64, offset: 768)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !651, file: !652, line: 213, baseType: !604, size: 32, offset: 832)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !651, file: !652, line: 214, baseType: !622, size: 32, offset: 864)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !651, file: !652, line: 215, baseType: !696, size: 32, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !652, line: 31, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !189, line: 110, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !201, line: 21, baseType: !332)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !651, file: !652, line: 216, baseType: !292, size: 16, offset: 928)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !651, file: !652, line: 217, baseType: !292, size: 16, offset: 944)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !651, file: !652, line: 221, baseType: !357, size: 16, offset: 960)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !652, line: 228, baseType: !191, size: 64, offset: 1024)
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 245, baseType: !704, size: 320, offset: 1088)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 245, size: 320, elements: !705)
!705 = !{!706, !735}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !704, file: !652, line: 246, baseType: !707, size: 320)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !652, line: 114, size: 320, elements: !708)
!708 = !{!709, !710, !722, !725, !734}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !707, file: !652, line: 116, baseType: !191, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !652, line: 117, baseType: !711, size: 64, offset: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !707, file: !652, line: 117, size: 64, elements: !712)
!712 = !{!713, !721}
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !652, line: 118, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !652, line: 118, size: 64, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !714, file: !652, line: 120, baseType: !428, size: 16)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !714, file: !652, line: 121, baseType: !718, size: 48, offset: 16)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 48, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 6)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !711, file: !652, line: 127, baseType: !191, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !652, line: 129, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !652, line: 102, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !707, file: !652, line: 130, baseType: !726, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !652, line: 108, size: 192, elements: !728)
!728 = !{!729, !730, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !727, file: !652, line: 109, baseType: !507, size: 128, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !727, file: !652, line: 110, baseType: !565, size: 32, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !727, file: !652, line: 111, baseType: !732, size: 8, offset: 160)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !189, line: 35, baseType: !733)
!733 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !707, file: !652, line: 131, baseType: !258, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !652, line: 247, baseType: !736, size: 320)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !652, line: 247, size: 320, elements: !737)
!737 = !{!738, !739, !740, !741, !742}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !736, file: !652, line: 248, baseType: !191, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !736, file: !652, line: 249, baseType: !191, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !736, file: !652, line: 250, baseType: !723, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !736, file: !652, line: 251, baseType: !726, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !736, file: !652, line: 252, baseType: !743, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 260, baseType: !745, size: 256, offset: 1408)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 260, size: 256, elements: !746)
!746 = !{!747, !753}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !745, file: !652, line: 261, baseType: !748, size: 256)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !652, line: 134, size: 256, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !748, file: !652, line: 135, baseType: !190, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !748, file: !652, line: 136, baseType: !752, size: 256)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 256, elements: !260)
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !652, line: 262, baseType: !754, size: 256)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !652, line: 262, size: 256, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !754, file: !652, line: 264, baseType: !485, size: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !754, file: !652, line: 265, baseType: !758, size: 128, offset: 128)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !759, line: 22, size: 128, elements: !760)
!759 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!760 = !{!761, !764}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !758, file: !759, line: 23, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !759, line: 23, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !758, file: !759, line: 24, baseType: !191, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !651, file: !652, line: 280, baseType: !766, size: 64, offset: 1664)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !652, line: 176, size: 192, elements: !768)
!768 = !{!769, !778, !779}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !767, file: !652, line: 177, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !652, line: 171, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!85, !650, !774, !776, !650}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !767, file: !652, line: 178, baseType: !650, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !767, file: !652, line: 179, baseType: !723, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !616, file: !617, line: 130, baseType: !650, size: 64, offset: 832)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !616, file: !617, line: 131, baseType: !650, size: 64, offset: 896)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !616, file: !617, line: 132, baseType: !650, size: 64, offset: 960)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !616, file: !617, line: 135, baseType: !190, size: 64, offset: 1024)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !616, file: !617, line: 137, baseType: !785, size: 64, offset: 1088)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !787, line: 14, size: 1088, elements: !788)
!787 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!788 = !{!789, !790, !799, !800, !801, !802, !803, !804}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !786, file: !787, line: 15, baseType: !565, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !786, file: !787, line: 17, baseType: !791, size: 320, offset: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !792, line: 22, size: 320, elements: !793)
!792 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!793 = !{!794, !795, !796, !797}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !791, file: !792, line: 23, baseType: !451, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !791, file: !792, line: 24, baseType: !447, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !791, file: !792, line: 26, baseType: !485, size: 128, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !791, file: !792, line: 28, baseType: !798, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !786, file: !787, line: 19, baseType: !191, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !786, file: !787, line: 20, baseType: !441, size: 64, offset: 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !786, file: !787, line: 23, baseType: !578, size: 128, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !786, file: !787, line: 24, baseType: !604, size: 32, offset: 640)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !786, file: !787, line: 29, baseType: !441, size: 64, offset: 704)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !786, file: !787, line: 36, baseType: !805, size: 320, offset: 768)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !806, line: 15, size: 320, elements: !807)
!806 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!807 = !{!808, !809, !810, !811, !812, !813, !814}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !805, file: !806, line: 16, baseType: !451, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !805, file: !806, line: 18, baseType: !85, size: 32, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !805, file: !806, line: 19, baseType: !85, size: 32, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !805, file: !806, line: 20, baseType: !85, size: 32, offset: 96)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !805, file: !806, line: 21, baseType: !85, size: 32, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !805, file: !806, line: 22, baseType: !191, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !806, line: 23, baseType: !191, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !616, file: !617, line: 138, baseType: !816, size: 64, offset: 1152)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !605, line: 18, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !616, file: !617, line: 139, baseType: !819, size: 64, offset: 1216)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !821, line: 16, flags: DIFlagFwdDecl)
!821 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!822 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !616, file: !617, line: 140, baseType: !823, size: 64, offset: 1280)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !617, line: 25, size: 64, elements: !825)
!825 = !{!826, !827, !828}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !824, file: !617, line: 26, baseType: !464, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !824, file: !617, line: 27, baseType: !85, size: 32, offset: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !824, file: !617, line: 28, baseType: !829, offset: 64)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, elements: !600)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !617, line: 142, baseType: !831, size: 128, offset: 1344)
!831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !617, line: 142, size: 128, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !831, file: !617, line: 143, baseType: !85, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !831, file: !617, line: 144, baseType: !507, size: 128, align: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !495, file: !35, line: 1013, baseType: !836, size: 256, offset: 960)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !837)
!837 = !{!838, !839, !840, !841, !842, !843}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !836, file: !35, line: 971, baseType: !191, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !836, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !836, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !836, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !836, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !836, file: !35, line: 976, baseType: !530, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !495, file: !35, line: 1014, baseType: !845, size: 128, offset: 1216)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !846, line: 8, size: 128, elements: !847)
!846 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!847 = !{!848, !4156}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !845, file: !846, line: 9, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !851, line: 70, size: 256, elements: !852)
!851 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!852 = !{!853, !4153, !4154, !4155}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !850, file: !851, line: 71, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !856, line: 82, size: 1536, elements: !857)
!856 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!857 = !{!858, !859, !869, !877, !878, !893, !4120, !4122, !4135, !4136, !4137, !4138, !4139, !4145, !4146, !4147}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !855, file: !856, line: 84, baseType: !7, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !855, file: !856, line: 85, baseType: !860, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !861, line: 275, baseType: !862)
!861 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !861, line: 275, size: 32, elements: !863)
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !862, file: !861, line: 275, baseType: !865, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !861, line: 69, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !861, line: 64, size: 32, elements: !867)
!867 = !{!868}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !866, file: !861, line: 65, baseType: !7, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !855, file: !856, line: 86, baseType: !870, size: 128, offset: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !871, line: 38, size: 128, elements: !872)
!871 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!872 = !{!873, !875}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !870, file: !871, line: 39, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !870, file: !871, line: 39, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !855, file: !856, line: 87, baseType: !854, size: 64, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !855, file: !856, line: 88, baseType: !879, size: 128, offset: 256)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !856, line: 49, size: 128, elements: !880)
!880 = !{!881, !890}
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !856, line: 50, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !856, line: 50, size: 64, elements: !883)
!883 = !{!884, !889}
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !856, line: 51, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !856, line: 51, size: 64, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !885, file: !856, line: 52, baseType: !698, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !885, file: !856, line: 52, baseType: !698, size: 32, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !882, file: !856, line: 54, baseType: !641, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !879, file: !856, line: 56, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !855, file: !856, line: 89, baseType: !894, size: 64, offset: 384)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !896)
!896 = !{!897, !899, !900, !901, !902, !903, !904, !907, !908, !1104, !3936, !3937, !3938, !3939, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !4102, !4105, !4106, !4107, !4116, !4117, !4118, !4119}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !895, file: !35, line: 642, baseType: !898, size: 16)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !189, line: 24, baseType: !292)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !895, file: !35, line: 643, baseType: !292, size: 16, offset: 16)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !895, file: !35, line: 644, baseType: !604, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !895, file: !35, line: 645, baseType: !485, size: 128, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !895, file: !35, line: 646, baseType: !622, size: 32, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !895, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !895, file: !35, line: 650, baseType: !905, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !895, file: !35, line: 651, baseType: !905, size: 64, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !895, file: !35, line: 654, baseType: !909, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !911)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !912)
!912 = !{!913, !917, !930, !936, !940, !944, !948, !952, !956, !960, !964, !965, !971, !975, !1012, !1043, !1053, !1059, !1063, !1067, !1071, !1075, !1079, !1085, !1089}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !911, file: !35, line: 1967, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!854, !894, !854, !7}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !911, file: !35, line: 1968, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!258, !854, !894, !921}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !923, line: 10, size: 128, elements: !924)
!923 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!924 = !{!925, !929}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !922, file: !923, line: 11, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !190}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !922, file: !923, line: 12, baseType: !190, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !911, file: !35, line: 1969, baseType: !931, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!85, !934, !894, !85}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !637, line: 42, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !911, file: !35, line: 1970, baseType: !937, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!905, !894, !85, !732}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !911, file: !35, line: 1972, baseType: !941, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!85, !854, !743, !85}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !911, file: !35, line: 1974, baseType: !945, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!85, !934, !894, !854, !898, !732}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !911, file: !35, line: 1976, baseType: !949, size: 64, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!85, !854, !894, !854}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !911, file: !35, line: 1977, baseType: !953, size: 64, offset: 448)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!85, !894, !854}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !911, file: !35, line: 1978, baseType: !957, size: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!85, !934, !894, !854, !258}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !911, file: !35, line: 1980, baseType: !961, size: 64, offset: 576)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!85, !934, !894, !854, !898}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !911, file: !35, line: 1982, baseType: !953, size: 64, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !911, file: !35, line: 1983, baseType: !966, size: 64, offset: 704)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!85, !934, !894, !854, !898, !969}
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !189, line: 21, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !189, line: 18, baseType: !698)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !911, file: !35, line: 1985, baseType: !972, size: 64, offset: 768)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!85, !934, !894, !854, !894, !854, !7}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !911, file: !35, line: 1987, baseType: !976, size: 64, offset: 832)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!85, !934, !854, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !981)
!981 = !{!982, !983, !984, !994, !1003, !1004, !1009, !1010, !1011}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !980, file: !35, line: 227, baseType: !7, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !980, file: !35, line: 228, baseType: !898, size: 16, offset: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !35, line: 241, baseType: !985, size: 32, offset: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !980, file: !35, line: 241, size: 32, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !985, file: !35, line: 242, baseType: !604, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !985, file: !35, line: 243, baseType: !989, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !990, line: 16, baseType: !991)
!990 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !990, line: 14, size: 32, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !991, file: !990, line: 15, baseType: !609, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !35, line: 245, baseType: !995, size: 32, offset: 96)
!995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !980, file: !35, line: 245, size: 32, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !995, file: !35, line: 246, baseType: !622, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !995, file: !35, line: 247, baseType: !999, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !990, line: 20, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !990, line: 18, size: 32, elements: !1001)
!1001 = !{!1002}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1000, file: !990, line: 19, baseType: !626, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !980, file: !35, line: 249, baseType: !530, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !980, file: !35, line: 250, baseType: !1005, size: 128, offset: 192)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !690, line: 13, size: 128, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1005, file: !690, line: 14, baseType: !689, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1005, file: !690, line: 15, baseType: !199, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !980, file: !35, line: 251, baseType: !1005, size: 128, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !980, file: !35, line: 252, baseType: !1005, size: 128, offset: 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !980, file: !35, line: 259, baseType: !494, size: 64, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !911, file: !35, line: 1988, baseType: !1013, size: 64, offset: 896)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!85, !934, !1016, !1018, !698, !7}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1020, line: 22, size: 1280, elements: !1021)
!1020 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1019, file: !1020, line: 23, baseType: !698, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1019, file: !1020, line: 24, baseType: !898, size: 16, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1019, file: !1020, line: 25, baseType: !7, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1019, file: !1020, line: 26, baseType: !697, size: 32, offset: 96)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1019, file: !1020, line: 27, baseType: !641, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1019, file: !1020, line: 28, baseType: !641, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1019, file: !1020, line: 41, baseType: !641, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1019, file: !1020, line: 42, baseType: !969, size: 32, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1019, file: !1020, line: 43, baseType: !969, size: 32, offset: 352)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1019, file: !1020, line: 44, baseType: !604, size: 32, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1019, file: !1020, line: 45, baseType: !622, size: 32, offset: 416)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1019, file: !1020, line: 46, baseType: !530, size: 64, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1019, file: !1020, line: 47, baseType: !1005, size: 128, offset: 512)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1019, file: !1020, line: 48, baseType: !1005, size: 128, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1019, file: !1020, line: 49, baseType: !1005, size: 128, offset: 768)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1019, file: !1020, line: 50, baseType: !1005, size: 128, offset: 896)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1019, file: !1020, line: 51, baseType: !641, size: 64, offset: 1024)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1019, file: !1020, line: 52, baseType: !641, size: 64, offset: 1088)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1019, file: !1020, line: 53, baseType: !698, size: 32, offset: 1152)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1019, file: !1020, line: 54, baseType: !698, size: 32, offset: 1184)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1019, file: !1020, line: 55, baseType: !641, size: 64, offset: 1216)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !911, file: !35, line: 1990, baseType: !1044, size: 64, offset: 960)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1047, !854, !743, !1050}
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !189, line: 66, baseType: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !532, line: 73, baseType: !1049)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !532, line: 15, baseType: !199)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 61, baseType: !1051)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !532, line: 72, baseType: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !532, line: 16, baseType: !191)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !911, file: !35, line: 1991, baseType: !1054, size: 64, offset: 1024)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!85, !894, !1057, !641, !641}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !911, file: !35, line: 1993, baseType: !1060, size: 64, offset: 1088)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!85, !894, !85}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !911, file: !35, line: 1994, baseType: !1064, size: 64, offset: 1152)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!85, !894, !854, !494, !7, !898}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !911, file: !35, line: 1997, baseType: !1068, size: 64, offset: 1216)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!85, !934, !894, !494, !898}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !911, file: !35, line: 1999, baseType: !1072, size: 64, offset: 1280)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!905, !934, !854, !85}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !911, file: !35, line: 2001, baseType: !1076, size: 64, offset: 1344)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!85, !934, !854, !905, !85}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !911, file: !35, line: 2003, baseType: !1080, size: 64, offset: 1408)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!85, !934, !854, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !911, file: !35, line: 2005, baseType: !1086, size: 64, offset: 1472)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!85, !854, !1083}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !911, file: !35, line: 2006, baseType: !1090, size: 64, offset: 1536)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!1093, !894}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !1095)
!1095 = !{!1096, !1103}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1094, file: !35, line: 3193, baseType: !1097, size: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1098, line: 296, size: 128, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1099 = !{!1100, !1101, !1102}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1097, file: !1098, line: 297, baseType: !517, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1097, file: !1098, line: 299, baseType: !188, size: 32, offset: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1097, file: !1098, line: 300, baseType: !190, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1094, file: !35, line: 3194, baseType: !698, size: 32, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !895, file: !35, line: 655, baseType: !1105, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1113, !2287, !2419, !2459, !2542, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2559, !2563, !2564, !2567, !2570, !2573, !2576, !2577, !2578, !2619, !3811, !3812, !3813, !3814, !3815, !3816, !3819, !3821, !3828, !3829, !3830, !3831, !3890, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1106, file: !35, line: 1191, baseType: !485, size: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1106, file: !35, line: 1192, baseType: !969, size: 32, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1106, file: !35, line: 1193, baseType: !192, size: 8, offset: 160)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1106, file: !35, line: 1194, baseType: !191, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1106, file: !35, line: 1195, baseType: !530, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1106, file: !35, line: 1196, baseType: !1114, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !1116)
!1116 = !{!1117, !1118, !1119, !1126, !1130, !1134, !1138, !2275, !2276, !2277, !2279, !2280, !2281, !2283, !2284, !2285, !2286}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1115, file: !35, line: 2367, baseType: !258, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1115, file: !35, line: 2368, baseType: !85, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1115, file: !35, line: 2376, baseType: !1120, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!85, !1123}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1125, line: 32, flags: DIFlagFwdDecl)
!1125 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1115, file: !35, line: 2377, baseType: !1127, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1115, file: !35, line: 2378, baseType: !1131, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!854, !1114, !85, !258, !190}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1115, file: !35, line: 2380, baseType: !1135, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !1105}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1115, file: !35, line: 2381, baseType: !1139, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1148, !1938, !1964, !1965, !1966, !1967, !1971, !1974, !1975, !1976, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2040, !2044, !2062, !2080, !2081, !2082, !2083, !2092, !2115, !2116, !2119, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2133, !2134, !2234, !2242, !2243, !2244, !2246, !2250, !2251, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2268, !2269, !2270, !2274}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1140, file: !15, line: 403, baseType: !14, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1140, file: !15, line: 406, baseType: !485, size: 128, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1140, file: !15, line: 409, baseType: !1145, size: 448, offset: 192)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 448, elements: !1146)
!1146 = !{!1147}
!1147 = !DISubrange(count: 56)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1140, file: !15, line: 417, baseType: !1149, size: 768, offset: 640)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !1150)
!1150 = !{!1151, !1921, !1922, !1923, !1926}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1149, file: !15, line: 46, baseType: !1152, size: 512)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1153, line: 64, size: 512, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1154 = !{!1155, !1156, !1157, !1159, !1203, !1801, !1911, !1916, !1917, !1918, !1919, !1920}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1152, file: !1153, line: 65, baseType: !258, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1152, file: !1153, line: 66, baseType: !485, size: 128, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1152, file: !1153, line: 67, baseType: !1158, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1152, file: !1153, line: 68, baseType: !1160, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1153, line: 168, size: 768, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1161, file: !1153, line: 169, baseType: !485, size: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1161, file: !1153, line: 170, baseType: !517, size: 32, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1161, file: !1153, line: 171, baseType: !1152, size: 512, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1161, file: !1153, line: 172, baseType: !1167, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1169)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1153, line: 133, size: 192, elements: !1170)
!1170 = !{!1171, !1178, !1183}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1169, file: !1153, line: 134, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!85, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1169, file: !1153, line: 135, baseType: !1179, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!258, !1176}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1169, file: !1153, line: 136, baseType: !1184, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1185)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!85, !1176, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1153, line: 125, size: 20736, elements: !1190)
!1190 = !{!1191, !1193, !1197, !1198, !1202}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1189, file: !1153, line: 126, baseType: !1192, size: 192)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 192, elements: !557)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1189, file: !1153, line: 127, baseType: !1194, size: 4096, offset: 192)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 4096, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1189, file: !1153, line: 128, baseType: !85, size: 32, offset: 4288)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1189, file: !1153, line: 129, baseType: !1199, size: 16384, offset: 4320)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 16384, elements: !1200)
!1200 = !{!1201}
!1201 = !DISubrange(count: 2048)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1189, file: !1153, line: 130, baseType: !85, size: 32, offset: 20704)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1152, file: !1153, line: 69, baseType: !1204, size: 64, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1153, line: 116, size: 384, elements: !1207)
!1207 = !{!1208, !1212, !1231, !1763, !1791, !1795}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1206, file: !1153, line: 117, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !1158}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1206, file: !1153, line: 118, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1216, line: 254, size: 128, elements: !1217)
!1216 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1217 = !{!1218, !1227}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1215, file: !1216, line: 255, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1047, !1158, !1222, !743}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1216, line: 30, size: 128, elements: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1223, file: !1216, line: 31, baseType: !258, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1223, file: !1216, line: 32, baseType: !898, size: 16, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1215, file: !1216, line: 256, baseType: !1228, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!1047, !1158, !1222, !258, !1050}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1206, file: !1153, line: 119, baseType: !1232, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1216, line: 84, size: 320, elements: !1236)
!1236 = !{!1237, !1238, !1242, !1759, !1761}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1235, file: !1216, line: 85, baseType: !258, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1235, file: !1216, line: 86, baseType: !1239, size: 64, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!898, !1158, !1222, !85}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1235, file: !1216, line: 88, baseType: !1243, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!898, !1158, !1246, !85}
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1216, line: 175, size: 512, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252, !1529, !1533, !1534}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1247, file: !1216, line: 176, baseType: !1223, size: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1247, file: !1216, line: 177, baseType: !1050, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1247, file: !1216, line: 178, baseType: !190, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1247, file: !1216, line: 179, baseType: !1253, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1272, !1273, !1274, !1521, !1522, !1523, !1526, !1527, !1528}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1257, file: !35, line: 473, baseType: !894, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1257, file: !35, line: 474, baseType: !1097, size: 128, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1257, file: !35, line: 475, baseType: !673, size: 320, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1257, file: !35, line: 476, baseType: !188, size: 32, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1257, file: !35, line: 477, baseType: !464, size: 32, offset: 544)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1257, file: !35, line: 482, baseType: !1265, size: 128, offset: 576)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !666, line: 26, size: 128, elements: !1266)
!1266 = !{!1267, !1271}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1265, file: !666, line: 27, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !666, line: 12, size: 64, elements: !1269)
!1269 = !{!1270}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1268, file: !666, line: 13, baseType: !670, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1265, file: !666, line: 28, baseType: !670, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1257, file: !35, line: 483, baseType: !191, size: 64, offset: 704)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1257, file: !35, line: 484, baseType: !191, size: 64, offset: 768)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1257, file: !35, line: 485, baseType: !1275, size: 64, offset: 832)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !1278)
!1278 = !{!1279, !1346, !1416, !1420, !1424, !1430, !1436, !1440, !1445, !1449, !1453, !1457, !1485, !1489, !1493, !1497, !1502, !1506, !1513, !1517}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1277, file: !35, line: 405, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!85, !1283, !1344}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1285, line: 74, size: 512, align: 128, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1286 = !{!1287, !1288, !1338, !1343}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1284, file: !1285, line: 75, baseType: !191, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1285, line: 83, baseType: !1289, size: 320, offset: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1284, file: !1285, line: 83, size: 320, elements: !1290)
!1290 = !{!1291, !1312, !1326, !1330, !1337}
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !1285, line: 84, baseType: !1292, size: 320)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1285, line: 84, size: 320, elements: !1293)
!1293 = !{!1294, !1305, !1306, !1311}
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1285, line: 90, baseType: !1295, size: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1285, line: 90, size: 128, elements: !1296)
!1296 = !{!1297, !1298, !1303, !1304}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1295, file: !1285, line: 91, baseType: !485, size: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !1285, line: 94, baseType: !1299, size: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1295, file: !1285, line: 94, size: 128, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1299, file: !1285, line: 96, baseType: !190, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1299, file: !1285, line: 98, baseType: !7, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1295, file: !1285, line: 102, baseType: !485, size: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1295, file: !1285, line: 103, baseType: !485, size: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1292, file: !1285, line: 106, baseType: !1256, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1285, line: 107, baseType: !1307, size: 64, offset: 192)
!1307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1285, line: 107, size: 64, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1307, file: !1285, line: 108, baseType: !191, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1307, file: !1285, line: 109, baseType: !191, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1292, file: !1285, line: 117, baseType: !191, size: 64, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !1285, line: 119, baseType: !1313, size: 320)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1285, line: 119, size: 320, elements: !1314)
!1314 = !{!1315, !1316, !1319, !1320, !1321}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1313, file: !1285, line: 124, baseType: !191, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1313, file: !1285, line: 125, baseType: !1317, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1285, line: 125, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1313, file: !1285, line: 126, baseType: !191, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1313, file: !1285, line: 127, baseType: !191, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1285, line: 128, baseType: !1322, size: 64, offset: 256)
!1322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !1285, line: 128, size: 64, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1322, file: !1285, line: 133, baseType: !191, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1322, file: !1285, line: 138, baseType: !441, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !1285, line: 141, baseType: !1327, size: 64)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1285, line: 141, size: 64, elements: !1328)
!1328 = !{!1329}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1327, file: !1285, line: 142, baseType: !191, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !1285, line: 144, baseType: !1331, size: 128)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1285, line: 144, size: 128, elements: !1332)
!1332 = !{!1333, !1336}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1331, file: !1285, line: 146, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1285, line: 146, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1331, file: !1285, line: 147, baseType: !190, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1289, file: !1285, line: 161, baseType: !507, size: 128, align: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1285, line: 164, baseType: !1339, size: 32, offset: 384)
!1339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1284, file: !1285, line: 164, size: 32, elements: !1340)
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1339, file: !1285, line: 169, baseType: !464, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1339, file: !1285, line: 177, baseType: !7, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1284, file: !1285, line: 181, baseType: !464, size: 32, offset: 416)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1277, file: !35, line: 406, baseType: !1347, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!85, !494, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1285, line: 293, size: 1536, elements: !1352)
!1352 = !{!1353, !1383, !1397}
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !1285, line: 295, baseType: !1354, size: 512)
!1354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1351, file: !1285, line: 295, size: 512, elements: !1355)
!1355 = !{!1356, !1382}
!1356 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !1285, line: 296, baseType: !1357, size: 448)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1354, file: !1285, line: 296, size: 448, elements: !1358)
!1358 = !{!1359, !1360, !1369, !1370, !1371, !1380, !1381}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !1285, line: 298, baseType: !191, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1285, line: 299, baseType: !1361, size: 128, offset: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1285, line: 299, size: 128, elements: !1362)
!1362 = !{!1363, !1364}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1361, file: !1285, line: 300, baseType: !485, size: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1285, line: 302, baseType: !1365, size: 128)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1361, file: !1285, line: 302, size: 128, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1365, file: !1285, line: 303, baseType: !190, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1365, file: !1285, line: 305, baseType: !7, size: 32, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1357, file: !1285, line: 310, baseType: !1256, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1357, file: !1285, line: 311, baseType: !191, size: 64, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1285, line: 312, baseType: !1372, size: 64, offset: 320)
!1372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1285, line: 312, size: 64, elements: !1373)
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1372, file: !1285, line: 313, baseType: !190, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1372, file: !1285, line: 314, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1285, line: 257, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1285, line: 255, size: 64, elements: !1378)
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1377, file: !1285, line: 256, baseType: !191, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1357, file: !1285, line: 316, baseType: !464, size: 32, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1357, file: !1285, line: 317, baseType: !464, size: 32, offset: 416)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1354, file: !1285, line: 323, baseType: !1284, size: 512, align: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !1285, line: 325, baseType: !1384, size: 512, offset: 512)
!1384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1351, file: !1285, line: 325, size: 512, elements: !1385)
!1385 = !{!1386, !1396}
!1386 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !1285, line: 326, baseType: !1387, size: 320)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1384, file: !1285, line: 326, size: 320, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1387, file: !1285, line: 327, baseType: !191, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1387, file: !1285, line: 328, baseType: !191, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1387, file: !1285, line: 329, baseType: !191, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1387, file: !1285, line: 331, baseType: !464, size: 32, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1387, file: !1285, line: 332, baseType: !464, size: 32, offset: 224)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1387, file: !1285, line: 333, baseType: !464, size: 32, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1387, file: !1285, line: 335, baseType: !7, size: 32, offset: 288)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1384, file: !1285, line: 339, baseType: !1284, size: 512, align: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !1285, line: 341, baseType: !1398, size: 512, offset: 1024)
!1398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1351, file: !1285, line: 341, size: 512, elements: !1399)
!1399 = !{!1400, !1409, !1415}
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !1285, line: 342, baseType: !1401, size: 384)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1398, file: !1285, line: 342, size: 384, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1408}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1401, file: !1285, line: 343, baseType: !191, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1401, file: !1285, line: 344, baseType: !191, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1401, file: !1285, line: 346, baseType: !190, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1401, file: !1285, line: 347, baseType: !190, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1401, file: !1285, line: 348, baseType: !190, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1401, file: !1285, line: 349, baseType: !190, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !1285, line: 352, baseType: !1410, size: 256)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1398, file: !1285, line: 352, size: 256, elements: !1411)
!1411 = !{!1412, !1413, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1410, file: !1285, line: 353, baseType: !191, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1410, file: !1285, line: 354, baseType: !191, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1410, file: !1285, line: 356, baseType: !485, size: 128, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1398, file: !1285, line: 359, baseType: !1284, size: 512, align: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1277, file: !35, line: 409, baseType: !1417, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!85, !1256, !1344}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1277, file: !35, line: 412, baseType: !1421, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!732, !1256, !1350}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1277, file: !35, line: 414, baseType: !1425, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1277, file: !35, line: 416, baseType: !1431, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!85, !494, !1256, !530, !7, !1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1277, file: !35, line: 419, baseType: !1437, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!85, !494, !1256, !530, !7, !7, !1283, !190}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1277, file: !35, line: 424, baseType: !1441, size: 64, offset: 448)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!1444, !1256, !1444}
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !189, line: 131, baseType: !641)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1277, file: !35, line: 425, baseType: !1446, size: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !1350, !1050, !1050}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1277, file: !35, line: 426, baseType: !1450, size: 64, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!732, !1350, !188}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1277, file: !35, line: 427, baseType: !1454, size: 64, offset: 640)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !1350}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1277, file: !35, line: 428, baseType: !1458, size: 64, offset: 704)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1047, !1461, !1483}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1470, !1471, !1472, !1473}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1462, file: !35, line: 374, baseType: !494, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1462, file: !35, line: 375, baseType: !530, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1462, file: !35, line: 376, baseType: !1467, size: 64, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !1461, !199}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1462, file: !35, line: 377, baseType: !190, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1462, file: !35, line: 378, baseType: !85, size: 32, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1462, file: !35, line: 379, baseType: !428, size: 16, offset: 288)
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !35, line: 380, baseType: !1474, size: 64, offset: 320)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !35, line: 380, size: 64, elements: !1475)
!1475 = !{!1476, !1479}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1474, file: !35, line: 386, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1474, file: !35, line: 395, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!1047, !190}
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1277, file: !35, line: 433, baseType: !1486, size: 64, offset: 768)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!85, !1256, !1350, !1350, !21}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1277, file: !35, line: 435, baseType: !1490, size: 64, offset: 832)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!85, !1350}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1277, file: !35, line: 436, baseType: !1494, size: 64, offset: 896)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!732, !1350, !1050, !1050}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1277, file: !35, line: 438, baseType: !1498, size: 64, offset: 960)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !1350, !1501, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1277, file: !35, line: 439, baseType: !1503, size: 64, offset: 1024)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!85, !1256, !1283}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1277, file: !35, line: 442, baseType: !1507, size: 64, offset: 1088)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!85, !1510, !494, !1512}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1277, file: !35, line: 444, baseType: !1514, size: 64, offset: 1152)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{null, !494}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1277, file: !35, line: 445, baseType: !1518, size: 64, offset: 1216)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!85, !1461, !1483}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1257, file: !35, line: 486, baseType: !191, size: 64, offset: 896)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1257, file: !35, line: 487, baseType: !673, size: 320, offset: 960)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1257, file: !35, line: 488, baseType: !1524, size: 32, offset: 1280)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1525, line: 8, baseType: !698)
!1525 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1257, file: !35, line: 489, baseType: !517, size: 32, offset: 1312)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1257, file: !35, line: 490, baseType: !485, size: 128, offset: 1344)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1257, file: !35, line: 491, baseType: !190, size: 64, offset: 1472)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1247, file: !1216, line: 180, baseType: !1530, size: 64, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!1047, !494, !1158, !1246, !743, !530, !1050}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1247, file: !1216, line: 182, baseType: !1530, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1247, file: !1216, line: 184, baseType: !1535, size: 64, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!85, !494, !1158, !1246, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1285, line: 625, size: 1344, elements: !1540)
!1540 = !{!1541, !1550, !1716, !1722, !1729, !1730, !1735, !1736, !1741, !1742, !1745, !1749, !1750, !1751, !1752, !1753, !1757}
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1285, line: 628, baseType: !1542, size: 128)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !1285, line: 628, size: 128, elements: !1543)
!1543 = !{!1544, !1549}
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1285, line: 629, baseType: !1545, size: 128)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1542, file: !1285, line: 629, size: 128, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1545, file: !1285, line: 631, baseType: !191, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1545, file: !1285, line: 632, baseType: !191, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1542, file: !1285, line: 635, baseType: !507, size: 128, align: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1539, file: !1285, line: 639, baseType: !1551, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1285, line: 733, size: 10240, elements: !1553)
!1553 = !{!1554, !1714}
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1285, line: 734, baseType: !1555, size: 10240)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !1285, line: 734, size: 10240, elements: !1556)
!1556 = !{!1557, !1561, !1575, !1579, !1580, !1581, !1582, !1583, !1584, !1593, !1594, !1595, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1632, !1634, !1637, !1683, !1684, !1685, !1688, !1689, !1690, !1693, !1694, !1695, !1701, !1702}
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !1285, line: 739, baseType: !1558, size: 512, align: 512)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !1285, line: 739, size: 512, align: 512, elements: !1559)
!1559 = !{!1560}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1558, file: !1285, line: 747, baseType: !464, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1555, file: !1285, line: 750, baseType: !1562, size: 128, offset: 512)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1563, line: 218, size: 128, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1564 = !{!1565, !1573, !1574}
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !1563, line: 219, baseType: !1566, size: 32)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1562, file: !1563, line: 219, size: 32, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1566, file: !1563, line: 220, baseType: !517, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1566, file: !1563, line: 221, baseType: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1563, line: 197, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1563, line: 197, elements: !1572)
!1572 = !{}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1562, file: !1563, line: 223, baseType: !7, size: 32, offset: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1562, file: !1563, line: 224, baseType: !190, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1555, file: !1285, line: 752, baseType: !1576, size: 64, offset: 640)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!191, !494, !191, !191, !191, !191}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1555, file: !1285, line: 756, baseType: !191, size: 64, offset: 704)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1555, file: !1285, line: 757, baseType: !191, size: 64, offset: 768)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1555, file: !1285, line: 760, baseType: !191, size: 64, offset: 832)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1555, file: !1285, line: 761, baseType: !191, size: 64, offset: 896)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1555, file: !1285, line: 763, baseType: !191, size: 64, offset: 960)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1555, file: !1285, line: 764, baseType: !1585, size: 64, offset: 1024)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1587, line: 299, baseType: !1588)
!1587 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1587, line: 299, size: 64, elements: !1589)
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1588, file: !1587, line: 299, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1592, line: 18, baseType: !191)
!1592 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1555, file: !1285, line: 773, baseType: !464, size: 32, offset: 1088)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1555, file: !1285, line: 785, baseType: !464, size: 32, offset: 1120)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1555, file: !1285, line: 795, baseType: !1596, size: 64, offset: 1152)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1285, line: 726, size: 128, elements: !1598)
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1597, file: !1285, line: 727, baseType: !641, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1597, file: !1285, line: 728, baseType: !85, size: 32, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1555, file: !1285, line: 801, baseType: !191, size: 64, offset: 1216)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1555, file: !1285, line: 804, baseType: !441, size: 64, offset: 1280)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1555, file: !1285, line: 806, baseType: !85, size: 32, offset: 1344)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1555, file: !1285, line: 808, baseType: !517, size: 32, offset: 1376)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1555, file: !1285, line: 823, baseType: !673, size: 320, offset: 1408)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1555, file: !1285, line: 825, baseType: !485, size: 128, offset: 1728)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1555, file: !1285, line: 845, baseType: !85, size: 32, offset: 1856)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1555, file: !1285, line: 849, baseType: !191, size: 64, offset: 1920)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1555, file: !1285, line: 850, baseType: !191, size: 64, offset: 1984)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1555, file: !1285, line: 852, baseType: !191, size: 64, offset: 2048)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1555, file: !1285, line: 853, baseType: !191, size: 64, offset: 2112)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1555, file: !1285, line: 854, baseType: !443, size: 64, offset: 2176)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1555, file: !1285, line: 855, baseType: !191, size: 64, offset: 2240)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1555, file: !1285, line: 856, baseType: !191, size: 64, offset: 2304)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1555, file: !1285, line: 857, baseType: !191, size: 64, offset: 2368)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1555, file: !1285, line: 858, baseType: !191, size: 64, offset: 2432)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1555, file: !1285, line: 865, baseType: !865, size: 32, offset: 2496)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1555, file: !1285, line: 867, baseType: !517, size: 32, offset: 2528)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1555, file: !1285, line: 869, baseType: !191, size: 64, offset: 2560)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1555, file: !1285, line: 869, baseType: !191, size: 64, offset: 2624)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1555, file: !1285, line: 869, baseType: !191, size: 64, offset: 2688)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1555, file: !1285, line: 869, baseType: !191, size: 64, offset: 2752)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1555, file: !1285, line: 870, baseType: !191, size: 64, offset: 2816)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1555, file: !1285, line: 870, baseType: !191, size: 64, offset: 2880)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1555, file: !1285, line: 870, baseType: !191, size: 64, offset: 2944)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1555, file: !1285, line: 871, baseType: !191, size: 64, offset: 3008)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1555, file: !1285, line: 871, baseType: !191, size: 64, offset: 3072)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1555, file: !1285, line: 871, baseType: !191, size: 64, offset: 3136)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1555, file: !1285, line: 871, baseType: !191, size: 64, offset: 3200)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1555, file: !1285, line: 873, baseType: !1631, size: 3328, offset: 3264)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 3328, elements: !220)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1555, file: !1285, line: 875, baseType: !1633, size: 1280, offset: 6592)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 1280, elements: !260)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1555, file: !1285, line: 877, baseType: !1635, size: 64, offset: 7872)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1285, line: 877, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1555, file: !1285, line: 880, baseType: !1638, size: 1088, offset: 7936)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1639, line: 72, baseType: !1640)
!1639 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1639, line: 23, size: 1088, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1649, !1650, !1651, !1652, !1679, !1680, !1681}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1640, file: !1639, line: 28, baseType: !641, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1640, file: !1639, line: 38, baseType: !443, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1640, file: !1639, line: 40, baseType: !191, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1640, file: !1639, line: 43, baseType: !673, size: 320, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1640, file: !1639, line: 44, baseType: !1647, size: 64, offset: 512)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1639, line: 44, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1640, file: !1639, line: 48, baseType: !191, size: 64, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1640, file: !1639, line: 59, baseType: !437, size: 256, offset: 640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1640, file: !1639, line: 60, baseType: !190, size: 64, offset: 896)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1640, file: !1639, line: 61, baseType: !1653, size: 64, offset: 960)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1655)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1656, line: 13, size: 1216, elements: !1657)
!1656 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1663, !1664, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1655, file: !1656, line: 14, baseType: !190, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1655, file: !1656, line: 15, baseType: !191, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1655, file: !1656, line: 17, baseType: !191, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1655, file: !1656, line: 17, baseType: !191, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1655, file: !1656, line: 18, baseType: !191, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1655, file: !1656, line: 18, baseType: !191, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1655, file: !1656, line: 19, baseType: !1665, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1655, file: !1656, line: 21, baseType: !199, size: 64, offset: 448)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1655, file: !1656, line: 23, baseType: !199, size: 64, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1655, file: !1656, line: 24, baseType: !199, size: 64, offset: 576)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1655, file: !1656, line: 25, baseType: !199, size: 64, offset: 640)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1655, file: !1656, line: 26, baseType: !199, size: 64, offset: 704)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1655, file: !1656, line: 27, baseType: !199, size: 64, offset: 768)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1655, file: !1656, line: 28, baseType: !199, size: 64, offset: 832)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1655, file: !1656, line: 29, baseType: !199, size: 64, offset: 896)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1655, file: !1656, line: 30, baseType: !199, size: 64, offset: 960)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1655, file: !1656, line: 31, baseType: !199, size: 64, offset: 1024)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1655, file: !1656, line: 32, baseType: !199, size: 64, offset: 1088)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1655, file: !1656, line: 33, baseType: !199, size: 64, offset: 1152)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1640, file: !1639, line: 63, baseType: !464, size: 32, offset: 1024)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1640, file: !1639, line: 69, baseType: !428, size: 16, offset: 1056)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1640, file: !1639, line: 70, baseType: !1682, size: 16, offset: 1072)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !201, line: 18, baseType: !356)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1555, file: !1285, line: 882, baseType: !191, size: 64, offset: 9024)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1555, file: !1285, line: 885, baseType: !517, size: 32, offset: 9088)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1555, file: !1285, line: 886, baseType: !1686, size: 64, offset: 9152)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1285, line: 732, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1555, file: !1285, line: 901, baseType: !816, size: 64, offset: 9216)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1555, file: !1285, line: 904, baseType: !494, size: 64, offset: 9280)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1555, file: !1285, line: 906, baseType: !1691, size: 64, offset: 9344)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1285, line: 906, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1555, file: !1285, line: 930, baseType: !464, size: 32, offset: 9408)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1555, file: !1285, line: 933, baseType: !464, size: 32, offset: 9440)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1555, file: !1285, line: 935, baseType: !1696, size: 64, offset: 9472)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1697)
!1697 = !{!1698}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1696, file: !57, line: 104, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1555, file: !1285, line: 940, baseType: !441, size: 64, offset: 9536)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1555, file: !1285, line: 942, baseType: !1703, size: 256, offset: 9600)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1704, line: 98, size: 256, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1705 = !{!1706, !1707, !1708}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1703, file: !1704, line: 99, baseType: !441, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1703, file: !1704, line: 100, baseType: !485, size: 128, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1703, file: !1704, line: 101, baseType: !1709, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1704, line: 21, baseType: !1710)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1552, file: !1285, line: 986, baseType: !1715, offset: 10240)
!1715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, elements: !600)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1539, file: !1285, line: 640, baseType: !1717, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1587, line: 297, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1587, line: 297, size: 64, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1718, file: !1587, line: 297, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1592, line: 19, baseType: !191)
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1285, line: 646, baseType: !1723, size: 64, offset: 256)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !1285, line: 646, size: 64, elements: !1724)
!1724 = !{!1725, !1728}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1723, file: !1285, line: 647, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1727)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1285, line: 542, baseType: !191)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1723, file: !1285, line: 648, baseType: !1727, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1539, file: !1285, line: 666, baseType: !85, size: 32, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1539, file: !1285, line: 667, baseType: !1731, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1285, line: 579, size: 320, elements: !1733)
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1732, file: !1285, line: 580, baseType: !673, size: 320)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1539, file: !1285, line: 670, baseType: !732, size: 8, offset: 448)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1539, file: !1285, line: 681, baseType: !1737, size: 256, offset: 512)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1539, file: !1285, line: 678, size: 256, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1737, file: !1285, line: 679, baseType: !665, size: 192, align: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1737, file: !1285, line: 680, baseType: !191, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1539, file: !1285, line: 689, baseType: !485, size: 128, offset: 768)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1539, file: !1285, line: 691, baseType: !1743, size: 64, offset: 896)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1285, line: 691, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1539, file: !1285, line: 694, baseType: !1746, size: 64, offset: 960)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1748)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1285, line: 694, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1539, file: !1285, line: 697, baseType: !191, size: 64, offset: 1024)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1539, file: !1285, line: 699, baseType: !494, size: 64, offset: 1088)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1539, file: !1285, line: 700, baseType: !190, size: 64, offset: 1152)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1539, file: !1285, line: 711, baseType: !441, size: 64, offset: 1216)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1539, file: !1285, line: 717, baseType: !1754, size: 64, offset: 1280)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1756, line: 54, flags: DIFlagFwdDecl)
!1756 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1539, file: !1285, line: 722, baseType: !1758, offset: 1344)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1285, line: 570, elements: !1572)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1235, file: !1216, line: 90, baseType: !1760, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1235, file: !1216, line: 91, baseType: !1762, size: 64, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1206, file: !1153, line: 120, baseType: !1764, size: 64, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!1767, !1176}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1769)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !1770)
!1770 = !{!1771, !1772, !1776, !1780, !1786, !1790}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1769, file: !29, line: 40, baseType: !28, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1769, file: !29, line: 41, baseType: !1773, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!732}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1769, file: !29, line: 42, baseType: !1777, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!190}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1769, file: !29, line: 43, baseType: !1781, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!1665, !1784}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1769, file: !29, line: 44, baseType: !1787, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!1665}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1769, file: !29, line: 45, baseType: !926, size: 64, offset: 320)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1206, file: !1153, line: 121, baseType: !1792, size: 64, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!1665, !1176}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1206, file: !1153, line: 122, baseType: !1796, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !1176, !1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1152, file: !1153, line: 70, baseType: !1802, size: 64, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1125, line: 190, size: 1152, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1903, !1904, !1905, !1906, !1907, !1910}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1803, file: !1125, line: 191, baseType: !464, size: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1803, file: !1125, line: 192, baseType: !464, size: 32, offset: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1803, file: !1125, line: 202, baseType: !1802, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1803, file: !1125, line: 203, baseType: !258, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1803, file: !1125, line: 205, baseType: !665, size: 192, align: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1803, file: !1125, line: 207, baseType: !1665, size: 64, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1803, file: !1125, line: 208, baseType: !7, size: 32, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !1125, line: 209, baseType: !1813, size: 256, offset: 512)
!1813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1803, file: !1125, line: 209, size: 256, elements: !1814)
!1814 = !{!1815, !1824, !1828}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1813, file: !1125, line: 210, baseType: !1816, size: 256)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1125, line: 153, size: 256, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1823}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1816, file: !1125, line: 154, baseType: !191, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1816, file: !1125, line: 156, baseType: !1268, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1816, file: !1125, line: 162, baseType: !1821, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1125, line: 162, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1816, file: !1125, line: 167, baseType: !191, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1813, file: !1125, line: 211, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1125, line: 170, size: 64, elements: !1826)
!1826 = !{!1827}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1825, file: !1125, line: 171, baseType: !1802, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1813, file: !1125, line: 212, baseType: !1829, size: 256)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1125, line: 174, size: 256, elements: !1830)
!1830 = !{!1831, !1898, !1901, !1902}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1829, file: !1125, line: 175, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1834)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1125, line: 271, size: 768, elements: !1835)
!1835 = !{!1836, !1858, !1862, !1866, !1871, !1875, !1879, !1883, !1884, !1885, !1886, !1894}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1834, file: !1125, line: 276, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!85, !1840}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1125, line: 251, size: 1216, elements: !1842)
!1842 = !{!1843, !1844, !1845, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1841, file: !1125, line: 253, baseType: !1802, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1841, file: !1125, line: 254, baseType: !494, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1841, file: !1125, line: 255, baseType: !1846, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1756, line: 66, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1841, file: !1125, line: 256, baseType: !190, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1841, file: !1125, line: 259, baseType: !437, size: 256, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1841, file: !1125, line: 260, baseType: !437, size: 256, offset: 512)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1841, file: !1125, line: 261, baseType: !85, size: 32, offset: 768)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1841, file: !1125, line: 262, baseType: !485, size: 128, offset: 832)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1841, file: !1125, line: 263, baseType: !743, size: 64, offset: 960)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1841, file: !1125, line: 265, baseType: !1050, size: 64, offset: 1024)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1841, file: !1125, line: 266, baseType: !732, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1841, file: !1125, line: 267, baseType: !732, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1841, file: !1125, line: 268, baseType: !1746, size: 64, offset: 1152)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1834, file: !1125, line: 277, baseType: !1859, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !1840}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1834, file: !1125, line: 290, baseType: !1863, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!85, !1846, !190}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1834, file: !1125, line: 292, baseType: !1867, size: 64, offset: 192)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!190, !1846, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1834, file: !1125, line: 293, baseType: !1872, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!190, !1846, !190, !1870}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1834, file: !1125, line: 294, baseType: !1876, size: 64, offset: 320)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null, !1846, !190}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1834, file: !1125, line: 296, baseType: !1880, size: 64, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!1047, !1840, !743, !1050, !530}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1834, file: !1125, line: 306, baseType: !1050, size: 64, offset: 448)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1834, file: !1125, line: 313, baseType: !732, size: 8, offset: 512)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1834, file: !1125, line: 314, baseType: !1880, size: 64, offset: 576)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1834, file: !1125, line: 317, baseType: !1887, size: 64, offset: 640)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!1890, !1840, !1892}
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1891, line: 59, baseType: !7)
!1891 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1125, line: 31, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1834, file: !1125, line: 320, baseType: !1895, size: 64, offset: 704)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!85, !1840, !1538}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1829, file: !1125, line: 176, baseType: !1899, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1125, line: 35, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1829, file: !1125, line: 177, baseType: !530, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1829, file: !1125, line: 178, baseType: !1802, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1803, file: !1125, line: 215, baseType: !190, size: 64, offset: 768)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1803, file: !1125, line: 221, baseType: !641, size: 64, offset: 832)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1803, file: !1125, line: 223, baseType: !292, size: 16, offset: 896)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1803, file: !1125, line: 224, baseType: !898, size: 16, offset: 912)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1803, file: !1125, line: 225, baseType: !1908, size: 64, offset: 960)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1125, line: 36, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1803, file: !1125, line: 227, baseType: !507, size: 128, align: 64, offset: 1024)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1152, file: !1153, line: 71, baseType: !1912, size: 32, offset: 448)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1913, line: 19, size: 32, elements: !1914)
!1913 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1914 = !{!1915}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1912, file: !1913, line: 20, baseType: !565, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1152, file: !1153, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1152, file: !1153, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1152, file: !1153, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1152, file: !1153, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1152, file: !1153, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1149, file: !15, line: 47, baseType: !1139, size: 64, offset: 512)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1149, file: !15, line: 48, baseType: !1158, size: 64, offset: 576)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1149, file: !15, line: 49, baseType: !1924, size: 64, offset: 640)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1149, file: !15, line: 50, baseType: !1927, size: 64, offset: 704)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1929, line: 26, size: 256, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1928, file: !1929, line: 27, baseType: !7, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1928, file: !1929, line: 28, baseType: !1933, size: 192, offset: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1934, line: 43, size: 192, elements: !1935)
!1934 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1935 = !{!1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1933, file: !1934, line: 44, baseType: !451, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1933, file: !1934, line: 45, baseType: !485, size: 128, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1140, file: !15, line: 418, baseType: !1939, size: 64, offset: 1408)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1941)
!1941 = !{!1942, !1943, !1948, !1952, !1956, !1960}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1940, file: !15, line: 54, baseType: !1223, size: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1940, file: !15, line: 55, baseType: !1944, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1047, !1939, !1947, !743}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1940, file: !15, line: 57, baseType: !1949, size: 64, offset: 192)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!1047, !1939, !1947, !258, !1050}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1940, file: !15, line: 59, baseType: !1953, size: 64, offset: 256)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !1139, !258}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1940, file: !15, line: 60, baseType: !1957, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!85, !1139}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1940, file: !15, line: 61, baseType: !1961, size: 64, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1139}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1140, file: !15, line: 419, baseType: !258, size: 64, offset: 1472)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1140, file: !15, line: 420, baseType: !258, size: 64, offset: 1536)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1140, file: !15, line: 421, baseType: !1158, size: 64, offset: 1600)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1140, file: !15, line: 424, baseType: !1968, size: 64, offset: 1664)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1970)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1140, file: !15, line: 425, baseType: !1972, size: 64, offset: 1728)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1140, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1140, file: !15, line: 435, baseType: !437, size: 256, offset: 1856)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1140, file: !15, line: 437, baseType: !1977, size: 64, offset: 2112)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1979, line: 69, size: 320, elements: !1980)
!1979 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1980 = !{!1981, !1982, !1983, !2000, !2002, !2003, !2004}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1978, file: !1979, line: 70, baseType: !258, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1978, file: !1979, line: 71, baseType: !1139, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1978, file: !1979, line: 72, baseType: !1984, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1979, line: 47, size: 256, elements: !1987)
!1987 = !{!1988, !1989, !1995, !1999}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1986, file: !1979, line: 49, baseType: !7, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1986, file: !1979, line: 51, baseType: !1990, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!85, !258, !1993}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1986, file: !1979, line: 53, baseType: !1996, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!85, !743, !1993}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1986, file: !1979, line: 55, baseType: !926, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1978, file: !1979, line: 73, baseType: !2001, size: 16, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1978, file: !1979, line: 74, baseType: !200, size: 8, offset: 208)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1978, file: !1979, line: 75, baseType: !472, size: 8, offset: 216)
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !1978, file: !1979, line: 76, baseType: !2005, size: 64, offset: 256)
!2005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1978, file: !1979, line: 76, size: 64, elements: !2006)
!2006 = !{!2007, !2008, !2015}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2005, file: !1979, line: 77, baseType: !190, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2005, file: !1979, line: 78, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1979, line: 86, size: 128, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2011, file: !1979, line: 87, baseType: !7, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2011, file: !1979, line: 88, baseType: !743, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2005, file: !1979, line: 79, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2018)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1979, line: 92, size: 256, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023, !2024}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2018, file: !1979, line: 94, baseType: !7, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2018, file: !1979, line: 95, baseType: !7, size: 32, offset: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2018, file: !1979, line: 96, baseType: !337, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2018, file: !1979, line: 97, baseType: !1984, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2018, file: !1979, line: 98, baseType: !190, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1140, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1140, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1140, file: !15, line: 442, baseType: !1968, size: 64, offset: 2240)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1140, file: !15, line: 443, baseType: !1972, size: 64, offset: 2304)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1140, file: !15, line: 444, baseType: !732, size: 8, offset: 2368)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1140, file: !15, line: 451, baseType: !732, size: 8, offset: 2376)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1140, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1140, file: !15, line: 455, baseType: !2033, size: 64, offset: 2432)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2035, line: 23, size: 96, elements: !2036)
!2035 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2036 = !{!2037, !2038, !2039}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2034, file: !2035, line: 24, baseType: !85, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2034, file: !2035, line: 24, baseType: !85, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2034, file: !2035, line: 24, baseType: !85, size: 32, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1140, file: !15, line: 458, baseType: !2041, size: 64, offset: 2496)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!85}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1140, file: !15, line: 460, baseType: !2045, size: 4032, align: 512, offset: 2560)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2046, size: 4032, elements: !2060)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !2047)
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2046, file: !15, line: 363, baseType: !190, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2046, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2046, file: !15, line: 367, baseType: !2051, size: 448, offset: 128)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !2052)
!2052 = !{!2053, !2054}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2051, file: !15, line: 320, baseType: !1139, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2051, file: !15, line: 321, baseType: !2055, size: 384, offset: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2056, line: 40, size: 384, elements: !2057)
!2056 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2055, file: !2056, line: 41, baseType: !2059, size: 384, align: 64)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 384, align: 64, elements: !312)
!2060 = !{!2061}
!2061 = !DISubrange(count: 7)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1140, file: !15, line: 463, baseType: !2063, size: 192, offset: 6592)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2064, line: 8, size: 192, elements: !2065)
!2064 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2065 = !{!2066, !2067, !2069}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2063, file: !2064, line: 10, baseType: !7, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2063, file: !2064, line: 11, baseType: !2068, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2063, file: !2064, line: 12, baseType: !2070, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2072, line: 59, size: 48, elements: !2073)
!2072 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2071, file: !2072, line: 60, baseType: !1682, size: 16)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2071, file: !2072, line: 61, baseType: !1682, size: 16, offset: 16)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2071, file: !2072, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2071, file: !2072, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2071, file: !2072, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2071, file: !2072, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1140, file: !15, line: 465, baseType: !191, size: 64, offset: 6784)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1140, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1140, file: !15, line: 470, baseType: !485, size: 128, offset: 6912)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1140, file: !15, line: 471, baseType: !2084, size: 64, offset: 7040)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2086, line: 33, size: 96, elements: !2087)
!2086 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2087 = !{!2088, !2089, !2090, !2091}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2085, file: !2086, line: 37, baseType: !85, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2085, file: !2086, line: 43, baseType: !85, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2085, file: !2086, line: 45, baseType: !292, size: 16, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2085, file: !2086, line: 47, baseType: !292, size: 16, offset: 80)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1140, file: !15, line: 476, baseType: !2093, size: 64, offset: 7104)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !2095)
!2095 = !{!2096, !2112, !2113, !2114}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2094, file: !15, line: 379, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2099, line: 204, baseType: !2100)
!2099 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2099, line: 197, size: 192, elements: !2101)
!2101 = !{!2102, !2104, !2105, !2106, !2108, !2110}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2100, file: !2099, line: 198, baseType: !2103, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2099, line: 21, baseType: !332)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2100, file: !2099, line: 199, baseType: !192, size: 8, offset: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2100, file: !2099, line: 200, baseType: !192, size: 8, offset: 40)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2100, file: !2099, line: 201, baseType: !2107, size: 16, offset: 48)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2099, line: 17, baseType: !291)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2100, file: !2099, line: 202, baseType: !2109, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2099, line: 16, baseType: !642)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2100, file: !2099, line: 203, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2099, line: 22, baseType: !642)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2094, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2094, file: !15, line: 381, baseType: !743, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2094, file: !15, line: 382, baseType: !743, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1140, file: !15, line: 477, baseType: !2094, size: 256, offset: 7168)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1140, file: !15, line: 480, baseType: !2117, size: 64, offset: 7424)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1140, file: !15, line: 483, baseType: !2120, size: 64, offset: 7488)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1140, file: !15, line: 488, baseType: !743, size: 64, offset: 7552)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1140, file: !15, line: 492, baseType: !190, size: 64, offset: 7616)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1140, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1140, file: !15, line: 495, baseType: !190, size: 64, offset: 7744)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1140, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1140, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1140, file: !15, line: 500, baseType: !2129, size: 64, offset: 7872)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2131, line: 45, baseType: !2132)
!2131 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1140, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1140, file: !15, line: 504, baseType: !2135, size: 64, offset: 8000)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2138, line: 96, size: 192, elements: !2139)
!2138 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2139 = !{!2140, !2141, !2195, !2198}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2137, file: !2138, line: 97, baseType: !7, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2137, file: !2138, line: 98, baseType: !2142, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2138, line: 24, size: 3072, elements: !2144)
!2144 = !{!2145, !2147, !2148, !2149, !2150, !2164, !2165, !2166, !2167, !2179, !2180, !2181, !2192, !2193, !2194}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2143, file: !2138, line: 26, baseType: !2146, size: 128)
!2146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 128, elements: !312)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2143, file: !2138, line: 27, baseType: !2146, size: 128, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2143, file: !2138, line: 28, baseType: !85, size: 32, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2143, file: !2138, line: 31, baseType: !517, size: 32, align: 512, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2143, file: !2138, line: 32, baseType: !2151, size: 960, offset: 576)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2152, line: 206, size: 960, elements: !2153)
!2152 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2153 = !{!2154, !2155, !2158, !2160, !2161, !2163}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2151, file: !2152, line: 207, baseType: !510, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2151, file: !2152, line: 208, baseType: !2156, size: 256, offset: 64)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2157, size: 256, elements: !260)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2151, file: !2152, line: 209, baseType: !2159, size: 256, offset: 320)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !260)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2151, file: !2152, line: 213, baseType: !199, size: 64, offset: 576)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2151, file: !2152, line: 215, baseType: !2162, size: 256, offset: 640)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, elements: !260)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2151, file: !2152, line: 216, baseType: !472, size: 8, offset: 896)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2143, file: !2138, line: 33, baseType: !191, size: 64, offset: 1536)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2143, file: !2138, line: 34, baseType: !191, size: 64, offset: 1600)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2143, file: !2138, line: 35, baseType: !732, size: 8, offset: 1664)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2143, file: !2138, line: 36, baseType: !2168, size: 320, offset: 1728)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2169, line: 11, size: 320, elements: !2170)
!2169 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2170 = !{!2171, !2172, !2173, !2178}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2168, file: !2169, line: 16, baseType: !578, size: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2168, file: !2169, line: 17, baseType: !191, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2168, file: !2169, line: 18, baseType: !2174, size: 64, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2177}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2168, file: !2169, line: 19, baseType: !698, size: 32, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2143, file: !2138, line: 37, baseType: !1703, size: 256, offset: 2048)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2143, file: !2138, line: 38, baseType: !507, size: 128, align: 64, offset: 2304)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2143, file: !2138, line: 39, baseType: !2182, size: 64, offset: 2432)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2138, line: 49, size: 768, elements: !2184)
!2184 = !{!2185, !2186, !2187, !2188, !2189, !2190, !2191}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2183, file: !2138, line: 50, baseType: !517, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2183, file: !2138, line: 51, baseType: !2159, size: 256, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2183, file: !2138, line: 53, baseType: !2159, size: 256, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2183, file: !2138, line: 54, baseType: !191, size: 64, offset: 576)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2183, file: !2138, line: 55, baseType: !2182, size: 64, offset: 640)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2183, file: !2138, line: 56, baseType: !85, size: 32, offset: 704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2183, file: !2138, line: 57, baseType: !85, size: 32, offset: 736)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2143, file: !2138, line: 40, baseType: !191, size: 64, offset: 2496)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2143, file: !2138, line: 42, baseType: !85, size: 32, offset: 2560)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2143, file: !2138, line: 43, baseType: !2136, size: 64, offset: 2624)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2137, file: !2138, line: 99, baseType: !2196, offset: 128)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2197, line: 211, elements: !1572)
!2197 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2137, file: !2138, line: 100, baseType: !2199, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2138, line: 63, size: 3008, elements: !2201)
!2201 = !{!2202, !2203, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2233}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2200, file: !2138, line: 64, baseType: !2182, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2200, file: !2138, line: 65, baseType: !2204, size: 192, offset: 64)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2182, size: 192, elements: !557)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2200, file: !2138, line: 67, baseType: !85, size: 32, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2200, file: !2138, line: 68, baseType: !437, size: 256, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2200, file: !2138, line: 69, baseType: !517, size: 32, offset: 576)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2200, file: !2138, line: 70, baseType: !437, size: 256, offset: 640)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2200, file: !2138, line: 71, baseType: !191, size: 64, offset: 896)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2200, file: !2138, line: 72, baseType: !191, size: 64, offset: 960)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2200, file: !2138, line: 73, baseType: !191, size: 64, offset: 1024)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2200, file: !2138, line: 74, baseType: !191, size: 64, offset: 1088)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2200, file: !2138, line: 75, baseType: !191, size: 64, offset: 1152)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2200, file: !2138, line: 76, baseType: !191, size: 64, offset: 1216)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2200, file: !2138, line: 77, baseType: !191, size: 64, offset: 1280)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2200, file: !2138, line: 78, baseType: !191, size: 64, offset: 1344)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2200, file: !2138, line: 79, baseType: !732, size: 8, offset: 1408)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2200, file: !2138, line: 80, baseType: !191, size: 64, offset: 1472)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2200, file: !2138, line: 81, baseType: !437, size: 256, offset: 1536)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2200, file: !2138, line: 82, baseType: !1928, size: 256, offset: 1792)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2200, file: !2138, line: 84, baseType: !464, size: 32, offset: 2048)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2200, file: !2138, line: 87, baseType: !191, size: 64, offset: 2112)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2200, file: !2138, line: 88, baseType: !191, size: 64, offset: 2176)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2200, file: !2138, line: 89, baseType: !2225, size: 704, offset: 2240)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1704, line: 111, size: 704, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2232}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2225, file: !1704, line: 112, baseType: !1703, size: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2225, file: !1704, line: 113, baseType: !2168, size: 320, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2225, file: !1704, line: 116, baseType: !2230, size: 64, offset: 576)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1704, line: 18, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2225, file: !1704, line: 117, baseType: !85, size: 32, offset: 640)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2200, file: !2138, line: 90, baseType: !2136, size: 64, offset: 2944)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1140, file: !15, line: 515, baseType: !2235, size: 64, offset: 8064)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2237, line: 117, size: 128, elements: !2238)
!2237 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2238 = !{!2239, !2240, !2241}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2236, file: !2237, line: 118, baseType: !658, size: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2236, file: !2237, line: 119, baseType: !658, size: 32, offset: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2236, file: !2237, line: 120, baseType: !199, size: 64, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1140, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1140, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1140, file: !15, line: 520, baseType: !2245, size: 64, offset: 8192)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1140, file: !15, line: 523, baseType: !2247, size: 64, offset: 8256)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1140, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1140, file: !15, line: 525, baseType: !2252, size: 64, offset: 8384)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1140, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1140, file: !15, line: 533, baseType: !190, size: 64, offset: 8512)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1140, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1140, file: !15, line: 535, baseType: !196, size: 64, offset: 8640)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1140, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1140, file: !15, line: 539, baseType: !85, size: 32, offset: 8736)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1140, file: !15, line: 540, baseType: !2262, size: 64, offset: 8768)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2264, line: 32, size: 64, elements: !2265)
!2264 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2265 = !{!2266, !2267}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2263, file: !2264, line: 33, baseType: !658, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2263, file: !2264, line: 34, baseType: !658, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1140, file: !15, line: 563, baseType: !485, size: 128, offset: 8832)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1140, file: !15, line: 565, baseType: !485, size: 128, offset: 8960)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1140, file: !15, line: 568, baseType: !2271, size: 64, offset: 9088)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1140, file: !15, line: 570, baseType: !464, size: 32, offset: 9152)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1115, file: !35, line: 2382, baseType: !1114, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1115, file: !35, line: 2383, baseType: !574, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1115, file: !35, line: 2385, baseType: !2278, offset: 576)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2197, line: 206, elements: !1572)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1115, file: !35, line: 2386, baseType: !2278, offset: 576)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1115, file: !35, line: 2387, baseType: !2278, offset: 576)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1115, file: !35, line: 2388, baseType: !2282, offset: 576)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2278, elements: !557)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1115, file: !35, line: 2390, baseType: !2278, offset: 576)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1115, file: !35, line: 2391, baseType: !2278, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1115, file: !35, line: 2392, baseType: !2278, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1115, file: !35, line: 2393, baseType: !2278, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1106, file: !35, line: 1197, baseType: !2288, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2290)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !2291)
!2291 = !{!2292, !2296, !2300, !2301, !2305, !2309, !2313, !2314, !2315, !2319, !2323, !2327, !2328, !2329, !2335, !2339, !2340, !2344, !2345, !2346, !2347, !2351, !2355, !2402, !2417, !2418}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2290, file: !35, line: 2058, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!894, !1105}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2290, file: !35, line: 2059, baseType: !2297, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{null, !894}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2290, file: !35, line: 2060, baseType: !2297, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2290, file: !35, line: 2062, baseType: !2302, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !894, !85}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2290, file: !35, line: 2063, baseType: !2306, size: 64, offset: 256)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!85, !894, !1344}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2290, file: !35, line: 2064, baseType: !2310, size: 64, offset: 320)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!85, !894}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2290, file: !35, line: 2065, baseType: !2297, size: 64, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2290, file: !35, line: 2066, baseType: !1135, size: 64, offset: 448)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2290, file: !35, line: 2067, baseType: !2316, size: 64, offset: 512)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!85, !1105, !85}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2290, file: !35, line: 2068, baseType: !2320, size: 64, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!85, !1105, !34}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2290, file: !35, line: 2069, baseType: !2324, size: 64, offset: 640)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!85, !1105}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2290, file: !35, line: 2070, baseType: !2320, size: 64, offset: 704)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2290, file: !35, line: 2071, baseType: !2324, size: 64, offset: 768)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2290, file: !35, line: 2072, baseType: !2330, size: 64, offset: 832)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!85, !854, !2333}
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2290, file: !35, line: 2073, baseType: !2336, size: 64, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!85, !1105, !2068, !743}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2290, file: !35, line: 2074, baseType: !1135, size: 64, offset: 960)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2290, file: !35, line: 2076, baseType: !2341, size: 64, offset: 1024)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!85, !1846, !854}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2290, file: !35, line: 2077, baseType: !2341, size: 64, offset: 1088)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2290, file: !35, line: 2078, baseType: !2341, size: 64, offset: 1152)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2290, file: !35, line: 2079, baseType: !2341, size: 64, offset: 1216)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2290, file: !35, line: 2081, baseType: !2348, size: 64, offset: 1280)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!1047, !1105, !85, !743, !1050, !530}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2290, file: !35, line: 2082, baseType: !2352, size: 64, offset: 1344)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!1047, !1105, !85, !258, !1050, !530}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2290, file: !35, line: 2083, baseType: !2356, size: 64, offset: 1408)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!2359, !894}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2387, !2388, !2389}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2361, file: !40, line: 297, baseType: !578, size: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2361, file: !40, line: 298, baseType: !485, size: 128, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2361, file: !40, line: 299, baseType: !485, size: 128, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2361, file: !40, line: 300, baseType: !485, size: 128, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2361, file: !40, line: 301, baseType: !437, size: 256, offset: 512)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2361, file: !40, line: 302, baseType: !517, size: 32, offset: 768)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2361, file: !40, line: 303, baseType: !464, size: 32, offset: 800)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2361, file: !40, line: 304, baseType: !1105, size: 64, offset: 832)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2361, file: !40, line: 305, baseType: !2372, size: 64, offset: 896)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !2373)
!2373 = !{!2374, !2386}
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !2372, file: !40, line: 69, baseType: !2375, size: 32)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2372, file: !40, line: 69, size: 32, elements: !2376)
!2376 = !{!2377, !2378, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2375, file: !40, line: 70, baseType: !604, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2375, file: !40, line: 71, baseType: !622, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2375, file: !40, line: 72, baseType: !2380, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2381, line: 24, baseType: !2382)
!2381 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2381, line: 22, size: 32, elements: !2383)
!2383 = !{!2384}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2382, file: !2381, line: 23, baseType: !2385, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2381, line: 20, baseType: !610)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2372, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2361, file: !40, line: 306, baseType: !530, size: 64, offset: 960)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2361, file: !40, line: 307, baseType: !191, size: 64, offset: 1024)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2361, file: !40, line: 308, baseType: !2390, size: 576, offset: 1088)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !2391)
!2391 = !{!2392, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2390, file: !40, line: 206, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !449)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2390, file: !40, line: 207, baseType: !2393, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2390, file: !40, line: 208, baseType: !2393, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2390, file: !40, line: 209, baseType: !2393, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2390, file: !40, line: 210, baseType: !2393, size: 64, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2390, file: !40, line: 211, baseType: !2393, size: 64, offset: 320)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2390, file: !40, line: 212, baseType: !2393, size: 64, offset: 384)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2390, file: !40, line: 213, baseType: !689, size: 64, offset: 448)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2390, file: !40, line: 214, baseType: !689, size: 64, offset: 512)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2290, file: !35, line: 2085, baseType: !2403, size: 64, offset: 1472)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!199, !1105, !2406}
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2408, line: 15, size: 256, elements: !2409)
!2408 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2409 = !{!2410, !2411, !2412, !2413, !2414}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2407, file: !2408, line: 16, baseType: !188, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2407, file: !2408, line: 19, baseType: !85, size: 32, offset: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2407, file: !2408, line: 26, baseType: !191, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2407, file: !2408, line: 33, baseType: !191, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2407, file: !2408, line: 36, baseType: !2415, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1285, line: 33, flags: DIFlagFwdDecl)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2290, file: !35, line: 2087, baseType: !2403, size: 64, offset: 1536)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2290, file: !35, line: 2089, baseType: !1135, size: 64, offset: 1600)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1106, file: !35, line: 1198, baseType: !2420, size: 64, offset: 448)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2422)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !2423)
!2423 = !{!2424, !2428, !2432, !2436, !2437, !2438, !2439, !2440, !2445, !2450, !2454}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2422, file: !40, line: 325, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!85, !2360}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2422, file: !40, line: 326, baseType: !2429, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!2360, !1105, !85}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2422, file: !40, line: 327, baseType: !2433, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !2360}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2422, file: !40, line: 328, baseType: !2425, size: 64, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2422, file: !40, line: 329, baseType: !2425, size: 64, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2422, file: !40, line: 330, baseType: !2425, size: 64, offset: 320)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2422, file: !40, line: 331, baseType: !2316, size: 64, offset: 384)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2422, file: !40, line: 334, baseType: !2441, size: 64, offset: 448)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!2444, !894}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2422, file: !40, line: 335, baseType: !2446, size: 64, offset: 512)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!85, !894, !2449}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2422, file: !40, line: 337, baseType: !2451, size: 64, offset: 576)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!85, !894, !2444}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2422, file: !40, line: 339, baseType: !2455, size: 64, offset: 640)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!85, !1105, !2458}
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1106, file: !35, line: 1199, baseType: !2460, size: 64, offset: 512)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2462)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !2463)
!2463 = !{!2464, !2468, !2469, !2473, !2474, !2475, !2490, !2513, !2517, !2518, !2541}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2462, file: !40, line: 431, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!85, !1105, !85, !85, !1016}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2462, file: !40, line: 432, baseType: !2316, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2462, file: !40, line: 433, baseType: !2470, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!85, !1105, !7}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2462, file: !40, line: 434, baseType: !2470, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2462, file: !40, line: 435, baseType: !2316, size: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2462, file: !40, line: 436, baseType: !2476, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!85, !1105, !85, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !2481)
!2481 = !{!2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2480, file: !40, line: 418, baseType: !85, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2480, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2480, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2480, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2480, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2480, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2480, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2480, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2462, file: !40, line: 437, baseType: !2491, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!85, !1105, !2372, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !2496)
!2496 = !{!2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2495, file: !40, line: 346, baseType: !85, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2495, file: !40, line: 347, baseType: !641, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2495, file: !40, line: 348, baseType: !641, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2495, file: !40, line: 349, baseType: !641, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2495, file: !40, line: 350, baseType: !641, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2495, file: !40, line: 351, baseType: !641, size: 64, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2495, file: !40, line: 352, baseType: !641, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2495, file: !40, line: 353, baseType: !447, size: 64, offset: 448)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2495, file: !40, line: 355, baseType: !447, size: 64, offset: 512)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2495, file: !40, line: 356, baseType: !85, size: 32, offset: 576)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2495, file: !40, line: 357, baseType: !85, size: 32, offset: 608)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2495, file: !40, line: 358, baseType: !641, size: 64, offset: 640)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2495, file: !40, line: 359, baseType: !641, size: 64, offset: 704)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2495, file: !40, line: 360, baseType: !641, size: 64, offset: 768)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2495, file: !40, line: 361, baseType: !447, size: 64, offset: 832)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2495, file: !40, line: 362, baseType: !85, size: 32, offset: 896)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2462, file: !40, line: 438, baseType: !2514, size: 64, offset: 448)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!85, !1105, !2458, !2494}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2462, file: !40, line: 440, baseType: !2491, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2462, file: !40, line: 441, baseType: !2519, size: 64, offset: 576)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!85, !1105, !2522}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !2524)
!2524 = !{!2525, !2526}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2523, file: !40, line: 412, baseType: !7, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2523, file: !40, line: 413, baseType: !2527, size: 1344, offset: 64)
!2527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2528, size: 1344, elements: !557)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !2529)
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2540}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2528, file: !40, line: 398, baseType: !7, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2528, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2528, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2528, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2528, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2528, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2528, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2528, file: !40, line: 406, baseType: !643, size: 64, offset: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2528, file: !40, line: 407, baseType: !2539, size: 64, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !189, line: 132, baseType: !641)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2528, file: !40, line: 408, baseType: !2539, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2462, file: !40, line: 442, baseType: !2470, size: 64, offset: 640)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1106, file: !35, line: 1200, baseType: !2543, size: 64, offset: 576)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2545)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1106, file: !35, line: 1201, baseType: !191, size: 64, offset: 640)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1106, file: !35, line: 1202, baseType: !191, size: 64, offset: 704)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1106, file: !35, line: 1203, baseType: !191, size: 64, offset: 768)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1106, file: !35, line: 1204, baseType: !854, size: 64, offset: 832)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1106, file: !35, line: 1205, baseType: !673, size: 320, offset: 896)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1106, file: !35, line: 1206, baseType: !85, size: 32, offset: 1216)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1106, file: !35, line: 1207, baseType: !464, size: 32, offset: 1248)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1106, file: !35, line: 1209, baseType: !190, size: 64, offset: 1280)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1106, file: !35, line: 1211, baseType: !2555, size: 64, offset: 1344)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2558)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1106, file: !35, line: 1223, baseType: !2560, size: 64, offset: 1408)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !871, line: 34, size: 64, elements: !2561)
!2561 = !{!2562}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2560, file: !871, line: 35, baseType: !874, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1106, file: !35, line: 1224, baseType: !485, size: 128, offset: 1472)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1106, file: !35, line: 1225, baseType: !2565, size: 64, offset: 1600)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1106, file: !35, line: 1226, baseType: !2568, size: 64, offset: 1664)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1106, file: !35, line: 1227, baseType: !2571, size: 64, offset: 1728)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1106, file: !35, line: 1228, baseType: !2574, size: 64, offset: 1792)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1106, file: !35, line: 1229, baseType: !578, size: 128, offset: 1856)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1106, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1106, file: !35, line: 1231, baseType: !2579, size: 2496, offset: 2048)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2585, !2617}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2579, file: !40, line: 522, baseType: !7, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2579, file: !40, line: 523, baseType: !673, size: 320, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2579, file: !40, line: 524, baseType: !2584, size: 192, offset: 384)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 192, elements: !557)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2579, file: !40, line: 525, baseType: !2586, size: 1728, offset: 576)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2587, size: 1728, elements: !557)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !2588)
!2588 = !{!2589, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2587, file: !40, line: 223, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !2592)
!2592 = !{!2593, !2594, !2607, !2608}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2591, file: !40, line: 446, baseType: !85, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2591, file: !40, line: 447, baseType: !2595, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2597)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2597, file: !40, line: 313, baseType: !2316, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2597, file: !40, line: 314, baseType: !2316, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2597, file: !40, line: 315, baseType: !2316, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2597, file: !40, line: 316, baseType: !2316, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2597, file: !40, line: 317, baseType: !2425, size: 64, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2597, file: !40, line: 318, baseType: !2425, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2597, file: !40, line: 319, baseType: !2425, size: 64, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2597, file: !40, line: 320, baseType: !2455, size: 64, offset: 448)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2591, file: !40, line: 448, baseType: !1139, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2591, file: !40, line: 449, baseType: !2590, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2587, file: !40, line: 224, baseType: !85, size: 32, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2587, file: !40, line: 226, baseType: !485, size: 128, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2587, file: !40, line: 227, baseType: !191, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2587, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2587, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2587, file: !40, line: 230, baseType: !2393, size: 64, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2587, file: !40, line: 231, baseType: !2393, size: 64, offset: 448)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2587, file: !40, line: 232, baseType: !190, size: 64, offset: 512)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2579, file: !40, line: 526, baseType: !2618, size: 192, offset: 2304)
!2618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2595, size: 192, elements: !557)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1106, file: !35, line: 1233, baseType: !2620, size: 2368, offset: 4544)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !2621)
!2621 = !{!2622, !2623, !2624}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2620, file: !35, line: 1185, baseType: !292, size: 16)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2620, file: !35, line: 1186, baseType: !292, size: 16, offset: 16)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2620, file: !35, line: 1187, baseType: !2625, size: 2304, offset: 64)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2626, size: 2304, elements: !557)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2627, line: 12, size: 768, elements: !2628)
!2627 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2628 = !{!2629, !2637, !2638, !3809, !3810}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2626, file: !2627, line: 13, baseType: !2630, size: 384)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2631, line: 17, size: 384, elements: !2632)
!2631 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2632 = !{!2633, !2634, !2635, !2636}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2630, file: !2631, line: 18, baseType: !85, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2630, file: !2631, line: 19, baseType: !85, size: 32, offset: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2630, file: !2631, line: 20, baseType: !585, size: 192, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2630, file: !2631, line: 22, baseType: !507, size: 128, align: 64, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2626, file: !2627, line: 14, baseType: !337, size: 64, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2626, file: !2627, line: 15, baseType: !2639, size: 64, offset: 448)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2640, line: 16, size: 64, elements: !2641)
!2640 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2639, file: !2640, line: 17, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1756, line: 746, size: 58368, elements: !2645)
!2645 = !{!2646, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2726, !2737, !2823, !2827, !2830, !2861, !2862, !2863, !2864, !2872, !2874, !2875, !2876, !2877, !2878, !2879, !2890, !2891, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2908, !2909, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2997, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3045, !3051, !3052, !3053, !3054, !3055, !3059, !3062, !3069, !3074, !3077, !3080, !3083, !3086, !3224, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3262, !3263, !3264, !3273, !3281, !3282, !3283, !3284, !3285, !3290, !3291, !3292, !3295, !3296, !3299, !3302, !3305, !3313, !3316, !3317, !3402, !3403, !3404, !3405, !3406, !3412, !3413, !3414, !3415, !3418, !3419, !3422, !3425, !3426, !3429, !3430, !3431, !3434, !3435, !3436, !3437, !3438, !3439, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3471, !3474, !3480, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3492, !3564, !3566, !3567, !3568, !3569, !3570, !3571, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3588, !3589, !3590}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2644, file: !1756, line: 752, baseType: !2647, size: 192)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2648, line: 56, size: 192, elements: !2649)
!2648 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2649 = !{!2650, !2651, !2652, !2653}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2647, file: !2648, line: 57, baseType: !191, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2647, file: !2648, line: 58, baseType: !191, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2647, file: !2648, line: 59, baseType: !698, size: 32, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2647, file: !2648, line: 61, baseType: !698, size: 32, offset: 160)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2644, file: !1756, line: 754, baseType: !7, size: 32, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2644, file: !1756, line: 767, baseType: !190, size: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2644, file: !1756, line: 768, baseType: !565, size: 32, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2644, file: !1756, line: 770, baseType: !7, size: 32, offset: 352)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2644, file: !1756, line: 771, baseType: !7, size: 32, offset: 384)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2644, file: !1756, line: 774, baseType: !85, size: 32, offset: 416)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2644, file: !1756, line: 775, baseType: !2661, size: 128, offset: 448)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2662, line: 58, size: 128, elements: !2663)
!2662 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2663 = !{!2664, !2665, !2670, !2671}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2661, file: !2662, line: 59, baseType: !501, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, scope: !2661, file: !2662, line: 60, baseType: !2666, size: 32, offset: 64)
!2666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2661, file: !2662, line: 60, size: 32, elements: !2667)
!2667 = !{!2668, !2669}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2666, file: !2662, line: 61, baseType: !7, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2666, file: !2662, line: 62, baseType: !464, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2661, file: !2662, line: 65, baseType: !428, size: 16, offset: 96)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2661, file: !2662, line: 65, baseType: !428, size: 16, offset: 112)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2644, file: !1756, line: 776, baseType: !7, size: 32, offset: 576)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2644, file: !1756, line: 777, baseType: !191, size: 64, offset: 640)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2644, file: !1756, line: 778, baseType: !2643, size: 64, offset: 704)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2644, file: !1756, line: 787, baseType: !85, size: 32, offset: 768)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2644, file: !1756, line: 788, baseType: !85, size: 32, offset: 800)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2644, file: !1756, line: 790, baseType: !85, size: 32, offset: 832)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2644, file: !1756, line: 792, baseType: !85, size: 32, offset: 864)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2644, file: !1756, line: 793, baseType: !85, size: 32, offset: 896)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2644, file: !1756, line: 794, baseType: !85, size: 32, offset: 928)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2644, file: !1756, line: 795, baseType: !7, size: 32, offset: 960)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2644, file: !1756, line: 797, baseType: !2683, size: 2048, offset: 1024)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1756, line: 551, size: 2048, elements: !2684)
!2684 = !{!2685, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2705, !2708, !2709, !2710}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2683, file: !1756, line: 553, baseType: !2686, size: 128)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1756, line: 411, size: 128, elements: !2687)
!2687 = !{!2688, !2689}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2686, file: !1756, line: 412, baseType: !191, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2686, file: !1756, line: 413, baseType: !698, size: 32, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2683, file: !1756, line: 554, baseType: !665, size: 192, align: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2683, file: !1756, line: 555, baseType: !641, size: 64, offset: 320)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2683, file: !1756, line: 556, baseType: !641, size: 64, offset: 384)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2683, file: !1756, line: 558, baseType: !485, size: 128, offset: 448)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2683, file: !1756, line: 559, baseType: !7, size: 32, offset: 576)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2683, file: !1756, line: 561, baseType: !641, size: 64, offset: 640)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2683, file: !1756, line: 562, baseType: !641, size: 64, offset: 704)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2683, file: !1756, line: 563, baseType: !641, size: 64, offset: 768)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2683, file: !1756, line: 564, baseType: !641, size: 64, offset: 832)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2683, file: !1756, line: 565, baseType: !447, size: 64, offset: 896)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2683, file: !1756, line: 566, baseType: !641, size: 64, offset: 960)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2683, file: !1756, line: 568, baseType: !641, size: 64, offset: 1024)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2683, file: !1756, line: 571, baseType: !85, size: 32, offset: 1088)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2683, file: !1756, line: 572, baseType: !2704, size: 64, offset: 1152)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2683, file: !1756, line: 574, baseType: !2706, size: 64, offset: 1216)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1756, line: 49, flags: DIFlagFwdDecl)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2683, file: !1756, line: 576, baseType: !2706, size: 64, offset: 1280)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2683, file: !1756, line: 578, baseType: !191, size: 64, offset: 1344)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2683, file: !1756, line: 588, baseType: !2711, size: 512, align: 512, offset: 1536)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1756, line: 497, size: 512, align: 512, elements: !2712)
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2711, file: !1756, line: 498, baseType: !641, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2711, file: !1756, line: 499, baseType: !641, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2711, file: !1756, line: 500, baseType: !641, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2711, file: !1756, line: 501, baseType: !698, size: 32, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2711, file: !1756, line: 502, baseType: !698, size: 32, offset: 224)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2711, file: !1756, line: 503, baseType: !191, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2711, file: !1756, line: 504, baseType: !191, size: 64, offset: 320)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2711, file: !1756, line: 505, baseType: !191, size: 64, offset: 384)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2711, file: !1756, line: 506, baseType: !2722, size: 64, align: 64, offset: 448)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1756, line: 445, size: 64, align: 64, elements: !2723)
!2723 = !{!2724, !2725}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2722, file: !1756, line: 446, baseType: !7, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2722, file: !1756, line: 447, baseType: !7, size: 32, offset: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2644, file: !1756, line: 798, baseType: !2727, size: 384, offset: 3072)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1756, line: 592, size: 384, elements: !2728)
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2734, !2735}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2727, file: !1756, line: 593, baseType: !485, size: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2727, file: !1756, line: 594, baseType: !191, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2727, file: !1756, line: 595, baseType: !191, size: 64, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2727, file: !1756, line: 596, baseType: !7, size: 32, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2727, file: !1756, line: 597, baseType: !292, size: 16, offset: 288)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2727, file: !1756, line: 598, baseType: !292, size: 16, offset: 304)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2727, file: !1756, line: 600, baseType: !2736, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2644, file: !1756, line: 799, baseType: !2738, size: 1792, offset: 3456)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1756, line: 610, size: 1792, elements: !2739)
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2820, !2821}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2738, file: !1756, line: 611, baseType: !665, size: 192, align: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2738, file: !1756, line: 618, baseType: !641, size: 64, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2738, file: !1756, line: 619, baseType: !641, size: 64, offset: 256)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2738, file: !1756, line: 620, baseType: !641, size: 64, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2738, file: !1756, line: 621, baseType: !641, size: 64, offset: 384)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2738, file: !1756, line: 622, baseType: !641, size: 64, offset: 448)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2738, file: !1756, line: 629, baseType: !447, size: 64, offset: 512)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2738, file: !1756, line: 630, baseType: !641, size: 64, offset: 576)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2738, file: !1756, line: 631, baseType: !7, size: 32, offset: 640)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2738, file: !1756, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2738, file: !1756, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2738, file: !1756, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2738, file: !1756, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2738, file: !1756, line: 662, baseType: !2754, size: 512, offset: 704)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !2755)
!2755 = !{!2756, !2764, !2765, !2770, !2816, !2817, !2818, !2819}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2754, file: !46, line: 119, baseType: !2757, size: 256)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2758, line: 9, size: 256, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2759 = !{!2760, !2761}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2757, file: !2758, line: 10, baseType: !665, size: 192, align: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2757, file: !2758, line: 11, baseType: !2762, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2763, line: 29, baseType: !447)
!2763 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2754, file: !46, line: 120, baseType: !2762, size: 64, offset: 256)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2754, file: !46, line: 121, baseType: !2766, size: 64, offset: 320)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!45, !2769}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2754, file: !46, line: 122, baseType: !2771, size: 64, offset: 384)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !2773)
!2773 = !{!2774, !2797, !2798, !2801, !2806, !2807, !2811, !2815}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2772, file: !46, line: 160, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2776, file: !46, line: 216, baseType: !451, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2776, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2776, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2776, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2776, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2776, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2776, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2776, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2776, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2776, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2776, file: !46, line: 227, baseType: !292, size: 16, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2776, file: !46, line: 228, baseType: !292, size: 16, offset: 208)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2776, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2776, file: !46, line: 235, baseType: !2762, size: 64, offset: 256)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2776, file: !46, line: 236, baseType: !2769, size: 64, offset: 320)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2776, file: !46, line: 237, baseType: !2762, size: 64, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2776, file: !46, line: 238, baseType: !2769, size: 64, offset: 448)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2776, file: !46, line: 239, baseType: !2796, size: 4096, align: 512, offset: 512)
!2796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2772, size: 4096, align: 512, elements: !230)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2772, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2772, file: !46, line: 162, baseType: !2799, size: 32, offset: 96)
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !189, line: 32, baseType: !2800)
!2800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !532, line: 96, baseType: !85)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2772, file: !46, line: 163, baseType: !2802, size: 32, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !861, line: 274, baseType: !2803)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !861, line: 274, size: 32, elements: !2804)
!2804 = !{!2805}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2803, file: !861, line: 274, baseType: !865, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2772, file: !46, line: 164, baseType: !2769, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2772, file: !46, line: 165, baseType: !2808, size: 128, offset: 256)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2758, line: 14, size: 128, elements: !2809)
!2809 = !{!2810}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2808, file: !2758, line: 15, baseType: !1265, size: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2772, file: !46, line: 166, baseType: !2812, size: 64, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!2762}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2772, file: !46, line: 167, baseType: !2762, size: 64, offset: 448)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2754, file: !46, line: 123, baseType: !472, size: 8, offset: 448)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2754, file: !46, line: 124, baseType: !472, size: 8, offset: 456)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2754, file: !46, line: 125, baseType: !472, size: 8, offset: 464)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2754, file: !46, line: 126, baseType: !472, size: 8, offset: 472)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2738, file: !1756, line: 671, baseType: !2754, size: 512, offset: 1216)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2738, file: !1756, line: 679, baseType: !2822, size: 64, offset: 1728)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2644, file: !1756, line: 800, baseType: !2824, size: 64, offset: 5248)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2826)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1756, line: 800, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2644, file: !1756, line: 809, baseType: !2828, size: 64, offset: 5312)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1756, line: 70, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2644, file: !1756, line: 825, baseType: !2831, size: 2048, align: 512, offset: 5632)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1756, line: 509, size: 2048, align: 512, elements: !2832)
!2832 = !{!2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2831, file: !1756, line: 511, baseType: !641, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2831, file: !1756, line: 512, baseType: !641, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2831, file: !1756, line: 513, baseType: !641, size: 64, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2831, file: !1756, line: 514, baseType: !641, size: 64, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2831, file: !1756, line: 515, baseType: !641, size: 64, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2831, file: !1756, line: 516, baseType: !641, size: 64, offset: 320)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2831, file: !1756, line: 518, baseType: !641, size: 64, offset: 384)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2831, file: !1756, line: 519, baseType: !641, size: 64, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2831, file: !1756, line: 520, baseType: !447, size: 64, offset: 512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2831, file: !1756, line: 522, baseType: !641, size: 64, offset: 576)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2831, file: !1756, line: 523, baseType: !641, size: 64, offset: 640)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2831, file: !1756, line: 524, baseType: !447, size: 64, offset: 704)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2831, file: !1756, line: 526, baseType: !447, size: 64, offset: 768)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2831, file: !1756, line: 527, baseType: !641, size: 64, offset: 832)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2831, file: !1756, line: 529, baseType: !641, size: 64, offset: 896)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2831, file: !1756, line: 530, baseType: !641, size: 64, offset: 960)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2831, file: !1756, line: 531, baseType: !641, size: 64, offset: 1024)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2831, file: !1756, line: 532, baseType: !641, size: 64, offset: 1088)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2831, file: !1756, line: 533, baseType: !641, size: 64, offset: 1152)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2831, file: !1756, line: 535, baseType: !641, size: 64, offset: 1216)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2831, file: !1756, line: 536, baseType: !641, size: 64, offset: 1280)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2831, file: !1756, line: 537, baseType: !641, size: 64, offset: 1344)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2831, file: !1756, line: 538, baseType: !641, size: 64, offset: 1408)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2831, file: !1756, line: 539, baseType: !641, size: 64, offset: 1472)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2831, file: !1756, line: 540, baseType: !641, size: 64, offset: 1536)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2831, file: !1756, line: 541, baseType: !641, size: 64, offset: 1600)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2831, file: !1756, line: 542, baseType: !641, size: 64, offset: 1664)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2831, file: !1756, line: 543, baseType: !641, size: 64, offset: 1728)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2644, file: !1756, line: 833, baseType: !7, size: 32, offset: 7680)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2644, file: !1756, line: 836, baseType: !7, size: 32, offset: 7712)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2644, file: !1756, line: 837, baseType: !85, size: 32, offset: 7744)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2644, file: !1756, line: 838, baseType: !2865, size: 64, offset: 7808)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2867)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2868, line: 19, baseType: !2869)
!2868 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2868, line: 19, size: 64, elements: !2870)
!2870 = !{!2871}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2869, file: !2868, line: 19, baseType: !297, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2644, file: !1756, line: 839, baseType: !2873, size: 64, offset: 7872)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2644, file: !1756, line: 840, baseType: !2867, size: 64, offset: 7936)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2644, file: !1756, line: 841, baseType: !190, size: 64, offset: 8000)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2644, file: !1756, line: 843, baseType: !292, size: 16, offset: 8064)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2644, file: !1756, line: 845, baseType: !292, size: 16, offset: 8080)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2644, file: !1756, line: 848, baseType: !85, size: 32, offset: 8096)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2644, file: !1756, line: 849, baseType: !2880, size: 32, offset: 8128)
!2880 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1756, line: 718, size: 32, elements: !2881)
!2881 = !{!2882, !2889}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2880, file: !1756, line: 724, baseType: !2883, size: 32)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2880, file: !1756, line: 719, size: 32, elements: !2884)
!2884 = !{!2885, !2886, !2887, !2888}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2883, file: !1756, line: 720, baseType: !472, size: 8)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2883, file: !1756, line: 721, baseType: !472, size: 8, offset: 8)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2883, file: !1756, line: 722, baseType: !472, size: 8, offset: 16)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2883, file: !1756, line: 723, baseType: !472, size: 8, offset: 24)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2880, file: !1756, line: 725, baseType: !698, size: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2644, file: !1756, line: 850, baseType: !485, size: 128, offset: 8192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2644, file: !1756, line: 851, baseType: !2892, size: 64, offset: 8320)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1756, line: 60, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2644, file: !1756, line: 855, baseType: !191, size: 64, offset: 8384)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2644, file: !1756, line: 856, baseType: !472, size: 8, offset: 8448)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2644, file: !1756, line: 857, baseType: !472, size: 8, offset: 8456)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2644, file: !1756, line: 858, baseType: !85, size: 32, offset: 8480)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2644, file: !1756, line: 859, baseType: !485, size: 128, offset: 8512)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2644, file: !1756, line: 860, baseType: !85, size: 32, offset: 8640)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2644, file: !1756, line: 861, baseType: !485, size: 128, offset: 8704)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2644, file: !1756, line: 873, baseType: !2902, size: 256, offset: 8832)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1756, line: 376, size: 256, elements: !2903)
!2903 = !{!2904, !2905, !2906, !2907}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2902, file: !1756, line: 381, baseType: !191, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2902, file: !1756, line: 384, baseType: !643, size: 64, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2902, file: !1756, line: 389, baseType: !643, size: 64, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2902, file: !1756, line: 392, baseType: !643, size: 64, offset: 192)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2644, file: !1756, line: 875, baseType: !485, size: 128, offset: 9088)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2644, file: !1756, line: 877, baseType: !2910, size: 320, offset: 9216)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2911, line: 86, size: 320, elements: !2912)
!2911 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2912 = !{!2913, !2914, !2915}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2910, file: !2911, line: 87, baseType: !85, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2910, file: !2911, line: 88, baseType: !485, size: 128, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2910, file: !2911, line: 89, baseType: !485, size: 128, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2644, file: !1756, line: 878, baseType: !665, size: 192, align: 64, offset: 9536)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2644, file: !1756, line: 881, baseType: !1551, size: 64, offset: 9728)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2644, file: !1756, line: 882, baseType: !1551, size: 64, offset: 9792)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2644, file: !1756, line: 884, baseType: !85, size: 32, offset: 9856)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2644, file: !1756, line: 885, baseType: !85, size: 32, offset: 9888)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2644, file: !1756, line: 886, baseType: !85, size: 32, offset: 9920)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2644, file: !1756, line: 888, baseType: !85, size: 32, offset: 9952)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2644, file: !1756, line: 890, baseType: !191, size: 64, offset: 9984)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2644, file: !1756, line: 893, baseType: !7, size: 32, offset: 10048)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2644, file: !1756, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2644, file: !1756, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2644, file: !1756, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2644, file: !1756, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2644, file: !1756, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2644, file: !1756, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2644, file: !1756, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2644, file: !1756, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2644, file: !1756, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2644, file: !1756, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2644, file: !1756, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2644, file: !1756, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2644, file: !1756, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2644, file: !1756, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2644, file: !1756, line: 969, baseType: !191, size: 64, offset: 10176)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2644, file: !1756, line: 971, baseType: !2941, size: 448, offset: 10240)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !2942)
!2942 = !{!2943, !2944, !2949}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2941, file: !51, line: 26, baseType: !191, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2941, file: !51, line: 27, baseType: !2945, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!199, !2948}
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !2941, file: !51, line: 28, baseType: !2950, size: 320, offset: 128)
!2950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2941, file: !51, line: 28, size: 320, elements: !2951)
!2951 = !{!2952, !2962, !2987}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2950, file: !51, line: 37, baseType: !2953, size: 320)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2950, file: !51, line: 30, size: 320, elements: !2954)
!2954 = !{!2955, !2957, !2958, !2959, !2960, !2961}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2953, file: !51, line: 31, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2953, file: !51, line: 32, baseType: !698, size: 32, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2953, file: !51, line: 33, baseType: !698, size: 32, offset: 96)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2953, file: !51, line: 34, baseType: !698, size: 32, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2953, file: !51, line: 35, baseType: !641, size: 64, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2953, file: !51, line: 36, baseType: !2956, size: 64, offset: 256)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2950, file: !51, line: 47, baseType: !2963, size: 192)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2950, file: !51, line: 39, size: 192, elements: !2964)
!2964 = !{!2965, !2966, !2967, !2986}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2963, file: !51, line: 40, baseType: !2799, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2963, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, scope: !2963, file: !51, line: 42, baseType: !2968, size: 64, offset: 64)
!2968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2963, file: !51, line: 42, size: 64, elements: !2969)
!2969 = !{!2970, !2978}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2968, file: !51, line: 43, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2973, line: 7, size: 128, elements: !2974)
!2973 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2974 = !{!2975, !2977}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2972, file: !2973, line: 8, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !532, line: 93, baseType: !449)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2972, file: !2973, line: 9, baseType: !449, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2968, file: !51, line: 44, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2981, line: 7, size: 64, elements: !2982)
!2981 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2982 = !{!2983, !2985}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2980, file: !2981, line: 8, baseType: !2984, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2981, line: 5, baseType: !658)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2980, file: !2981, line: 9, baseType: !658, size: 32, offset: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2963, file: !51, line: 46, baseType: !641, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2950, file: !51, line: 55, baseType: !2988, size: 256)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2950, file: !51, line: 49, size: 256, elements: !2989)
!2989 = !{!2990, !2993, !2994, !2995, !2996}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2988, file: !51, line: 50, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2988, file: !51, line: 51, baseType: !85, size: 32, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2988, file: !51, line: 52, baseType: !85, size: 32, offset: 96)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2988, file: !51, line: 53, baseType: !191, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2988, file: !51, line: 54, baseType: !191, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2644, file: !1756, line: 973, baseType: !2998, size: 32, offset: 10688)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !189, line: 27, baseType: !2999)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !532, line: 28, baseType: !85)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2644, file: !1756, line: 974, baseType: !2998, size: 32, offset: 10720)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2644, file: !1756, line: 978, baseType: !191, size: 64, offset: 10752)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2644, file: !1756, line: 987, baseType: !2643, size: 64, offset: 10816)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2644, file: !1756, line: 990, baseType: !2643, size: 64, offset: 10880)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2644, file: !1756, line: 995, baseType: !485, size: 128, offset: 10944)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2644, file: !1756, line: 996, baseType: !485, size: 128, offset: 11072)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2644, file: !1756, line: 997, baseType: !2643, size: 64, offset: 11200)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2644, file: !1756, line: 1005, baseType: !485, size: 128, offset: 11264)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2644, file: !1756, line: 1006, baseType: !485, size: 128, offset: 11392)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2644, file: !1756, line: 1009, baseType: !561, size: 64, offset: 11520)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2644, file: !1756, line: 1010, baseType: !3011, size: 512, offset: 11584)
!3011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 512, elements: !260)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2644, file: !1756, line: 1011, baseType: !485, size: 128, offset: 12096)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2644, file: !1756, line: 1012, baseType: !485, size: 128, offset: 12224)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2644, file: !1756, line: 1014, baseType: !1927, size: 64, offset: 12352)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2644, file: !1756, line: 1017, baseType: !2068, size: 64, offset: 12416)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2644, file: !1756, line: 1020, baseType: !2068, size: 64, offset: 12480)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2644, file: !1756, line: 1023, baseType: !190, size: 64, offset: 12544)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2644, file: !1756, line: 1025, baseType: !641, size: 64, offset: 12608)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2644, file: !1756, line: 1026, baseType: !641, size: 64, offset: 12672)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2644, file: !1756, line: 1031, baseType: !641, size: 64, offset: 12736)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2644, file: !1756, line: 1032, baseType: !3022, size: 192, offset: 12800)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1756, line: 324, size: 192, elements: !3023)
!3023 = !{!3024, !3025, !3026}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3022, file: !1756, line: 326, baseType: !641, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3022, file: !1756, line: 327, baseType: !641, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3022, file: !1756, line: 328, baseType: !451, size: 32, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2644, file: !1756, line: 1041, baseType: !191, size: 64, offset: 12992)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2644, file: !1756, line: 1042, baseType: !191, size: 64, offset: 13056)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2644, file: !1756, line: 1045, baseType: !641, size: 64, offset: 13120)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2644, file: !1756, line: 1048, baseType: !641, size: 64, offset: 13184)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2644, file: !1756, line: 1051, baseType: !191, size: 64, offset: 13248)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2644, file: !1756, line: 1052, baseType: !191, size: 64, offset: 13312)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2644, file: !1756, line: 1055, baseType: !3034, size: 640, offset: 13376)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3035, line: 132, size: 640, elements: !3036)
!3035 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3036 = !{!3037, !3043, !3044}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3034, file: !3035, line: 133, baseType: !3038, size: 576)
!3038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3039, size: 576, elements: !557)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3035, line: 117, size: 192, elements: !3040)
!3040 = !{!3041, !3042}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3039, file: !3035, line: 118, baseType: !641, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3039, file: !3035, line: 119, baseType: !2808, size: 128, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3034, file: !3035, line: 134, baseType: !7, size: 32, offset: 576)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3034, file: !3035, line: 135, baseType: !7, size: 32, offset: 608)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2644, file: !1756, line: 1058, baseType: !3046, size: 448, offset: 14016)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3035, line: 144, size: 448, elements: !3047)
!3047 = !{!3048, !3049, !3050}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3046, file: !3035, line: 145, baseType: !507, size: 128, align: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3046, file: !3035, line: 146, baseType: !437, size: 256, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3046, file: !3035, line: 147, baseType: !7, size: 32, offset: 384)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2644, file: !1756, line: 1064, baseType: !614, size: 64, offset: 14464)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2644, file: !1756, line: 1067, baseType: !614, size: 64, offset: 14528)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2644, file: !1756, line: 1070, baseType: !614, size: 64, offset: 14592)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2644, file: !1756, line: 1074, baseType: !650, size: 64, offset: 14656)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2644, file: !1756, line: 1084, baseType: !3056, size: 128, offset: 14720)
!3056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 128, elements: !3057)
!3057 = !{!3058}
!3058 = !DISubrange(count: 16)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2644, file: !1756, line: 1086, baseType: !3060, size: 64, offset: 14848)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1756, line: 55, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2644, file: !1756, line: 1089, baseType: !3063, size: 64, offset: 14912)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3064, line: 12, size: 64, elements: !3065)
!3064 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3065 = !{!3066}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3063, file: !3064, line: 13, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3064, line: 8, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2644, file: !1756, line: 1090, baseType: !3070, size: 128, offset: 14976)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3071, line: 13, size: 128, elements: !3072)
!3071 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3072 = !{!3073}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3070, file: !3071, line: 14, baseType: !485, size: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2644, file: !1756, line: 1097, baseType: !3075, size: 64, offset: 15104)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1756, line: 50, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2644, file: !1756, line: 1100, baseType: !3078, size: 64, offset: 15168)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1756, line: 1100, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2644, file: !1756, line: 1103, baseType: !3081, size: 64, offset: 15232)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1756, line: 53, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2644, file: !1756, line: 1107, baseType: !3084, size: 64, offset: 15296)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1756, line: 56, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2644, file: !1756, line: 1110, baseType: !3087, size: 64, offset: 15360)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3089, line: 93, size: 8768, elements: !3090)
!3089 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3090 = !{!3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3138, !3147, !3148, !3150, !3151, !3152, !3155, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3193, !3194, !3201, !3211, !3214, !3215, !3218, !3219, !3220, !3221, !3222, !3223}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3088, file: !3089, line: 94, baseType: !565, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3088, file: !3089, line: 95, baseType: !464, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3088, file: !3089, line: 96, baseType: !85, size: 32, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3088, file: !3089, line: 97, baseType: !85, size: 32, offset: 96)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3088, file: !3089, line: 98, baseType: !485, size: 128, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3088, file: !3089, line: 100, baseType: !585, size: 192, offset: 256)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3088, file: !3089, line: 103, baseType: !2643, size: 64, offset: 448)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3088, file: !3089, line: 106, baseType: !3099, size: 192, offset: 512)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !821, line: 32, size: 192, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3099, file: !821, line: 33, baseType: !485, size: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3099, file: !821, line: 34, baseType: !3103, size: 64, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3104, line: 25, baseType: !3105)
!3104 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3104, line: 23, size: 64, elements: !3106)
!3106 = !{!3107}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3105, file: !3104, line: 24, baseType: !297, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3088, file: !3089, line: 109, baseType: !574, size: 64, offset: 704)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3088, file: !3089, line: 112, baseType: !85, size: 32, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3088, file: !3089, line: 114, baseType: !85, size: 32, offset: 800)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3088, file: !3089, line: 115, baseType: !2643, size: 64, offset: 832)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3088, file: !3089, line: 118, baseType: !85, size: 32, offset: 896)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3088, file: !3089, line: 119, baseType: !7, size: 32, offset: 928)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3088, file: !3089, line: 121, baseType: !3115, size: 64, offset: 960)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3089, line: 80, size: 448, elements: !3117)
!3117 = !{!3118, !3119, !3125}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3116, file: !3089, line: 81, baseType: !464, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3116, file: !3089, line: 82, baseType: !3120, size: 128, offset: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3089, line: 75, size: 128, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3120, file: !3089, line: 76, baseType: !2643, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3120, file: !3089, line: 77, baseType: !3124, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3116, file: !3089, line: 83, baseType: !1928, size: 256, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3088, file: !3089, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3088, file: !3089, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3088, file: !3089, line: 138, baseType: !7, size: 32, offset: 1056)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3088, file: !3089, line: 139, baseType: !485, size: 128, offset: 1088)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3088, file: !3089, line: 142, baseType: !2754, size: 512, offset: 1216)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3088, file: !3089, line: 143, baseType: !2762, size: 64, offset: 1728)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3088, file: !3089, line: 150, baseType: !3133, size: 256, offset: 1792)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3134, size: 256, elements: !312)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3089, line: 38, size: 128, elements: !3135)
!3135 = !{!3136, !3137}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3134, file: !3089, line: 39, baseType: !641, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3134, file: !3089, line: 40, baseType: !641, size: 64, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3088, file: !3089, line: 156, baseType: !3139, size: 192, offset: 2048)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3089, line: 66, size: 192, elements: !3140)
!3140 = !{!3141}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3139, file: !3089, line: 67, baseType: !3142, size: 192)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3089, line: 47, size: 192, elements: !3143)
!3143 = !{!3144, !3145, !3146}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3142, file: !3089, line: 48, baseType: !443, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3142, file: !3089, line: 49, baseType: !443, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3142, file: !3089, line: 50, baseType: !443, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3088, file: !3089, line: 160, baseType: !3034, size: 640, offset: 2240)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3088, file: !3089, line: 163, baseType: !3149, size: 256, offset: 2880)
!3149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 256, elements: !260)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3088, file: !3089, line: 169, baseType: !561, size: 64, offset: 3136)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3088, file: !3089, line: 172, baseType: !85, size: 32, offset: 3200)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3088, file: !3089, line: 174, baseType: !3153, size: 64, offset: 3264)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3089, line: 174, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3088, file: !3089, line: 185, baseType: !3156, size: 64, offset: 3328)
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !861, line: 860, baseType: !3157)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !861, line: 853, size: 64, elements: !3158)
!3158 = !{!3159, !3160}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3157, file: !861, line: 858, baseType: !860, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3157, file: !861, line: 859, baseType: !517, size: 32, offset: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3088, file: !3089, line: 186, baseType: !641, size: 64, offset: 3392)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3088, file: !3089, line: 186, baseType: !641, size: 64, offset: 3456)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3088, file: !3089, line: 186, baseType: !641, size: 64, offset: 3520)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3088, file: !3089, line: 186, baseType: !641, size: 64, offset: 3584)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3088, file: !3089, line: 187, baseType: !641, size: 64, offset: 3648)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3088, file: !3089, line: 188, baseType: !641, size: 64, offset: 3712)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3088, file: !3089, line: 189, baseType: !3022, size: 192, offset: 3776)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3088, file: !3089, line: 190, baseType: !191, size: 64, offset: 3968)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3088, file: !3089, line: 190, baseType: !191, size: 64, offset: 4032)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3088, file: !3089, line: 190, baseType: !191, size: 64, offset: 4096)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3088, file: !3089, line: 190, baseType: !191, size: 64, offset: 4160)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3088, file: !3089, line: 191, baseType: !191, size: 64, offset: 4224)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3088, file: !3089, line: 191, baseType: !191, size: 64, offset: 4288)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3088, file: !3089, line: 191, baseType: !191, size: 64, offset: 4352)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3088, file: !3089, line: 191, baseType: !191, size: 64, offset: 4416)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3088, file: !3089, line: 192, baseType: !191, size: 64, offset: 4480)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3088, file: !3089, line: 192, baseType: !191, size: 64, offset: 4544)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3088, file: !3089, line: 192, baseType: !191, size: 64, offset: 4608)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3088, file: !3089, line: 192, baseType: !191, size: 64, offset: 4672)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3088, file: !3089, line: 193, baseType: !191, size: 64, offset: 4736)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3088, file: !3089, line: 193, baseType: !191, size: 64, offset: 4800)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3088, file: !3089, line: 194, baseType: !3183, size: 448, offset: 4864)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3184, line: 12, size: 448, elements: !3185)
!3184 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3185 = !{!3186, !3187, !3188, !3189, !3190, !3191, !3192}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3183, file: !3184, line: 15, baseType: !641, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3183, file: !3184, line: 17, baseType: !641, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3183, file: !3184, line: 19, baseType: !641, size: 64, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3183, file: !3184, line: 21, baseType: !641, size: 64, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3183, file: !3184, line: 29, baseType: !641, size: 64, offset: 256)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3183, file: !3184, line: 35, baseType: !641, size: 64, offset: 320)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3183, file: !3184, line: 44, baseType: !641, size: 64, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3088, file: !3089, line: 202, baseType: !643, size: 64, offset: 5312)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3088, file: !3089, line: 213, baseType: !3195, size: 2048, offset: 5376)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3196, size: 2048, elements: !3057)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3197, line: 43, size: 128, elements: !3198)
!3197 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3198 = !{!3199, !3200}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3196, file: !3197, line: 44, baseType: !1052, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3196, file: !3197, line: 45, baseType: !1052, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3088, file: !3089, line: 216, baseType: !3202, size: 448, offset: 7424)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3089, line: 30, size: 448, elements: !3203)
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209, !3210}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3202, file: !3089, line: 31, baseType: !85, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3202, file: !3089, line: 32, baseType: !199, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3202, file: !3089, line: 33, baseType: !191, size: 64, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3202, file: !3089, line: 34, baseType: !641, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3202, file: !3089, line: 34, baseType: !641, size: 64, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3202, file: !3089, line: 35, baseType: !191, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3202, file: !3089, line: 35, baseType: !191, size: 64, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3088, file: !3089, line: 219, baseType: !3212, size: 64, offset: 7872)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3089, line: 219, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3088, file: !3089, line: 222, baseType: !7, size: 32, offset: 7936)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3088, file: !3089, line: 223, baseType: !3216, size: 64, offset: 8000)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3089, line: 223, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3088, file: !3089, line: 230, baseType: !732, size: 8, offset: 8064)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3088, file: !3089, line: 231, baseType: !357, size: 16, offset: 8080)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3088, file: !3089, line: 232, baseType: !357, size: 16, offset: 8096)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3088, file: !3089, line: 234, baseType: !1551, size: 64, offset: 8128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3088, file: !3089, line: 237, baseType: !437, size: 256, offset: 8192)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3088, file: !3089, line: 243, baseType: !673, size: 320, offset: 8448)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2644, file: !1756, line: 1111, baseType: !3225, size: 64, offset: 15424)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3089, line: 20, size: 16640, elements: !3227)
!3227 = !{!3228, !3229, !3230, !3231}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3226, file: !3089, line: 21, baseType: !517, size: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3226, file: !3089, line: 22, baseType: !565, size: 32, offset: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3226, file: !3089, line: 23, baseType: !585, size: 192, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3226, file: !3089, line: 24, baseType: !3232, size: 16384, offset: 256)
!3232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3233, size: 16384, elements: !1195)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !821, line: 51, size: 256, elements: !3234)
!3234 = !{!3235}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3233, file: !821, line: 52, baseType: !3236, size: 256)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !821, line: 37, size: 256, elements: !3237)
!3237 = !{!3238, !3245, !3246, !3250}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3236, file: !821, line: 39, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3240, line: 83, baseType: !3241)
!3240 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3240, line: 82, baseType: !3243)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !85}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3236, file: !821, line: 40, baseType: !191, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3236, file: !821, line: 46, baseType: !3247, size: 64, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3240, line: 86, baseType: !3248)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3240, line: 85, baseType: !2272)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3236, file: !821, line: 48, baseType: !3103, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2644, file: !1756, line: 1112, baseType: !3103, size: 64, offset: 15488)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2644, file: !1756, line: 1113, baseType: !3103, size: 64, offset: 15552)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2644, file: !1756, line: 1115, baseType: !3103, size: 64, offset: 15616)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2644, file: !1756, line: 1116, baseType: !3099, size: 192, offset: 15680)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2644, file: !1756, line: 1117, baseType: !191, size: 64, offset: 15872)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2644, file: !1756, line: 1118, baseType: !1050, size: 64, offset: 15936)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2644, file: !1756, line: 1119, baseType: !7, size: 32, offset: 16000)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2644, file: !1756, line: 1121, baseType: !510, size: 64, offset: 16064)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2644, file: !1756, line: 1125, baseType: !3260, size: 64, offset: 16128)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1756, line: 43, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2644, file: !1756, line: 1127, baseType: !604, size: 32, offset: 16192)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2644, file: !1756, line: 1128, baseType: !7, size: 32, offset: 16224)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2644, file: !1756, line: 1130, baseType: !3265, size: 128, offset: 16256)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3266, line: 37, size: 128, elements: !3267)
!3266 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3267 = !{!3268, !3269, !3270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3265, file: !3266, line: 38, baseType: !85, size: 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3265, file: !3266, line: 39, baseType: !464, size: 32, offset: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3265, file: !3266, line: 40, baseType: !3271, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3266, line: 24, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2644, file: !1756, line: 1131, baseType: !3274, size: 256, offset: 16384)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3275, line: 12, size: 256, elements: !3276)
!3275 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3276 = !{!3277, !3278, !3279, !3280}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3274, file: !3275, line: 13, baseType: !743, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3274, file: !3275, line: 14, baseType: !191, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3274, file: !3275, line: 15, baseType: !191, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3274, file: !3275, line: 16, baseType: !732, size: 8, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2644, file: !1756, line: 1134, baseType: !641, size: 64, offset: 16640)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2644, file: !1756, line: 1135, baseType: !641, size: 64, offset: 16704)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2644, file: !1756, line: 1138, baseType: !517, size: 32, offset: 16768)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2644, file: !1756, line: 1141, baseType: !451, size: 32, offset: 16800)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2644, file: !1756, line: 1143, baseType: !3286, size: 64, offset: 16832)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1756, line: 735, size: 64, elements: !3287)
!3287 = !{!3288}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3286, file: !1756, line: 736, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2644, file: !1756, line: 1147, baseType: !1265, size: 128, offset: 16896)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2644, file: !1756, line: 1149, baseType: !2643, size: 64, offset: 17024)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2644, file: !1756, line: 1151, baseType: !3293, size: 64, offset: 17088)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1756, line: 1151, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2644, file: !1756, line: 1188, baseType: !190, size: 64, offset: 17152)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2644, file: !1756, line: 1191, baseType: !3297, size: 64, offset: 17216)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1756, line: 44, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2644, file: !1756, line: 1194, baseType: !3300, size: 64, offset: 17280)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1756, line: 45, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2644, file: !1756, line: 1197, baseType: !3303, size: 64, offset: 17344)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1756, line: 61, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2644, file: !1756, line: 1199, baseType: !3306, size: 64, offset: 17408)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3308, line: 99, size: 128, elements: !3309)
!3308 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3309 = !{!3310, !3311, !3312}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3307, file: !3308, line: 100, baseType: !441, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3307, file: !3308, line: 101, baseType: !464, size: 32, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3307, file: !3308, line: 103, baseType: !292, size: 16, offset: 96)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2644, file: !1756, line: 1202, baseType: !3314, size: 64, offset: 17472)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1756, line: 48, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2644, file: !1756, line: 1205, baseType: !191, size: 64, offset: 17536)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2644, file: !1756, line: 1206, baseType: !3318, size: 64, offset: 17600)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !821, line: 14, baseType: !3320)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !821, line: 12, size: 384, elements: !3321)
!3321 = !{!3322}
!3322 = !DIDerivedType(tag: DW_TAG_member, scope: !3320, file: !821, line: 13, baseType: !3323, size: 384)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3320, file: !821, line: 13, size: 384, elements: !3324)
!3324 = !{!3325, !3326, !3327, !3328}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3323, file: !821, line: 13, baseType: !85, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3323, file: !821, line: 13, baseType: !85, size: 32, offset: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3323, file: !821, line: 13, baseType: !85, size: 32, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3323, file: !821, line: 13, baseType: !3329, size: 256, offset: 128)
!3329 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3330, line: 37, size: 256, elements: !3331)
!3330 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3331 = !{!3332, !3337, !3350, !3356, !3365, !3391, !3396}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3329, file: !3330, line: 42, baseType: !3333, size: 64)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !3330, line: 39, size: 64, elements: !3334)
!3334 = !{!3335, !3336}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3333, file: !3330, line: 40, baseType: !2999, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3333, file: !3330, line: 41, baseType: !610, size: 32, offset: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3329, file: !3330, line: 50, baseType: !3338, size: 192)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !3330, line: 45, size: 192, elements: !3339)
!3339 = !{!3340, !3342, !3343, !3349}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3338, file: !3330, line: 46, baseType: !3341, size: 32)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !532, line: 95, baseType: !85)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3338, file: !3330, line: 47, baseType: !85, size: 32, offset: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3338, file: !3330, line: 48, baseType: !3344, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3330, line: 11, baseType: !3345)
!3345 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3330, line: 8, size: 64, elements: !3346)
!3346 = !{!3347, !3348}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3345, file: !3330, line: 9, baseType: !85, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3345, file: !3330, line: 10, baseType: !190, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3338, file: !3330, line: 49, baseType: !85, size: 32, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3329, file: !3330, line: 57, baseType: !3351, size: 128)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !3330, line: 53, size: 128, elements: !3352)
!3352 = !{!3353, !3354, !3355}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3351, file: !3330, line: 54, baseType: !2999, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3351, file: !3330, line: 55, baseType: !610, size: 32, offset: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3351, file: !3330, line: 56, baseType: !3344, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3329, file: !3330, line: 66, baseType: !3357, size: 256)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !3330, line: 60, size: 256, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3362, !3364}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3357, file: !3330, line: 61, baseType: !2999, size: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3357, file: !3330, line: 62, baseType: !610, size: 32, offset: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3357, file: !3330, line: 63, baseType: !85, size: 32, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3357, file: !3330, line: 64, baseType: !3363, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !532, line: 94, baseType: !1049)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3357, file: !3330, line: 65, baseType: !3363, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3329, file: !3330, line: 105, baseType: !3366, size: 256)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !3330, line: 69, size: 256, elements: !3367)
!3367 = !{!3368, !3369}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3366, file: !3330, line: 70, baseType: !190, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, scope: !3366, file: !3330, line: 79, baseType: !3370, size: 192, offset: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3366, file: !3330, line: 79, size: 192, elements: !3371)
!3371 = !{!3372, !3373, !3374, !3380, !3385}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3370, file: !3330, line: 81, baseType: !85, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3370, file: !3330, line: 86, baseType: !357, size: 16)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3370, file: !3330, line: 92, baseType: !3375, size: 192)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3370, file: !3330, line: 88, size: 192, elements: !3376)
!3376 = !{!3377, !3378, !3379}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3375, file: !3330, line: 89, baseType: !229, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3375, file: !3330, line: 90, baseType: !190, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3375, file: !3330, line: 91, baseType: !190, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3370, file: !3330, line: 97, baseType: !3381, size: 96)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3370, file: !3330, line: 94, size: 96, elements: !3382)
!3382 = !{!3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3381, file: !3330, line: 95, baseType: !229, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3381, file: !3330, line: 96, baseType: !332, size: 32, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3370, file: !3330, line: 103, baseType: !3386, size: 128)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3370, file: !3330, line: 99, size: 128, elements: !3387)
!3387 = !{!3388, !3389, !3390}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3386, file: !3330, line: 100, baseType: !191, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3386, file: !3330, line: 101, baseType: !332, size: 32, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3386, file: !3330, line: 102, baseType: !332, size: 32, offset: 96)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3329, file: !3330, line: 111, baseType: !3392, size: 128)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !3330, line: 108, size: 128, elements: !3393)
!3393 = !{!3394, !3395}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3392, file: !3330, line: 109, baseType: !199, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3392, file: !3330, line: 110, baseType: !85, size: 32, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3329, file: !3330, line: 118, baseType: !3397, size: 128)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !3330, line: 114, size: 128, elements: !3398)
!3398 = !{!3399, !3400, !3401}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3397, file: !3330, line: 115, baseType: !190, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3397, file: !3330, line: 116, baseType: !85, size: 32, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3397, file: !3330, line: 117, baseType: !7, size: 32, offset: 96)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2644, file: !1756, line: 1208, baseType: !3183, size: 448, offset: 17664)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2644, file: !1756, line: 1215, baseType: !641, size: 64, offset: 18112)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2644, file: !1756, line: 1217, baseType: !641, size: 64, offset: 18176)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2644, file: !1756, line: 1219, baseType: !641, size: 64, offset: 18240)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2644, file: !1756, line: 1223, baseType: !3407, size: 64, offset: 18304)
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3408, line: 99, baseType: !3409)
!3408 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3408, line: 99, size: 64, elements: !3410)
!3410 = !{!3411}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3409, file: !3408, line: 99, baseType: !297, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2644, file: !1756, line: 1225, baseType: !860, size: 32, offset: 18368)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2644, file: !1756, line: 1226, baseType: !85, size: 32, offset: 18400)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2644, file: !1756, line: 1227, baseType: !85, size: 32, offset: 18432)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2644, file: !1756, line: 1231, baseType: !3416, size: 64, offset: 18496)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1756, line: 1231, flags: DIFlagFwdDecl)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2644, file: !1756, line: 1233, baseType: !485, size: 128, offset: 18560)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2644, file: !1756, line: 1240, baseType: !3420, size: 64, offset: 18688)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1756, line: 62, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2644, file: !1756, line: 1242, baseType: !3423, size: 64, offset: 18752)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1756, line: 1242, flags: DIFlagFwdDecl)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2644, file: !1756, line: 1244, baseType: !485, size: 128, offset: 18816)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2644, file: !1756, line: 1245, baseType: !3427, size: 64, offset: 18944)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1756, line: 51, flags: DIFlagFwdDecl)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2644, file: !1756, line: 1246, baseType: !437, size: 256, offset: 19008)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2644, file: !1756, line: 1247, baseType: !7, size: 32, offset: 19264)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2644, file: !1756, line: 1250, baseType: !3432, size: 64, offset: 19328)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1756, line: 57, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2644, file: !1756, line: 1251, baseType: !437, size: 256, offset: 19392)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2644, file: !1756, line: 1252, baseType: !485, size: 128, offset: 19648)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2644, file: !1756, line: 1259, baseType: !1754, size: 64, offset: 19776)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2644, file: !1756, line: 1260, baseType: !357, size: 16, offset: 19840)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2644, file: !1756, line: 1261, baseType: !357, size: 16, offset: 19856)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2644, file: !1756, line: 1314, baseType: !3440, size: 64, offset: 19904)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3442, line: 62, size: 256, align: 256, elements: !3443)
!3442 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449, !3450}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3441, file: !3442, line: 75, baseType: !332, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3441, file: !3442, line: 90, baseType: !332, size: 32, offset: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3441, file: !3442, line: 112, baseType: !642, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3441, file: !3442, line: 132, baseType: !332, size: 32, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3441, file: !3442, line: 140, baseType: !332, size: 32, offset: 160)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3441, file: !3442, line: 149, baseType: !332, size: 32, offset: 192)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3441, file: !3442, line: 154, baseType: !3451, offset: 224)
!3451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, elements: !600)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2644, file: !1756, line: 1315, baseType: !698, size: 32, offset: 19968)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2644, file: !1756, line: 1316, baseType: !698, size: 32, offset: 20000)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2644, file: !1756, line: 1321, baseType: !191, size: 64, offset: 20032)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2644, file: !1756, line: 1325, baseType: !85, size: 32, offset: 20096)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2644, file: !1756, line: 1326, baseType: !85, size: 32, offset: 20128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2644, file: !1756, line: 1327, baseType: !85, size: 32, offset: 20160)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2644, file: !1756, line: 1328, baseType: !85, size: 32, offset: 20192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2644, file: !1756, line: 1329, baseType: !507, size: 128, align: 64, offset: 20224)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2644, file: !1756, line: 1332, baseType: !3461, size: 128, offset: 20352)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3462, line: 51, size: 128, elements: !3463)
!3462 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3463 = !{!3464, !3469, !3470}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3461, file: !3462, line: 60, baseType: !3465, size: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3466, line: 7, size: 64, elements: !3467)
!3466 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3467 = !{!3468}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3465, file: !3466, line: 12, baseType: !2869, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3461, file: !3462, line: 63, baseType: !732, size: 8, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3461, file: !3462, line: 70, baseType: !732, size: 8, offset: 72)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2644, file: !1756, line: 1335, baseType: !3472, size: 64, offset: 20480)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1756, line: 59, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2644, file: !1756, line: 1337, baseType: !3475, size: 128, offset: 20544)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3462, line: 39, size: 128, elements: !3476)
!3476 = !{!3477, !3478, !3479}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3475, file: !3462, line: 40, baseType: !1283, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3475, file: !3462, line: 42, baseType: !332, size: 32, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3475, file: !3462, line: 43, baseType: !332, size: 32, offset: 96)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2644, file: !1756, line: 1340, baseType: !3481, size: 64, offset: 20672)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1756, line: 69, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2644, file: !1756, line: 1351, baseType: !85, size: 32, offset: 20736)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2644, file: !1756, line: 1352, baseType: !85, size: 32, offset: 20768)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2644, file: !1756, line: 1354, baseType: !191, size: 64, offset: 20800)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2644, file: !1756, line: 1364, baseType: !641, size: 64, offset: 20864)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2644, file: !1756, line: 1365, baseType: !641, size: 64, offset: 20928)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2644, file: !1756, line: 1412, baseType: !191, size: 64, offset: 20992)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2644, file: !1756, line: 1453, baseType: !3490, size: 64, offset: 21056)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1756, line: 1453, flags: DIFlagFwdDecl)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2644, file: !1756, line: 1457, baseType: !3493, size: 64, offset: 21120)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !3495)
!3495 = !{!3496, !3497, !3516, !3519, !3520, !3553, !3563}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3494, file: !57, line: 62, baseType: !56, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !57, line: 64, baseType: !3498, size: 192, offset: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3494, file: !57, line: 64, size: 192, elements: !3499)
!3499 = !{!3500, !3511}
!3500 = !DIDerivedType(tag: DW_TAG_member, scope: !3498, file: !57, line: 65, baseType: !3501, size: 192)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3498, file: !57, line: 65, size: 192, elements: !3502)
!3502 = !{!3503, !3510}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3501, file: !57, line: 66, baseType: !3504, size: 128)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3505, line: 50, size: 128, elements: !3506)
!3505 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3506 = !{!3507, !3508, !3509}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3504, file: !3505, line: 52, baseType: !191, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3504, file: !3505, line: 54, baseType: !7, size: 32, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3504, file: !3505, line: 55, baseType: !7, size: 32, offset: 96)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3501, file: !57, line: 67, baseType: !191, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, scope: !3498, file: !57, line: 70, baseType: !3512, size: 192)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3498, file: !57, line: 70, size: 192, elements: !3513)
!3513 = !{!3514, !3515}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3512, file: !57, line: 71, baseType: !507, size: 128, align: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3512, file: !57, line: 72, baseType: !191, size: 64, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3494, file: !57, line: 76, baseType: !3517, size: 64, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3494, file: !57, line: 77, baseType: !191, size: 64, offset: 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3494, file: !57, line: 79, baseType: !3521, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3505, line: 25, size: 256, elements: !3523)
!3523 = !{!3524, !3530, !3534}
!3524 = !DIDerivedType(tag: DW_TAG_member, scope: !3522, file: !3505, line: 26, baseType: !3525, size: 128)
!3525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3522, file: !3505, line: 26, size: 128, elements: !3526)
!3526 = !{!3527, !3529}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3525, file: !3505, line: 27, baseType: !3528, size: 128)
!3528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 128, elements: !3057)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3525, file: !3505, line: 28, baseType: !3528, size: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3522, file: !3505, line: 31, baseType: !3531, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3533)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3505, line: 23, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, scope: !3522, file: !3505, line: 33, baseType: !3535, size: 64, offset: 192)
!3535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3522, file: !3505, line: 33, size: 64, elements: !3536)
!3536 = !{!3537, !3543, !3548}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3535, file: !3505, line: 38, baseType: !3538, size: 64)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3535, file: !3505, line: 34, size: 64, elements: !3539)
!3539 = !{!3540, !3541, !3542}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3538, file: !3505, line: 35, baseType: !658, size: 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3538, file: !3505, line: 36, baseType: !472, size: 8, offset: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3538, file: !3505, line: 37, baseType: !472, size: 8, offset: 40)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3535, file: !3505, line: 42, baseType: !3544, size: 16)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3535, file: !3505, line: 39, size: 16, elements: !3545)
!3545 = !{!3546, !3547}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3544, file: !3505, line: 40, baseType: !472, size: 8)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3544, file: !3505, line: 41, baseType: !472, size: 8, offset: 8)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3535, file: !3505, line: 46, baseType: !3549, size: 16)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3535, file: !3505, line: 43, size: 16, elements: !3550)
!3550 = !{!3551, !3552}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3549, file: !3505, line: 44, baseType: !472, size: 8)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3549, file: !3505, line: 45, baseType: !472, size: 8, offset: 8)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3494, file: !57, line: 81, baseType: !3554, size: 64, offset: 448)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3556)
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3562}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3555, file: !57, line: 86, baseType: !3517, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3555, file: !57, line: 87, baseType: !191, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3555, file: !57, line: 88, baseType: !191, size: 64, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3555, file: !57, line: 89, baseType: !191, size: 64, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3555, file: !57, line: 90, baseType: !732, size: 8, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3555, file: !57, line: 92, baseType: !3554, size: 64, offset: 320)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3494, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2644, file: !1756, line: 1463, baseType: !3565, offset: 21184)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1756, line: 739, elements: !1572)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2644, file: !1756, line: 1470, baseType: !507, size: 128, align: 64, offset: 21184)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2644, file: !1756, line: 1471, baseType: !565, size: 32, offset: 21312)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2644, file: !1756, line: 1472, baseType: !85, size: 32, offset: 21344)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2644, file: !1756, line: 1474, baseType: !2643, size: 64, offset: 21376)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2644, file: !1756, line: 1475, baseType: !2168, size: 320, offset: 21440)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2644, file: !1756, line: 1478, baseType: !3572, size: 64, offset: 21760)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1756, line: 1478, flags: DIFlagFwdDecl)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2644, file: !1756, line: 1482, baseType: !565, size: 32, offset: 21824)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2644, file: !1756, line: 1489, baseType: !190, size: 64, offset: 21888)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2644, file: !1756, line: 1504, baseType: !190, size: 64, offset: 21952)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2644, file: !1756, line: 1505, baseType: !642, size: 64, offset: 22016)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2644, file: !1756, line: 1506, baseType: !641, size: 64, offset: 22080)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2644, file: !1756, line: 1507, baseType: !642, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2644, file: !1756, line: 1508, baseType: !642, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2644, file: !1756, line: 1509, baseType: !642, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2644, file: !1756, line: 1510, baseType: !507, size: 128, align: 64, offset: 22208)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2644, file: !1756, line: 1511, baseType: !85, size: 32, offset: 22336)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2644, file: !1756, line: 1515, baseType: !3585, size: 64, offset: 22400)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !502, line: 56, size: 64, elements: !3586)
!3586 = !{!3587}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3585, file: !502, line: 57, baseType: !505, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2644, file: !1756, line: 1518, baseType: !3585, size: 64, offset: 22464)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2644, file: !1756, line: 1528, baseType: !507, size: 128, align: 64, offset: 22528)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2644, file: !1756, line: 1552, baseType: !3591, size: 35328, offset: 23040)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3592, line: 430, size: 35328, elements: !3593)
!3592 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3593 = !{!3594, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3623, !3624, !3625, !3626, !3627, !3628, !3631, !3632, !3633, !3634}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3591, file: !3592, line: 432, baseType: !3595, size: 192)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3596, size: 192, elements: !557)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3597, line: 16, size: 64, elements: !3598)
!3597 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3596, file: !3597, line: 17, baseType: !428, size: 16)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3596, file: !3597, line: 18, baseType: !428, size: 16, offset: 16)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3596, file: !3597, line: 19, baseType: !428, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3596, file: !3597, line: 19, baseType: !428, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3596, file: !3597, line: 19, baseType: !428, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3596, file: !3597, line: 19, baseType: !428, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3596, file: !3597, line: 19, baseType: !428, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3596, file: !3597, line: 20, baseType: !428, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3596, file: !3597, line: 20, baseType: !428, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3596, file: !3597, line: 20, baseType: !428, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3596, file: !3597, line: 20, baseType: !428, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3596, file: !3597, line: 20, baseType: !428, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3596, file: !3597, line: 20, baseType: !428, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3591, file: !3592, line: 436, baseType: !191, size: 64, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3591, file: !3592, line: 440, baseType: !292, size: 16, offset: 256)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3591, file: !3592, line: 441, baseType: !292, size: 16, offset: 272)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3591, file: !3592, line: 442, baseType: !292, size: 16, offset: 288)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3591, file: !3592, line: 443, baseType: !292, size: 16, offset: 304)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3591, file: !3592, line: 447, baseType: !191, size: 64, offset: 320)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3591, file: !3592, line: 448, baseType: !191, size: 64, offset: 384)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3591, file: !3592, line: 459, baseType: !3620, size: 256, offset: 448)
!3620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3621, size: 256, elements: !260)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3592, line: 428, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3591, file: !3592, line: 461, baseType: !191, size: 64, offset: 704)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3591, file: !3592, line: 463, baseType: !191, size: 64, offset: 768)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3591, file: !3592, line: 465, baseType: !191, size: 64, offset: 832)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3591, file: !3592, line: 466, baseType: !191, size: 64, offset: 896)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3591, file: !3592, line: 467, baseType: !191, size: 64, offset: 960)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3591, file: !3592, line: 473, baseType: !3629, size: 64, offset: 1024)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3592, line: 10, flags: DIFlagFwdDecl)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3591, file: !3592, line: 480, baseType: !191, size: 64, offset: 1088)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3591, file: !3592, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3591, file: !3592, line: 491, baseType: !698, size: 32, offset: 1184)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3591, file: !3592, line: 501, baseType: !3635, size: 33792, offset: 1536)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3636, line: 448, size: 33792, elements: !3637)
!3636 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3637 = !{!3638, !3639, !3640, !3800, !3801, !3807, !3808}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3635, file: !3636, line: 461, baseType: !7, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3635, file: !3636, line: 468, baseType: !191, size: 64, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3635, file: !3636, line: 476, baseType: !3641, size: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3636, line: 356, size: 33280, align: 512, elements: !3643)
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3642, file: !3636, line: 358, baseType: !7, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3642, file: !3636, line: 361, baseType: !7, size: 32, offset: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3642, file: !3636, line: 364, baseType: !641, size: 64, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3642, file: !3636, line: 367, baseType: !641, size: 64, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3642, file: !3636, line: 370, baseType: !641, size: 64, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3642, file: !3636, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3642, file: !3636, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3642, file: !3636, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3642, file: !3636, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3642, file: !3636, line: 397, baseType: !3654, size: 32768, offset: 512)
!3654 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3636, line: 348, size: 32768, elements: !3655)
!3655 = !{!3656, !3671, !3706, !3783, !3796}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3654, file: !3636, line: 349, baseType: !3657, size: 896)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3636, line: 12, size: 896, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3670}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3657, file: !3636, line: 13, baseType: !698, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3657, file: !3636, line: 14, baseType: !698, size: 32, offset: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3657, file: !3636, line: 15, baseType: !698, size: 32, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3657, file: !3636, line: 16, baseType: !698, size: 32, offset: 96)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3657, file: !3636, line: 17, baseType: !698, size: 32, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3657, file: !3636, line: 18, baseType: !698, size: 32, offset: 160)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3657, file: !3636, line: 19, baseType: !698, size: 32, offset: 192)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3657, file: !3636, line: 22, baseType: !3667, size: 640, offset: 224)
!3667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 640, elements: !3668)
!3668 = !{!3669}
!3669 = !DISubrange(count: 20)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3657, file: !3636, line: 25, baseType: !698, size: 32, offset: 864)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3654, file: !3636, line: 350, baseType: !3672, size: 4096, align: 128)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3636, line: 34, size: 4096, align: 128, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3677, !3678, !3693, !3694, !3695, !3697, !3699, !3701}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3672, file: !3636, line: 35, baseType: !428, size: 16)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3672, file: !3636, line: 36, baseType: !428, size: 16, offset: 16)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3672, file: !3636, line: 37, baseType: !428, size: 16, offset: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3672, file: !3636, line: 38, baseType: !428, size: 16, offset: 48)
!3678 = !DIDerivedType(tag: DW_TAG_member, scope: !3672, file: !3636, line: 39, baseType: !3679, size: 128, offset: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3672, file: !3636, line: 39, size: 128, elements: !3680)
!3680 = !{!3681, !3686}
!3681 = !DIDerivedType(tag: DW_TAG_member, scope: !3679, file: !3636, line: 40, baseType: !3682, size: 128)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3679, file: !3636, line: 40, size: 128, elements: !3683)
!3683 = !{!3684, !3685}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3682, file: !3636, line: 41, baseType: !641, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3682, file: !3636, line: 42, baseType: !641, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, scope: !3679, file: !3636, line: 44, baseType: !3687, size: 128)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3679, file: !3636, line: 44, size: 128, elements: !3688)
!3688 = !{!3689, !3690, !3691, !3692}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3687, file: !3636, line: 45, baseType: !698, size: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3687, file: !3636, line: 46, baseType: !698, size: 32, offset: 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3687, file: !3636, line: 47, baseType: !698, size: 32, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3687, file: !3636, line: 48, baseType: !698, size: 32, offset: 96)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3672, file: !3636, line: 51, baseType: !698, size: 32, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3672, file: !3636, line: 52, baseType: !698, size: 32, offset: 224)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3672, file: !3636, line: 55, baseType: !3696, size: 1024, offset: 256)
!3696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 1024, elements: !335)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3672, file: !3636, line: 58, baseType: !3698, size: 2048, offset: 1280)
!3698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 2048, elements: !1195)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3672, file: !3636, line: 60, baseType: !3700, size: 384, offset: 3328)
!3700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 384, elements: !303)
!3701 = !DIDerivedType(tag: DW_TAG_member, scope: !3672, file: !3636, line: 62, baseType: !3702, size: 384, offset: 3712)
!3702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3672, file: !3636, line: 62, size: 384, elements: !3703)
!3703 = !{!3704, !3705}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3702, file: !3636, line: 63, baseType: !3700, size: 384)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3702, file: !3636, line: 64, baseType: !3700, size: 384)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3654, file: !3636, line: 351, baseType: !3707, size: 1088)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3636, line: 79, size: 1088, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3782}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3707, file: !3636, line: 80, baseType: !698, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3707, file: !3636, line: 81, baseType: !698, size: 32, offset: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3707, file: !3636, line: 82, baseType: !698, size: 32, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3707, file: !3636, line: 83, baseType: !698, size: 32, offset: 96)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3707, file: !3636, line: 84, baseType: !698, size: 32, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3707, file: !3636, line: 85, baseType: !698, size: 32, offset: 160)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3707, file: !3636, line: 86, baseType: !698, size: 32, offset: 192)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3707, file: !3636, line: 88, baseType: !3667, size: 640, offset: 224)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3707, file: !3636, line: 89, baseType: !472, size: 8, offset: 864)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3707, file: !3636, line: 90, baseType: !472, size: 8, offset: 872)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3707, file: !3636, line: 91, baseType: !472, size: 8, offset: 880)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3707, file: !3636, line: 92, baseType: !472, size: 8, offset: 888)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3707, file: !3636, line: 93, baseType: !472, size: 8, offset: 896)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3707, file: !3636, line: 94, baseType: !472, size: 8, offset: 904)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3707, file: !3636, line: 95, baseType: !3724, size: 64, offset: 960)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3726, line: 11, size: 128, elements: !3727)
!3726 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3727 = !{!3728, !3729}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3725, file: !3726, line: 12, baseType: !199, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3725, file: !3726, line: 13, baseType: !3730, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3732, line: 103, size: 1344, elements: !3733)
!3732 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3733 = !{!3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3762, !3763, !3764}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3731, file: !3732, line: 109, baseType: !191, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3731, file: !3732, line: 110, baseType: !191, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3731, file: !3732, line: 111, baseType: !191, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3731, file: !3732, line: 112, baseType: !191, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3731, file: !3732, line: 113, baseType: !191, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3731, file: !3732, line: 114, baseType: !191, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3731, file: !3732, line: 117, baseType: !191, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3731, file: !3732, line: 118, baseType: !191, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3731, file: !3732, line: 119, baseType: !191, size: 64, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3731, file: !3732, line: 120, baseType: !191, size: 64, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3731, file: !3732, line: 121, baseType: !191, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3731, file: !3732, line: 122, baseType: !191, size: 64, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3731, file: !3732, line: 123, baseType: !191, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3731, file: !3732, line: 124, baseType: !191, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3731, file: !3732, line: 125, baseType: !191, size: 64, offset: 896)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3731, file: !3732, line: 139, baseType: !191, size: 64, offset: 960)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3731, file: !3732, line: 142, baseType: !191, size: 64, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_member, scope: !3731, file: !3732, line: 144, baseType: !3752, size: 64, offset: 1088)
!3752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3731, file: !3732, line: 144, size: 64, elements: !3753)
!3753 = !{!3754, !3755, !3756}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3752, file: !3732, line: 146, baseType: !428, size: 16)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3752, file: !3732, line: 148, baseType: !641, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3752, file: !3732, line: 150, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3732, line: 59, size: 64, elements: !3758)
!3758 = !{!3759, !3760, !3761}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3757, file: !3732, line: 61, baseType: !641, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3757, file: !3732, line: 63, baseType: !641, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3757, file: !3732, line: 65, baseType: !641, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3731, file: !3732, line: 153, baseType: !191, size: 64, offset: 1152)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3731, file: !3732, line: 154, baseType: !191, size: 64, offset: 1216)
!3764 = !DIDerivedType(tag: DW_TAG_member, scope: !3731, file: !3732, line: 156, baseType: !3765, size: 64, offset: 1280)
!3765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3731, file: !3732, line: 156, size: 64, elements: !3766)
!3766 = !{!3767, !3768, !3769}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3765, file: !3732, line: 158, baseType: !428, size: 16)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3765, file: !3732, line: 160, baseType: !641, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3765, file: !3732, line: 162, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3732, line: 69, size: 64, elements: !3771)
!3771 = !{!3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3770, file: !3732, line: 71, baseType: !641, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3770, file: !3732, line: 73, baseType: !641, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3770, file: !3732, line: 75, baseType: !641, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3770, file: !3732, line: 77, baseType: !641, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3770, file: !3732, line: 80, baseType: !641, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3770, file: !3732, line: 83, baseType: !641, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3770, file: !3732, line: 86, baseType: !641, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3770, file: !3732, line: 88, baseType: !641, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3770, file: !3732, line: 93, baseType: !641, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3770, file: !3732, line: 100, baseType: !641, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3707, file: !3636, line: 96, baseType: !698, size: 32, offset: 1024)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3654, file: !3636, line: 352, baseType: !3784, size: 4608, align: 512)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3636, line: 333, size: 4608, align: 512, elements: !3785)
!3785 = !{!3786, !3787, !3794}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3784, file: !3636, line: 334, baseType: !3672, size: 4096, align: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3784, file: !3636, line: 335, baseType: !3788, size: 512, offset: 4096)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3636, line: 312, size: 512, elements: !3789)
!3789 = !{!3790, !3791, !3792}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3788, file: !3636, line: 313, baseType: !641, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3788, file: !3636, line: 314, baseType: !641, size: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3788, file: !3636, line: 315, baseType: !3793, size: 384, offset: 128)
!3793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 384, elements: !719)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3784, file: !3636, line: 336, baseType: !3795, offset: 4608)
!3795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, elements: !600)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3654, file: !3636, line: 353, baseType: !3797, size: 32768)
!3797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 32768, elements: !3798)
!3798 = !{!3799}
!3799 = !DISubrange(count: 4096)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3635, file: !3636, line: 484, baseType: !3641, size: 64, offset: 192)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3635, file: !3636, line: 491, baseType: !3802, size: 128, offset: 256)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3636, line: 404, size: 128, elements: !3803)
!3803 = !{!3804, !3805, !3806}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3802, file: !3636, line: 424, baseType: !641, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3802, file: !3636, line: 432, baseType: !7, size: 32, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3802, file: !3636, line: 440, baseType: !7, size: 32, offset: 96)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3635, file: !3636, line: 498, baseType: !3802, size: 128, offset: 384)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3635, file: !3636, line: 508, baseType: !3642, size: 33280, align: 512, offset: 512)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2626, file: !2627, line: 16, baseType: !585, size: 192, offset: 512)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2626, file: !2627, line: 17, baseType: !464, size: 32, offset: 704)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1106, file: !35, line: 1240, baseType: !190, size: 64, offset: 6912)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1106, file: !35, line: 1243, baseType: !698, size: 32, offset: 6976)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1106, file: !35, line: 1245, baseType: !689, size: 64, offset: 7040)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1106, file: !35, line: 1246, baseType: !689, size: 64, offset: 7104)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1106, file: !35, line: 1248, baseType: !332, size: 32, offset: 7168)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1106, file: !35, line: 1249, baseType: !3817, size: 64, offset: 7232)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1106, file: !35, line: 1252, baseType: !3820, size: 256, offset: 7296)
!3820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 256, elements: !335)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1106, file: !35, line: 1253, baseType: !3822, size: 128, offset: 7552)
!3822 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3823, line: 21, baseType: !3824)
!3823 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3823, line: 19, size: 128, elements: !3825)
!3825 = !{!3826}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3824, file: !3823, line: 20, baseType: !3827, size: 128)
!3827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 128, elements: !3057)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1106, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1106, file: !35, line: 1261, baseType: !437, size: 256, offset: 7744)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1106, file: !35, line: 1267, baseType: !258, size: 64, offset: 8000)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1106, file: !35, line: 1269, baseType: !3832, size: 64, offset: 8064)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3834)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !856, line: 128, size: 1024, align: 512, elements: !3835)
!3835 = !{!3836, !3840, !3841, !3848, !3854, !3858, !3862, !3866, !3867, !3871, !3875, !3880, !3884}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3834, file: !856, line: 129, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!85, !854, !7}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3834, file: !856, line: 130, baseType: !3837, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3834, file: !856, line: 131, baseType: !3842, size: 64, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!85, !3845, !3847}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3834, file: !856, line: 132, baseType: !3849, size: 64, offset: 192)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!85, !3845, !7, !258, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3834, file: !856, line: 134, baseType: !3855, size: 64, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!85, !3845}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3834, file: !856, line: 135, baseType: !3859, size: 64, offset: 320)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!85, !854}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3834, file: !856, line: 136, baseType: !3863, size: 64, offset: 384)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !854}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3834, file: !856, line: 137, baseType: !3863, size: 64, offset: 448)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3834, file: !856, line: 138, baseType: !3868, size: 64, offset: 512)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{null, !854, !894}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3834, file: !856, line: 139, baseType: !3872, size: 64, offset: 576)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!743, !854, !743, !85}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3834, file: !856, line: 140, baseType: !3876, size: 64, offset: 640)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!849, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3834, file: !856, line: 141, baseType: !3881, size: 64, offset: 704)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!85, !1016, !732}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3834, file: !856, line: 142, baseType: !3885, size: 64, offset: 768)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!854, !854, !3888}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1106, file: !35, line: 1271, baseType: !3891, size: 448, offset: 8128)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2408, line: 63, size: 448, elements: !3892)
!3892 = !{!3893, !3898, !3899, !3900, !3901, !3902, !3903}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3891, file: !2408, line: 64, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!191, !3897, !2406}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3891, file: !2408, line: 66, baseType: !3894, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3891, file: !2408, line: 69, baseType: !199, size: 64, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3891, file: !2408, line: 70, baseType: !85, size: 32, offset: 192)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3891, file: !2408, line: 71, baseType: !7, size: 32, offset: 224)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3891, file: !2408, line: 74, baseType: !485, size: 128, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3891, file: !2408, line: 85, baseType: !3904, size: 64, offset: 384)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1106, file: !35, line: 1274, baseType: !441, size: 64, offset: 8576)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1106, file: !35, line: 1280, baseType: !441, size: 64, offset: 8640)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1106, file: !35, line: 1283, baseType: !85, size: 32, offset: 8704)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1106, file: !35, line: 1286, baseType: !1524, size: 32, offset: 8736)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1106, file: !35, line: 1289, baseType: !2230, size: 64, offset: 8768)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1106, file: !35, line: 1290, baseType: !574, size: 64, offset: 8832)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1106, file: !35, line: 1297, baseType: !816, size: 64, offset: 8896)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1106, file: !35, line: 1304, baseType: !3913, size: 64, offset: 8960)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3914, line: 49, size: 64, elements: !3915)
!3914 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3915 = !{!3916}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3913, file: !3914, line: 50, baseType: !3917, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3914, line: 41, size: 512, align: 512, elements: !3919)
!3919 = !{!3920, !3921, !3926}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3918, file: !3914, line: 43, baseType: !517, size: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3918, file: !3914, line: 45, baseType: !3922, size: 192, offset: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3914, line: 29, size: 192, elements: !3923)
!3923 = !{!3924, !3925}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3922, file: !3914, line: 30, baseType: !485, size: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3922, file: !3914, line: 32, baseType: !199, size: 64, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3918, file: !3914, line: 46, baseType: !199, size: 64, offset: 256)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1106, file: !35, line: 1305, baseType: !3913, size: 64, offset: 9024)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1106, file: !35, line: 1306, baseType: !507, size: 128, align: 64, offset: 9088)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1106, file: !35, line: 1307, baseType: !1703, size: 256, offset: 9216)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1106, file: !35, line: 1309, baseType: !437, size: 256, offset: 9472)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1106, file: !35, line: 1314, baseType: !85, size: 32, offset: 9728)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1106, file: !35, line: 1317, baseType: !517, size: 32, align: 512, offset: 10240)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1106, file: !35, line: 1318, baseType: !485, size: 128, offset: 10304)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1106, file: !35, line: 1320, baseType: !517, size: 32, offset: 10432)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1106, file: !35, line: 1321, baseType: !485, size: 128, offset: 10496)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !895, file: !35, line: 656, baseType: !1256, size: 64, offset: 512)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !895, file: !35, line: 659, baseType: !190, size: 64, offset: 576)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !895, file: !35, line: 663, baseType: !191, size: 64, offset: 640)
!3939 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !35, line: 671, baseType: !3940, size: 32, offset: 704)
!3940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !895, file: !35, line: 671, size: 32, elements: !3941)
!3941 = !{!3942, !3944}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3940, file: !35, line: 672, baseType: !3943, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3940, file: !35, line: 673, baseType: !7, size: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !895, file: !35, line: 675, baseType: !969, size: 32, offset: 736)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !895, file: !35, line: 676, baseType: !530, size: 64, offset: 768)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !895, file: !35, line: 677, baseType: !1005, size: 128, offset: 832)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !895, file: !35, line: 678, baseType: !1005, size: 128, offset: 960)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !895, file: !35, line: 679, baseType: !1005, size: 128, offset: 1088)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !895, file: !35, line: 680, baseType: !517, size: 32, offset: 1216)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !895, file: !35, line: 681, baseType: !292, size: 16, offset: 1248)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !895, file: !35, line: 682, baseType: !472, size: 8, offset: 1264)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !895, file: !35, line: 683, baseType: !472, size: 8, offset: 1272)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !895, file: !35, line: 684, baseType: !2539, size: 64, offset: 1280)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !895, file: !35, line: 691, baseType: !191, size: 64, offset: 1344)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !895, file: !35, line: 692, baseType: !673, size: 320, offset: 1408)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !895, file: !35, line: 694, baseType: !191, size: 64, offset: 1728)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !895, file: !35, line: 695, baseType: !191, size: 64, offset: 1792)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !895, file: !35, line: 697, baseType: !578, size: 128, offset: 1856)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !895, file: !35, line: 698, baseType: !485, size: 128, offset: 1984)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !895, file: !35, line: 707, baseType: !485, size: 128, offset: 2112)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !895, file: !35, line: 708, baseType: !485, size: 128, offset: 2240)
!3963 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !35, line: 709, baseType: !3964, size: 128, offset: 2368)
!3964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !895, file: !35, line: 709, size: 128, elements: !3965)
!3965 = !{!3966, !3967}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3964, file: !35, line: 710, baseType: !574, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3964, file: !35, line: 711, baseType: !507, size: 128, align: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !895, file: !35, line: 713, baseType: !443, size: 64, offset: 2496)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !895, file: !35, line: 714, baseType: !443, size: 64, offset: 2560)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !895, file: !35, line: 715, baseType: !464, size: 32, offset: 2624)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !895, file: !35, line: 716, baseType: !464, size: 32, offset: 2656)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !895, file: !35, line: 717, baseType: !464, size: 32, offset: 2688)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !895, file: !35, line: 719, baseType: !464, size: 32, offset: 2720)
!3974 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !35, line: 721, baseType: !3975, size: 64, offset: 2752)
!3975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !895, file: !35, line: 721, size: 64, elements: !3976)
!3976 = !{!3977, !4101}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3975, file: !35, line: 722, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3980)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !3981)
!3981 = !{!3982, !3983, !3987, !3991, !3995, !3996, !3997, !4003, !4016, !4020, !4024, !4025, !4029, !4030, !4034, !4039, !4040, !4044, !4048, !4054, !4055, !4059, !4060, !4064, !4068, !4069, !4074, !4078, !4082, !4086, !4090, !4091, !4097}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3980, file: !35, line: 1915, baseType: !1139, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3980, file: !35, line: 1916, baseType: !3984, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!530, !494, !530, !85}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3980, file: !35, line: 1917, baseType: !3988, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!1047, !494, !743, !1050, !1870}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3980, file: !35, line: 1918, baseType: !3992, size: 64, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!1047, !494, !258, !1050, !1870}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3980, file: !35, line: 1919, baseType: !1458, size: 64, offset: 256)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3980, file: !35, line: 1920, baseType: !1458, size: 64, offset: 320)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3980, file: !35, line: 1921, baseType: !3998, size: 64, offset: 384)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!85, !1461, !4001, !7}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3980, file: !35, line: 1923, baseType: !4004, size: 64, offset: 448)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!85, !494, !4007}
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !4009)
!4009 = !{!4010, !4015}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4008, file: !35, line: 1859, baseType: !4011, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !4012)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!732, !4007, !258, !85, !530, !641, !7}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4008, file: !35, line: 1860, baseType: !530, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3980, file: !35, line: 1924, baseType: !4017, size: 64, offset: 512)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!1890, !494, !1892}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3980, file: !35, line: 1925, baseType: !4021, size: 64, offset: 576)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!199, !494, !7, !191}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3980, file: !35, line: 1926, baseType: !4021, size: 64, offset: 640)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3980, file: !35, line: 1927, baseType: !4026, size: 64, offset: 704)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!85, !494, !1538}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3980, file: !35, line: 1928, baseType: !191, size: 64, offset: 768)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3980, file: !35, line: 1929, baseType: !4031, size: 64, offset: 832)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!85, !894, !494}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3980, file: !35, line: 1930, baseType: !4035, size: 64, offset: 896)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!85, !494, !4038}
!4038 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !190)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3980, file: !35, line: 1931, baseType: !4031, size: 64, offset: 960)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3980, file: !35, line: 1932, baseType: !4041, size: 64, offset: 1024)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!85, !494, !530, !530, !85}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3980, file: !35, line: 1933, baseType: !4045, size: 64, offset: 1088)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!85, !85, !494, !85}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3980, file: !35, line: 1934, baseType: !4049, size: 64, offset: 1152)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!85, !494, !85, !4052}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3980, file: !35, line: 1935, baseType: !1576, size: 64, offset: 1216)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3980, file: !35, line: 1936, baseType: !4056, size: 64, offset: 1280)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!85, !85}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3980, file: !35, line: 1937, baseType: !4049, size: 64, offset: 1344)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3980, file: !35, line: 1938, baseType: !4061, size: 64, offset: 1408)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!1047, !3472, !494, !1870, !1050, !7}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3980, file: !35, line: 1939, baseType: !4065, size: 64, offset: 1472)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!1047, !494, !1870, !3472, !1050, !7}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3980, file: !35, line: 1940, baseType: !1514, size: 64, offset: 1536)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3980, file: !35, line: 1941, baseType: !4070, size: 64, offset: 1600)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!85, !494, !85, !4073, !1435}
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3980, file: !35, line: 1942, baseType: !4075, size: 64, offset: 1664)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!199, !494, !85, !530, !530}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3980, file: !35, line: 1944, baseType: !4079, size: 64, offset: 1728)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !1846, !494}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3980, file: !35, line: 1948, baseType: !4083, size: 64, offset: 1792)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!1047, !494, !530, !494, !530, !1050, !7}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3980, file: !35, line: 1950, baseType: !4087, size: 64, offset: 1856)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!530, !494, !530, !494, !530, !530, !7}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3980, file: !35, line: 1953, baseType: !4041, size: 64, offset: 1920)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3980, file: !35, line: 1954, baseType: !4092, size: 64, offset: 1984)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!85, !4095, !7}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3980, file: !35, line: 1955, baseType: !4098, size: 64, offset: 2048)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!85, !4095, !4001, !7}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3975, file: !35, line: 723, baseType: !2297, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !895, file: !35, line: 725, baseType: !4103, size: 64, offset: 2816)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !895, file: !35, line: 726, baseType: !1257, size: 1536, align: 64, offset: 2880)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !895, file: !35, line: 727, baseType: !485, size: 128, offset: 4416)
!4107 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !35, line: 728, baseType: !4108, size: 64, offset: 4544)
!4108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !895, file: !35, line: 728, size: 64, elements: !4109)
!4109 = !{!4110, !4111, !4114, !4115}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4108, file: !35, line: 729, baseType: !3472, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4108, file: !35, line: 730, baseType: !4112, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4108, file: !35, line: 731, baseType: !743, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4108, file: !35, line: 732, baseType: !7, size: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !895, file: !35, line: 735, baseType: !332, size: 32, offset: 4608)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !895, file: !35, line: 738, baseType: !332, size: 32, offset: 4640)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !895, file: !35, line: 739, baseType: !3817, size: 64, offset: 4672)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !895, file: !35, line: 750, baseType: !190, size: 64, offset: 4736)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !855, file: !856, line: 91, baseType: !4121, size: 256, offset: 448)
!4121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 256, elements: !335)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !855, file: !856, line: 94, baseType: !4123, size: 64, offset: 704)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4124, line: 25, size: 64, elements: !4125)
!4124 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4125 = !{!4126}
!4126 = !DIDerivedType(tag: DW_TAG_member, scope: !4123, file: !4124, line: 26, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4123, file: !4124, line: 26, size: 64, elements: !4128)
!4128 = !{!4129, !4130}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4127, file: !4124, line: 28, baseType: !642, size: 64, align: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, scope: !4127, file: !4124, line: 30, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4127, file: !4124, line: 30, size: 64, elements: !4132)
!4132 = !{!4133, !4134}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4131, file: !4124, line: 31, baseType: !517, size: 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4131, file: !4124, line: 32, baseType: !85, size: 32, offset: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !855, file: !856, line: 95, baseType: !3832, size: 64, offset: 768)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !855, file: !856, line: 96, baseType: !1105, size: 64, offset: 832)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !855, file: !856, line: 97, baseType: !191, size: 64, offset: 896)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !855, file: !856, line: 98, baseType: !190, size: 64, offset: 960)
!4139 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !856, line: 100, baseType: !4140, size: 128, offset: 1024)
!4140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !856, line: 100, size: 128, elements: !4141)
!4141 = !{!4142, !4143}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4140, file: !856, line: 101, baseType: !485, size: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4140, file: !856, line: 102, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !855, file: !856, line: 104, baseType: !485, size: 128, offset: 1152)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !855, file: !856, line: 105, baseType: !485, size: 128, offset: 1280)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !855, file: !856, line: 113, baseType: !4148, size: 128, offset: 1408)
!4148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !856, line: 109, size: 128, elements: !4149)
!4149 = !{!4150, !4151, !4152}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4148, file: !856, line: 110, baseType: !578, size: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4148, file: !856, line: 111, baseType: !870, size: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4148, file: !856, line: 112, baseType: !507, size: 128, align: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !850, file: !851, line: 72, baseType: !1105, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !850, file: !851, line: 73, baseType: !85, size: 32, offset: 128)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !850, file: !851, line: 74, baseType: !934, size: 64, offset: 192)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !845, file: !846, line: 10, baseType: !854, size: 64, offset: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !495, file: !35, line: 1015, baseType: !894, size: 64, offset: 1344)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !495, file: !35, line: 1016, baseType: !3978, size: 64, offset: 1408)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !495, file: !35, line: 1018, baseType: !641, size: 64, offset: 1472)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !495, file: !35, line: 1020, baseType: !190, size: 64, offset: 1536)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !495, file: !35, line: 1023, baseType: !190, size: 64, offset: 1600)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !495, file: !35, line: 1027, baseType: !4163, size: 64, offset: 1664)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !495, file: !35, line: 1029, baseType: !1256, size: 64, offset: 1728)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !495, file: !35, line: 1030, baseType: !1524, size: 32, offset: 1792)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !495, file: !35, line: 1031, baseType: !1524, size: 32, offset: 1824)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !280, file: !281, line: 169, baseType: !4168, size: 64, offset: 2048)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !281, line: 24, flags: DIFlagFwdDecl)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !280, file: !281, line: 171, baseType: !7, size: 32, offset: 2112)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !280, file: !281, line: 172, baseType: !2168, size: 320, offset: 2176)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !280, file: !281, line: 174, baseType: !4173, size: 64, offset: 2496)
!4173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !312)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !280, file: !281, line: 176, baseType: !4175, size: 64, offset: 2560)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4177, line: 43, size: 256, elements: !4178)
!4177 = !DIFile(filename: "./include/linux/input/mt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2c012cf1730b90d0f045b3aba026b552")
!4178 = !{!4179, !4180, !4181, !4182, !4183, !4184, !4185}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "trkid", scope: !4176, file: !4177, line: 44, baseType: !85, size: 32)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "num_slots", scope: !4176, file: !4177, line: 45, baseType: !85, size: 32, offset: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4176, file: !4177, line: 46, baseType: !85, size: 32, offset: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4176, file: !4177, line: 47, baseType: !7, size: 32, offset: 96)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4176, file: !4177, line: 48, baseType: !7, size: 32, offset: 128)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4176, file: !4177, line: 49, baseType: !2068, size: 64, offset: 192)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4176, file: !4177, line: 50, baseType: !4186, offset: 256)
!4186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4187, elements: !600)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt_slot", file: !4177, line: 27, size: 512, elements: !4188)
!4188 = !{!4189, !4193, !4194}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !4187, file: !4177, line: 28, baseType: !4190, size: 448)
!4190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 448, elements: !4191)
!4191 = !{!4192}
!4192 = !DISubrange(count: 14)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4187, file: !4177, line: 29, baseType: !7, size: 32, offset: 448)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4187, file: !4177, line: 30, baseType: !7, size: 32, offset: 480)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !280, file: !281, line: 178, baseType: !4196, size: 64, offset: 2624)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !288, line: 93, size: 192, elements: !4198)
!4198 = !{!4199, !4200, !4201, !4202, !4203, !4204}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4197, file: !288, line: 94, baseType: !659, size: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4197, file: !288, line: 95, baseType: !659, size: 32, offset: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4197, file: !288, line: 96, baseType: !659, size: 32, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4197, file: !288, line: 97, baseType: !659, size: 32, offset: 96)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4197, file: !288, line: 98, baseType: !659, size: 32, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4197, file: !288, line: 99, baseType: !659, size: 32, offset: 160)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !280, file: !281, line: 180, baseType: !302, size: 768, offset: 2688)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !280, file: !281, line: 181, baseType: !297, size: 64, offset: 3456)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !280, file: !281, line: 182, baseType: !297, size: 64, offset: 3520)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !280, file: !281, line: 183, baseType: !297, size: 64, offset: 3584)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !280, file: !281, line: 185, baseType: !4210, size: 64, offset: 3648)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!85, !279}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !280, file: !281, line: 186, baseType: !4214, size: 64, offset: 3712)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !279}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !280, file: !281, line: 187, baseType: !4218, size: 64, offset: 3776)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!85, !279, !494}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !280, file: !281, line: 188, baseType: !4222, size: 64, offset: 3840)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!85, !279, !7, !7, !85}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !280, file: !281, line: 190, baseType: !4226, size: 64, offset: 3904)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !281, line: 345, size: 576, elements: !4228)
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4301, !4302}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4227, file: !281, line: 347, baseType: !190, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4227, file: !281, line: 349, baseType: !85, size: 32, offset: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4227, file: !281, line: 350, baseType: !258, size: 64, offset: 128)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4227, file: !281, line: 352, baseType: !279, size: 64, offset: 192)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4227, file: !281, line: 353, baseType: !4234, size: 64, offset: 256)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !281, line: 310, size: 960, elements: !4236)
!4236 = !{!4237, !4238, !4242, !4253, !4257, !4261, !4290, !4294, !4295, !4296, !4297, !4298, !4299, !4300}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4235, file: !281, line: 312, baseType: !190, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4235, file: !281, line: 314, baseType: !4239, size: 64, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !4226, !7, !7, !85}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4235, file: !281, line: 315, baseType: !4243, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{null, !4226, !4246, !7}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4248)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !281, line: 32, size: 64, elements: !4249)
!4249 = !{!4250, !4251, !4252}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4248, file: !281, line: 33, baseType: !291, size: 16)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4248, file: !281, line: 34, baseType: !291, size: 16, offset: 16)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4248, file: !281, line: 35, baseType: !659, size: 32, offset: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4235, file: !281, line: 317, baseType: !4254, size: 64, offset: 192)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!732, !4226, !7, !7, !85}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4235, file: !281, line: 318, baseType: !4258, size: 64, offset: 256)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!732, !4234, !279}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4235, file: !281, line: 319, baseType: !4262, size: 64, offset: 320)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!85, !4234, !279, !4265}
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4267)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4268, line: 362, size: 1600, elements: !4269)
!4268 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4269 = !{!4270, !4272, !4273, !4274, !4275, !4276, !4278, !4280, !4281, !4282, !4283, !4284, !4285, !4287, !4288, !4289}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4267, file: !4268, line: 364, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4268, line: 15, baseType: !191)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4267, file: !4268, line: 366, baseType: !291, size: 16, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4267, file: !4268, line: 367, baseType: !291, size: 16, offset: 80)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4267, file: !4268, line: 368, baseType: !291, size: 16, offset: 96)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4267, file: !4268, line: 369, baseType: !291, size: 16, offset: 112)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4267, file: !4268, line: 371, baseType: !4277, size: 64, offset: 128)
!4277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4271, size: 64, elements: !298)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4267, file: !4268, line: 372, baseType: !4279, size: 768, offset: 192)
!4279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4271, size: 768, elements: !303)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4267, file: !4268, line: 373, baseType: !4277, size: 64, offset: 960)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4267, file: !4268, line: 374, baseType: !4277, size: 64, offset: 1024)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4267, file: !4268, line: 375, baseType: !4277, size: 64, offset: 1088)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4267, file: !4268, line: 376, baseType: !4277, size: 64, offset: 1152)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4267, file: !4268, line: 377, baseType: !4277, size: 64, offset: 1216)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4267, file: !4268, line: 378, baseType: !4286, size: 128, offset: 1280)
!4286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4271, size: 128, elements: !312)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4267, file: !4268, line: 379, baseType: !4277, size: 64, offset: 1408)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4267, file: !4268, line: 380, baseType: !4277, size: 64, offset: 1472)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4267, file: !4268, line: 382, baseType: !4271, size: 64, offset: 1536)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4235, file: !281, line: 320, baseType: !4291, size: 64, offset: 384)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !4226}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4235, file: !281, line: 321, baseType: !4291, size: 64, offset: 448)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4235, file: !281, line: 323, baseType: !732, size: 8, offset: 512)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4235, file: !281, line: 324, baseType: !85, size: 32, offset: 544)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4235, file: !281, line: 325, baseType: !258, size: 64, offset: 576)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4235, file: !281, line: 327, baseType: !4265, size: 64, offset: 640)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4235, file: !281, line: 329, baseType: !485, size: 128, offset: 704)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4235, file: !281, line: 330, baseType: !485, size: 128, offset: 832)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4227, file: !281, line: 355, baseType: !485, size: 128, offset: 320)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4227, file: !281, line: 356, baseType: !485, size: 128, offset: 448)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !280, file: !281, line: 192, baseType: !517, size: 32, offset: 3968)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !280, file: !281, line: 193, baseType: !437, size: 256, offset: 4032)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !280, file: !281, line: 195, baseType: !7, size: 32, offset: 4288)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !280, file: !281, line: 196, baseType: !732, size: 8, offset: 4320)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !280, file: !281, line: 198, baseType: !4308, size: 5824, offset: 4352)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4309)
!4309 = !{!4310, !4311, !4313, !4316, !4317, !4370, !4453, !4454, !4455, !4456, !4457, !4464, !4556, !4569, !4579, !4583, !4585, !4586, !4587, !4591, !4598, !4599, !4602, !4605, !4609, !4612, !4613, !4614, !4615, !4616, !4617, !4647, !4648, !4649, !4652, !4655, !4664, !4665, !4666, !4667, !4668, !4669}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4308, file: !70, line: 706, baseType: !1152, size: 512)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4308, file: !70, line: 707, baseType: !4312, size: 64, offset: 512)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4308, file: !70, line: 709, baseType: !4314, size: 64, offset: 576)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4308, file: !70, line: 711, baseType: !258, size: 64, offset: 640)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4308, file: !70, line: 712, baseType: !4318, size: 64, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4320)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4321)
!4321 = !{!4322, !4323, !4324, !4330, !4335, !4339}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4320, file: !70, line: 90, baseType: !258, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4320, file: !70, line: 91, baseType: !1232, size: 64, offset: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4320, file: !70, line: 92, baseType: !4325, size: 64, offset: 128)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!85, !4328, !1188}
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4308)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4320, file: !70, line: 93, baseType: !4331, size: 64, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!743, !4328, !4334, !1799, !1800}
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4320, file: !70, line: 95, baseType: !4336, size: 64, offset: 256)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{null, !4312}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4320, file: !70, line: 97, baseType: !4340, size: 64, offset: 320)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4342)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4343)
!4343 = !{!4344, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4342, file: !77, line: 287, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!85, !4312}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4342, file: !77, line: 288, baseType: !4336, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4342, file: !77, line: 289, baseType: !4345, size: 64, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4342, file: !77, line: 290, baseType: !4345, size: 64, offset: 192)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4342, file: !77, line: 291, baseType: !4345, size: 64, offset: 256)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4342, file: !77, line: 292, baseType: !4345, size: 64, offset: 320)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4342, file: !77, line: 293, baseType: !4345, size: 64, offset: 384)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4342, file: !77, line: 294, baseType: !4345, size: 64, offset: 448)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4342, file: !77, line: 295, baseType: !4345, size: 64, offset: 512)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4342, file: !77, line: 296, baseType: !4345, size: 64, offset: 576)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4342, file: !77, line: 297, baseType: !4345, size: 64, offset: 640)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4342, file: !77, line: 298, baseType: !4345, size: 64, offset: 704)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4342, file: !77, line: 299, baseType: !4345, size: 64, offset: 768)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4342, file: !77, line: 300, baseType: !4345, size: 64, offset: 832)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4342, file: !77, line: 301, baseType: !4345, size: 64, offset: 896)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4342, file: !77, line: 302, baseType: !4345, size: 64, offset: 960)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4342, file: !77, line: 303, baseType: !4345, size: 64, offset: 1024)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4342, file: !77, line: 304, baseType: !4345, size: 64, offset: 1088)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4342, file: !77, line: 305, baseType: !4345, size: 64, offset: 1152)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4342, file: !77, line: 306, baseType: !4345, size: 64, offset: 1216)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4342, file: !77, line: 307, baseType: !4345, size: 64, offset: 1280)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4342, file: !77, line: 308, baseType: !4345, size: 64, offset: 1344)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4342, file: !77, line: 309, baseType: !4345, size: 64, offset: 1408)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4308, file: !70, line: 714, baseType: !4371, size: 64, offset: 768)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4373)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4374, line: 80, size: 1344, elements: !4375)
!4374 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4375 = !{!4376, !4377, !4378, !4379, !4380, !4381, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4452}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4373, file: !4374, line: 81, baseType: !258, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4373, file: !4374, line: 82, baseType: !258, size: 64, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4373, file: !4374, line: 83, baseType: !1232, size: 64, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4373, file: !4374, line: 84, baseType: !1232, size: 64, offset: 192)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4373, file: !4374, line: 85, baseType: !1232, size: 64, offset: 256)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4373, file: !4374, line: 87, baseType: !4382, size: 64, offset: 320)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!85, !4312, !4385}
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4387)
!4387 = !{!4388, !4389, !4390, !4391, !4392, !4393, !4394, !4406, !4415, !4416, !4417, !4418, !4419, !4427, !4428, !4429, !4430, !4431, !4432}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4386, file: !64, line: 97, baseType: !258, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4386, file: !64, line: 98, baseType: !4371, size: 64, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4386, file: !64, line: 100, baseType: !1139, size: 64, offset: 128)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4386, file: !64, line: 101, baseType: !258, size: 64, offset: 192)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4386, file: !64, line: 103, baseType: !732, size: 8, offset: 256)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4386, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4386, file: !64, line: 106, baseType: !4395, size: 64, offset: 320)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4397)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4268, line: 282, size: 1600, elements: !4398)
!4398 = !{!4399, !4400, !4401, !4405}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4397, file: !4268, line: 283, baseType: !3820, size: 256)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4397, file: !4268, line: 284, baseType: !3820, size: 256, offset: 256)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4397, file: !4268, line: 285, baseType: !4402, size: 1024, offset: 512)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 1024, elements: !4403)
!4403 = !{!4404}
!4404 = !DISubrange(count: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4397, file: !4268, line: 286, baseType: !1665, size: 64, offset: 1536)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4386, file: !64, line: 107, baseType: !4407, size: 64, offset: 384)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4409)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4268, line: 217, size: 256, elements: !4410)
!4410 = !{!4411, !4412, !4413, !4414}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4409, file: !4268, line: 218, baseType: !3827, size: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4409, file: !4268, line: 219, baseType: !4271, size: 64, offset: 128)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4409, file: !4268, line: 220, baseType: !332, size: 32, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4409, file: !4268, line: 221, baseType: !332, size: 32, offset: 224)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4386, file: !64, line: 109, baseType: !4345, size: 64, offset: 448)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4386, file: !64, line: 110, baseType: !4336, size: 64, offset: 512)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4386, file: !64, line: 111, baseType: !4345, size: 64, offset: 576)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4386, file: !64, line: 112, baseType: !4336, size: 64, offset: 640)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4386, file: !64, line: 113, baseType: !4420, size: 64, offset: 704)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!85, !4312, !4423}
!4423 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4424)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4425)
!4425 = !{!4426}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4424, file: !77, line: 59, baseType: !85, size: 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4386, file: !64, line: 114, baseType: !4345, size: 64, offset: 768)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4386, file: !64, line: 115, baseType: !1232, size: 64, offset: 832)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4386, file: !64, line: 116, baseType: !1232, size: 64, offset: 896)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4386, file: !64, line: 118, baseType: !4340, size: 64, offset: 960)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4386, file: !64, line: 119, baseType: !4336, size: 64, offset: 1024)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4386, file: !64, line: 121, baseType: !4433, size: 64, offset: 1088)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4373, file: !4374, line: 88, baseType: !4325, size: 64, offset: 384)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4373, file: !4374, line: 89, baseType: !4345, size: 64, offset: 448)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4373, file: !4374, line: 90, baseType: !4336, size: 64, offset: 512)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4373, file: !4374, line: 91, baseType: !4336, size: 64, offset: 576)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4373, file: !4374, line: 92, baseType: !4336, size: 64, offset: 640)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4373, file: !4374, line: 94, baseType: !4345, size: 64, offset: 704)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4373, file: !4374, line: 95, baseType: !4345, size: 64, offset: 768)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4373, file: !4374, line: 97, baseType: !4420, size: 64, offset: 832)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4373, file: !4374, line: 98, baseType: !4345, size: 64, offset: 896)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4373, file: !4374, line: 100, baseType: !4345, size: 64, offset: 960)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4373, file: !4374, line: 102, baseType: !4345, size: 64, offset: 1024)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4373, file: !4374, line: 103, baseType: !4336, size: 64, offset: 1088)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4373, file: !4374, line: 105, baseType: !4340, size: 64, offset: 1152)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4373, file: !4374, line: 107, baseType: !4449, size: 64, offset: 1216)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4451)
!4451 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4374, line: 107, flags: DIFlagFwdDecl)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4373, file: !4374, line: 109, baseType: !732, size: 8, offset: 1280)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4308, file: !70, line: 715, baseType: !4385, size: 64, offset: 832)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4308, file: !70, line: 717, baseType: !190, size: 64, offset: 896)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4308, file: !70, line: 719, baseType: !190, size: 64, offset: 960)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4308, file: !70, line: 721, baseType: !437, size: 256, offset: 1024)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4308, file: !70, line: 725, baseType: !4458, size: 448, offset: 1280)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4459)
!4459 = !{!4460, !4461, !4462, !4463}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4458, file: !70, line: 518, baseType: !485, size: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4458, file: !70, line: 519, baseType: !485, size: 128, offset: 128)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4458, file: !70, line: 520, baseType: !485, size: 128, offset: 256)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4458, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4308, file: !70, line: 726, baseType: !4465, size: 2496, offset: 1728)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4466)
!4466 = !{!4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4549, !4553}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4465, file: !77, line: 664, baseType: !4423, size: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4465, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4465, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4465, file: !77, line: 667, baseType: !732, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4465, file: !77, line: 668, baseType: !732, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4465, file: !77, line: 669, baseType: !732, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4465, file: !77, line: 670, baseType: !732, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4465, file: !77, line: 671, baseType: !732, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4465, file: !77, line: 672, baseType: !732, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4465, file: !77, line: 673, baseType: !732, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4465, file: !77, line: 674, baseType: !732, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4465, file: !77, line: 675, baseType: !698, size: 32, offset: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4465, file: !77, line: 676, baseType: !517, size: 32, offset: 96)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4465, file: !77, line: 678, baseType: !485, size: 128, offset: 128)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4465, file: !77, line: 679, baseType: !1928, size: 256, offset: 256)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4465, file: !77, line: 680, baseType: !4483, size: 64, offset: 512)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4485, line: 43, size: 1536, elements: !4486)
!4485 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4486 = !{!4487, !4488, !4489, !4490, !4491, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4484, file: !4485, line: 44, baseType: !258, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4484, file: !4485, line: 45, baseType: !85, size: 32, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4484, file: !4485, line: 46, baseType: !485, size: 128, offset: 128)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4484, file: !4485, line: 47, baseType: !517, size: 32, offset: 256)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4484, file: !4485, line: 48, baseType: !4492, size: 64, offset: 320)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4484, file: !4485, line: 49, baseType: !2168, size: 320, offset: 384)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4484, file: !4485, line: 50, baseType: !191, size: 64, offset: 704)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4484, file: !4485, line: 51, baseType: !2762, size: 64, offset: 768)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4484, file: !4485, line: 52, baseType: !2762, size: 64, offset: 832)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4484, file: !4485, line: 53, baseType: !2762, size: 64, offset: 896)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4484, file: !4485, line: 54, baseType: !2762, size: 64, offset: 960)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4484, file: !4485, line: 55, baseType: !2762, size: 64, offset: 1024)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4484, file: !4485, line: 56, baseType: !191, size: 64, offset: 1088)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4484, file: !4485, line: 57, baseType: !191, size: 64, offset: 1152)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4484, file: !4485, line: 58, baseType: !191, size: 64, offset: 1216)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4484, file: !4485, line: 59, baseType: !191, size: 64, offset: 1280)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4484, file: !4485, line: 60, baseType: !191, size: 64, offset: 1344)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4484, file: !4485, line: 61, baseType: !4312, size: 64, offset: 1408)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4484, file: !4485, line: 62, baseType: !732, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4484, file: !4485, line: 63, baseType: !732, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4465, file: !77, line: 681, baseType: !732, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4465, file: !77, line: 682, baseType: !732, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4465, file: !77, line: 683, baseType: !732, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4465, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4465, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4465, file: !77, line: 690, baseType: !2754, size: 512, offset: 640)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4465, file: !77, line: 691, baseType: !641, size: 64, offset: 1152)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4465, file: !77, line: 692, baseType: !1703, size: 256, offset: 1216)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4465, file: !77, line: 693, baseType: !585, size: 192, offset: 1472)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4465, file: !77, line: 694, baseType: !4492, size: 64, offset: 1664)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4465, file: !77, line: 695, baseType: !464, size: 32, offset: 1728)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4465, file: !77, line: 696, baseType: !464, size: 32, offset: 1760)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4465, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4465, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4465, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4465, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4465, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4465, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4465, file: !77, line: 703, baseType: !732, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4465, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4465, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4465, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4465, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4465, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4465, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4465, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4465, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4465, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4465, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4465, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4465, file: !77, line: 715, baseType: !641, size: 64, offset: 2048)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4465, file: !77, line: 716, baseType: !641, size: 64, offset: 2112)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4465, file: !77, line: 717, baseType: !641, size: 64, offset: 2176)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4465, file: !77, line: 718, baseType: !641, size: 64, offset: 2240)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4465, file: !77, line: 720, baseType: !4544, size: 64, offset: 2304)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4546)
!4546 = !{!4547, !4548}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4545, file: !77, line: 633, baseType: !517, size: 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4545, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4465, file: !77, line: 721, baseType: !4550, size: 64, offset: 2368)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{null, !4312, !658}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4465, file: !77, line: 722, baseType: !4554, size: 64, offset: 2432)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4308, file: !70, line: 727, baseType: !4557, size: 64, offset: 4224)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4559)
!4559 = !{!4560, !4561, !4562, !4566, !4567, !4568}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4558, file: !77, line: 743, baseType: !4342, size: 1472)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4558, file: !77, line: 744, baseType: !4345, size: 64, offset: 1472)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4558, file: !77, line: 745, baseType: !4563, size: 64, offset: 1536)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !4312, !732}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4558, file: !77, line: 746, baseType: !4345, size: 64, offset: 1600)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4558, file: !77, line: 747, baseType: !4336, size: 64, offset: 1664)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4558, file: !77, line: 748, baseType: !4336, size: 64, offset: 1728)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4308, file: !70, line: 736, baseType: !4570, size: 128, offset: 4288)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4571)
!4571 = !{!4572, !4576}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4570, file: !70, line: 531, baseType: !4573, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4575, line: 13, flags: DIFlagFwdDecl)
!4575 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4570, file: !70, line: 532, baseType: !4577, size: 64, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4308, file: !70, line: 738, baseType: !4580, size: 64, offset: 4416)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4582)
!4582 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4308, file: !70, line: 740, baseType: !4584, size: 64, offset: 4480)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4308, file: !70, line: 741, baseType: !641, size: 64, offset: 4544)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4308, file: !70, line: 746, baseType: !641, size: 64, offset: 4608)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4308, file: !70, line: 747, baseType: !4588, size: 64, offset: 4672)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4590)
!4590 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4308, file: !70, line: 749, baseType: !4592, size: 64, offset: 4736)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4594)
!4594 = !{!4595, !4596, !4597}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4593, file: !70, line: 433, baseType: !7, size: 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4593, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4593, file: !70, line: 435, baseType: !191, size: 64, offset: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4308, file: !70, line: 751, baseType: !485, size: 128, offset: 4800)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4308, file: !70, line: 762, baseType: !4600, size: 64, offset: 4928)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4308, file: !70, line: 770, baseType: !4603, offset: 4992)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4604, line: 5, elements: !1572)
!4604 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4308, file: !70, line: 772, baseType: !4606, size: 64, offset: 4992)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4608, line: 18, flags: DIFlagFwdDecl)
!4608 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4308, file: !70, line: 773, baseType: !4610, size: 64, offset: 5056)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4374, line: 22, flags: DIFlagFwdDecl)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4308, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4308, file: !70, line: 778, baseType: !969, size: 32, offset: 5152)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4308, file: !70, line: 779, baseType: !698, size: 32, offset: 5184)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4308, file: !70, line: 781, baseType: !517, size: 32, offset: 5216)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4308, file: !70, line: 782, baseType: !485, size: 128, offset: 5248)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4308, file: !70, line: 784, baseType: !4618, size: 64, offset: 5376)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4620)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4621, line: 52, size: 768, elements: !4622)
!4621 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4622 = !{!4623, !4624, !4625, !4626, !4627, !4631, !4635, !4636, !4637, !4638, !4642, !4646}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4620, file: !4621, line: 53, baseType: !258, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4620, file: !4621, line: 55, baseType: !1232, size: 64, offset: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4620, file: !4621, line: 56, baseType: !1232, size: 64, offset: 128)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4620, file: !4621, line: 58, baseType: !4325, size: 64, offset: 192)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4620, file: !4621, line: 59, baseType: !4628, size: 64, offset: 256)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!743, !4328, !4334}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4620, file: !4621, line: 61, baseType: !4632, size: 64, offset: 320)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4618}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4620, file: !4621, line: 62, baseType: !4336, size: 64, offset: 384)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4620, file: !4621, line: 64, baseType: !4345, size: 64, offset: 448)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4620, file: !4621, line: 66, baseType: !1767, size: 64, offset: 512)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4620, file: !4621, line: 67, baseType: !4639, size: 64, offset: 576)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!1665, !4328}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4620, file: !4621, line: 69, baseType: !4643, size: 64, offset: 640)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{null, !4328, !1799, !1800}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4620, file: !4621, line: 71, baseType: !4340, size: 64, offset: 704)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4308, file: !70, line: 785, baseType: !1232, size: 64, offset: 5440)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4308, file: !70, line: 787, baseType: !4336, size: 64, offset: 5504)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4308, file: !70, line: 788, baseType: !4650, size: 64, offset: 5568)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4308, file: !70, line: 789, baseType: !4653, size: 64, offset: 5632)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4308, file: !70, line: 791, baseType: !4656, size: 64, offset: 5696)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4658)
!4658 = !{!4659, !4660, !4661, !4662, !4663}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4657, file: !70, line: 598, baseType: !92, size: 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4657, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4657, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4657, file: !70, line: 601, baseType: !732, size: 8, offset: 96)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4657, file: !70, line: 602, baseType: !732, size: 8, offset: 104)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4308, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4308, file: !70, line: 795, baseType: !732, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4308, file: !70, line: 796, baseType: !732, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4308, file: !70, line: 797, baseType: !732, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4308, file: !70, line: 798, baseType: !732, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4308, file: !70, line: 799, baseType: !732, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !280, file: !281, line: 200, baseType: !485, size: 128, offset: 10176)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !280, file: !281, line: 201, baseType: !485, size: 128, offset: 10304)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !280, file: !281, line: 203, baseType: !7, size: 32, offset: 10432)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !280, file: !281, line: 204, baseType: !7, size: 32, offset: 10464)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !280, file: !281, line: 205, baseType: !4675, size: 64, offset: 10496)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !280, file: !281, line: 207, baseType: !732, size: 8, offset: 10560)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !280, file: !281, line: 209, baseType: !4678, size: 192, offset: 10624)
!4678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2762, size: 192, elements: !557)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !280, file: !281, line: 211, baseType: !732, size: 8, offset: 10816)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "ps2dev", scope: !275, file: !130, line: 92, baseType: !4681, size: 832, offset: 128)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !124, line: 48, size: 832, elements: !4682)
!4682 = !{!4683, !4748, !4749, !4750, !4751, !4753, !4754, !4755, !4761}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !4681, file: !124, line: 49, baseType: !4684, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !4686, line: 21, size: 8768, elements: !4687)
!4686 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a9b334022147244b132d6aa1a8399b7")
!4687 = !{!4688, !4689, !4690, !4691, !4692, !4693, !4700, !4701, !4705, !4709, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4743, !4744, !4745, !4746}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !4685, file: !4686, line: 22, baseType: !190, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4685, file: !4686, line: 24, baseType: !3820, size: 256, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4685, file: !4686, line: 25, baseType: !3820, size: 256, offset: 320)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !4685, file: !4686, line: 26, baseType: !4402, size: 1024, offset: 576)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !4685, file: !4686, line: 28, baseType: !732, size: 8, offset: 1600)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4685, file: !4686, line: 30, baseType: !4694, size: 32, offset: 1608)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !4268, line: 256, size: 32, elements: !4695)
!4695 = !{!4696, !4697, !4698, !4699}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4694, file: !4268, line: 257, baseType: !328, size: 8)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4694, file: !4268, line: 258, baseType: !328, size: 8, offset: 8)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4694, file: !4268, line: 259, baseType: !328, size: 8, offset: 16)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !4694, file: !4268, line: 260, baseType: !328, size: 8, offset: 24)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4685, file: !4686, line: 33, baseType: !517, size: 32, offset: 1664)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4685, file: !4686, line: 35, baseType: !4702, size: 64, offset: 1728)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!85, !4684, !192}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4685, file: !4686, line: 36, baseType: !4706, size: 64, offset: 1792)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!85, !4684}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4685, file: !4686, line: 37, baseType: !4710, size: 64, offset: 1856)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{null, !4684}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4685, file: !4686, line: 38, baseType: !4706, size: 64, offset: 1920)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4685, file: !4686, line: 39, baseType: !4710, size: 64, offset: 1984)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4685, file: !4686, line: 41, baseType: !4684, size: 64, offset: 2048)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !4685, file: !4686, line: 43, baseType: !485, size: 128, offset: 2112)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4685, file: !4686, line: 44, baseType: !485, size: 128, offset: 2240)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4685, file: !4686, line: 46, baseType: !7, size: 32, offset: 2368)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4685, file: !4686, line: 52, baseType: !4720, size: 64, offset: 2432)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !4686, line: 68, size: 1792, elements: !4722)
!4722 = !{!4723, !4724, !4727, !4728, !4729, !4734, !4738, !4739, !4740, !4741, !4742}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4721, file: !4686, line: 69, baseType: !258, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4721, file: !4686, line: 71, baseType: !4725, size: 64, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4694)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !4721, file: !4686, line: 72, baseType: !732, size: 8, offset: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4721, file: !4686, line: 74, baseType: !4710, size: 64, offset: 192)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !4721, file: !4686, line: 75, baseType: !4730, size: 64, offset: 256)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!4733, !4684, !192, !7}
!4733 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !118, line: 17, baseType: !117)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4721, file: !4686, line: 76, baseType: !4735, size: 64, offset: 320)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!85, !4684, !4720}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !4721, file: !4686, line: 77, baseType: !4706, size: 64, offset: 384)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !4721, file: !4686, line: 78, baseType: !4706, size: 64, offset: 448)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4721, file: !4686, line: 79, baseType: !4710, size: 64, offset: 512)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4721, file: !4686, line: 80, baseType: !4710, size: 64, offset: 576)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4721, file: !4686, line: 82, baseType: !4386, size: 1152, offset: 640)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !4685, file: !4686, line: 54, baseType: !437, size: 256, offset: 2496)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4685, file: !4686, line: 56, baseType: !4308, size: 5824, offset: 2752)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4685, file: !4686, line: 58, baseType: !485, size: 128, offset: 8576)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !4685, file: !4686, line: 64, baseType: !4747, size: 64, offset: 8704)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !4681, file: !124, line: 50, baseType: !437, size: 256, offset: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4681, file: !124, line: 51, baseType: !585, size: 192, offset: 320)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4681, file: !124, line: 52, baseType: !191, size: 64, offset: 512)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !4681, file: !124, line: 53, baseType: !4752, size: 64, offset: 576)
!4752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 64, elements: !230)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !4681, file: !124, line: 54, baseType: !472, size: 8, offset: 640)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !4681, file: !124, line: 55, baseType: !472, size: 8, offset: 648)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "pre_receive_handler", scope: !4681, file: !124, line: 57, baseType: !4756, size: 64, offset: 704)
!4756 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_pre_receive_handler_t", file: !124, line: 30, baseType: !4757)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!123, !4760, !472, !7}
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "receive_handler", scope: !4681, file: !124, line: 58, baseType: !4762, size: 64, offset: 768)
!4762 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_receive_handler_t", file: !124, line: 32, baseType: !4763)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{null, !4760, !472}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "resync_work", scope: !275, file: !130, line: 93, baseType: !2225, size: 704, offset: 960)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !275, file: !130, line: 94, baseType: !258, size: 64, offset: 1664)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !130, line: 95, baseType: !258, size: 64, offset: 1728)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !275, file: !130, line: 96, baseType: !4770, size: 64, offset: 1792)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4772)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_protocol", file: !130, line: 77, size: 320, elements: !4773)
!4773 = !{!4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4783}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4772, file: !130, line: 78, baseType: !129, size: 32)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "maxproto", scope: !4772, file: !130, line: 79, baseType: !732, size: 8, offset: 32)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parity", scope: !4772, file: !130, line: 80, baseType: !732, size: 8, offset: 40)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "try_passthru", scope: !4772, file: !130, line: 81, baseType: !732, size: 8, offset: 48)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_companion", scope: !4772, file: !130, line: 82, baseType: !732, size: 8, offset: 56)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4772, file: !130, line: 83, baseType: !258, size: 64, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !4772, file: !130, line: 84, baseType: !258, size: 64, offset: 128)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4772, file: !130, line: 85, baseType: !4782, size: 64, offset: 192)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4772, file: !130, line: 86, baseType: !4784, size: 64, offset: 256)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!85, !274}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !275, file: !130, line: 97, baseType: !4788, size: 64, offset: 1856)
!4788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 64, elements: !230)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "badbyte", scope: !275, file: !130, line: 98, baseType: !192, size: 8, offset: 1920)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "pktcnt", scope: !275, file: !130, line: 99, baseType: !192, size: 8, offset: 1928)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "pktsize", scope: !275, file: !130, line: 100, baseType: !192, size: 8, offset: 1936)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "oob_data_type", scope: !275, file: !130, line: 101, baseType: !192, size: 8, offset: 1944)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buttons", scope: !275, file: !130, line: 102, baseType: !192, size: 8, offset: 1952)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "acks_disable_command", scope: !275, file: !130, line: 103, baseType: !732, size: 8, offset: 1960)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !275, file: !130, line: 104, baseType: !7, size: 32, offset: 1984)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !275, file: !130, line: 105, baseType: !191, size: 64, offset: 2048)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_sync_cnt", scope: !275, file: !130, line: 106, baseType: !191, size: 64, offset: 2112)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "num_resyncs", scope: !275, file: !130, line: 107, baseType: !191, size: 64, offset: 2176)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !275, file: !130, line: 108, baseType: !156, size: 32, offset: 2240)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !275, file: !130, line: 109, baseType: !4801, size: 512, offset: 2272)
!4801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 512, elements: !1195)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !275, file: !130, line: 110, baseType: !3820, size: 256, offset: 2784)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !275, file: !130, line: 112, baseType: !7, size: 32, offset: 3040)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !275, file: !130, line: 113, baseType: !7, size: 32, offset: 3072)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "resetafter", scope: !275, file: !130, line: 114, baseType: !7, size: 32, offset: 3104)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "resync_time", scope: !275, file: !130, line: 115, baseType: !7, size: 32, offset: 3136)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "smartscroll", scope: !275, file: !130, line: 116, baseType: !732, size: 8, offset: 3168)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_handler", scope: !275, file: !130, line: 118, baseType: !4809, size: 64, offset: 3200)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!4812, !274}
!4812 = !DIDerivedType(tag: DW_TAG_typedef, name: "psmouse_ret_t", file: !130, line: 41, baseType: !163)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !275, file: !130, line: 119, baseType: !4814, size: 64, offset: 3264)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{null, !274, !7}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "set_resolution", scope: !275, file: !130, line: 120, baseType: !4814, size: 64, offset: 3328)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "set_scale", scope: !275, file: !130, line: 121, baseType: !4819, size: 64, offset: 3392)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{null, !274, !168}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !275, file: !130, line: 123, baseType: !4784, size: 64, offset: 3456)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !275, file: !130, line: 124, baseType: !4784, size: 64, offset: 3520)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !275, file: !130, line: 125, baseType: !4825, size: 64, offset: 3584)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{null, !274}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !275, file: !130, line: 126, baseType: !4825, size: 64, offset: 3648)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !275, file: !130, line: 127, baseType: !4784, size: 64, offset: 3712)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "pt_activate", scope: !275, file: !130, line: 129, baseType: !4825, size: 64, offset: 3776)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "pt_deactivate", scope: !275, file: !130, line: 130, baseType: !4825, size: 64, offset: 3840)
!4832 = !{!4833, !4834}
!4833 = !DILocalVariable(name: "psmouse", arg: 1, scope: !271, file: !3, line: 35, type: !274)
!4834 = !DILocalVariable(name: "set_properties", arg: 2, scope: !271, file: !3, line: 35, type: !732)
!4835 = !DILocation(line: 35, column: 38, scope: !271)
!4836 = !DILocation(line: 35, column: 52, scope: !271)
!4837 = !DILocation(line: 37, column: 30, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !271, file: !3, line: 37, column: 6)
!4839 = !DILocation(line: 37, column: 7, scope: !4838)
!4840 = !DILocation(line: 37, column: 6, scope: !271)
!4841 = !DILocation(line: 38, column: 3, scope: !4838)
!4842 = !DILocation(line: 40, column: 6, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !271, file: !3, line: 40, column: 6)
!4844 = !{i8 0, i8 2}
!4845 = !DILocation(line: 40, column: 6, scope: !271)
!4846 = !DILocation(line: 41, column: 3, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 40, column: 22)
!4848 = !DILocation(line: 41, column: 12, scope: !4847)
!4849 = !DILocation(line: 41, column: 19, scope: !4847)
!4850 = !DILocation(line: 42, column: 3, scope: !4847)
!4851 = !DILocation(line: 42, column: 12, scope: !4847)
!4852 = !DILocation(line: 42, column: 17, scope: !4847)
!4853 = !DILocation(line: 43, column: 2, scope: !4847)
!4854 = !DILocation(line: 45, column: 2, scope: !271)
!4855 = !DILocation(line: 46, column: 1, scope: !271)
!4856 = !DISubprogram(name: "psmouse_matches_pnp_id", scope: !130, file: !130, line: 143, type: !4857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!732, !274, !4859}
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!4860 = distinct !DISubprogram(name: "focaltech_init", scope: !3, file: !3, line: 406, type: !4785, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4861)
!4861 = !{!4862, !4863, !4884, !4885}
!4862 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4860, file: !3, line: 406, type: !274)
!4863 = !DILocalVariable(name: "priv", scope: !4860, file: !3, line: 408, type: !4864)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "focaltech_data", file: !3, line: 110, size: 608, elements: !4866)
!4866 = !{!4867, !4868, !4869}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "x_max", scope: !4865, file: !3, line: 111, baseType: !7, size: 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "y_max", scope: !4865, file: !3, line: 111, baseType: !7, size: 32, offset: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4865, file: !3, line: 112, baseType: !4870, size: 544, offset: 64)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "focaltech_hw_state", file: !3, line: 88, size: 544, elements: !4871)
!4871 = !{!4872, !4882, !4883}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "fingers", scope: !4870, file: !3, line: 94, baseType: !4873, size: 480)
!4873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4874, size: 480, elements: !4880)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "focaltech_finger_state", file: !3, line: 63, size: 96, elements: !4875)
!4875 = !{!4876, !4877, !4878, !4879}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4874, file: !3, line: 65, baseType: !732, size: 8)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4874, file: !3, line: 75, baseType: !732, size: 8, offset: 8)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4874, file: !3, line: 81, baseType: !7, size: 32, offset: 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4874, file: !3, line: 82, baseType: !7, size: 32, offset: 64)
!4880 = !{!4881}
!4881 = !DISubrange(count: 5)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4870, file: !3, line: 104, baseType: !7, size: 32, offset: 480)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "pressed", scope: !4870, file: !3, line: 107, baseType: !732, size: 8, offset: 512)
!4884 = !DILocalVariable(name: "error", scope: !4860, file: !3, line: 409, type: !85)
!4885 = !DILabel(scope: !4860, name: "fail", file: !3, line: 451)
!4886 = !DILocation(line: 406, column: 36, scope: !4860)
!4887 = !DILocation(line: 408, column: 2, scope: !4860)
!4888 = !DILocation(line: 408, column: 25, scope: !4860)
!4889 = !DILocation(line: 409, column: 2, scope: !4860)
!4890 = !DILocation(line: 409, column: 6, scope: !4860)
!4891 = !DILocation(line: 411, column: 28, scope: !4860)
!4892 = !DILocation(line: 411, column: 26, scope: !4860)
!4893 = !DILocation(line: 411, column: 2, scope: !4860)
!4894 = !DILocation(line: 411, column: 11, scope: !4860)
!4895 = !DILocation(line: 411, column: 19, scope: !4860)
!4896 = !DILocation(line: 413, column: 7, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 413, column: 6)
!4898 = !DILocation(line: 413, column: 6, scope: !4860)
!4899 = !DILocation(line: 414, column: 3, scope: !4897)
!4900 = !DILocation(line: 416, column: 18, scope: !4860)
!4901 = !DILocation(line: 416, column: 2, scope: !4860)
!4902 = !DILocation(line: 418, column: 30, scope: !4860)
!4903 = !DILocation(line: 418, column: 10, scope: !4860)
!4904 = !DILocation(line: 418, column: 8, scope: !4860)
!4905 = !DILocation(line: 419, column: 6, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 419, column: 6)
!4907 = !DILocation(line: 419, column: 6, scope: !4860)
!4908 = !DILocation(line: 420, column: 3, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 420, column: 3)
!4910 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 419, column: 13)
!4911 = !DILocation(line: 420, column: 3, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 420, column: 3)
!4913 = !DILocation(line: 422, column: 3, scope: !4910)
!4914 = !DILocation(line: 425, column: 36, scope: !4860)
!4915 = !DILocation(line: 425, column: 10, scope: !4860)
!4916 = !DILocation(line: 425, column: 8, scope: !4860)
!4917 = !DILocation(line: 426, column: 6, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 426, column: 6)
!4919 = !DILocation(line: 426, column: 6, scope: !4860)
!4920 = !DILocation(line: 427, column: 3, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 427, column: 3)
!4922 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 426, column: 13)
!4923 = !DILocation(line: 427, column: 3, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 427, column: 3)
!4925 = !DILocation(line: 428, column: 3, scope: !4922)
!4926 = !DILocation(line: 431, column: 29, scope: !4860)
!4927 = !DILocation(line: 431, column: 2, scope: !4860)
!4928 = !DILocation(line: 433, column: 2, scope: !4860)
!4929 = !DILocation(line: 433, column: 11, scope: !4860)
!4930 = !DILocation(line: 433, column: 28, scope: !4860)
!4931 = !DILocation(line: 434, column: 2, scope: !4860)
!4932 = !DILocation(line: 434, column: 11, scope: !4860)
!4933 = !DILocation(line: 434, column: 19, scope: !4860)
!4934 = !DILocation(line: 435, column: 2, scope: !4860)
!4935 = !DILocation(line: 435, column: 11, scope: !4860)
!4936 = !DILocation(line: 435, column: 22, scope: !4860)
!4937 = !DILocation(line: 436, column: 2, scope: !4860)
!4938 = !DILocation(line: 436, column: 11, scope: !4860)
!4939 = !DILocation(line: 436, column: 21, scope: !4860)
!4940 = !DILocation(line: 437, column: 2, scope: !4860)
!4941 = !DILocation(line: 437, column: 11, scope: !4860)
!4942 = !DILocation(line: 437, column: 19, scope: !4860)
!4943 = !DILocation(line: 439, column: 2, scope: !4860)
!4944 = !DILocation(line: 439, column: 11, scope: !4860)
!4945 = !DILocation(line: 439, column: 23, scope: !4860)
!4946 = !DILocation(line: 445, column: 2, scope: !4860)
!4947 = !DILocation(line: 445, column: 11, scope: !4860)
!4948 = !DILocation(line: 445, column: 26, scope: !4860)
!4949 = !DILocation(line: 446, column: 2, scope: !4860)
!4950 = !DILocation(line: 446, column: 11, scope: !4860)
!4951 = !DILocation(line: 446, column: 20, scope: !4860)
!4952 = !DILocation(line: 447, column: 2, scope: !4860)
!4953 = !DILocation(line: 447, column: 11, scope: !4860)
!4954 = !DILocation(line: 447, column: 21, scope: !4860)
!4955 = !DILocation(line: 449, column: 2, scope: !4860)
!4956 = !DILocation(line: 451, column: 1, scope: !4860)
!4957 = !DILocation(line: 452, column: 18, scope: !4860)
!4958 = !DILocation(line: 452, column: 2, scope: !4860)
!4959 = !DILocation(line: 453, column: 8, scope: !4860)
!4960 = !DILocation(line: 453, column: 2, scope: !4860)
!4961 = !DILocation(line: 454, column: 9, scope: !4860)
!4962 = !DILocation(line: 454, column: 2, scope: !4860)
!4963 = !DILocation(line: 455, column: 1, scope: !4860)
!4964 = distinct !DISubprogram(name: "kzalloc", scope: !178, file: !178, line: 719, type: !4965, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4967)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!190, !1050, !188}
!4967 = !{!4968, !4969}
!4968 = !DILocalVariable(name: "size", arg: 1, scope: !4964, file: !178, line: 719, type: !1050)
!4969 = !DILocalVariable(name: "flags", arg: 2, scope: !4964, file: !178, line: 719, type: !188)
!4970 = !DILocation(line: 719, column: 52, scope: !4964)
!4971 = !DILocation(line: 719, column: 64, scope: !4964)
!4972 = !DILocation(line: 721, column: 17, scope: !4964)
!4973 = !DILocation(line: 721, column: 23, scope: !4964)
!4974 = !DILocation(line: 721, column: 29, scope: !4964)
!4975 = !DILocation(line: 721, column: 9, scope: !4964)
!4976 = !DILocation(line: 721, column: 2, scope: !4964)
!4977 = distinct !DISubprogram(name: "focaltech_reset", scope: !3, file: !3, line: 293, type: !4826, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4978)
!4978 = !{!4979}
!4979 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4977, file: !3, line: 293, type: !274)
!4980 = !DILocation(line: 293, column: 45, scope: !4977)
!4981 = !DILocation(line: 295, column: 15, scope: !4977)
!4982 = !DILocation(line: 295, column: 24, scope: !4977)
!4983 = !DILocation(line: 295, column: 2, scope: !4977)
!4984 = !DILocation(line: 296, column: 16, scope: !4977)
!4985 = !DILocation(line: 296, column: 2, scope: !4977)
!4986 = !DILocation(line: 297, column: 1, scope: !4977)
!4987 = distinct !DISubprogram(name: "focaltech_read_size", scope: !3, file: !3, line: 373, type: !4785, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4988)
!4988 = !{!4989, !4990, !4991, !4992}
!4989 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4987, file: !3, line: 373, type: !274)
!4990 = !DILocalVariable(name: "ps2dev", scope: !4987, file: !3, line: 375, type: !4760)
!4991 = !DILocalVariable(name: "priv", scope: !4987, file: !3, line: 376, type: !4864)
!4992 = !DILocalVariable(name: "param", scope: !4987, file: !3, line: 377, type: !4993)
!4993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 24, elements: !557)
!4994 = !DILocation(line: 373, column: 48, scope: !4987)
!4995 = !DILocation(line: 375, column: 2, scope: !4987)
!4996 = !DILocation(line: 375, column: 17, scope: !4987)
!4997 = !DILocation(line: 375, column: 27, scope: !4987)
!4998 = !DILocation(line: 375, column: 36, scope: !4987)
!4999 = !DILocation(line: 376, column: 2, scope: !4987)
!5000 = !DILocation(line: 376, column: 25, scope: !4987)
!5001 = !DILocation(line: 376, column: 32, scope: !4987)
!5002 = !DILocation(line: 376, column: 41, scope: !4987)
!5003 = !DILocation(line: 377, column: 2, scope: !4987)
!5004 = !DILocation(line: 377, column: 7, scope: !4987)
!5005 = !DILocation(line: 379, column: 30, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 379, column: 6)
!5007 = !DILocation(line: 379, column: 41, scope: !5006)
!5008 = !DILocation(line: 379, column: 6, scope: !5006)
!5009 = !DILocation(line: 379, column: 6, scope: !4987)
!5010 = !DILocation(line: 380, column: 3, scope: !5006)
!5011 = !DILocation(line: 383, column: 31, scope: !4987)
!5012 = !DILocation(line: 383, column: 16, scope: !4987)
!5013 = !DILocation(line: 383, column: 40, scope: !4987)
!5014 = !DILocation(line: 383, column: 2, scope: !4987)
!5015 = !DILocation(line: 383, column: 8, scope: !4987)
!5016 = !DILocation(line: 383, column: 14, scope: !4987)
!5017 = !DILocation(line: 384, column: 31, scope: !4987)
!5018 = !DILocation(line: 384, column: 16, scope: !4987)
!5019 = !DILocation(line: 384, column: 40, scope: !4987)
!5020 = !DILocation(line: 384, column: 2, scope: !4987)
!5021 = !DILocation(line: 384, column: 8, scope: !4987)
!5022 = !DILocation(line: 384, column: 14, scope: !4987)
!5023 = !DILocation(line: 386, column: 2, scope: !4987)
!5024 = !DILocation(line: 387, column: 1, scope: !4987)
!5025 = !DISubprogram(name: "_dev_err", scope: !5026, file: !5026, line: 50, type: !5027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5026 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5027 = !DISubroutineType(types: !5028)
!5028 = !{null, !4328, !258, null}
!5029 = distinct !DISubprogram(name: "focaltech_switch_protocol", scope: !3, file: !3, line: 265, type: !4785, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5030)
!5030 = !{!5031, !5032, !5033}
!5031 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5029, file: !3, line: 265, type: !274)
!5032 = !DILocalVariable(name: "ps2dev", scope: !5029, file: !3, line: 267, type: !4760)
!5033 = !DILocalVariable(name: "param", scope: !5029, file: !3, line: 268, type: !5034)
!5034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 24, elements: !557)
!5035 = !DILocation(line: 265, column: 54, scope: !5029)
!5036 = !DILocation(line: 267, column: 2, scope: !5029)
!5037 = !DILocation(line: 267, column: 17, scope: !5029)
!5038 = !DILocation(line: 267, column: 27, scope: !5029)
!5039 = !DILocation(line: 267, column: 36, scope: !5029)
!5040 = !DILocation(line: 268, column: 2, scope: !5029)
!5041 = !DILocation(line: 268, column: 16, scope: !5029)
!5042 = !DILocation(line: 270, column: 2, scope: !5029)
!5043 = !DILocation(line: 270, column: 11, scope: !5029)
!5044 = !DILocation(line: 271, column: 18, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 271, column: 6)
!5046 = !DILocation(line: 271, column: 26, scope: !5045)
!5047 = !DILocation(line: 271, column: 6, scope: !5045)
!5048 = !DILocation(line: 271, column: 6, scope: !5029)
!5049 = !DILocation(line: 272, column: 3, scope: !5045)
!5050 = !DILocation(line: 274, column: 18, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 274, column: 6)
!5052 = !DILocation(line: 274, column: 26, scope: !5051)
!5053 = !DILocation(line: 274, column: 6, scope: !5051)
!5054 = !DILocation(line: 274, column: 6, scope: !5029)
!5055 = !DILocation(line: 275, column: 3, scope: !5051)
!5056 = !DILocation(line: 277, column: 18, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 277, column: 6)
!5058 = !DILocation(line: 277, column: 26, scope: !5057)
!5059 = !DILocation(line: 277, column: 6, scope: !5057)
!5060 = !DILocation(line: 277, column: 6, scope: !5029)
!5061 = !DILocation(line: 278, column: 3, scope: !5057)
!5062 = !DILocation(line: 280, column: 2, scope: !5029)
!5063 = !DILocation(line: 280, column: 11, scope: !5029)
!5064 = !DILocation(line: 281, column: 18, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 281, column: 6)
!5066 = !DILocation(line: 281, column: 26, scope: !5065)
!5067 = !DILocation(line: 281, column: 6, scope: !5065)
!5068 = !DILocation(line: 281, column: 6, scope: !5029)
!5069 = !DILocation(line: 282, column: 3, scope: !5065)
!5070 = !DILocation(line: 284, column: 18, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 284, column: 6)
!5072 = !DILocation(line: 284, column: 26, scope: !5071)
!5073 = !DILocation(line: 284, column: 6, scope: !5071)
!5074 = !DILocation(line: 284, column: 6, scope: !5029)
!5075 = !DILocation(line: 285, column: 3, scope: !5071)
!5076 = !DILocation(line: 287, column: 18, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 287, column: 6)
!5078 = !DILocation(line: 287, column: 26, scope: !5077)
!5079 = !DILocation(line: 287, column: 6, scope: !5077)
!5080 = !DILocation(line: 287, column: 6, scope: !5029)
!5081 = !DILocation(line: 288, column: 3, scope: !5077)
!5082 = !DILocation(line: 290, column: 2, scope: !5029)
!5083 = !DILocation(line: 291, column: 1, scope: !5029)
!5084 = distinct !DISubprogram(name: "focaltech_set_input_params", scope: !3, file: !3, line: 321, type: !4826, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5085)
!5085 = !{!5086, !5087, !5088}
!5086 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5084, file: !3, line: 321, type: !274)
!5087 = !DILocalVariable(name: "dev", scope: !5084, file: !3, line: 323, type: !279)
!5088 = !DILocalVariable(name: "priv", scope: !5084, file: !3, line: 324, type: !4864)
!5089 = !DILocation(line: 321, column: 56, scope: !5084)
!5090 = !DILocation(line: 323, column: 2, scope: !5084)
!5091 = !DILocation(line: 323, column: 20, scope: !5084)
!5092 = !DILocation(line: 323, column: 26, scope: !5084)
!5093 = !DILocation(line: 323, column: 35, scope: !5084)
!5094 = !DILocation(line: 324, column: 2, scope: !5084)
!5095 = !DILocation(line: 324, column: 25, scope: !5084)
!5096 = !DILocation(line: 324, column: 32, scope: !5084)
!5097 = !DILocation(line: 324, column: 41, scope: !5084)
!5098 = !DILocation(line: 330, column: 2, scope: !5084)
!5099 = !DILocation(line: 331, column: 2, scope: !5084)
!5100 = !DILocation(line: 332, column: 2, scope: !5084)
!5101 = !DILocation(line: 333, column: 2, scope: !5084)
!5102 = !DILocation(line: 334, column: 2, scope: !5084)
!5103 = !DILocation(line: 339, column: 2, scope: !5084)
!5104 = !DILocation(line: 340, column: 23, scope: !5084)
!5105 = !DILocation(line: 340, column: 50, scope: !5084)
!5106 = !DILocation(line: 340, column: 56, scope: !5084)
!5107 = !DILocation(line: 340, column: 2, scope: !5084)
!5108 = !DILocation(line: 341, column: 23, scope: !5084)
!5109 = !DILocation(line: 341, column: 50, scope: !5084)
!5110 = !DILocation(line: 341, column: 56, scope: !5084)
!5111 = !DILocation(line: 341, column: 2, scope: !5084)
!5112 = !DILocation(line: 342, column: 23, scope: !5084)
!5113 = !DILocation(line: 342, column: 2, scope: !5084)
!5114 = !DILocation(line: 343, column: 22, scope: !5084)
!5115 = !DILocation(line: 343, column: 2, scope: !5084)
!5116 = !DILocation(line: 344, column: 2, scope: !5084)
!5117 = !DILocation(line: 345, column: 1, scope: !5084)
!5118 = distinct !DISubprogram(name: "focaltech_process_byte", scope: !3, file: !3, line: 251, type: !4810, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5119)
!5119 = !{!5120}
!5120 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5118, file: !3, line: 251, type: !274)
!5121 = !DILocation(line: 251, column: 61, scope: !5118)
!5122 = !DILocation(line: 253, column: 6, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 253, column: 6)
!5124 = !DILocation(line: 253, column: 15, scope: !5123)
!5125 = !DILocation(line: 253, column: 22, scope: !5123)
!5126 = !DILocation(line: 253, column: 6, scope: !5118)
!5127 = !DILocation(line: 254, column: 28, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 253, column: 28)
!5129 = !DILocation(line: 254, column: 3, scope: !5128)
!5130 = !DILocation(line: 255, column: 3, scope: !5128)
!5131 = !DILocation(line: 262, column: 2, scope: !5118)
!5132 = !DILocation(line: 263, column: 1, scope: !5118)
!5133 = distinct !DISubprogram(name: "focaltech_disconnect", scope: !3, file: !3, line: 299, type: !4826, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5134)
!5134 = !{!5135}
!5135 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5133, file: !3, line: 299, type: !274)
!5136 = !DILocation(line: 299, column: 50, scope: !5133)
!5137 = !DILocation(line: 301, column: 18, scope: !5133)
!5138 = !DILocation(line: 301, column: 2, scope: !5133)
!5139 = !DILocation(line: 302, column: 8, scope: !5133)
!5140 = !DILocation(line: 302, column: 17, scope: !5133)
!5141 = !DILocation(line: 302, column: 2, scope: !5133)
!5142 = !DILocation(line: 303, column: 2, scope: !5133)
!5143 = !DILocation(line: 303, column: 11, scope: !5133)
!5144 = !DILocation(line: 303, column: 19, scope: !5133)
!5145 = !DILocation(line: 304, column: 1, scope: !5133)
!5146 = distinct !DISubprogram(name: "focaltech_reconnect", scope: !3, file: !3, line: 306, type: !4785, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5147)
!5147 = !{!5148, !5149}
!5148 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5146, file: !3, line: 306, type: !274)
!5149 = !DILocalVariable(name: "error", scope: !5146, file: !3, line: 308, type: !85)
!5150 = !DILocation(line: 306, column: 48, scope: !5146)
!5151 = !DILocation(line: 308, column: 2, scope: !5146)
!5152 = !DILocation(line: 308, column: 6, scope: !5146)
!5153 = !DILocation(line: 310, column: 18, scope: !5146)
!5154 = !DILocation(line: 310, column: 2, scope: !5146)
!5155 = !DILocation(line: 312, column: 36, scope: !5146)
!5156 = !DILocation(line: 312, column: 10, scope: !5146)
!5157 = !DILocation(line: 312, column: 8, scope: !5146)
!5158 = !DILocation(line: 313, column: 6, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 313, column: 6)
!5160 = !DILocation(line: 313, column: 6, scope: !5146)
!5161 = !DILocation(line: 314, column: 3, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 314, column: 3)
!5163 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 313, column: 13)
!5164 = !DILocation(line: 314, column: 3, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 314, column: 3)
!5166 = !DILocation(line: 315, column: 10, scope: !5163)
!5167 = !DILocation(line: 315, column: 3, scope: !5163)
!5168 = !DILocation(line: 318, column: 2, scope: !5146)
!5169 = !DILocation(line: 319, column: 1, scope: !5146)
!5170 = distinct !DISubprogram(name: "focaltech_set_resolution", scope: !3, file: !3, line: 389, type: !4815, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5171)
!5171 = !{!5172, !5173}
!5172 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5170, file: !3, line: 389, type: !274)
!5173 = !DILocalVariable(name: "resolution", arg: 2, scope: !5170, file: !3, line: 390, type: !7)
!5174 = !DILocation(line: 389, column: 54, scope: !5170)
!5175 = !DILocation(line: 390, column: 23, scope: !5170)
!5176 = !DILocation(line: 393, column: 1, scope: !5170)
!5177 = distinct !DISubprogram(name: "focaltech_set_rate", scope: !3, file: !3, line: 395, type: !4815, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5178)
!5178 = !{!5179, !5180}
!5179 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5177, file: !3, line: 395, type: !274)
!5180 = !DILocalVariable(name: "rate", arg: 2, scope: !5177, file: !3, line: 395, type: !7)
!5181 = !DILocation(line: 395, column: 48, scope: !5177)
!5182 = !DILocation(line: 395, column: 70, scope: !5177)
!5183 = !DILocation(line: 398, column: 1, scope: !5177)
!5184 = distinct !DISubprogram(name: "focaltech_set_scale", scope: !3, file: !3, line: 400, type: !4820, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5185)
!5185 = !{!5186, !5187}
!5186 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5184, file: !3, line: 400, type: !274)
!5187 = !DILocalVariable(name: "scale", arg: 2, scope: !5184, file: !3, line: 401, type: !168)
!5188 = !DILocation(line: 400, column: 49, scope: !5184)
!5189 = !DILocation(line: 401, column: 24, scope: !5184)
!5190 = !DILocation(line: 404, column: 1, scope: !5184)
!5191 = !DISubprogram(name: "kfree", scope: !178, file: !178, line: 227, type: !5192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{null, !1665}
!5194 = distinct !DISubprogram(name: "kmalloc", scope: !178, file: !178, line: 591, type: !4965, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5195)
!5195 = !{!5196, !5197, !5198}
!5196 = !DILocalVariable(name: "size", arg: 1, scope: !5194, file: !178, line: 591, type: !1050)
!5197 = !DILocalVariable(name: "flags", arg: 2, scope: !5194, file: !178, line: 591, type: !188)
!5198 = !DILocalVariable(name: "index", scope: !5199, file: !178, line: 594, type: !7)
!5199 = distinct !DILexicalBlock(scope: !5200, file: !178, line: 593, column: 42)
!5200 = distinct !DILexicalBlock(scope: !5194, file: !178, line: 593, column: 6)
!5201 = !DILocation(line: 591, column: 61, scope: !5194)
!5202 = !DILocation(line: 591, column: 73, scope: !5194)
!5203 = !DILocation(line: 593, column: 27, scope: !5200)
!5204 = !DILocation(line: 593, column: 6, scope: !5200)
!5205 = !DILocation(line: 593, column: 33, scope: !5200)
!5206 = !DILocation(line: 593, column: 36, scope: !5200)
!5207 = !DILocation(line: 593, column: 6, scope: !5194)
!5208 = !DILocation(line: 594, column: 3, scope: !5199)
!5209 = !DILocation(line: 594, column: 16, scope: !5199)
!5210 = !DILocation(line: 596, column: 7, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5199, file: !178, line: 596, column: 7)
!5212 = !DILocation(line: 596, column: 12, scope: !5211)
!5213 = !DILocation(line: 596, column: 7, scope: !5199)
!5214 = !DILocation(line: 597, column: 25, scope: !5211)
!5215 = !DILocation(line: 597, column: 31, scope: !5211)
!5216 = !DILocation(line: 597, column: 11, scope: !5211)
!5217 = !DILocation(line: 597, column: 4, scope: !5211)
!5218 = !DILocation(line: 599, column: 11, scope: !5199)
!5219 = !DILocation(line: 599, column: 9, scope: !5199)
!5220 = !DILocation(line: 601, column: 33, scope: !5199)
!5221 = !DILocation(line: 601, column: 40, scope: !5199)
!5222 = !DILocation(line: 601, column: 20, scope: !5199)
!5223 = !DILocation(line: 601, column: 5, scope: !5199)
!5224 = !DILocation(line: 601, column: 51, scope: !5199)
!5225 = !DILocation(line: 602, column: 5, scope: !5199)
!5226 = !DILocation(line: 602, column: 12, scope: !5199)
!5227 = !DILocation(line: 600, column: 10, scope: !5199)
!5228 = !DILocation(line: 600, column: 3, scope: !5199)
!5229 = !DILocation(line: 603, column: 2, scope: !5200)
!5230 = !DILocation(line: 604, column: 19, scope: !5194)
!5231 = !DILocation(line: 604, column: 25, scope: !5194)
!5232 = !DILocation(line: 604, column: 9, scope: !5194)
!5233 = !DILocation(line: 604, column: 2, scope: !5194)
!5234 = !DILocation(line: 605, column: 1, scope: !5194)
!5235 = !DISubprogram(name: "kmalloc_large", scope: !178, file: !178, line: 531, type: !4965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5236 = distinct !DISubprogram(name: "__kmalloc_index", scope: !178, file: !178, line: 444, type: !5237, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5239)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{!7, !1050, !732}
!5239 = !{!5240, !5241}
!5240 = !DILocalVariable(name: "size", arg: 1, scope: !5236, file: !178, line: 444, type: !1050)
!5241 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5236, file: !178, line: 445, type: !732)
!5242 = !DILocation(line: 444, column: 60, scope: !5236)
!5243 = !DILocation(line: 445, column: 16, scope: !5236)
!5244 = !DILocation(line: 447, column: 7, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 447, column: 6)
!5246 = !DILocation(line: 447, column: 6, scope: !5236)
!5247 = !DILocation(line: 448, column: 3, scope: !5245)
!5248 = !DILocation(line: 450, column: 6, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 450, column: 6)
!5250 = !DILocation(line: 450, column: 11, scope: !5249)
!5251 = !DILocation(line: 450, column: 6, scope: !5236)
!5252 = !DILocation(line: 451, column: 3, scope: !5249)
!5253 = !DILocation(line: 453, column: 32, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 453, column: 6)
!5255 = !DILocation(line: 453, column: 37, scope: !5254)
!5256 = !DILocation(line: 453, column: 42, scope: !5254)
!5257 = !DILocation(line: 453, column: 45, scope: !5254)
!5258 = !DILocation(line: 453, column: 50, scope: !5254)
!5259 = !DILocation(line: 453, column: 6, scope: !5236)
!5260 = !DILocation(line: 454, column: 3, scope: !5254)
!5261 = !DILocation(line: 455, column: 32, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 455, column: 6)
!5263 = !DILocation(line: 455, column: 37, scope: !5262)
!5264 = !DILocation(line: 455, column: 43, scope: !5262)
!5265 = !DILocation(line: 455, column: 46, scope: !5262)
!5266 = !DILocation(line: 455, column: 51, scope: !5262)
!5267 = !DILocation(line: 455, column: 6, scope: !5236)
!5268 = !DILocation(line: 456, column: 3, scope: !5262)
!5269 = !DILocation(line: 457, column: 6, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 457, column: 6)
!5271 = !DILocation(line: 457, column: 11, scope: !5270)
!5272 = !DILocation(line: 457, column: 6, scope: !5236)
!5273 = !DILocation(line: 457, column: 26, scope: !5270)
!5274 = !DILocation(line: 458, column: 6, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 458, column: 6)
!5276 = !DILocation(line: 458, column: 11, scope: !5275)
!5277 = !DILocation(line: 458, column: 6, scope: !5236)
!5278 = !DILocation(line: 458, column: 26, scope: !5275)
!5279 = !DILocation(line: 459, column: 6, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 459, column: 6)
!5281 = !DILocation(line: 459, column: 11, scope: !5280)
!5282 = !DILocation(line: 459, column: 6, scope: !5236)
!5283 = !DILocation(line: 459, column: 26, scope: !5280)
!5284 = !DILocation(line: 460, column: 6, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 460, column: 6)
!5286 = !DILocation(line: 460, column: 11, scope: !5285)
!5287 = !DILocation(line: 460, column: 6, scope: !5236)
!5288 = !DILocation(line: 460, column: 26, scope: !5285)
!5289 = !DILocation(line: 461, column: 6, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 461, column: 6)
!5291 = !DILocation(line: 461, column: 11, scope: !5290)
!5292 = !DILocation(line: 461, column: 6, scope: !5236)
!5293 = !DILocation(line: 461, column: 26, scope: !5290)
!5294 = !DILocation(line: 462, column: 6, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 462, column: 6)
!5296 = !DILocation(line: 462, column: 11, scope: !5295)
!5297 = !DILocation(line: 462, column: 6, scope: !5236)
!5298 = !DILocation(line: 462, column: 26, scope: !5295)
!5299 = !DILocation(line: 463, column: 6, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 463, column: 6)
!5301 = !DILocation(line: 463, column: 11, scope: !5300)
!5302 = !DILocation(line: 463, column: 6, scope: !5236)
!5303 = !DILocation(line: 463, column: 26, scope: !5300)
!5304 = !DILocation(line: 464, column: 6, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 464, column: 6)
!5306 = !DILocation(line: 464, column: 11, scope: !5305)
!5307 = !DILocation(line: 464, column: 6, scope: !5236)
!5308 = !DILocation(line: 464, column: 26, scope: !5305)
!5309 = !DILocation(line: 465, column: 6, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 465, column: 6)
!5311 = !DILocation(line: 465, column: 11, scope: !5310)
!5312 = !DILocation(line: 465, column: 6, scope: !5236)
!5313 = !DILocation(line: 465, column: 26, scope: !5310)
!5314 = !DILocation(line: 466, column: 6, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 466, column: 6)
!5316 = !DILocation(line: 466, column: 11, scope: !5315)
!5317 = !DILocation(line: 466, column: 6, scope: !5236)
!5318 = !DILocation(line: 466, column: 26, scope: !5315)
!5319 = !DILocation(line: 467, column: 6, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 467, column: 6)
!5321 = !DILocation(line: 467, column: 11, scope: !5320)
!5322 = !DILocation(line: 467, column: 6, scope: !5236)
!5323 = !DILocation(line: 467, column: 26, scope: !5320)
!5324 = !DILocation(line: 468, column: 6, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 468, column: 6)
!5326 = !DILocation(line: 468, column: 11, scope: !5325)
!5327 = !DILocation(line: 468, column: 6, scope: !5236)
!5328 = !DILocation(line: 468, column: 26, scope: !5325)
!5329 = !DILocation(line: 469, column: 6, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 469, column: 6)
!5331 = !DILocation(line: 469, column: 11, scope: !5330)
!5332 = !DILocation(line: 469, column: 6, scope: !5236)
!5333 = !DILocation(line: 469, column: 26, scope: !5330)
!5334 = !DILocation(line: 470, column: 6, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 470, column: 6)
!5336 = !DILocation(line: 470, column: 11, scope: !5335)
!5337 = !DILocation(line: 470, column: 6, scope: !5236)
!5338 = !DILocation(line: 470, column: 26, scope: !5335)
!5339 = !DILocation(line: 471, column: 6, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 471, column: 6)
!5341 = !DILocation(line: 471, column: 11, scope: !5340)
!5342 = !DILocation(line: 471, column: 6, scope: !5236)
!5343 = !DILocation(line: 471, column: 26, scope: !5340)
!5344 = !DILocation(line: 472, column: 6, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 472, column: 6)
!5346 = !DILocation(line: 472, column: 11, scope: !5345)
!5347 = !DILocation(line: 472, column: 6, scope: !5236)
!5348 = !DILocation(line: 472, column: 26, scope: !5345)
!5349 = !DILocation(line: 473, column: 6, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 473, column: 6)
!5351 = !DILocation(line: 473, column: 11, scope: !5350)
!5352 = !DILocation(line: 473, column: 6, scope: !5236)
!5353 = !DILocation(line: 473, column: 26, scope: !5350)
!5354 = !DILocation(line: 474, column: 6, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 474, column: 6)
!5356 = !DILocation(line: 474, column: 11, scope: !5355)
!5357 = !DILocation(line: 474, column: 6, scope: !5236)
!5358 = !DILocation(line: 474, column: 27, scope: !5355)
!5359 = !DILocation(line: 475, column: 6, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 475, column: 6)
!5361 = !DILocation(line: 475, column: 11, scope: !5360)
!5362 = !DILocation(line: 475, column: 6, scope: !5236)
!5363 = !DILocation(line: 475, column: 32, scope: !5360)
!5364 = !DILocation(line: 477, column: 50, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5236, file: !178, line: 477, column: 6)
!5366 = !DILocation(line: 477, column: 6, scope: !5236)
!5367 = !DILocation(line: 478, column: 3, scope: !5365)
!5368 = !DILocation(line: 478, column: 3, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5370, file: !178, line: 478, column: 3)
!5370 = distinct !DILexicalBlock(scope: !5365, file: !178, line: 478, column: 3)
!5371 = !{i32 -2141031852}
!5372 = !DILocation(line: 478, column: 3, scope: !5370)
!5373 = !DILocation(line: 480, column: 3, scope: !5365)
!5374 = !DILocation(line: 480, column: 3, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5365, file: !178, line: 480, column: 3)
!5376 = !DILocation(line: 480, column: 3, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5375, file: !178, line: 480, column: 3)
!5378 = !DILocation(line: 480, column: 3, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5375, file: !178, line: 480, column: 3)
!5380 = !{i64 2153935647, i64 2153935676, i64 2153935722, i64 2153935780, i64 2153935834, i64 2153935888, i64 2153935943, i64 2153935974}
!5381 = !DILocation(line: 483, column: 2, scope: !5236)
!5382 = !DILocation(line: 484, column: 1, scope: !5236)
!5383 = !DISubprogram(name: "kmalloc_trace", scope: !178, file: !178, line: 525, type: !5384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5384 = !DISubroutineType(types: !5385)
!5385 = !{!190, !5386, !188, !1050}
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!5387 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5388, line: 325, flags: DIFlagFwdDecl)
!5388 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5389 = distinct !DISubprogram(name: "kmalloc_type", scope: !178, file: !178, line: 401, type: !5390, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5392)
!5390 = !DISubroutineType(types: !5391)
!5391 = !{!177, !188, !191}
!5392 = !{!5393, !5394}
!5393 = !DILocalVariable(name: "flags", arg: 1, scope: !5389, file: !178, line: 401, type: !188)
!5394 = !DILocalVariable(name: "caller", arg: 2, scope: !5389, file: !178, line: 401, type: !191)
!5395 = !DILocation(line: 401, column: 67, scope: !5389)
!5396 = !DILocation(line: 401, column: 88, scope: !5389)
!5397 = !DILocation(line: 407, column: 6, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5389, file: !178, line: 407, column: 6)
!5399 = !DILocation(line: 407, column: 6, scope: !5389)
!5400 = !DILocation(line: 413, column: 3, scope: !5398)
!5401 = !DILocation(line: 423, column: 38, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5389, file: !178, line: 423, column: 6)
!5403 = !DILocation(line: 423, column: 44, scope: !5402)
!5404 = !DILocation(line: 423, column: 6, scope: !5389)
!5405 = !DILocation(line: 424, column: 3, scope: !5402)
!5406 = !DILocation(line: 426, column: 3, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5389, file: !178, line: 425, column: 6)
!5408 = !DILocation(line: 429, column: 1, scope: !5389)
!5409 = !DISubprogram(name: "__kmalloc", scope: !178, file: !178, line: 488, type: !4965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5410 = !DISubprogram(name: "__compiletime_assert_263", scope: !178, file: !178, line: 478, type: !2272, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5411 = !DISubprogram(name: "ps2_command", scope: !124, file: !124, line: 69, type: !5412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5412 = !DISubroutineType(types: !5413)
!5413 = !{!85, !4760, !5414, !7}
!5414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!5415 = !DISubprogram(name: "psmouse_reset", scope: !130, file: !130, line: 137, type: !4785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5416 = distinct !DISubprogram(name: "focaltech_read_register", scope: !3, file: !3, line: 347, type: !5417, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5420)
!5417 = !DISubroutineType(types: !5418)
!5418 = !{!85, !4760, !85, !5419}
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!5420 = !{!5421, !5422, !5423}
!5421 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5416, file: !3, line: 347, type: !4760)
!5422 = !DILocalVariable(name: "reg", arg: 2, scope: !5416, file: !3, line: 347, type: !85)
!5423 = !DILocalVariable(name: "param", arg: 3, scope: !5416, file: !3, line: 348, type: !5419)
!5424 = !DILocation(line: 347, column: 51, scope: !5416)
!5425 = !DILocation(line: 347, column: 63, scope: !5416)
!5426 = !DILocation(line: 348, column: 23, scope: !5416)
!5427 = !DILocation(line: 350, column: 18, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 350, column: 6)
!5429 = !DILocation(line: 350, column: 26, scope: !5428)
!5430 = !DILocation(line: 350, column: 6, scope: !5428)
!5431 = !DILocation(line: 350, column: 6, scope: !5416)
!5432 = !DILocation(line: 351, column: 3, scope: !5428)
!5433 = !DILocation(line: 353, column: 2, scope: !5416)
!5434 = !DILocation(line: 353, column: 11, scope: !5416)
!5435 = !DILocation(line: 354, column: 18, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 354, column: 6)
!5437 = !DILocation(line: 354, column: 26, scope: !5436)
!5438 = !DILocation(line: 354, column: 6, scope: !5436)
!5439 = !DILocation(line: 354, column: 6, scope: !5416)
!5440 = !DILocation(line: 355, column: 3, scope: !5436)
!5441 = !DILocation(line: 357, column: 18, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 357, column: 6)
!5443 = !DILocation(line: 357, column: 26, scope: !5442)
!5444 = !DILocation(line: 357, column: 6, scope: !5442)
!5445 = !DILocation(line: 357, column: 6, scope: !5416)
!5446 = !DILocation(line: 358, column: 3, scope: !5442)
!5447 = !DILocation(line: 360, column: 18, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 360, column: 6)
!5449 = !DILocation(line: 360, column: 26, scope: !5448)
!5450 = !DILocation(line: 360, column: 6, scope: !5448)
!5451 = !DILocation(line: 360, column: 6, scope: !5416)
!5452 = !DILocation(line: 361, column: 3, scope: !5448)
!5453 = !DILocation(line: 363, column: 13, scope: !5416)
!5454 = !DILocation(line: 363, column: 2, scope: !5416)
!5455 = !DILocation(line: 363, column: 11, scope: !5416)
!5456 = !DILocation(line: 364, column: 18, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 364, column: 6)
!5458 = !DILocation(line: 364, column: 26, scope: !5457)
!5459 = !DILocation(line: 364, column: 6, scope: !5457)
!5460 = !DILocation(line: 364, column: 6, scope: !5416)
!5461 = !DILocation(line: 365, column: 3, scope: !5457)
!5462 = !DILocation(line: 367, column: 18, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 367, column: 6)
!5464 = !DILocation(line: 367, column: 26, scope: !5463)
!5465 = !DILocation(line: 367, column: 6, scope: !5463)
!5466 = !DILocation(line: 367, column: 6, scope: !5416)
!5467 = !DILocation(line: 368, column: 3, scope: !5463)
!5468 = !DILocation(line: 370, column: 2, scope: !5416)
!5469 = !DILocation(line: 371, column: 1, scope: !5416)
!5470 = distinct !DISubprogram(name: "generic___clear_bit", scope: !5471, file: !5471, line: 37, type: !5472, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5476)
!5471 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5472 = !DISubroutineType(types: !5473)
!5473 = !{null, !191, !5474}
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !191)
!5476 = !{!5477, !5478, !5479, !5480}
!5477 = !DILocalVariable(name: "nr", arg: 1, scope: !5470, file: !5471, line: 37, type: !191)
!5478 = !DILocalVariable(name: "addr", arg: 2, scope: !5470, file: !5471, line: 37, type: !5474)
!5479 = !DILocalVariable(name: "mask", scope: !5470, file: !5471, line: 39, type: !191)
!5480 = !DILocalVariable(name: "p", scope: !5470, file: !5471, line: 40, type: !196)
!5481 = !DILocation(line: 37, column: 35, scope: !5470)
!5482 = !DILocation(line: 37, column: 63, scope: !5470)
!5483 = !DILocation(line: 39, column: 2, scope: !5470)
!5484 = !DILocation(line: 39, column: 16, scope: !5470)
!5485 = !DILocation(line: 39, column: 23, scope: !5470)
!5486 = !DILocation(line: 40, column: 2, scope: !5470)
!5487 = !DILocation(line: 40, column: 17, scope: !5470)
!5488 = !DILocation(line: 40, column: 39, scope: !5470)
!5489 = !DILocation(line: 40, column: 47, scope: !5470)
!5490 = !DILocation(line: 40, column: 45, scope: !5470)
!5491 = !DILocation(line: 42, column: 9, scope: !5470)
!5492 = !DILocation(line: 42, column: 8, scope: !5470)
!5493 = !DILocation(line: 42, column: 3, scope: !5470)
!5494 = !DILocation(line: 42, column: 5, scope: !5470)
!5495 = !DILocation(line: 43, column: 1, scope: !5470)
!5496 = distinct !DISubprogram(name: "___clear_bit", scope: !5497, file: !5497, line: 42, type: !5472, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5498)
!5497 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5498 = !{!5499, !5500}
!5499 = !DILocalVariable(name: "nr", arg: 1, scope: !5496, file: !5497, line: 42, type: !191)
!5500 = !DILocalVariable(name: "addr", arg: 2, scope: !5496, file: !5497, line: 42, type: !5474)
!5501 = !DILocation(line: 42, column: 28, scope: !5496)
!5502 = !DILocation(line: 42, column: 56, scope: !5496)
!5503 = !DILocation(line: 44, column: 19, scope: !5496)
!5504 = !DILocation(line: 44, column: 26, scope: !5496)
!5505 = !DILocation(line: 44, column: 24, scope: !5496)
!5506 = !DILocation(line: 44, column: 2, scope: !5496)
!5507 = !DILocation(line: 45, column: 19, scope: !5496)
!5508 = !DILocation(line: 45, column: 23, scope: !5496)
!5509 = !DILocation(line: 45, column: 2, scope: !5496)
!5510 = !DILocation(line: 46, column: 1, scope: !5496)
!5511 = distinct !DISubprogram(name: "generic___set_bit", scope: !5471, file: !5471, line: 28, type: !5472, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5512)
!5512 = !{!5513, !5514, !5515, !5516}
!5513 = !DILocalVariable(name: "nr", arg: 1, scope: !5511, file: !5471, line: 28, type: !191)
!5514 = !DILocalVariable(name: "addr", arg: 2, scope: !5511, file: !5471, line: 28, type: !5474)
!5515 = !DILocalVariable(name: "mask", scope: !5511, file: !5471, line: 30, type: !191)
!5516 = !DILocalVariable(name: "p", scope: !5511, file: !5471, line: 31, type: !196)
!5517 = !DILocation(line: 28, column: 33, scope: !5511)
!5518 = !DILocation(line: 28, column: 61, scope: !5511)
!5519 = !DILocation(line: 30, column: 2, scope: !5511)
!5520 = !DILocation(line: 30, column: 16, scope: !5511)
!5521 = !DILocation(line: 30, column: 23, scope: !5511)
!5522 = !DILocation(line: 31, column: 2, scope: !5511)
!5523 = !DILocation(line: 31, column: 17, scope: !5511)
!5524 = !DILocation(line: 31, column: 39, scope: !5511)
!5525 = !DILocation(line: 31, column: 47, scope: !5511)
!5526 = !DILocation(line: 31, column: 45, scope: !5511)
!5527 = !DILocation(line: 33, column: 9, scope: !5511)
!5528 = !DILocation(line: 33, column: 3, scope: !5511)
!5529 = !DILocation(line: 33, column: 6, scope: !5511)
!5530 = !DILocation(line: 34, column: 1, scope: !5511)
!5531 = distinct !DISubprogram(name: "___set_bit", scope: !5497, file: !5497, line: 26, type: !5472, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5532)
!5532 = !{!5533, !5534}
!5533 = !DILocalVariable(name: "nr", arg: 1, scope: !5531, file: !5497, line: 26, type: !191)
!5534 = !DILocalVariable(name: "addr", arg: 2, scope: !5531, file: !5497, line: 26, type: !5474)
!5535 = !DILocation(line: 26, column: 26, scope: !5531)
!5536 = !DILocation(line: 26, column: 54, scope: !5531)
!5537 = !DILocation(line: 28, column: 19, scope: !5531)
!5538 = !DILocation(line: 28, column: 26, scope: !5531)
!5539 = !DILocation(line: 28, column: 24, scope: !5531)
!5540 = !DILocation(line: 28, column: 2, scope: !5531)
!5541 = !DILocation(line: 29, column: 17, scope: !5531)
!5542 = !DILocation(line: 29, column: 21, scope: !5531)
!5543 = !DILocation(line: 29, column: 2, scope: !5531)
!5544 = !DILocation(line: 30, column: 1, scope: !5531)
!5545 = !DISubprogram(name: "input_set_abs_params", scope: !281, file: !281, line: 476, type: !5546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5546 = !DISubroutineType(types: !5547)
!5547 = !{null, !279, !7, !85, !85, !85, !85}
!5548 = !DISubprogram(name: "input_mt_init_slots", scope: !4177, file: !4177, line: 76, type: !5549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!85, !279, !7, !7}
!5551 = distinct !DISubprogram(name: "instrument_write", scope: !5552, file: !5552, line: 38, type: !5553, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5558)
!5552 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5553 = !DISubroutineType(types: !5554)
!5554 = !{null, !5555, !1050}
!5555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5556, size: 64)
!5556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5557)
!5557 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5558 = !{!5559, !5560}
!5559 = !DILocalVariable(name: "v", arg: 1, scope: !5551, file: !5552, line: 38, type: !5555)
!5560 = !DILocalVariable(name: "size", arg: 2, scope: !5551, file: !5552, line: 38, type: !1050)
!5561 = !DILocation(line: 38, column: 67, scope: !5551)
!5562 = !DILocation(line: 38, column: 77, scope: !5551)
!5563 = !DILocation(line: 40, column: 20, scope: !5551)
!5564 = !DILocation(line: 40, column: 23, scope: !5551)
!5565 = !DILocation(line: 40, column: 2, scope: !5551)
!5566 = !DILocation(line: 41, column: 2, scope: !5551)
!5567 = !DILocation(line: 42, column: 1, scope: !5551)
!5568 = distinct !DISubprogram(name: "arch___clear_bit", scope: !5569, file: !5569, line: 92, type: !5472, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5570)
!5569 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5570 = !{!5571, !5572}
!5571 = !DILocalVariable(name: "nr", arg: 1, scope: !5568, file: !5569, line: 92, type: !191)
!5572 = !DILocalVariable(name: "addr", arg: 2, scope: !5568, file: !5569, line: 92, type: !5474)
!5573 = !DILocation(line: 92, column: 32, scope: !5568)
!5574 = !DILocation(line: 92, column: 60, scope: !5568)
!5575 = !DILocation(line: 94, column: 44, scope: !5568)
!5576 = !DILocation(line: 94, column: 56, scope: !5568)
!5577 = !DILocation(line: 94, column: 2, scope: !5568)
!5578 = !{i64 2147994324}
!5579 = !DILocation(line: 95, column: 1, scope: !5568)
!5580 = distinct !DISubprogram(name: "kasan_check_write", scope: !5581, file: !5581, line: 44, type: !5582, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5584)
!5581 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5582 = !DISubroutineType(types: !5583)
!5583 = !{!732, !5555, !7}
!5584 = !{!5585, !5586}
!5585 = !DILocalVariable(name: "p", arg: 1, scope: !5580, file: !5581, line: 44, type: !5555)
!5586 = !DILocalVariable(name: "size", arg: 2, scope: !5580, file: !5581, line: 44, type: !7)
!5587 = !DILocation(line: 44, column: 59, scope: !5580)
!5588 = !DILocation(line: 44, column: 75, scope: !5580)
!5589 = !DILocation(line: 46, column: 2, scope: !5580)
!5590 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5591, file: !5591, line: 229, type: !5592, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5594)
!5591 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5592 = !DISubroutineType(types: !5593)
!5593 = !{null, !5555, !1050, !85}
!5594 = !{!5595, !5596, !5597}
!5595 = !DILocalVariable(name: "ptr", arg: 1, scope: !5590, file: !5591, line: 229, type: !5555)
!5596 = !DILocalVariable(name: "size", arg: 2, scope: !5590, file: !5591, line: 229, type: !1050)
!5597 = !DILocalVariable(name: "type", arg: 3, scope: !5590, file: !5591, line: 230, type: !85)
!5598 = !DILocation(line: 229, column: 60, scope: !5590)
!5599 = !DILocation(line: 229, column: 72, scope: !5590)
!5600 = !DILocation(line: 230, column: 15, scope: !5590)
!5601 = !DILocation(line: 230, column: 23, scope: !5590)
!5602 = distinct !DISubprogram(name: "arch___set_bit", scope: !5569, file: !5569, line: 66, type: !5472, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5603)
!5603 = !{!5604, !5605}
!5604 = !DILocalVariable(name: "nr", arg: 1, scope: !5602, file: !5569, line: 66, type: !191)
!5605 = !DILocalVariable(name: "addr", arg: 2, scope: !5602, file: !5569, line: 66, type: !5474)
!5606 = !DILocation(line: 66, column: 30, scope: !5602)
!5607 = !DILocation(line: 66, column: 58, scope: !5602)
!5608 = !DILocation(line: 68, column: 44, scope: !5602)
!5609 = !DILocation(line: 68, column: 56, scope: !5602)
!5610 = !DILocation(line: 68, column: 2, scope: !5602)
!5611 = !{i64 2147992791}
!5612 = !DILocation(line: 69, column: 1, scope: !5602)
!5613 = distinct !DISubprogram(name: "focaltech_process_packet", scope: !3, file: !3, line: 226, type: !4826, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5614)
!5614 = !{!5615, !5616}
!5615 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5613, file: !3, line: 226, type: !274)
!5616 = !DILocalVariable(name: "packet", scope: !5613, file: !3, line: 228, type: !5419)
!5617 = !DILocation(line: 226, column: 54, scope: !5613)
!5618 = !DILocation(line: 228, column: 2, scope: !5613)
!5619 = !DILocation(line: 228, column: 17, scope: !5613)
!5620 = !DILocation(line: 228, column: 26, scope: !5613)
!5621 = !DILocation(line: 228, column: 35, scope: !5613)
!5622 = !DILocation(line: 230, column: 10, scope: !5613)
!5623 = !DILocation(line: 230, column: 20, scope: !5613)
!5624 = !DILocation(line: 230, column: 2, scope: !5613)
!5625 = !DILocation(line: 232, column: 34, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 230, column: 27)
!5627 = !DILocation(line: 232, column: 43, scope: !5626)
!5628 = !DILocation(line: 232, column: 3, scope: !5626)
!5629 = !DILocation(line: 233, column: 3, scope: !5626)
!5630 = !DILocation(line: 236, column: 32, scope: !5626)
!5631 = !DILocation(line: 236, column: 41, scope: !5626)
!5632 = !DILocation(line: 236, column: 3, scope: !5626)
!5633 = !DILocation(line: 237, column: 3, scope: !5626)
!5634 = !DILocation(line: 240, column: 32, scope: !5626)
!5635 = !DILocation(line: 240, column: 41, scope: !5626)
!5636 = !DILocation(line: 240, column: 3, scope: !5626)
!5637 = !DILocation(line: 241, column: 3, scope: !5626)
!5638 = !DILocation(line: 244, column: 3, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 244, column: 3)
!5640 = !DILocation(line: 244, column: 3, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 244, column: 3)
!5642 = !DILocation(line: 245, column: 3, scope: !5626)
!5643 = !DILocation(line: 248, column: 25, scope: !5613)
!5644 = !DILocation(line: 248, column: 2, scope: !5613)
!5645 = !DILocation(line: 249, column: 1, scope: !5613)
!5646 = distinct !DISubprogram(name: "focaltech_process_touch_packet", scope: !3, file: !3, line: 149, type: !5647, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5649)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{null, !274, !5419}
!5649 = !{!5650, !5651, !5652, !5653, !5655, !5656}
!5650 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5646, file: !3, line: 149, type: !274)
!5651 = !DILocalVariable(name: "packet", arg: 2, scope: !5646, file: !3, line: 150, type: !5419)
!5652 = !DILocalVariable(name: "priv", scope: !5646, file: !3, line: 152, type: !4864)
!5653 = !DILocalVariable(name: "state", scope: !5646, file: !3, line: 153, type: !5654)
!5654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!5655 = !DILocalVariable(name: "fingers", scope: !5646, file: !3, line: 154, type: !192)
!5656 = !DILocalVariable(name: "i", scope: !5646, file: !3, line: 155, type: !85)
!5657 = !DILocation(line: 149, column: 60, scope: !5646)
!5658 = !DILocation(line: 150, column: 24, scope: !5646)
!5659 = !DILocation(line: 152, column: 2, scope: !5646)
!5660 = !DILocation(line: 152, column: 25, scope: !5646)
!5661 = !DILocation(line: 152, column: 32, scope: !5646)
!5662 = !DILocation(line: 152, column: 41, scope: !5646)
!5663 = !DILocation(line: 153, column: 2, scope: !5646)
!5664 = !DILocation(line: 153, column: 29, scope: !5646)
!5665 = !DILocation(line: 153, column: 38, scope: !5646)
!5666 = !DILocation(line: 153, column: 44, scope: !5646)
!5667 = !DILocation(line: 154, column: 2, scope: !5646)
!5668 = !DILocation(line: 154, column: 16, scope: !5646)
!5669 = !DILocation(line: 154, column: 26, scope: !5646)
!5670 = !DILocation(line: 155, column: 2, scope: !5646)
!5671 = !DILocation(line: 155, column: 6, scope: !5646)
!5672 = !DILocation(line: 157, column: 20, scope: !5646)
!5673 = !DILocation(line: 157, column: 30, scope: !5646)
!5674 = !DILocation(line: 157, column: 36, scope: !5646)
!5675 = !DILocation(line: 157, column: 19, scope: !5646)
!5676 = !DILocation(line: 157, column: 2, scope: !5646)
!5677 = !DILocation(line: 157, column: 9, scope: !5646)
!5678 = !DILocation(line: 157, column: 17, scope: !5646)
!5679 = !DILocation(line: 160, column: 9, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 160, column: 2)
!5681 = !DILocation(line: 160, column: 7, scope: !5680)
!5682 = !DILocation(line: 160, column: 14, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 160, column: 2)
!5684 = !DILocation(line: 160, column: 16, scope: !5683)
!5685 = !DILocation(line: 160, column: 2, scope: !5680)
!5686 = !DILocation(line: 161, column: 30, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 160, column: 40)
!5688 = !DILocation(line: 161, column: 38, scope: !5687)
!5689 = !DILocation(line: 161, column: 3, scope: !5687)
!5690 = !DILocation(line: 161, column: 10, scope: !5687)
!5691 = !DILocation(line: 161, column: 18, scope: !5687)
!5692 = !DILocation(line: 161, column: 21, scope: !5687)
!5693 = !DILocation(line: 161, column: 28, scope: !5687)
!5694 = !DILocation(line: 162, column: 8, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 162, column: 7)
!5696 = !DILocation(line: 162, column: 15, scope: !5695)
!5697 = !DILocation(line: 162, column: 23, scope: !5695)
!5698 = !DILocation(line: 162, column: 26, scope: !5695)
!5699 = !DILocation(line: 162, column: 7, scope: !5687)
!5700 = !DILocation(line: 167, column: 4, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 162, column: 34)
!5702 = !DILocation(line: 167, column: 11, scope: !5701)
!5703 = !DILocation(line: 167, column: 19, scope: !5701)
!5704 = !DILocation(line: 167, column: 22, scope: !5701)
!5705 = !DILocation(line: 167, column: 28, scope: !5701)
!5706 = !DILocation(line: 168, column: 3, scope: !5701)
!5707 = !DILocation(line: 169, column: 11, scope: !5687)
!5708 = !DILocation(line: 170, column: 2, scope: !5687)
!5709 = !DILocation(line: 160, column: 36, scope: !5683)
!5710 = !DILocation(line: 160, column: 2, scope: !5683)
!5711 = distinct !{!5711, !5685, !5712, !5713, !5714}
!5712 = !DILocation(line: 170, column: 2, scope: !5680)
!5713 = !{!"llvm.loop.mustprogress"}
!5714 = !{!"llvm.loop.unroll.disable"}
!5715 = !DILocation(line: 171, column: 1, scope: !5646)
!5716 = distinct !DISubprogram(name: "focaltech_process_abs_packet", scope: !3, file: !3, line: 173, type: !5647, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5717)
!5717 = !{!5718, !5719, !5720, !5721, !5722}
!5718 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5716, file: !3, line: 173, type: !274)
!5719 = !DILocalVariable(name: "packet", arg: 2, scope: !5716, file: !3, line: 174, type: !5419)
!5720 = !DILocalVariable(name: "priv", scope: !5716, file: !3, line: 176, type: !4864)
!5721 = !DILocalVariable(name: "state", scope: !5716, file: !3, line: 177, type: !5654)
!5722 = !DILocalVariable(name: "finger", scope: !5716, file: !3, line: 178, type: !7)
!5723 = !DILocation(line: 173, column: 58, scope: !5716)
!5724 = !DILocation(line: 174, column: 22, scope: !5716)
!5725 = !DILocation(line: 176, column: 2, scope: !5716)
!5726 = !DILocation(line: 176, column: 25, scope: !5716)
!5727 = !DILocation(line: 176, column: 32, scope: !5716)
!5728 = !DILocation(line: 176, column: 41, scope: !5716)
!5729 = !DILocation(line: 177, column: 2, scope: !5716)
!5730 = !DILocation(line: 177, column: 29, scope: !5716)
!5731 = !DILocation(line: 177, column: 38, scope: !5716)
!5732 = !DILocation(line: 177, column: 44, scope: !5716)
!5733 = !DILocation(line: 178, column: 2, scope: !5716)
!5734 = !DILocation(line: 178, column: 15, scope: !5716)
!5735 = !DILocation(line: 180, column: 12, scope: !5716)
!5736 = !DILocation(line: 180, column: 22, scope: !5716)
!5737 = !DILocation(line: 180, column: 28, scope: !5716)
!5738 = !DILocation(line: 180, column: 9, scope: !5716)
!5739 = !DILocation(line: 181, column: 6, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 181, column: 6)
!5741 = !DILocation(line: 181, column: 13, scope: !5740)
!5742 = !DILocation(line: 181, column: 6, scope: !5716)
!5743 = !DILocation(line: 182, column: 3, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 182, column: 3)
!5745 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 181, column: 33)
!5746 = !DILocation(line: 182, column: 3, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 182, column: 3)
!5748 = !DILocation(line: 184, column: 3, scope: !5745)
!5749 = !DILocation(line: 187, column: 20, scope: !5716)
!5750 = !DILocation(line: 187, column: 30, scope: !5716)
!5751 = !DILocation(line: 187, column: 36, scope: !5716)
!5752 = !DILocation(line: 187, column: 19, scope: !5716)
!5753 = !DILocation(line: 187, column: 2, scope: !5716)
!5754 = !DILocation(line: 187, column: 9, scope: !5716)
!5755 = !DILocation(line: 187, column: 17, scope: !5716)
!5756 = !DILocation(line: 189, column: 31, scope: !5716)
!5757 = !DILocation(line: 189, column: 41, scope: !5716)
!5758 = !DILocation(line: 189, column: 48, scope: !5716)
!5759 = !DILocation(line: 189, column: 56, scope: !5716)
!5760 = !DILocation(line: 189, column: 54, scope: !5716)
!5761 = !DILocation(line: 189, column: 2, scope: !5716)
!5762 = !DILocation(line: 189, column: 9, scope: !5716)
!5763 = !DILocation(line: 189, column: 17, scope: !5716)
!5764 = !DILocation(line: 189, column: 25, scope: !5716)
!5765 = !DILocation(line: 189, column: 27, scope: !5716)
!5766 = !DILocation(line: 190, column: 30, scope: !5716)
!5767 = !DILocation(line: 190, column: 40, scope: !5716)
!5768 = !DILocation(line: 190, column: 48, scope: !5716)
!5769 = !DILocation(line: 190, column: 46, scope: !5716)
!5770 = !DILocation(line: 190, column: 2, scope: !5716)
!5771 = !DILocation(line: 190, column: 9, scope: !5716)
!5772 = !DILocation(line: 190, column: 17, scope: !5716)
!5773 = !DILocation(line: 190, column: 25, scope: !5716)
!5774 = !DILocation(line: 190, column: 27, scope: !5716)
!5775 = !DILocation(line: 191, column: 17, scope: !5716)
!5776 = !DILocation(line: 191, column: 27, scope: !5716)
!5777 = !DILocation(line: 191, column: 2, scope: !5716)
!5778 = !DILocation(line: 191, column: 9, scope: !5716)
!5779 = !DILocation(line: 191, column: 15, scope: !5716)
!5780 = !DILocation(line: 192, column: 2, scope: !5716)
!5781 = !DILocation(line: 192, column: 9, scope: !5716)
!5782 = !DILocation(line: 192, column: 17, scope: !5716)
!5783 = !DILocation(line: 192, column: 25, scope: !5716)
!5784 = !DILocation(line: 192, column: 31, scope: !5716)
!5785 = !DILocation(line: 193, column: 1, scope: !5716)
!5786 = distinct !DISubprogram(name: "focaltech_process_rel_packet", scope: !3, file: !3, line: 195, type: !5647, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5787)
!5787 = !{!5788, !5789, !5790, !5791, !5792, !5793}
!5788 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5786, file: !3, line: 195, type: !274)
!5789 = !DILocalVariable(name: "packet", arg: 2, scope: !5786, file: !3, line: 196, type: !5419)
!5790 = !DILocalVariable(name: "priv", scope: !5786, file: !3, line: 198, type: !4864)
!5791 = !DILocalVariable(name: "state", scope: !5786, file: !3, line: 199, type: !5654)
!5792 = !DILocalVariable(name: "finger1", scope: !5786, file: !3, line: 200, type: !85)
!5793 = !DILocalVariable(name: "finger2", scope: !5786, file: !3, line: 200, type: !85)
!5794 = !DILocation(line: 195, column: 58, scope: !5786)
!5795 = !DILocation(line: 196, column: 22, scope: !5786)
!5796 = !DILocation(line: 198, column: 2, scope: !5786)
!5797 = !DILocation(line: 198, column: 25, scope: !5786)
!5798 = !DILocation(line: 198, column: 32, scope: !5786)
!5799 = !DILocation(line: 198, column: 41, scope: !5786)
!5800 = !DILocation(line: 199, column: 2, scope: !5786)
!5801 = !DILocation(line: 199, column: 29, scope: !5786)
!5802 = !DILocation(line: 199, column: 38, scope: !5786)
!5803 = !DILocation(line: 199, column: 44, scope: !5786)
!5804 = !DILocation(line: 200, column: 2, scope: !5786)
!5805 = !DILocation(line: 200, column: 6, scope: !5786)
!5806 = !DILocation(line: 200, column: 15, scope: !5786)
!5807 = !DILocation(line: 202, column: 19, scope: !5786)
!5808 = !DILocation(line: 202, column: 29, scope: !5786)
!5809 = !DILocation(line: 202, column: 2, scope: !5786)
!5810 = !DILocation(line: 202, column: 9, scope: !5786)
!5811 = !DILocation(line: 202, column: 17, scope: !5786)
!5812 = !DILocation(line: 203, column: 14, scope: !5786)
!5813 = !DILocation(line: 203, column: 24, scope: !5786)
!5814 = !DILocation(line: 203, column: 30, scope: !5786)
!5815 = !DILocation(line: 203, column: 37, scope: !5786)
!5816 = !DILocation(line: 203, column: 10, scope: !5786)
!5817 = !DILocation(line: 204, column: 6, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 204, column: 6)
!5819 = !DILocation(line: 204, column: 14, scope: !5818)
!5820 = !DILocation(line: 204, column: 6, scope: !5786)
!5821 = !DILocation(line: 205, column: 36, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 204, column: 33)
!5823 = !DILocation(line: 205, column: 32, scope: !5822)
!5824 = !DILocation(line: 205, column: 3, scope: !5822)
!5825 = !DILocation(line: 205, column: 10, scope: !5822)
!5826 = !DILocation(line: 205, column: 18, scope: !5822)
!5827 = !DILocation(line: 205, column: 27, scope: !5822)
!5828 = !DILocation(line: 205, column: 29, scope: !5822)
!5829 = !DILocation(line: 206, column: 36, scope: !5822)
!5830 = !DILocation(line: 206, column: 32, scope: !5822)
!5831 = !DILocation(line: 206, column: 3, scope: !5822)
!5832 = !DILocation(line: 206, column: 10, scope: !5822)
!5833 = !DILocation(line: 206, column: 18, scope: !5822)
!5834 = !DILocation(line: 206, column: 27, scope: !5822)
!5835 = !DILocation(line: 206, column: 29, scope: !5822)
!5836 = !DILocation(line: 207, column: 2, scope: !5822)
!5837 = !DILocation(line: 208, column: 3, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 208, column: 3)
!5839 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 207, column: 9)
!5840 = !DILocation(line: 208, column: 3, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 208, column: 3)
!5842 = !DILocation(line: 219, column: 14, scope: !5786)
!5843 = !DILocation(line: 219, column: 24, scope: !5786)
!5844 = !DILocation(line: 219, column: 30, scope: !5786)
!5845 = !DILocation(line: 219, column: 37, scope: !5786)
!5846 = !DILocation(line: 219, column: 10, scope: !5786)
!5847 = !DILocation(line: 220, column: 6, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 220, column: 6)
!5849 = !DILocation(line: 220, column: 14, scope: !5848)
!5850 = !DILocation(line: 220, column: 6, scope: !5786)
!5851 = !DILocation(line: 221, column: 36, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 220, column: 33)
!5853 = !DILocation(line: 221, column: 32, scope: !5852)
!5854 = !DILocation(line: 221, column: 3, scope: !5852)
!5855 = !DILocation(line: 221, column: 10, scope: !5852)
!5856 = !DILocation(line: 221, column: 18, scope: !5852)
!5857 = !DILocation(line: 221, column: 27, scope: !5852)
!5858 = !DILocation(line: 221, column: 29, scope: !5852)
!5859 = !DILocation(line: 222, column: 36, scope: !5852)
!5860 = !DILocation(line: 222, column: 32, scope: !5852)
!5861 = !DILocation(line: 222, column: 3, scope: !5852)
!5862 = !DILocation(line: 222, column: 10, scope: !5852)
!5863 = !DILocation(line: 222, column: 18, scope: !5852)
!5864 = !DILocation(line: 222, column: 27, scope: !5852)
!5865 = !DILocation(line: 222, column: 29, scope: !5852)
!5866 = !DILocation(line: 223, column: 2, scope: !5852)
!5867 = !DILocation(line: 224, column: 1, scope: !5786)
!5868 = distinct !DISubprogram(name: "focaltech_report_state", scope: !3, file: !3, line: 115, type: !4826, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5869)
!5869 = !{!5870, !5871, !5872, !5873, !5874, !5875, !5880, !5881, !5884, !5885, !5888, !5889, !5890, !5893, !5894}
!5870 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5868, file: !3, line: 115, type: !274)
!5871 = !DILocalVariable(name: "priv", scope: !5868, file: !3, line: 117, type: !4864)
!5872 = !DILocalVariable(name: "state", scope: !5868, file: !3, line: 118, type: !5654)
!5873 = !DILocalVariable(name: "dev", scope: !5868, file: !3, line: 119, type: !279)
!5874 = !DILocalVariable(name: "i", scope: !5868, file: !3, line: 120, type: !85)
!5875 = !DILocalVariable(name: "finger", scope: !5876, file: !3, line: 123, type: !5879)
!5876 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 122, column: 40)
!5877 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 122, column: 2)
!5878 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 122, column: 2)
!5879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!5880 = !DILocalVariable(name: "active", scope: !5876, file: !3, line: 124, type: !732)
!5881 = !DILocalVariable(name: "clamped_x", scope: !5882, file: !3, line: 129, type: !7)
!5882 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 128, column: 15)
!5883 = distinct !DILexicalBlock(scope: !5876, file: !3, line: 128, column: 7)
!5884 = !DILocalVariable(name: "clamped_y", scope: !5882, file: !3, line: 129, type: !7)
!5885 = !DILocalVariable(name: "__UNIQUE_ID___val267", scope: !5886, file: !3, line: 135, type: !7)
!5886 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 135, column: 16)
!5887 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 135, column: 16)
!5888 = !DILocalVariable(name: "__UNIQUE_ID___lo268", scope: !5886, file: !3, line: 135, type: !7)
!5889 = !DILocalVariable(name: "__UNIQUE_ID___hi269", scope: !5886, file: !3, line: 135, type: !7)
!5890 = !DILocalVariable(name: "__UNIQUE_ID___val270", scope: !5891, file: !3, line: 136, type: !7)
!5891 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 136, column: 16)
!5892 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 136, column: 16)
!5893 = !DILocalVariable(name: "__UNIQUE_ID___lo271", scope: !5891, file: !3, line: 136, type: !7)
!5894 = !DILocalVariable(name: "__UNIQUE_ID___hi272", scope: !5891, file: !3, line: 136, type: !7)
!5895 = !DILocation(line: 115, column: 52, scope: !5868)
!5896 = !DILocation(line: 117, column: 2, scope: !5868)
!5897 = !DILocation(line: 117, column: 25, scope: !5868)
!5898 = !DILocation(line: 117, column: 32, scope: !5868)
!5899 = !DILocation(line: 117, column: 41, scope: !5868)
!5900 = !DILocation(line: 118, column: 2, scope: !5868)
!5901 = !DILocation(line: 118, column: 29, scope: !5868)
!5902 = !DILocation(line: 118, column: 38, scope: !5868)
!5903 = !DILocation(line: 118, column: 44, scope: !5868)
!5904 = !DILocation(line: 119, column: 2, scope: !5868)
!5905 = !DILocation(line: 119, column: 20, scope: !5868)
!5906 = !DILocation(line: 119, column: 26, scope: !5868)
!5907 = !DILocation(line: 119, column: 35, scope: !5868)
!5908 = !DILocation(line: 120, column: 2, scope: !5868)
!5909 = !DILocation(line: 120, column: 6, scope: !5868)
!5910 = !DILocation(line: 122, column: 9, scope: !5878)
!5911 = !DILocation(line: 122, column: 7, scope: !5878)
!5912 = !DILocation(line: 122, column: 14, scope: !5877)
!5913 = !DILocation(line: 122, column: 16, scope: !5877)
!5914 = !DILocation(line: 122, column: 2, scope: !5878)
!5915 = !DILocation(line: 123, column: 3, scope: !5876)
!5916 = !DILocation(line: 123, column: 34, scope: !5876)
!5917 = !DILocation(line: 123, column: 44, scope: !5876)
!5918 = !DILocation(line: 123, column: 51, scope: !5876)
!5919 = !DILocation(line: 123, column: 59, scope: !5876)
!5920 = !DILocation(line: 124, column: 3, scope: !5876)
!5921 = !DILocation(line: 124, column: 8, scope: !5876)
!5922 = !DILocation(line: 124, column: 17, scope: !5876)
!5923 = !DILocation(line: 124, column: 25, scope: !5876)
!5924 = !DILocation(line: 124, column: 32, scope: !5876)
!5925 = !DILocation(line: 124, column: 35, scope: !5876)
!5926 = !DILocation(line: 124, column: 43, scope: !5876)
!5927 = !DILocation(line: 0, scope: !5876)
!5928 = !DILocation(line: 126, column: 17, scope: !5876)
!5929 = !DILocation(line: 126, column: 22, scope: !5876)
!5930 = !DILocation(line: 126, column: 3, scope: !5876)
!5931 = !DILocation(line: 127, column: 30, scope: !5876)
!5932 = !DILocation(line: 127, column: 51, scope: !5876)
!5933 = !DILocation(line: 127, column: 3, scope: !5876)
!5934 = !DILocation(line: 128, column: 7, scope: !5883)
!5935 = !DILocation(line: 128, column: 7, scope: !5876)
!5936 = !DILocation(line: 129, column: 4, scope: !5882)
!5937 = !DILocation(line: 129, column: 17, scope: !5882)
!5938 = !DILocation(line: 129, column: 28, scope: !5882)
!5939 = !DILocation(line: 135, column: 16, scope: !5886)
!5940 = !DILocation(line: 135, column: 16, scope: !5887)
!5941 = !DILocation(line: 135, column: 16, scope: !5882)
!5942 = !DILocation(line: 135, column: 14, scope: !5882)
!5943 = !DILocation(line: 136, column: 16, scope: !5891)
!5944 = !DILocation(line: 136, column: 16, scope: !5892)
!5945 = !DILocation(line: 136, column: 16, scope: !5882)
!5946 = !DILocation(line: 136, column: 14, scope: !5882)
!5947 = !DILocation(line: 137, column: 21, scope: !5882)
!5948 = !DILocation(line: 137, column: 45, scope: !5882)
!5949 = !DILocation(line: 137, column: 4, scope: !5882)
!5950 = !DILocation(line: 138, column: 21, scope: !5882)
!5951 = !DILocation(line: 139, column: 7, scope: !5882)
!5952 = !DILocation(line: 139, column: 13, scope: !5882)
!5953 = !DILocation(line: 139, column: 21, scope: !5882)
!5954 = !DILocation(line: 139, column: 19, scope: !5882)
!5955 = !DILocation(line: 138, column: 4, scope: !5882)
!5956 = !DILocation(line: 140, column: 21, scope: !5882)
!5957 = !DILocation(line: 140, column: 42, scope: !5882)
!5958 = !DILocation(line: 140, column: 49, scope: !5882)
!5959 = !DILocation(line: 140, column: 4, scope: !5882)
!5960 = !DILocation(line: 141, column: 3, scope: !5883)
!5961 = !DILocation(line: 141, column: 3, scope: !5882)
!5962 = !DILocation(line: 142, column: 2, scope: !5877)
!5963 = !DILocation(line: 142, column: 2, scope: !5876)
!5964 = !DILocation(line: 122, column: 36, scope: !5877)
!5965 = !DILocation(line: 122, column: 2, scope: !5877)
!5966 = distinct !{!5966, !5914, !5967, !5713, !5714}
!5967 = !DILocation(line: 142, column: 2, scope: !5878)
!5968 = !DILocation(line: 143, column: 36, scope: !5868)
!5969 = !DILocation(line: 143, column: 2, scope: !5868)
!5970 = !DILocation(line: 145, column: 19, scope: !5868)
!5971 = !DILocation(line: 145, column: 34, scope: !5868)
!5972 = !DILocation(line: 145, column: 41, scope: !5868)
!5973 = !DILocation(line: 145, column: 2, scope: !5868)
!5974 = !DILocation(line: 146, column: 13, scope: !5868)
!5975 = !DILocation(line: 146, column: 2, scope: !5868)
!5976 = !DILocation(line: 147, column: 1, scope: !5868)
!5977 = distinct !DISubprogram(name: "input_mt_slot", scope: !4177, file: !4177, line: 85, type: !5978, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5980)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{null, !279, !85}
!5980 = !{!5981, !5982}
!5981 = !DILocalVariable(name: "dev", arg: 1, scope: !5977, file: !4177, line: 85, type: !279)
!5982 = !DILocalVariable(name: "slot", arg: 2, scope: !5977, file: !4177, line: 85, type: !85)
!5983 = !DILocation(line: 85, column: 52, scope: !5977)
!5984 = !DILocation(line: 85, column: 61, scope: !5977)
!5985 = !DILocation(line: 87, column: 14, scope: !5977)
!5986 = !DILocation(line: 87, column: 40, scope: !5977)
!5987 = !DILocation(line: 87, column: 2, scope: !5977)
!5988 = !DILocation(line: 88, column: 1, scope: !5977)
!5989 = !DISubprogram(name: "input_mt_report_slot_state", scope: !4177, file: !4177, line: 100, type: !5990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5990 = !DISubroutineType(types: !5991)
!5991 = !{!732, !279, !7, !732}
!5992 = distinct !DISubprogram(name: "input_report_abs", scope: !281, file: !281, line: 433, type: !5993, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5995)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{null, !279, !7, !85}
!5995 = !{!5996, !5997, !5998}
!5996 = !DILocalVariable(name: "dev", arg: 1, scope: !5992, file: !281, line: 433, type: !279)
!5997 = !DILocalVariable(name: "code", arg: 2, scope: !5992, file: !281, line: 433, type: !7)
!5998 = !DILocalVariable(name: "value", arg: 3, scope: !5992, file: !281, line: 433, type: !85)
!5999 = !DILocation(line: 433, column: 55, scope: !5992)
!6000 = !DILocation(line: 433, column: 73, scope: !5992)
!6001 = !DILocation(line: 433, column: 83, scope: !5992)
!6002 = !DILocation(line: 435, column: 14, scope: !5992)
!6003 = !DILocation(line: 435, column: 27, scope: !5992)
!6004 = !DILocation(line: 435, column: 33, scope: !5992)
!6005 = !DILocation(line: 435, column: 2, scope: !5992)
!6006 = !DILocation(line: 436, column: 1, scope: !5992)
!6007 = !DISubprogram(name: "input_mt_report_pointer_emulation", scope: !4177, file: !4177, line: 109, type: !6008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6008 = !DISubroutineType(types: !6009)
!6009 = !{null, !279, !732}
!6010 = distinct !DISubprogram(name: "input_report_key", scope: !281, file: !281, line: 423, type: !5993, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6011)
!6011 = !{!6012, !6013, !6014}
!6012 = !DILocalVariable(name: "dev", arg: 1, scope: !6010, file: !281, line: 423, type: !279)
!6013 = !DILocalVariable(name: "code", arg: 2, scope: !6010, file: !281, line: 423, type: !7)
!6014 = !DILocalVariable(name: "value", arg: 3, scope: !6010, file: !281, line: 423, type: !85)
!6015 = !DILocation(line: 423, column: 55, scope: !6010)
!6016 = !DILocation(line: 423, column: 73, scope: !6010)
!6017 = !DILocation(line: 423, column: 83, scope: !6010)
!6018 = !DILocation(line: 425, column: 14, scope: !6010)
!6019 = !DILocation(line: 425, column: 27, scope: !6010)
!6020 = !DILocation(line: 425, column: 35, scope: !6010)
!6021 = !DILocation(line: 425, column: 34, scope: !6010)
!6022 = !DILocation(line: 425, column: 33, scope: !6010)
!6023 = !DILocation(line: 425, column: 2, scope: !6010)
!6024 = !DILocation(line: 426, column: 1, scope: !6010)
!6025 = distinct !DISubprogram(name: "input_sync", scope: !281, file: !281, line: 448, type: !4215, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6026)
!6026 = !{!6027}
!6027 = !DILocalVariable(name: "dev", arg: 1, scope: !6025, file: !281, line: 448, type: !279)
!6028 = !DILocation(line: 448, column: 49, scope: !6025)
!6029 = !DILocation(line: 450, column: 14, scope: !6025)
!6030 = !DILocation(line: 450, column: 2, scope: !6025)
!6031 = !DILocation(line: 451, column: 1, scope: !6025)
!6032 = !DISubprogram(name: "input_event", scope: !281, file: !281, line: 420, type: !6033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{null, !279, !7, !7, !85}
