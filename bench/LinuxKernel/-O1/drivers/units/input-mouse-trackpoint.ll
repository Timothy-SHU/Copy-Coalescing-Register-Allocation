; ModuleID = 'drivers/input/mouse/trackpoint.c'
source_filename = "drivers/input/mouse/trackpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.trackpoint_attr_data = type { i64, i8, i8, i8, i8 }
%struct.psmouse_attribute = type { %struct.device_attribute, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.trackpoint_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@trackpoint_variants = internal constant [7 x ptr] [ptr null, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 16, !dbg !0
@.str = private unnamed_addr constant [11 x i8] c"TrackPoint\00", align 1, !dbg !4389
@.str.1 = private unnamed_addr constant [68 x i8] c"trackpoint: failed to get extended button data, assuming 3 buttons\0A\00", align 1, !dbg !4394
@.str.2 = private unnamed_addr constant [63 x i8] c"trackpoint: got 0 in extended button data, assuming 3 buttons\0A\00", align 1, !dbg !4399
@trackpoint_attr_group = internal global %struct.attribute_group { ptr null, ptr @trackpoint_is_attr_visible, ptr null, ptr @trackpoint_attrs, ptr null }, align 8, !dbg !4935
@.str.3 = private unnamed_addr constant [58 x i8] c"trackpoint: failed to create sysfs attributes, error: %d\0A\00", align 1, !dbg !4404
@.str.4 = private unnamed_addr constant [60 x i8] c"trackpoint: %s TrackPoint firmware: 0x%02x, buttons: %d/%d\0A\00", align 1, !dbg !4409
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4414
@trackpoint_attr_sensitivity = internal global %struct.trackpoint_attr_data { i64 2, i8 74, i8 0, i8 0, i8 -128 }, align 8, !dbg !4419
@trackpoint_attr_speed = internal global %struct.trackpoint_attr_data { i64 3, i8 96, i8 0, i8 0, i8 97 }, align 8, !dbg !4428
@trackpoint_attr_reach = internal global %struct.trackpoint_attr_data { i64 5, i8 87, i8 0, i8 0, i8 10 }, align 8, !dbg !4430
@trackpoint_attr_draghys = internal global %struct.trackpoint_attr_data { i64 6, i8 88, i8 0, i8 0, i8 -1 }, align 8, !dbg !4432
@trackpoint_attr_mindrag = internal global %struct.trackpoint_attr_data { i64 7, i8 89, i8 0, i8 0, i8 20 }, align 8, !dbg !4434
@trackpoint_attr_thresh = internal global %struct.trackpoint_attr_data { i64 8, i8 92, i8 0, i8 0, i8 8 }, align 8, !dbg !4436
@trackpoint_attr_upthresh = internal global %struct.trackpoint_attr_data { i64 9, i8 90, i8 0, i8 0, i8 -1 }, align 8, !dbg !4438
@trackpoint_attr_ztime = internal global %struct.trackpoint_attr_data { i64 10, i8 94, i8 0, i8 0, i8 38 }, align 8, !dbg !4440
@trackpoint_attr_jenks = internal global %struct.trackpoint_attr_data { i64 11, i8 93, i8 0, i8 0, i8 -121 }, align 8, !dbg !4442
@trackpoint_attr_drift_time = internal global %struct.trackpoint_attr_data { i64 12, i8 95, i8 0, i8 0, i8 5 }, align 8, !dbg !4444
@trackpoint_attr_inertia = internal global %struct.trackpoint_attr_data { i64 4, i8 77, i8 0, i8 0, i8 6 }, align 8, !dbg !4446
@trackpoint_attr_press_to_select = internal global %struct.trackpoint_attr_data { i64 13, i8 44, i8 1, i8 0, i8 0 }, align 8, !dbg !4448
@trackpoint_attr_skipback = internal global %struct.trackpoint_attr_data { i64 14, i8 45, i8 8, i8 0, i8 0 }, align 8, !dbg !4450
@trackpoint_attr_ext_dev = internal global %struct.trackpoint_attr_data { i64 15, i8 35, i8 2, i8 1, i8 0 }, align 8, !dbg !4452
@.str.6 = private unnamed_addr constant [4 x i8] c"IBM\00", align 1, !dbg !4454
@.str.7 = private unnamed_addr constant [5 x i8] c"ALPS\00", align 1, !dbg !4457
@.str.8 = private unnamed_addr constant [5 x i8] c"Elan\00", align 1, !dbg !4462
@.str.9 = private unnamed_addr constant [4 x i8] c"NXP\00", align 1, !dbg !4464
@.str.10 = private unnamed_addr constant [14 x i8] c"JYT_Synaptics\00", align 1, !dbg !4466
@.str.11 = private unnamed_addr constant [10 x i8] c"Synaptics\00", align 1, !dbg !4471
@__const.trackpoint_power_on_reset.param = private unnamed_addr constant [2 x i8] c"\7F\00", align 1
@psmouse_attr_sensitivity = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_sensitivity, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4479
@psmouse_attr_inertia = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_inertia, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4881
@psmouse_attr_speed = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_speed, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4885
@psmouse_attr_reach = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_reach, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4889
@psmouse_attr_draghys = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_draghys, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4893
@psmouse_attr_mindrag = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_mindrag, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4897
@psmouse_attr_thresh = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_thresh, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4902
@psmouse_attr_upthresh = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_upthresh, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4909
@psmouse_attr_ztime = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_ztime, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4913
@psmouse_attr_jenks = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_jenks, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4917
@psmouse_attr_drift_time = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_drift_time, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 8, !dbg !4921
@psmouse_attr_press_to_select = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_press_to_select, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_bit_attr, i8 1 }, align 8, !dbg !4925
@psmouse_attr_skipback = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_skipback, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_bit_attr, i8 1 }, align 8, !dbg !4929
@psmouse_attr_ext_dev = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_ext_dev, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_bit_attr, i8 1 }, align 8, !dbg !4933
@.str.12 = private unnamed_addr constant [12 x i8] c"sensitivity\00", align 1, !dbg !4476
@.str.13 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !4877
@.str.14 = private unnamed_addr constant [8 x i8] c"inertia\00", align 1, !dbg !4879
@.str.15 = private unnamed_addr constant [6 x i8] c"speed\00", align 1, !dbg !4883
@.str.16 = private unnamed_addr constant [6 x i8] c"reach\00", align 1, !dbg !4887
@.str.17 = private unnamed_addr constant [8 x i8] c"draghys\00", align 1, !dbg !4891
@.str.18 = private unnamed_addr constant [8 x i8] c"mindrag\00", align 1, !dbg !4895
@.str.19 = private unnamed_addr constant [7 x i8] c"thresh\00", align 1, !dbg !4899
@.str.20 = private unnamed_addr constant [9 x i8] c"upthresh\00", align 1, !dbg !4904
@.str.21 = private unnamed_addr constant [6 x i8] c"ztime\00", align 1, !dbg !4911
@.str.22 = private unnamed_addr constant [6 x i8] c"jenks\00", align 1, !dbg !4915
@.str.23 = private unnamed_addr constant [11 x i8] c"drift_time\00", align 1, !dbg !4919
@.str.24 = private unnamed_addr constant [16 x i8] c"press_to_select\00", align 1, !dbg !4923
@.str.25 = private unnamed_addr constant [9 x i8] c"skipback\00", align 1, !dbg !4927
@.str.26 = private unnamed_addr constant [8 x i8] c"ext_dev\00", align 1, !dbg !4931
@trackpoint_attrs = internal global [15 x ptr] [ptr @psmouse_attr_sensitivity, ptr @psmouse_attr_speed, ptr @psmouse_attr_inertia, ptr @psmouse_attr_reach, ptr @psmouse_attr_draghys, ptr @psmouse_attr_mindrag, ptr @psmouse_attr_thresh, ptr @psmouse_attr_upthresh, ptr @psmouse_attr_ztime, ptr @psmouse_attr_jenks, ptr @psmouse_attr_drift_time, ptr @psmouse_attr_press_to_select, ptr @psmouse_attr_skipback, ptr @psmouse_attr_ext_dev, ptr null], align 16, !dbg !4937

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @trackpoint_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) #0 align 16 !dbg !4953 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %set_properties.addr = alloca i8, align 1
  %ps2dev = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %variant_id = alloca i8, align 1
  %firmware_id = alloca i8, align 1
  %button_info = alloca i8, align 1
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4955, metadata !DIExpression()), !dbg !4983
  %frombool = zext i1 %set_properties to i8
  store i8 %frombool, ptr %set_properties.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %set_properties.addr, metadata !4956, metadata !DIExpression()), !dbg !4984
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps2dev) #16, !dbg !4985
  call void @llvm.dbg.declare(metadata ptr %ps2dev, metadata !4957, metadata !DIExpression()), !dbg !4986
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !4987
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !4988
  store ptr %ps2dev1, ptr %ps2dev, align 8, !dbg !4986
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #16, !dbg !4989
  call void @llvm.dbg.declare(metadata ptr %tp, metadata !4958, metadata !DIExpression()), !dbg !4990
  call void @llvm.lifetime.start.p0(i64 1, ptr %variant_id) #16, !dbg !4991
  call void @llvm.dbg.declare(metadata ptr %variant_id, metadata !4979, metadata !DIExpression()), !dbg !4992
  call void @llvm.lifetime.start.p0(i64 1, ptr %firmware_id) #16, !dbg !4993
  call void @llvm.dbg.declare(metadata ptr %firmware_id, metadata !4980, metadata !DIExpression()), !dbg !4994
  call void @llvm.lifetime.start.p0(i64 1, ptr %button_info) #16, !dbg !4995
  call void @llvm.dbg.declare(metadata ptr %button_info, metadata !4981, metadata !DIExpression()), !dbg !4996
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !4997
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4982, metadata !DIExpression()), !dbg !4998
  %1 = load ptr, ptr %psmouse.addr, align 8, !dbg !4999
  %call = call i32 @trackpoint_start_protocol(ptr noundef %1, ptr noundef %variant_id, ptr noundef %firmware_id) #17, !dbg !5000
  store i32 %call, ptr %error, align 4, !dbg !5001
  %2 = load i32, ptr %error, align 4, !dbg !5002
  %tobool = icmp ne i32 %2, 0, !dbg !5002
  br i1 %tobool, label %if.then, label %if.end, !dbg !5004

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %error, align 4, !dbg !5005
  store i32 %3, ptr %retval, align 4, !dbg !5006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5006

if.end:                                           ; preds = %entry
  %4 = load i8, ptr %set_properties.addr, align 1, !dbg !5007, !range !5009, !noundef !923
  %tobool2 = trunc i8 %4 to i1, !dbg !5007
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5010

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5011

if.end4:                                          ; preds = %if.end
  %call5 = call noalias ptr @kzalloc(i64 noundef 16, i32 noundef 3264) #18, !dbg !5012
  store ptr %call5, ptr %tp, align 8, !dbg !5013
  %5 = load ptr, ptr %tp, align 8, !dbg !5014
  %tobool6 = icmp ne ptr %5, null, !dbg !5014
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5016

if.then7:                                         ; preds = %if.end4
  store i32 -12, ptr %retval, align 4, !dbg !5017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5017

if.end8:                                          ; preds = %if.end4
  %6 = load ptr, ptr %tp, align 8, !dbg !5018
  call void @trackpoint_defaults(ptr noundef %6) #17, !dbg !5019
  %7 = load i8, ptr %variant_id, align 1, !dbg !5020
  %8 = load ptr, ptr %tp, align 8, !dbg !5021
  %variant_id9 = getelementptr inbounds %struct.trackpoint_data, ptr %8, i32 0, i32 0, !dbg !5022
  store i8 %7, ptr %variant_id9, align 1, !dbg !5023
  %9 = load i8, ptr %firmware_id, align 1, !dbg !5024
  %10 = load ptr, ptr %tp, align 8, !dbg !5025
  %firmware_id10 = getelementptr inbounds %struct.trackpoint_data, ptr %10, i32 0, i32 1, !dbg !5026
  store i8 %9, ptr %firmware_id10, align 1, !dbg !5027
  %11 = load ptr, ptr %tp, align 8, !dbg !5028
  %12 = load ptr, ptr %psmouse.addr, align 8, !dbg !5029
  %private = getelementptr inbounds %struct.psmouse, ptr %12, i32 0, i32 0, !dbg !5030
  store ptr %11, ptr %private, align 8, !dbg !5031
  %13 = load i8, ptr %variant_id, align 1, !dbg !5032
  %idxprom = zext i8 %13 to i64, !dbg !5033
  %arrayidx = getelementptr [7 x ptr], ptr @trackpoint_variants, i64 0, i64 %idxprom, !dbg !5033
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !5033
  %15 = load ptr, ptr %psmouse.addr, align 8, !dbg !5034
  %vendor = getelementptr inbounds %struct.psmouse, ptr %15, i32 0, i32 4, !dbg !5035
  store ptr %14, ptr %vendor, align 8, !dbg !5036
  %16 = load ptr, ptr %psmouse.addr, align 8, !dbg !5037
  %name = getelementptr inbounds %struct.psmouse, ptr %16, i32 0, i32 5, !dbg !5038
  store ptr @.str, ptr %name, align 8, !dbg !5039
  %17 = load ptr, ptr %psmouse.addr, align 8, !dbg !5040
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %17, i32 0, i32 30, !dbg !5041
  store ptr @trackpoint_reconnect, ptr %reconnect, align 8, !dbg !5042
  %18 = load ptr, ptr %psmouse.addr, align 8, !dbg !5043
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 32, !dbg !5044
  store ptr @trackpoint_disconnect, ptr %disconnect, align 8, !dbg !5045
  %19 = load i8, ptr %variant_id, align 1, !dbg !5046
  %conv = zext i8 %19 to i32, !dbg !5046
  %cmp = icmp ne i32 %conv, 1, !dbg !5048
  br i1 %cmp, label %if.then12, label %if.else, !dbg !5049

if.then12:                                        ; preds = %if.end8
  store i8 51, ptr %button_info, align 1, !dbg !5050
  br label %if.end28, !dbg !5052

if.else:                                          ; preds = %if.end8
  %20 = load ptr, ptr %ps2dev, align 8, !dbg !5053
  %call13 = call i32 @trackpoint_read(ptr noundef %20, i8 noundef zeroext 75, ptr noundef %button_info) #17, !dbg !5055
  store i32 %call13, ptr %error, align 4, !dbg !5056
  %21 = load i32, ptr %error, align 4, !dbg !5057
  %tobool14 = icmp ne i32 %21, 0, !dbg !5057
  br i1 %tobool14, label %if.then15, label %if.else17, !dbg !5059

if.then15:                                        ; preds = %if.else
  br label %do.body, !dbg !5060

do.body:                                          ; preds = %if.then15
  br label %do.cond, !dbg !5063

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5063

do.end:                                           ; preds = %do.cond
  %22 = load ptr, ptr %psmouse.addr, align 8, !dbg !5060
  %ps2dev16 = getelementptr inbounds %struct.psmouse, ptr %22, i32 0, i32 2, !dbg !5060
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev16, i32 0, i32 0, !dbg !5060
  %23 = load ptr, ptr %serio, align 8, !dbg !5060
  %dev = getelementptr inbounds %struct.serio, ptr %23, i32 0, i32 18, !dbg !5060
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str.1) #19, !dbg !5060
  store i8 51, ptr %button_info, align 1, !dbg !5065
  br label %if.end27, !dbg !5066

if.else17:                                        ; preds = %if.else
  %24 = load i8, ptr %button_info, align 1, !dbg !5067
  %tobool18 = icmp ne i8 %24, 0, !dbg !5067
  br i1 %tobool18, label %if.end26, label %if.then19, !dbg !5069

if.then19:                                        ; preds = %if.else17
  br label %do.body20, !dbg !5070

do.body20:                                        ; preds = %if.then19
  br label %do.cond21, !dbg !5073

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5073

do.end22:                                         ; preds = %do.cond21
  %25 = load ptr, ptr %psmouse.addr, align 8, !dbg !5070
  %ps2dev23 = getelementptr inbounds %struct.psmouse, ptr %25, i32 0, i32 2, !dbg !5070
  %serio24 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev23, i32 0, i32 0, !dbg !5070
  %26 = load ptr, ptr %serio24, align 8, !dbg !5070
  %dev25 = getelementptr inbounds %struct.serio, ptr %26, i32 0, i32 18, !dbg !5070
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25, ptr noundef @.str.2) #19, !dbg !5070
  store i8 51, ptr %button_info, align 1, !dbg !5075
  br label %if.end26, !dbg !5076

if.end26:                                         ; preds = %do.end22, %if.else17
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %do.end
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then12
  %27 = load i8, ptr %button_info, align 1, !dbg !5077
  %conv29 = zext i8 %27 to i32, !dbg !5077
  %and = and i32 %conv29, 15, !dbg !5079
  %cmp30 = icmp sge i32 %and, 3, !dbg !5080
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !5081

if.then32:                                        ; preds = %if.end28
  %28 = load ptr, ptr %psmouse.addr, align 8, !dbg !5082
  %dev33 = getelementptr inbounds %struct.psmouse, ptr %28, i32 0, i32 1, !dbg !5083
  %29 = load ptr, ptr %dev33, align 8, !dbg !5083
  call void @input_set_capability(ptr noundef %29, i32 noundef 1, i32 noundef 274) #17, !dbg !5084
  br label %if.end34, !dbg !5084

if.end34:                                         ; preds = %if.then32, %if.end28
  %30 = load ptr, ptr %psmouse.addr, align 8, !dbg !5085
  %dev35 = getelementptr inbounds %struct.psmouse, ptr %30, i32 0, i32 1, !dbg !5085
  %31 = load ptr, ptr %dev35, align 8, !dbg !5085
  %propbit = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 4, !dbg !5085
  %arraydecay = getelementptr inbounds [1 x i64], ptr %propbit, i64 0, i64 0, !dbg !5085
  %32 = ptrtoint ptr %arraydecay to i64, !dbg !5085
  %cmp36 = icmp ne i64 %32, 0, !dbg !5085
  %conv37 = zext i1 %cmp36 to i32, !dbg !5085
  %33 = call i1 @llvm.is.constant.i32(i32 %conv37), !dbg !5085
  br i1 %33, label %land.lhs.true, label %cond.false, !dbg !5085

land.lhs.true:                                    ; preds = %if.end34
  %34 = load ptr, ptr %psmouse.addr, align 8, !dbg !5085
  %dev38 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 1, !dbg !5085
  %35 = load ptr, ptr %dev38, align 8, !dbg !5085
  %propbit39 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 4, !dbg !5085
  %arraydecay40 = getelementptr inbounds [1 x i64], ptr %propbit39, i64 0, i64 0, !dbg !5085
  %36 = ptrtoint ptr %arraydecay40 to i64, !dbg !5085
  %cmp41 = icmp ne i64 %36, 0, !dbg !5085
  br i1 %cmp41, label %land.lhs.true43, label %cond.false, !dbg !5085

land.lhs.true43:                                  ; preds = %land.lhs.true
  %37 = load ptr, ptr %psmouse.addr, align 8, !dbg !5085
  %dev44 = getelementptr inbounds %struct.psmouse, ptr %37, i32 0, i32 1, !dbg !5085
  %38 = load ptr, ptr %dev44, align 8, !dbg !5085
  %propbit45 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 4, !dbg !5085
  %arraydecay46 = getelementptr inbounds [1 x i64], ptr %propbit45, i64 0, i64 0, !dbg !5085
  %39 = load i64, ptr %arraydecay46, align 8, !dbg !5085
  %40 = call i1 @llvm.is.constant.i64(i64 %39), !dbg !5085
  br i1 %40, label %cond.true, label %cond.false, !dbg !5085

cond.true:                                        ; preds = %land.lhs.true43
  %41 = load ptr, ptr %psmouse.addr, align 8, !dbg !5085
  %dev47 = getelementptr inbounds %struct.psmouse, ptr %41, i32 0, i32 1, !dbg !5085
  %42 = load ptr, ptr %dev47, align 8, !dbg !5085
  %propbit48 = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 4, !dbg !5085
  %arraydecay49 = getelementptr inbounds [1 x i64], ptr %propbit48, i64 0, i64 0, !dbg !5085
  call void @generic___set_bit(i64 noundef 0, ptr noundef %arraydecay49) #17, !dbg !5085
  br label %cond.end, !dbg !5085

cond.false:                                       ; preds = %land.lhs.true43, %land.lhs.true, %if.end34
  %43 = load ptr, ptr %psmouse.addr, align 8, !dbg !5085
  %dev50 = getelementptr inbounds %struct.psmouse, ptr %43, i32 0, i32 1, !dbg !5085
  %44 = load ptr, ptr %dev50, align 8, !dbg !5085
  %propbit51 = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 4, !dbg !5085
  %arraydecay52 = getelementptr inbounds [1 x i64], ptr %propbit51, i64 0, i64 0, !dbg !5085
  call void @___set_bit(i64 noundef 0, ptr noundef %arraydecay52) #17, !dbg !5085
  br label %cond.end, !dbg !5085

cond.end:                                         ; preds = %cond.false, %cond.true
  %45 = load ptr, ptr %psmouse.addr, align 8, !dbg !5086
  %dev53 = getelementptr inbounds %struct.psmouse, ptr %45, i32 0, i32 1, !dbg !5086
  %46 = load ptr, ptr %dev53, align 8, !dbg !5086
  %propbit54 = getelementptr inbounds %struct.input_dev, ptr %46, i32 0, i32 4, !dbg !5086
  %arraydecay55 = getelementptr inbounds [1 x i64], ptr %propbit54, i64 0, i64 0, !dbg !5086
  %47 = ptrtoint ptr %arraydecay55 to i64, !dbg !5086
  %cmp56 = icmp ne i64 %47, 0, !dbg !5086
  %conv57 = zext i1 %cmp56 to i32, !dbg !5086
  %48 = call i1 @llvm.is.constant.i32(i32 %conv57), !dbg !5086
  br i1 %48, label %land.lhs.true58, label %cond.false72, !dbg !5086

land.lhs.true58:                                  ; preds = %cond.end
  %49 = load ptr, ptr %psmouse.addr, align 8, !dbg !5086
  %dev59 = getelementptr inbounds %struct.psmouse, ptr %49, i32 0, i32 1, !dbg !5086
  %50 = load ptr, ptr %dev59, align 8, !dbg !5086
  %propbit60 = getelementptr inbounds %struct.input_dev, ptr %50, i32 0, i32 4, !dbg !5086
  %arraydecay61 = getelementptr inbounds [1 x i64], ptr %propbit60, i64 0, i64 0, !dbg !5086
  %51 = ptrtoint ptr %arraydecay61 to i64, !dbg !5086
  %cmp62 = icmp ne i64 %51, 0, !dbg !5086
  br i1 %cmp62, label %land.lhs.true64, label %cond.false72, !dbg !5086

land.lhs.true64:                                  ; preds = %land.lhs.true58
  %52 = load ptr, ptr %psmouse.addr, align 8, !dbg !5086
  %dev65 = getelementptr inbounds %struct.psmouse, ptr %52, i32 0, i32 1, !dbg !5086
  %53 = load ptr, ptr %dev65, align 8, !dbg !5086
  %propbit66 = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 4, !dbg !5086
  %arraydecay67 = getelementptr inbounds [1 x i64], ptr %propbit66, i64 0, i64 0, !dbg !5086
  %54 = load i64, ptr %arraydecay67, align 8, !dbg !5086
  %55 = call i1 @llvm.is.constant.i64(i64 %54), !dbg !5086
  br i1 %55, label %cond.true68, label %cond.false72, !dbg !5086

cond.true68:                                      ; preds = %land.lhs.true64
  %56 = load ptr, ptr %psmouse.addr, align 8, !dbg !5086
  %dev69 = getelementptr inbounds %struct.psmouse, ptr %56, i32 0, i32 1, !dbg !5086
  %57 = load ptr, ptr %dev69, align 8, !dbg !5086
  %propbit70 = getelementptr inbounds %struct.input_dev, ptr %57, i32 0, i32 4, !dbg !5086
  %arraydecay71 = getelementptr inbounds [1 x i64], ptr %propbit70, i64 0, i64 0, !dbg !5086
  call void @generic___set_bit(i64 noundef 5, ptr noundef %arraydecay71) #17, !dbg !5086
  br label %cond.end76, !dbg !5086

cond.false72:                                     ; preds = %land.lhs.true64, %land.lhs.true58, %cond.end
  %58 = load ptr, ptr %psmouse.addr, align 8, !dbg !5086
  %dev73 = getelementptr inbounds %struct.psmouse, ptr %58, i32 0, i32 1, !dbg !5086
  %59 = load ptr, ptr %dev73, align 8, !dbg !5086
  %propbit74 = getelementptr inbounds %struct.input_dev, ptr %59, i32 0, i32 4, !dbg !5086
  %arraydecay75 = getelementptr inbounds [1 x i64], ptr %propbit74, i64 0, i64 0, !dbg !5086
  call void @___set_bit(i64 noundef 5, ptr noundef %arraydecay75) #17, !dbg !5086
  br label %cond.end76, !dbg !5086

cond.end76:                                       ; preds = %cond.false72, %cond.true68
  %60 = load i8, ptr %variant_id, align 1, !dbg !5087
  %conv77 = zext i8 %60 to i32, !dbg !5087
  %cmp78 = icmp ne i32 %conv77, 1, !dbg !5089
  br i1 %cmp78, label %if.then83, label %lor.lhs.false, !dbg !5090

lor.lhs.false:                                    ; preds = %cond.end76
  %61 = load ptr, ptr %ps2dev, align 8, !dbg !5091
  %call80 = call i32 @trackpoint_power_on_reset(ptr noundef %61) #17, !dbg !5092
  %cmp81 = icmp ne i32 %call80, 0, !dbg !5093
  br i1 %cmp81, label %if.then83, label %if.end85, !dbg !5094

if.then83:                                        ; preds = %lor.lhs.false, %cond.end76
  %62 = load ptr, ptr %psmouse.addr, align 8, !dbg !5095
  %call84 = call i32 @trackpoint_sync(ptr noundef %62, i1 noundef zeroext false) #17, !dbg !5097
  br label %if.end85, !dbg !5098

if.end85:                                         ; preds = %if.then83, %lor.lhs.false
  %63 = load ptr, ptr %ps2dev, align 8, !dbg !5099
  %serio86 = getelementptr inbounds %struct.ps2dev, ptr %63, i32 0, i32 0, !dbg !5100
  %64 = load ptr, ptr %serio86, align 8, !dbg !5100
  %dev87 = getelementptr inbounds %struct.serio, ptr %64, i32 0, i32 18, !dbg !5101
  %call88 = call i32 @device_add_group(ptr noundef %dev87, ptr noundef @trackpoint_attr_group) #17, !dbg !5102
  store i32 %call88, ptr %error, align 4, !dbg !5103
  %65 = load i32, ptr %error, align 4, !dbg !5104
  %tobool89 = icmp ne i32 %65, 0, !dbg !5104
  br i1 %tobool89, label %if.then90, label %if.end99, !dbg !5106

if.then90:                                        ; preds = %if.end85
  br label %do.body91, !dbg !5107

do.body91:                                        ; preds = %if.then90
  br label %do.cond92, !dbg !5110

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !5110

do.end93:                                         ; preds = %do.cond92
  %66 = load ptr, ptr %psmouse.addr, align 8, !dbg !5107
  %ps2dev94 = getelementptr inbounds %struct.psmouse, ptr %66, i32 0, i32 2, !dbg !5107
  %serio95 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev94, i32 0, i32 0, !dbg !5107
  %67 = load ptr, ptr %serio95, align 8, !dbg !5107
  %dev96 = getelementptr inbounds %struct.serio, ptr %67, i32 0, i32 18, !dbg !5107
  %68 = load i32, ptr %error, align 4, !dbg !5107
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev96, ptr noundef @.str.3, i32 noundef %68) #19, !dbg !5107
  %69 = load ptr, ptr %psmouse.addr, align 8, !dbg !5112
  %private97 = getelementptr inbounds %struct.psmouse, ptr %69, i32 0, i32 0, !dbg !5113
  %70 = load ptr, ptr %private97, align 8, !dbg !5113
  call void @kfree(ptr noundef %70) #17, !dbg !5114
  %71 = load ptr, ptr %psmouse.addr, align 8, !dbg !5115
  %private98 = getelementptr inbounds %struct.psmouse, ptr %71, i32 0, i32 0, !dbg !5116
  store ptr null, ptr %private98, align 8, !dbg !5117
  store i32 -1, ptr %retval, align 4, !dbg !5118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5118

if.end99:                                         ; preds = %if.end85
  br label %do.body100, !dbg !5119

do.body100:                                       ; preds = %if.end99
  br label %do.cond101, !dbg !5121

do.cond101:                                       ; preds = %do.body100
  br label %do.end102, !dbg !5121

do.end102:                                        ; preds = %do.cond101
  %72 = load ptr, ptr %psmouse.addr, align 8, !dbg !5119
  %ps2dev103 = getelementptr inbounds %struct.psmouse, ptr %72, i32 0, i32 2, !dbg !5119
  %serio104 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev103, i32 0, i32 0, !dbg !5119
  %73 = load ptr, ptr %serio104, align 8, !dbg !5119
  %dev105 = getelementptr inbounds %struct.serio, ptr %73, i32 0, i32 18, !dbg !5119
  %74 = load ptr, ptr %psmouse.addr, align 8, !dbg !5119
  %vendor106 = getelementptr inbounds %struct.psmouse, ptr %74, i32 0, i32 4, !dbg !5119
  %75 = load ptr, ptr %vendor106, align 8, !dbg !5119
  %76 = load i8, ptr %firmware_id, align 1, !dbg !5119
  %conv107 = zext i8 %76 to i32, !dbg !5119
  %77 = load i8, ptr %button_info, align 1, !dbg !5119
  %conv108 = zext i8 %77 to i32, !dbg !5119
  %and109 = and i32 %conv108, 240, !dbg !5119
  %shr = ashr i32 %and109, 4, !dbg !5119
  %78 = load i8, ptr %button_info, align 1, !dbg !5119
  %conv110 = zext i8 %78 to i32, !dbg !5119
  %and111 = and i32 %conv110, 15, !dbg !5119
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev105, ptr noundef @.str.4, ptr noundef %75, i32 noundef %conv107, i32 noundef %shr, i32 noundef %and111) #19, !dbg !5119
  store i32 0, ptr %retval, align 4, !dbg !5123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5123

cleanup:                                          ; preds = %do.end102, %do.end93, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 1, ptr %button_info) #16, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 1, ptr %firmware_id) #16, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 1, ptr %variant_id) #16, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #16, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps2dev) #16, !dbg !5124
  %79 = load i32, ptr %retval, align 4, !dbg !5124
  ret i32 %79, !dbg !5124
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trackpoint_start_protocol(ptr noundef %psmouse, ptr noundef %variant_id, ptr noundef %firmware_id) #0 align 16 !dbg !5125 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %variant_id.addr = alloca ptr, align 8
  %firmware_id.addr = alloca ptr, align 8
  %param = alloca [2 x i8], align 1
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5129, metadata !DIExpression()), !dbg !5135
  store ptr %variant_id, ptr %variant_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %variant_id.addr, metadata !5130, metadata !DIExpression()), !dbg !5136
  store ptr %firmware_id, ptr %firmware_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %firmware_id.addr, metadata !5131, metadata !DIExpression()), !dbg !5137
  call void @llvm.lifetime.start.p0(i64 2, ptr %param) #16, !dbg !5138
  call void @llvm.dbg.declare(metadata ptr %param, metadata !5132, metadata !DIExpression()), !dbg !5139
  call void @llvm.memset.p0.i64(ptr align 1 %param, i8 0, i64 2, i1 false), !dbg !5139
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !5140
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5134, metadata !DIExpression()), !dbg !5141
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5142
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !5143
  %arraydecay = getelementptr inbounds [2 x i8], ptr %param, i64 0, i64 0, !dbg !5144
  %call = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef %arraydecay, i32 noundef 737) #17, !dbg !5145
  store i32 %call, ptr %error, align 4, !dbg !5146
  %1 = load i32, ptr %error, align 4, !dbg !5147
  %tobool = icmp ne i32 %1, 0, !dbg !5147
  br i1 %tobool, label %if.then, label %if.end, !dbg !5149

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !5150
  store i32 %2, ptr %retval, align 4, !dbg !5151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5151

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x i8], ptr %param, i64 0, i64 0, !dbg !5152
  %3 = load i8, ptr %arrayidx, align 1, !dbg !5152
  %conv = zext i8 %3 to i32, !dbg !5152
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
  ], !dbg !5153

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %4 = load ptr, ptr %variant_id.addr, align 8, !dbg !5154
  %tobool1 = icmp ne ptr %4, null, !dbg !5154
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5157

if.then2:                                         ; preds = %sw.bb
  %arrayidx3 = getelementptr [2 x i8], ptr %param, i64 0, i64 0, !dbg !5158
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !5158
  %6 = load ptr, ptr %variant_id.addr, align 8, !dbg !5159
  store i8 %5, ptr %6, align 1, !dbg !5160
  br label %if.end4, !dbg !5161

if.end4:                                          ; preds = %if.then2, %sw.bb
  %7 = load ptr, ptr %firmware_id.addr, align 8, !dbg !5162
  %tobool5 = icmp ne ptr %7, null, !dbg !5162
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !5164

if.then6:                                         ; preds = %if.end4
  %arrayidx7 = getelementptr [2 x i8], ptr %param, i64 0, i64 1, !dbg !5165
  %8 = load i8, ptr %arrayidx7, align 1, !dbg !5165
  %9 = load ptr, ptr %firmware_id.addr, align 8, !dbg !5166
  store i8 %8, ptr %9, align 1, !dbg !5167
  br label %if.end8, !dbg !5168

if.end8:                                          ; preds = %if.then6, %if.end4
  store i32 0, ptr %retval, align 4, !dbg !5169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5169

sw.epilog:                                        ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !5170
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5170

cleanup:                                          ; preds = %sw.epilog, %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5171
  call void @llvm.lifetime.end.p0(i64 2, ptr %param) #16, !dbg !5171
  %10 = load i32, ptr %retval, align 4, !dbg !5171
  ret i32 %10, !dbg !5171
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5172 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5176, metadata !DIExpression()), !dbg !5178
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5177, metadata !DIExpression()), !dbg !5179
  %0 = load i64, ptr %size.addr, align 8, !dbg !5180
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5181
  %or = or i32 %1, 256, !dbg !5182
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5183
  ret ptr %call, !dbg !5184
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trackpoint_defaults(ptr noundef %tp) #0 align 16 !dbg !5185 {
entry:
  %tp.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  br label %do.body, !dbg !5191

do.body:                                          ; preds = %entry
  %0 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_sensitivity, i32 0, i32 4), align 1, !dbg !5192
  %1 = load ptr, ptr %tp.addr, align 8, !dbg !5192
  %sensitivity = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 2, !dbg !5192
  store i8 %0, ptr %sensitivity, align 1, !dbg !5192
  br label %do.end, !dbg !5192

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5194

do.body1:                                         ; preds = %do.end
  %2 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_speed, i32 0, i32 4), align 1, !dbg !5195
  %3 = load ptr, ptr %tp.addr, align 8, !dbg !5195
  %speed = getelementptr inbounds %struct.trackpoint_data, ptr %3, i32 0, i32 3, !dbg !5195
  store i8 %2, ptr %speed, align 1, !dbg !5195
  br label %do.end2, !dbg !5195

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !5197

do.body3:                                         ; preds = %do.end2
  %4 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_reach, i32 0, i32 4), align 1, !dbg !5198
  %5 = load ptr, ptr %tp.addr, align 8, !dbg !5198
  %reach = getelementptr inbounds %struct.trackpoint_data, ptr %5, i32 0, i32 5, !dbg !5198
  store i8 %4, ptr %reach, align 1, !dbg !5198
  br label %do.end4, !dbg !5198

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !5200

do.body5:                                         ; preds = %do.end4
  %6 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_draghys, i32 0, i32 4), align 1, !dbg !5201
  %7 = load ptr, ptr %tp.addr, align 8, !dbg !5201
  %draghys = getelementptr inbounds %struct.trackpoint_data, ptr %7, i32 0, i32 6, !dbg !5201
  store i8 %6, ptr %draghys, align 1, !dbg !5201
  br label %do.end6, !dbg !5201

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5203

do.body7:                                         ; preds = %do.end6
  %8 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_mindrag, i32 0, i32 4), align 1, !dbg !5204
  %9 = load ptr, ptr %tp.addr, align 8, !dbg !5204
  %mindrag = getelementptr inbounds %struct.trackpoint_data, ptr %9, i32 0, i32 7, !dbg !5204
  store i8 %8, ptr %mindrag, align 1, !dbg !5204
  br label %do.end8, !dbg !5204

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !5206

do.body9:                                         ; preds = %do.end8
  %10 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_thresh, i32 0, i32 4), align 1, !dbg !5207
  %11 = load ptr, ptr %tp.addr, align 8, !dbg !5207
  %thresh = getelementptr inbounds %struct.trackpoint_data, ptr %11, i32 0, i32 8, !dbg !5207
  store i8 %10, ptr %thresh, align 1, !dbg !5207
  br label %do.end10, !dbg !5207

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !5209

do.body11:                                        ; preds = %do.end10
  %12 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_upthresh, i32 0, i32 4), align 1, !dbg !5210
  %13 = load ptr, ptr %tp.addr, align 8, !dbg !5210
  %upthresh = getelementptr inbounds %struct.trackpoint_data, ptr %13, i32 0, i32 9, !dbg !5210
  store i8 %12, ptr %upthresh, align 1, !dbg !5210
  br label %do.end12, !dbg !5210

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !5212

do.body13:                                        ; preds = %do.end12
  %14 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ztime, i32 0, i32 4), align 1, !dbg !5213
  %15 = load ptr, ptr %tp.addr, align 8, !dbg !5213
  %ztime = getelementptr inbounds %struct.trackpoint_data, ptr %15, i32 0, i32 10, !dbg !5213
  store i8 %14, ptr %ztime, align 1, !dbg !5213
  br label %do.end14, !dbg !5213

do.end14:                                         ; preds = %do.body13
  br label %do.body15, !dbg !5215

do.body15:                                        ; preds = %do.end14
  %16 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_jenks, i32 0, i32 4), align 1, !dbg !5216
  %17 = load ptr, ptr %tp.addr, align 8, !dbg !5216
  %jenks = getelementptr inbounds %struct.trackpoint_data, ptr %17, i32 0, i32 11, !dbg !5216
  store i8 %16, ptr %jenks, align 1, !dbg !5216
  br label %do.end16, !dbg !5216

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !5218

do.body17:                                        ; preds = %do.end16
  %18 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_drift_time, i32 0, i32 4), align 1, !dbg !5219
  %19 = load ptr, ptr %tp.addr, align 8, !dbg !5219
  %drift_time = getelementptr inbounds %struct.trackpoint_data, ptr %19, i32 0, i32 12, !dbg !5219
  store i8 %18, ptr %drift_time, align 1, !dbg !5219
  br label %do.end18, !dbg !5219

do.end18:                                         ; preds = %do.body17
  br label %do.body19, !dbg !5221

do.body19:                                        ; preds = %do.end18
  %20 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_inertia, i32 0, i32 4), align 1, !dbg !5222
  %21 = load ptr, ptr %tp.addr, align 8, !dbg !5222
  %inertia = getelementptr inbounds %struct.trackpoint_data, ptr %21, i32 0, i32 4, !dbg !5222
  store i8 %20, ptr %inertia, align 1, !dbg !5222
  br label %do.end20, !dbg !5222

do.end20:                                         ; preds = %do.body19
  br label %do.body21, !dbg !5224

do.body21:                                        ; preds = %do.end20
  %22 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_press_to_select, i32 0, i32 4), align 1, !dbg !5225
  %tobool = icmp ne i8 %22, 0, !dbg !5225
  %23 = load ptr, ptr %tp.addr, align 8, !dbg !5225
  %press_to_select = getelementptr inbounds %struct.trackpoint_data, ptr %23, i32 0, i32 13, !dbg !5225
  %frombool = zext i1 %tobool to i8, !dbg !5225
  store i8 %frombool, ptr %press_to_select, align 1, !dbg !5225
  br label %do.end22, !dbg !5225

do.end22:                                         ; preds = %do.body21
  br label %do.body23, !dbg !5227

do.body23:                                        ; preds = %do.end22
  %24 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_skipback, i32 0, i32 4), align 1, !dbg !5228
  %tobool24 = icmp ne i8 %24, 0, !dbg !5228
  %25 = load ptr, ptr %tp.addr, align 8, !dbg !5228
  %skipback = getelementptr inbounds %struct.trackpoint_data, ptr %25, i32 0, i32 14, !dbg !5228
  %frombool25 = zext i1 %tobool24 to i8, !dbg !5228
  store i8 %frombool25, ptr %skipback, align 1, !dbg !5228
  br label %do.end26, !dbg !5228

do.end26:                                         ; preds = %do.body23
  br label %do.body27, !dbg !5230

do.body27:                                        ; preds = %do.end26
  %26 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ext_dev, i32 0, i32 4), align 1, !dbg !5231
  %tobool28 = icmp ne i8 %26, 0, !dbg !5231
  %27 = load ptr, ptr %tp.addr, align 8, !dbg !5231
  %ext_dev = getelementptr inbounds %struct.trackpoint_data, ptr %27, i32 0, i32 15, !dbg !5231
  %frombool29 = zext i1 %tobool28 to i8, !dbg !5231
  store i8 %frombool29, ptr %ext_dev, align 1, !dbg !5231
  br label %do.end30, !dbg !5231

do.end30:                                         ; preds = %do.body27
  ret void, !dbg !5233
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trackpoint_reconnect(ptr noundef %psmouse) #0 align 16 !dbg !5234 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %error = alloca i32, align 4
  %was_reset = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5236, metadata !DIExpression()), !dbg !5240
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #16, !dbg !5241
  call void @llvm.dbg.declare(metadata ptr %tp, metadata !5237, metadata !DIExpression()), !dbg !5242
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5243
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5244
  %1 = load ptr, ptr %private, align 8, !dbg !5244
  store ptr %1, ptr %tp, align 8, !dbg !5242
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !5245
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5238, metadata !DIExpression()), !dbg !5246
  call void @llvm.lifetime.start.p0(i64 1, ptr %was_reset) #16, !dbg !5247
  call void @llvm.dbg.declare(metadata ptr %was_reset, metadata !5239, metadata !DIExpression()), !dbg !5248
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5249
  %call = call i32 @trackpoint_start_protocol(ptr noundef %2, ptr noundef null, ptr noundef null) #17, !dbg !5250
  store i32 %call, ptr %error, align 4, !dbg !5251
  %3 = load i32, ptr %error, align 4, !dbg !5252
  %tobool = icmp ne i32 %3, 0, !dbg !5252
  br i1 %tobool, label %if.then, label %if.end, !dbg !5254

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %error, align 4, !dbg !5255
  store i32 %4, ptr %retval, align 4, !dbg !5256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5256

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tp, align 8, !dbg !5257
  %variant_id = getelementptr inbounds %struct.trackpoint_data, ptr %5, i32 0, i32 0, !dbg !5258
  %6 = load i8, ptr %variant_id, align 1, !dbg !5258
  %conv = zext i8 %6 to i32, !dbg !5257
  %cmp = icmp eq i32 %conv, 1, !dbg !5259
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5260

land.rhs:                                         ; preds = %if.end
  %7 = load ptr, ptr %psmouse.addr, align 8, !dbg !5261
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 2, !dbg !5262
  %call2 = call i32 @trackpoint_power_on_reset(ptr noundef %ps2dev) #17, !dbg !5263
  %cmp3 = icmp eq i32 %call2, 0, !dbg !5264
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %8 = phi i1 [ false, %if.end ], [ %cmp3, %land.rhs ], !dbg !5265
  %frombool = zext i1 %8 to i8, !dbg !5266
  store i8 %frombool, ptr %was_reset, align 1, !dbg !5266
  %9 = load ptr, ptr %psmouse.addr, align 8, !dbg !5267
  %10 = load i8, ptr %was_reset, align 1, !dbg !5268, !range !5009, !noundef !923
  %tobool5 = trunc i8 %10 to i1, !dbg !5268
  %call6 = call i32 @trackpoint_sync(ptr noundef %9, i1 noundef zeroext %tobool5) #17, !dbg !5269
  store i32 %call6, ptr %error, align 4, !dbg !5270
  %11 = load i32, ptr %error, align 4, !dbg !5271
  %tobool7 = icmp ne i32 %11, 0, !dbg !5271
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5273

if.then8:                                         ; preds = %land.end
  %12 = load i32, ptr %error, align 4, !dbg !5274
  store i32 %12, ptr %retval, align 4, !dbg !5275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5275

if.end9:                                          ; preds = %land.end
  store i32 0, ptr %retval, align 4, !dbg !5276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5276

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %was_reset) #16, !dbg !5277
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5277
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #16, !dbg !5277
  %13 = load i32, ptr %retval, align 4, !dbg !5277
  ret i32 %13, !dbg !5277
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trackpoint_disconnect(ptr noundef %psmouse) #0 align 16 !dbg !5278 {
entry:
  %psmouse.addr = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5280, metadata !DIExpression()), !dbg !5281
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5282
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !5283
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !5284
  %1 = load ptr, ptr %serio, align 8, !dbg !5284
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18, !dbg !5285
  call void @device_remove_group(ptr noundef %dev, ptr noundef @trackpoint_attr_group) #17, !dbg !5286
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5287
  %private = getelementptr inbounds %struct.psmouse, ptr %2, i32 0, i32 0, !dbg !5288
  %3 = load ptr, ptr %private, align 8, !dbg !5288
  call void @kfree(ptr noundef %3) #17, !dbg !5289
  %4 = load ptr, ptr %psmouse.addr, align 8, !dbg !5290
  %private1 = getelementptr inbounds %struct.psmouse, ptr %4, i32 0, i32 0, !dbg !5291
  store ptr null, ptr %private1, align 8, !dbg !5292
  ret void, !dbg !5293
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trackpoint_read(ptr noundef %ps2dev, i8 noundef zeroext %loc, ptr noundef %results) #0 align 16 !dbg !5294 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %loc.addr = alloca i8, align 1
  %results.addr = alloca ptr, align 8
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !5298, metadata !DIExpression()), !dbg !5301
  store i8 %loc, ptr %loc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %loc.addr, metadata !5299, metadata !DIExpression()), !dbg !5302
  store ptr %results, ptr %results.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %results.addr, metadata !5300, metadata !DIExpression()), !dbg !5303
  %0 = load i8, ptr %loc.addr, align 1, !dbg !5304
  %1 = load ptr, ptr %results.addr, align 8, !dbg !5305
  %arrayidx = getelementptr i8, ptr %1, i64 0, !dbg !5305
  store i8 %0, ptr %arrayidx, align 1, !dbg !5306
  %2 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5307
  %3 = load ptr, ptr %results.addr, align 8, !dbg !5308
  %call = call i32 @ps2_command(ptr noundef %2, ptr noundef %3, i32 noundef 4578) #17, !dbg !5309
  ret i32 %call, !dbg !5310
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5311 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5315 dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5318 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5325, metadata !DIExpression()), !dbg !5329
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5326, metadata !DIExpression()), !dbg !5330
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !5331
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5327, metadata !DIExpression()), !dbg !5332
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5333
  %rem = urem i64 %0, 64, !dbg !5333
  %shl = shl i64 1, %rem, !dbg !5333
  store i64 %shl, ptr %mask, align 8, !dbg !5332
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5334
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5328, metadata !DIExpression()), !dbg !5335
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5336
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5337
  %div = udiv i64 %2, 64, !dbg !5337
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5338
  store ptr %add.ptr, ptr %p, align 8, !dbg !5335
  %3 = load i64, ptr %mask, align 8, !dbg !5339
  %4 = load ptr, ptr %p, align 8, !dbg !5340
  %5 = load i64, ptr %4, align 8, !dbg !5341
  %or = or i64 %5, %3, !dbg !5341
  store i64 %or, ptr %4, align 8, !dbg !5341
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5342
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5342
  ret void, !dbg !5342
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5343 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5346, metadata !DIExpression()), !dbg !5348
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5347, metadata !DIExpression()), !dbg !5349
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5350
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5351
  %div = udiv i64 %1, 64, !dbg !5351
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5352
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5353
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5354
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5355
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5356
  ret void, !dbg !5357
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trackpoint_power_on_reset(ptr noundef %ps2dev) #0 align 16 !dbg !5358 {
entry:
  %retval = alloca i32, align 4
  %ps2dev.addr = alloca ptr, align 8
  %param = alloca [2 x i8], align 1
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !5362, metadata !DIExpression()), !dbg !5365
  call void @llvm.lifetime.start.p0(i64 2, ptr %param) #16, !dbg !5366
  call void @llvm.dbg.declare(metadata ptr %param, metadata !5363, metadata !DIExpression()), !dbg !5367
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %param, ptr align 1 @__const.trackpoint_power_on_reset.param, i64 2, i1 false), !dbg !5367
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5368
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5364, metadata !DIExpression()), !dbg !5369
  %0 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5370
  %arraydecay = getelementptr inbounds [2 x i8], ptr %param, i64 0, i64 0, !dbg !5371
  %call = call i32 @ps2_command(ptr noundef %0, ptr noundef %arraydecay, i32 noundef 4834) #17, !dbg !5372
  store i32 %call, ptr %err, align 4, !dbg !5373
  %1 = load i32, ptr %err, align 4, !dbg !5374
  %tobool = icmp ne i32 %1, 0, !dbg !5374
  br i1 %tobool, label %if.then, label %if.end, !dbg !5376

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !5377
  store i32 %2, ptr %retval, align 4, !dbg !5378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5378

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x i8], ptr %param, i64 0, i64 0, !dbg !5379
  %3 = load i8, ptr %arrayidx, align 1, !dbg !5379
  %conv = zext i8 %3 to i32, !dbg !5379
  %cmp = icmp ne i32 %conv, 170, !dbg !5381
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !5382

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx2 = getelementptr [2 x i8], ptr %param, i64 0, i64 1, !dbg !5383
  %4 = load i8, ptr %arrayidx2, align 1, !dbg !5383
  %conv3 = zext i8 %4 to i32, !dbg !5383
  %cmp4 = icmp ne i32 %conv3, 0, !dbg !5384
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !5385

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -19, ptr %retval, align 4, !dbg !5386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5386

if.end7:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !5387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5387

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5388
  call void @llvm.lifetime.end.p0(i64 2, ptr %param) #16, !dbg !5388
  %5 = load i32, ptr %retval, align 4, !dbg !5388
  ret i32 %5, !dbg !5388
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trackpoint_sync(ptr noundef %psmouse, i1 noundef zeroext %in_power_on_state) #0 align 16 !dbg !5389 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %in_power_on_state.addr = alloca i8, align 1
  %tp = alloca ptr, align 8
  %_attr = alloca ptr, align 8
  %_attr28 = alloca ptr, align 8
  %_attr58 = alloca ptr, align 8
  %_attr88 = alloca ptr, align 8
  %_attr118 = alloca ptr, align 8
  %_attr148 = alloca ptr, align 8
  %_attr178 = alloca ptr, align 8
  %_attr208 = alloca ptr, align 8
  %_attr238 = alloca ptr, align 8
  %_attr268 = alloca ptr, align 8
  %_attr298 = alloca ptr, align 8
  %_attr328 = alloca ptr, align 8
  %_attr363 = alloca ptr, align 8
  %_attr398 = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5391, metadata !DIExpression()), !dbg !5423
  %frombool = zext i1 %in_power_on_state to i8
  store i8 %frombool, ptr %in_power_on_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %in_power_on_state.addr, metadata !5392, metadata !DIExpression()), !dbg !5424
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #16, !dbg !5425
  call void @llvm.dbg.declare(metadata ptr %tp, metadata !5393, metadata !DIExpression()), !dbg !5426
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5427
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5428
  %1 = load ptr, ptr %private, align 8, !dbg !5428
  store ptr %1, ptr %tp, align 8, !dbg !5426
  %2 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5429, !range !5009, !noundef !923
  %tobool = trunc i8 %2 to i1, !dbg !5429
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5431

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %tp, align 8, !dbg !5432
  %variant_id = getelementptr inbounds %struct.trackpoint_data, ptr %3, i32 0, i32 0, !dbg !5433
  %4 = load i8, ptr %variant_id, align 1, !dbg !5433
  %conv = zext i8 %4 to i32, !dbg !5432
  %cmp = icmp eq i32 %conv, 1, !dbg !5434
  br i1 %cmp, label %if.then, label %if.end, !dbg !5435

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %psmouse.addr, align 8, !dbg !5436
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2, !dbg !5438
  %call = call i32 @trackpoint_update_bit(ptr noundef %ps2dev, i8 noundef zeroext 45, i8 noundef zeroext 1, i8 noundef zeroext 0) #17, !dbg !5439
  %6 = load ptr, ptr %psmouse.addr, align 8, !dbg !5440
  %ps2dev2 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 2, !dbg !5441
  %call3 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev2, i8 noundef zeroext 32, i8 noundef zeroext -128, i8 noundef zeroext 0) #17, !dbg !5442
  %7 = load ptr, ptr %psmouse.addr, align 8, !dbg !5443
  %ps2dev4 = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 2, !dbg !5444
  %call5 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev4, i8 noundef zeroext 35, i8 noundef zeroext 1, i8 noundef zeroext 0) #17, !dbg !5445
  br label %if.end, !dbg !5446

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body, !dbg !5447

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr) #16, !dbg !5448
  call void @llvm.dbg.declare(metadata ptr %_attr, metadata !5394, metadata !DIExpression()), !dbg !5448
  store ptr @trackpoint_attr_sensitivity, ptr %_attr, align 8, !dbg !5448
  %8 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5449, !range !5009, !noundef !923
  %tobool6 = trunc i8 %8 to i1, !dbg !5449
  br i1 %tobool6, label %lor.lhs.false, label %land.lhs.true11, !dbg !5449

lor.lhs.false:                                    ; preds = %do.body
  %9 = load ptr, ptr %tp, align 8, !dbg !5449
  %sensitivity = getelementptr inbounds %struct.trackpoint_data, ptr %9, i32 0, i32 2, !dbg !5449
  %10 = load i8, ptr %sensitivity, align 1, !dbg !5449
  %conv7 = zext i8 %10 to i32, !dbg !5449
  %11 = load ptr, ptr %_attr, align 8, !dbg !5449
  %power_on_default = getelementptr inbounds %struct.trackpoint_attr_data, ptr %11, i32 0, i32 4, !dbg !5449
  %12 = load i8, ptr %power_on_default, align 1, !dbg !5449
  %conv8 = zext i8 %12 to i32, !dbg !5449
  %cmp9 = icmp ne i32 %conv7, %conv8, !dbg !5449
  br i1 %cmp9, label %land.lhs.true11, label %if.end26, !dbg !5449

land.lhs.true11:                                  ; preds = %lor.lhs.false, %do.body
  %13 = load ptr, ptr %psmouse.addr, align 8, !dbg !5449
  %call12 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %13, ptr noundef @psmouse_attr_sensitivity) #17, !dbg !5449
  br i1 %call12, label %if.then14, label %if.end26, !dbg !5448

if.then14:                                        ; preds = %land.lhs.true11
  %14 = load ptr, ptr %_attr, align 8, !dbg !5451
  %mask = getelementptr inbounds %struct.trackpoint_attr_data, ptr %14, i32 0, i32 2, !dbg !5451
  %15 = load i8, ptr %mask, align 1, !dbg !5451
  %tobool15 = icmp ne i8 %15, 0, !dbg !5451
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !5454

if.then16:                                        ; preds = %if.then14
  %16 = load ptr, ptr %psmouse.addr, align 8, !dbg !5451
  %ps2dev17 = getelementptr inbounds %struct.psmouse, ptr %16, i32 0, i32 2, !dbg !5451
  %17 = load ptr, ptr %_attr, align 8, !dbg !5451
  %command = getelementptr inbounds %struct.trackpoint_attr_data, ptr %17, i32 0, i32 1, !dbg !5451
  %18 = load i8, ptr %command, align 8, !dbg !5451
  %19 = load ptr, ptr %tp, align 8, !dbg !5451
  %sensitivity18 = getelementptr inbounds %struct.trackpoint_data, ptr %19, i32 0, i32 2, !dbg !5451
  %20 = load i8, ptr %sensitivity18, align 1, !dbg !5451
  %call19 = call i32 @trackpoint_write(ptr noundef %ps2dev17, i8 noundef zeroext %18, i8 noundef zeroext %20) #17, !dbg !5451
  br label %if.end25, !dbg !5451

if.else:                                          ; preds = %if.then14
  %21 = load ptr, ptr %psmouse.addr, align 8, !dbg !5451
  %ps2dev20 = getelementptr inbounds %struct.psmouse, ptr %21, i32 0, i32 2, !dbg !5451
  %22 = load ptr, ptr %_attr, align 8, !dbg !5451
  %command21 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %22, i32 0, i32 1, !dbg !5451
  %23 = load i8, ptr %command21, align 8, !dbg !5451
  %24 = load ptr, ptr %_attr, align 8, !dbg !5451
  %mask22 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %24, i32 0, i32 2, !dbg !5451
  %25 = load i8, ptr %mask22, align 1, !dbg !5451
  %26 = load ptr, ptr %tp, align 8, !dbg !5451
  %sensitivity23 = getelementptr inbounds %struct.trackpoint_data, ptr %26, i32 0, i32 2, !dbg !5451
  %27 = load i8, ptr %sensitivity23, align 1, !dbg !5451
  %call24 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev20, i8 noundef zeroext %23, i8 noundef zeroext %25, i8 noundef zeroext %27) #17, !dbg !5451
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then16
  br label %if.end26, !dbg !5454

if.end26:                                         ; preds = %if.end25, %land.lhs.true11, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr) #16, !dbg !5447
  br label %do.cond, !dbg !5448

do.cond:                                          ; preds = %if.end26
  br label %do.end, !dbg !5448

do.end:                                           ; preds = %do.cond
  br label %do.body27, !dbg !5455

do.body27:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr28) #16, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %_attr28, metadata !5397, metadata !DIExpression()), !dbg !5456
  store ptr @trackpoint_attr_inertia, ptr %_attr28, align 8, !dbg !5456
  %28 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5457, !range !5009, !noundef !923
  %tobool29 = trunc i8 %28 to i1, !dbg !5457
  br i1 %tobool29, label %lor.lhs.false30, label %land.lhs.true36, !dbg !5457

lor.lhs.false30:                                  ; preds = %do.body27
  %29 = load ptr, ptr %tp, align 8, !dbg !5457
  %inertia = getelementptr inbounds %struct.trackpoint_data, ptr %29, i32 0, i32 4, !dbg !5457
  %30 = load i8, ptr %inertia, align 1, !dbg !5457
  %conv31 = zext i8 %30 to i32, !dbg !5457
  %31 = load ptr, ptr %_attr28, align 8, !dbg !5457
  %power_on_default32 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %31, i32 0, i32 4, !dbg !5457
  %32 = load i8, ptr %power_on_default32, align 1, !dbg !5457
  %conv33 = zext i8 %32 to i32, !dbg !5457
  %cmp34 = icmp ne i32 %conv31, %conv33, !dbg !5457
  br i1 %cmp34, label %land.lhs.true36, label %if.end54, !dbg !5457

land.lhs.true36:                                  ; preds = %lor.lhs.false30, %do.body27
  %33 = load ptr, ptr %psmouse.addr, align 8, !dbg !5457
  %call37 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %33, ptr noundef @psmouse_attr_inertia) #17, !dbg !5457
  br i1 %call37, label %if.then39, label %if.end54, !dbg !5456

if.then39:                                        ; preds = %land.lhs.true36
  %34 = load ptr, ptr %_attr28, align 8, !dbg !5459
  %mask40 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %34, i32 0, i32 2, !dbg !5459
  %35 = load i8, ptr %mask40, align 1, !dbg !5459
  %tobool41 = icmp ne i8 %35, 0, !dbg !5459
  br i1 %tobool41, label %if.else47, label %if.then42, !dbg !5462

if.then42:                                        ; preds = %if.then39
  %36 = load ptr, ptr %psmouse.addr, align 8, !dbg !5459
  %ps2dev43 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 2, !dbg !5459
  %37 = load ptr, ptr %_attr28, align 8, !dbg !5459
  %command44 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %37, i32 0, i32 1, !dbg !5459
  %38 = load i8, ptr %command44, align 8, !dbg !5459
  %39 = load ptr, ptr %tp, align 8, !dbg !5459
  %inertia45 = getelementptr inbounds %struct.trackpoint_data, ptr %39, i32 0, i32 4, !dbg !5459
  %40 = load i8, ptr %inertia45, align 1, !dbg !5459
  %call46 = call i32 @trackpoint_write(ptr noundef %ps2dev43, i8 noundef zeroext %38, i8 noundef zeroext %40) #17, !dbg !5459
  br label %if.end53, !dbg !5459

if.else47:                                        ; preds = %if.then39
  %41 = load ptr, ptr %psmouse.addr, align 8, !dbg !5459
  %ps2dev48 = getelementptr inbounds %struct.psmouse, ptr %41, i32 0, i32 2, !dbg !5459
  %42 = load ptr, ptr %_attr28, align 8, !dbg !5459
  %command49 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %42, i32 0, i32 1, !dbg !5459
  %43 = load i8, ptr %command49, align 8, !dbg !5459
  %44 = load ptr, ptr %_attr28, align 8, !dbg !5459
  %mask50 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %44, i32 0, i32 2, !dbg !5459
  %45 = load i8, ptr %mask50, align 1, !dbg !5459
  %46 = load ptr, ptr %tp, align 8, !dbg !5459
  %inertia51 = getelementptr inbounds %struct.trackpoint_data, ptr %46, i32 0, i32 4, !dbg !5459
  %47 = load i8, ptr %inertia51, align 1, !dbg !5459
  %call52 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev48, i8 noundef zeroext %43, i8 noundef zeroext %45, i8 noundef zeroext %47) #17, !dbg !5459
  br label %if.end53

if.end53:                                         ; preds = %if.else47, %if.then42
  br label %if.end54, !dbg !5462

if.end54:                                         ; preds = %if.end53, %land.lhs.true36, %lor.lhs.false30
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr28) #16, !dbg !5455
  br label %do.cond55, !dbg !5456

do.cond55:                                        ; preds = %if.end54
  br label %do.end56, !dbg !5456

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !5463

do.body57:                                        ; preds = %do.end56
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr58) #16, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %_attr58, metadata !5399, metadata !DIExpression()), !dbg !5464
  store ptr @trackpoint_attr_speed, ptr %_attr58, align 8, !dbg !5464
  %48 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5465, !range !5009, !noundef !923
  %tobool59 = trunc i8 %48 to i1, !dbg !5465
  br i1 %tobool59, label %lor.lhs.false60, label %land.lhs.true66, !dbg !5465

lor.lhs.false60:                                  ; preds = %do.body57
  %49 = load ptr, ptr %tp, align 8, !dbg !5465
  %speed = getelementptr inbounds %struct.trackpoint_data, ptr %49, i32 0, i32 3, !dbg !5465
  %50 = load i8, ptr %speed, align 1, !dbg !5465
  %conv61 = zext i8 %50 to i32, !dbg !5465
  %51 = load ptr, ptr %_attr58, align 8, !dbg !5465
  %power_on_default62 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %51, i32 0, i32 4, !dbg !5465
  %52 = load i8, ptr %power_on_default62, align 1, !dbg !5465
  %conv63 = zext i8 %52 to i32, !dbg !5465
  %cmp64 = icmp ne i32 %conv61, %conv63, !dbg !5465
  br i1 %cmp64, label %land.lhs.true66, label %if.end84, !dbg !5465

land.lhs.true66:                                  ; preds = %lor.lhs.false60, %do.body57
  %53 = load ptr, ptr %psmouse.addr, align 8, !dbg !5465
  %call67 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %53, ptr noundef @psmouse_attr_speed) #17, !dbg !5465
  br i1 %call67, label %if.then69, label %if.end84, !dbg !5464

if.then69:                                        ; preds = %land.lhs.true66
  %54 = load ptr, ptr %_attr58, align 8, !dbg !5467
  %mask70 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %54, i32 0, i32 2, !dbg !5467
  %55 = load i8, ptr %mask70, align 1, !dbg !5467
  %tobool71 = icmp ne i8 %55, 0, !dbg !5467
  br i1 %tobool71, label %if.else77, label %if.then72, !dbg !5470

if.then72:                                        ; preds = %if.then69
  %56 = load ptr, ptr %psmouse.addr, align 8, !dbg !5467
  %ps2dev73 = getelementptr inbounds %struct.psmouse, ptr %56, i32 0, i32 2, !dbg !5467
  %57 = load ptr, ptr %_attr58, align 8, !dbg !5467
  %command74 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %57, i32 0, i32 1, !dbg !5467
  %58 = load i8, ptr %command74, align 8, !dbg !5467
  %59 = load ptr, ptr %tp, align 8, !dbg !5467
  %speed75 = getelementptr inbounds %struct.trackpoint_data, ptr %59, i32 0, i32 3, !dbg !5467
  %60 = load i8, ptr %speed75, align 1, !dbg !5467
  %call76 = call i32 @trackpoint_write(ptr noundef %ps2dev73, i8 noundef zeroext %58, i8 noundef zeroext %60) #17, !dbg !5467
  br label %if.end83, !dbg !5467

if.else77:                                        ; preds = %if.then69
  %61 = load ptr, ptr %psmouse.addr, align 8, !dbg !5467
  %ps2dev78 = getelementptr inbounds %struct.psmouse, ptr %61, i32 0, i32 2, !dbg !5467
  %62 = load ptr, ptr %_attr58, align 8, !dbg !5467
  %command79 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %62, i32 0, i32 1, !dbg !5467
  %63 = load i8, ptr %command79, align 8, !dbg !5467
  %64 = load ptr, ptr %_attr58, align 8, !dbg !5467
  %mask80 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %64, i32 0, i32 2, !dbg !5467
  %65 = load i8, ptr %mask80, align 1, !dbg !5467
  %66 = load ptr, ptr %tp, align 8, !dbg !5467
  %speed81 = getelementptr inbounds %struct.trackpoint_data, ptr %66, i32 0, i32 3, !dbg !5467
  %67 = load i8, ptr %speed81, align 1, !dbg !5467
  %call82 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev78, i8 noundef zeroext %63, i8 noundef zeroext %65, i8 noundef zeroext %67) #17, !dbg !5467
  br label %if.end83

if.end83:                                         ; preds = %if.else77, %if.then72
  br label %if.end84, !dbg !5470

if.end84:                                         ; preds = %if.end83, %land.lhs.true66, %lor.lhs.false60
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr58) #16, !dbg !5463
  br label %do.cond85, !dbg !5464

do.cond85:                                        ; preds = %if.end84
  br label %do.end86, !dbg !5464

do.end86:                                         ; preds = %do.cond85
  br label %do.body87, !dbg !5471

do.body87:                                        ; preds = %do.end86
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr88) #16, !dbg !5472
  call void @llvm.dbg.declare(metadata ptr %_attr88, metadata !5401, metadata !DIExpression()), !dbg !5472
  store ptr @trackpoint_attr_reach, ptr %_attr88, align 8, !dbg !5472
  %68 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5473, !range !5009, !noundef !923
  %tobool89 = trunc i8 %68 to i1, !dbg !5473
  br i1 %tobool89, label %lor.lhs.false90, label %land.lhs.true96, !dbg !5473

lor.lhs.false90:                                  ; preds = %do.body87
  %69 = load ptr, ptr %tp, align 8, !dbg !5473
  %reach = getelementptr inbounds %struct.trackpoint_data, ptr %69, i32 0, i32 5, !dbg !5473
  %70 = load i8, ptr %reach, align 1, !dbg !5473
  %conv91 = zext i8 %70 to i32, !dbg !5473
  %71 = load ptr, ptr %_attr88, align 8, !dbg !5473
  %power_on_default92 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %71, i32 0, i32 4, !dbg !5473
  %72 = load i8, ptr %power_on_default92, align 1, !dbg !5473
  %conv93 = zext i8 %72 to i32, !dbg !5473
  %cmp94 = icmp ne i32 %conv91, %conv93, !dbg !5473
  br i1 %cmp94, label %land.lhs.true96, label %if.end114, !dbg !5473

land.lhs.true96:                                  ; preds = %lor.lhs.false90, %do.body87
  %73 = load ptr, ptr %psmouse.addr, align 8, !dbg !5473
  %call97 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %73, ptr noundef @psmouse_attr_reach) #17, !dbg !5473
  br i1 %call97, label %if.then99, label %if.end114, !dbg !5472

if.then99:                                        ; preds = %land.lhs.true96
  %74 = load ptr, ptr %_attr88, align 8, !dbg !5475
  %mask100 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %74, i32 0, i32 2, !dbg !5475
  %75 = load i8, ptr %mask100, align 1, !dbg !5475
  %tobool101 = icmp ne i8 %75, 0, !dbg !5475
  br i1 %tobool101, label %if.else107, label %if.then102, !dbg !5478

if.then102:                                       ; preds = %if.then99
  %76 = load ptr, ptr %psmouse.addr, align 8, !dbg !5475
  %ps2dev103 = getelementptr inbounds %struct.psmouse, ptr %76, i32 0, i32 2, !dbg !5475
  %77 = load ptr, ptr %_attr88, align 8, !dbg !5475
  %command104 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %77, i32 0, i32 1, !dbg !5475
  %78 = load i8, ptr %command104, align 8, !dbg !5475
  %79 = load ptr, ptr %tp, align 8, !dbg !5475
  %reach105 = getelementptr inbounds %struct.trackpoint_data, ptr %79, i32 0, i32 5, !dbg !5475
  %80 = load i8, ptr %reach105, align 1, !dbg !5475
  %call106 = call i32 @trackpoint_write(ptr noundef %ps2dev103, i8 noundef zeroext %78, i8 noundef zeroext %80) #17, !dbg !5475
  br label %if.end113, !dbg !5475

if.else107:                                       ; preds = %if.then99
  %81 = load ptr, ptr %psmouse.addr, align 8, !dbg !5475
  %ps2dev108 = getelementptr inbounds %struct.psmouse, ptr %81, i32 0, i32 2, !dbg !5475
  %82 = load ptr, ptr %_attr88, align 8, !dbg !5475
  %command109 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %82, i32 0, i32 1, !dbg !5475
  %83 = load i8, ptr %command109, align 8, !dbg !5475
  %84 = load ptr, ptr %_attr88, align 8, !dbg !5475
  %mask110 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %84, i32 0, i32 2, !dbg !5475
  %85 = load i8, ptr %mask110, align 1, !dbg !5475
  %86 = load ptr, ptr %tp, align 8, !dbg !5475
  %reach111 = getelementptr inbounds %struct.trackpoint_data, ptr %86, i32 0, i32 5, !dbg !5475
  %87 = load i8, ptr %reach111, align 1, !dbg !5475
  %call112 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev108, i8 noundef zeroext %83, i8 noundef zeroext %85, i8 noundef zeroext %87) #17, !dbg !5475
  br label %if.end113

if.end113:                                        ; preds = %if.else107, %if.then102
  br label %if.end114, !dbg !5478

if.end114:                                        ; preds = %if.end113, %land.lhs.true96, %lor.lhs.false90
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr88) #16, !dbg !5471
  br label %do.cond115, !dbg !5472

do.cond115:                                       ; preds = %if.end114
  br label %do.end116, !dbg !5472

do.end116:                                        ; preds = %do.cond115
  br label %do.body117, !dbg !5479

do.body117:                                       ; preds = %do.end116
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr118) #16, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %_attr118, metadata !5403, metadata !DIExpression()), !dbg !5480
  store ptr @trackpoint_attr_draghys, ptr %_attr118, align 8, !dbg !5480
  %88 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5481, !range !5009, !noundef !923
  %tobool119 = trunc i8 %88 to i1, !dbg !5481
  br i1 %tobool119, label %lor.lhs.false120, label %land.lhs.true126, !dbg !5481

lor.lhs.false120:                                 ; preds = %do.body117
  %89 = load ptr, ptr %tp, align 8, !dbg !5481
  %draghys = getelementptr inbounds %struct.trackpoint_data, ptr %89, i32 0, i32 6, !dbg !5481
  %90 = load i8, ptr %draghys, align 1, !dbg !5481
  %conv121 = zext i8 %90 to i32, !dbg !5481
  %91 = load ptr, ptr %_attr118, align 8, !dbg !5481
  %power_on_default122 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %91, i32 0, i32 4, !dbg !5481
  %92 = load i8, ptr %power_on_default122, align 1, !dbg !5481
  %conv123 = zext i8 %92 to i32, !dbg !5481
  %cmp124 = icmp ne i32 %conv121, %conv123, !dbg !5481
  br i1 %cmp124, label %land.lhs.true126, label %if.end144, !dbg !5481

land.lhs.true126:                                 ; preds = %lor.lhs.false120, %do.body117
  %93 = load ptr, ptr %psmouse.addr, align 8, !dbg !5481
  %call127 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %93, ptr noundef @psmouse_attr_draghys) #17, !dbg !5481
  br i1 %call127, label %if.then129, label %if.end144, !dbg !5480

if.then129:                                       ; preds = %land.lhs.true126
  %94 = load ptr, ptr %_attr118, align 8, !dbg !5483
  %mask130 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %94, i32 0, i32 2, !dbg !5483
  %95 = load i8, ptr %mask130, align 1, !dbg !5483
  %tobool131 = icmp ne i8 %95, 0, !dbg !5483
  br i1 %tobool131, label %if.else137, label %if.then132, !dbg !5486

if.then132:                                       ; preds = %if.then129
  %96 = load ptr, ptr %psmouse.addr, align 8, !dbg !5483
  %ps2dev133 = getelementptr inbounds %struct.psmouse, ptr %96, i32 0, i32 2, !dbg !5483
  %97 = load ptr, ptr %_attr118, align 8, !dbg !5483
  %command134 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %97, i32 0, i32 1, !dbg !5483
  %98 = load i8, ptr %command134, align 8, !dbg !5483
  %99 = load ptr, ptr %tp, align 8, !dbg !5483
  %draghys135 = getelementptr inbounds %struct.trackpoint_data, ptr %99, i32 0, i32 6, !dbg !5483
  %100 = load i8, ptr %draghys135, align 1, !dbg !5483
  %call136 = call i32 @trackpoint_write(ptr noundef %ps2dev133, i8 noundef zeroext %98, i8 noundef zeroext %100) #17, !dbg !5483
  br label %if.end143, !dbg !5483

if.else137:                                       ; preds = %if.then129
  %101 = load ptr, ptr %psmouse.addr, align 8, !dbg !5483
  %ps2dev138 = getelementptr inbounds %struct.psmouse, ptr %101, i32 0, i32 2, !dbg !5483
  %102 = load ptr, ptr %_attr118, align 8, !dbg !5483
  %command139 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %102, i32 0, i32 1, !dbg !5483
  %103 = load i8, ptr %command139, align 8, !dbg !5483
  %104 = load ptr, ptr %_attr118, align 8, !dbg !5483
  %mask140 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %104, i32 0, i32 2, !dbg !5483
  %105 = load i8, ptr %mask140, align 1, !dbg !5483
  %106 = load ptr, ptr %tp, align 8, !dbg !5483
  %draghys141 = getelementptr inbounds %struct.trackpoint_data, ptr %106, i32 0, i32 6, !dbg !5483
  %107 = load i8, ptr %draghys141, align 1, !dbg !5483
  %call142 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev138, i8 noundef zeroext %103, i8 noundef zeroext %105, i8 noundef zeroext %107) #17, !dbg !5483
  br label %if.end143

if.end143:                                        ; preds = %if.else137, %if.then132
  br label %if.end144, !dbg !5486

if.end144:                                        ; preds = %if.end143, %land.lhs.true126, %lor.lhs.false120
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr118) #16, !dbg !5479
  br label %do.cond145, !dbg !5480

do.cond145:                                       ; preds = %if.end144
  br label %do.end146, !dbg !5480

do.end146:                                        ; preds = %do.cond145
  br label %do.body147, !dbg !5487

do.body147:                                       ; preds = %do.end146
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr148) #16, !dbg !5488
  call void @llvm.dbg.declare(metadata ptr %_attr148, metadata !5405, metadata !DIExpression()), !dbg !5488
  store ptr @trackpoint_attr_mindrag, ptr %_attr148, align 8, !dbg !5488
  %108 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5489, !range !5009, !noundef !923
  %tobool149 = trunc i8 %108 to i1, !dbg !5489
  br i1 %tobool149, label %lor.lhs.false150, label %land.lhs.true156, !dbg !5489

lor.lhs.false150:                                 ; preds = %do.body147
  %109 = load ptr, ptr %tp, align 8, !dbg !5489
  %mindrag = getelementptr inbounds %struct.trackpoint_data, ptr %109, i32 0, i32 7, !dbg !5489
  %110 = load i8, ptr %mindrag, align 1, !dbg !5489
  %conv151 = zext i8 %110 to i32, !dbg !5489
  %111 = load ptr, ptr %_attr148, align 8, !dbg !5489
  %power_on_default152 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %111, i32 0, i32 4, !dbg !5489
  %112 = load i8, ptr %power_on_default152, align 1, !dbg !5489
  %conv153 = zext i8 %112 to i32, !dbg !5489
  %cmp154 = icmp ne i32 %conv151, %conv153, !dbg !5489
  br i1 %cmp154, label %land.lhs.true156, label %if.end174, !dbg !5489

land.lhs.true156:                                 ; preds = %lor.lhs.false150, %do.body147
  %113 = load ptr, ptr %psmouse.addr, align 8, !dbg !5489
  %call157 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %113, ptr noundef @psmouse_attr_mindrag) #17, !dbg !5489
  br i1 %call157, label %if.then159, label %if.end174, !dbg !5488

if.then159:                                       ; preds = %land.lhs.true156
  %114 = load ptr, ptr %_attr148, align 8, !dbg !5491
  %mask160 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %114, i32 0, i32 2, !dbg !5491
  %115 = load i8, ptr %mask160, align 1, !dbg !5491
  %tobool161 = icmp ne i8 %115, 0, !dbg !5491
  br i1 %tobool161, label %if.else167, label %if.then162, !dbg !5494

if.then162:                                       ; preds = %if.then159
  %116 = load ptr, ptr %psmouse.addr, align 8, !dbg !5491
  %ps2dev163 = getelementptr inbounds %struct.psmouse, ptr %116, i32 0, i32 2, !dbg !5491
  %117 = load ptr, ptr %_attr148, align 8, !dbg !5491
  %command164 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %117, i32 0, i32 1, !dbg !5491
  %118 = load i8, ptr %command164, align 8, !dbg !5491
  %119 = load ptr, ptr %tp, align 8, !dbg !5491
  %mindrag165 = getelementptr inbounds %struct.trackpoint_data, ptr %119, i32 0, i32 7, !dbg !5491
  %120 = load i8, ptr %mindrag165, align 1, !dbg !5491
  %call166 = call i32 @trackpoint_write(ptr noundef %ps2dev163, i8 noundef zeroext %118, i8 noundef zeroext %120) #17, !dbg !5491
  br label %if.end173, !dbg !5491

if.else167:                                       ; preds = %if.then159
  %121 = load ptr, ptr %psmouse.addr, align 8, !dbg !5491
  %ps2dev168 = getelementptr inbounds %struct.psmouse, ptr %121, i32 0, i32 2, !dbg !5491
  %122 = load ptr, ptr %_attr148, align 8, !dbg !5491
  %command169 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %122, i32 0, i32 1, !dbg !5491
  %123 = load i8, ptr %command169, align 8, !dbg !5491
  %124 = load ptr, ptr %_attr148, align 8, !dbg !5491
  %mask170 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %124, i32 0, i32 2, !dbg !5491
  %125 = load i8, ptr %mask170, align 1, !dbg !5491
  %126 = load ptr, ptr %tp, align 8, !dbg !5491
  %mindrag171 = getelementptr inbounds %struct.trackpoint_data, ptr %126, i32 0, i32 7, !dbg !5491
  %127 = load i8, ptr %mindrag171, align 1, !dbg !5491
  %call172 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev168, i8 noundef zeroext %123, i8 noundef zeroext %125, i8 noundef zeroext %127) #17, !dbg !5491
  br label %if.end173

if.end173:                                        ; preds = %if.else167, %if.then162
  br label %if.end174, !dbg !5494

if.end174:                                        ; preds = %if.end173, %land.lhs.true156, %lor.lhs.false150
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr148) #16, !dbg !5487
  br label %do.cond175, !dbg !5488

do.cond175:                                       ; preds = %if.end174
  br label %do.end176, !dbg !5488

do.end176:                                        ; preds = %do.cond175
  br label %do.body177, !dbg !5495

do.body177:                                       ; preds = %do.end176
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr178) #16, !dbg !5496
  call void @llvm.dbg.declare(metadata ptr %_attr178, metadata !5407, metadata !DIExpression()), !dbg !5496
  store ptr @trackpoint_attr_thresh, ptr %_attr178, align 8, !dbg !5496
  %128 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5497, !range !5009, !noundef !923
  %tobool179 = trunc i8 %128 to i1, !dbg !5497
  br i1 %tobool179, label %lor.lhs.false180, label %land.lhs.true186, !dbg !5497

lor.lhs.false180:                                 ; preds = %do.body177
  %129 = load ptr, ptr %tp, align 8, !dbg !5497
  %thresh = getelementptr inbounds %struct.trackpoint_data, ptr %129, i32 0, i32 8, !dbg !5497
  %130 = load i8, ptr %thresh, align 1, !dbg !5497
  %conv181 = zext i8 %130 to i32, !dbg !5497
  %131 = load ptr, ptr %_attr178, align 8, !dbg !5497
  %power_on_default182 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %131, i32 0, i32 4, !dbg !5497
  %132 = load i8, ptr %power_on_default182, align 1, !dbg !5497
  %conv183 = zext i8 %132 to i32, !dbg !5497
  %cmp184 = icmp ne i32 %conv181, %conv183, !dbg !5497
  br i1 %cmp184, label %land.lhs.true186, label %if.end204, !dbg !5497

land.lhs.true186:                                 ; preds = %lor.lhs.false180, %do.body177
  %133 = load ptr, ptr %psmouse.addr, align 8, !dbg !5497
  %call187 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %133, ptr noundef @psmouse_attr_thresh) #17, !dbg !5497
  br i1 %call187, label %if.then189, label %if.end204, !dbg !5496

if.then189:                                       ; preds = %land.lhs.true186
  %134 = load ptr, ptr %_attr178, align 8, !dbg !5499
  %mask190 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %134, i32 0, i32 2, !dbg !5499
  %135 = load i8, ptr %mask190, align 1, !dbg !5499
  %tobool191 = icmp ne i8 %135, 0, !dbg !5499
  br i1 %tobool191, label %if.else197, label %if.then192, !dbg !5502

if.then192:                                       ; preds = %if.then189
  %136 = load ptr, ptr %psmouse.addr, align 8, !dbg !5499
  %ps2dev193 = getelementptr inbounds %struct.psmouse, ptr %136, i32 0, i32 2, !dbg !5499
  %137 = load ptr, ptr %_attr178, align 8, !dbg !5499
  %command194 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %137, i32 0, i32 1, !dbg !5499
  %138 = load i8, ptr %command194, align 8, !dbg !5499
  %139 = load ptr, ptr %tp, align 8, !dbg !5499
  %thresh195 = getelementptr inbounds %struct.trackpoint_data, ptr %139, i32 0, i32 8, !dbg !5499
  %140 = load i8, ptr %thresh195, align 1, !dbg !5499
  %call196 = call i32 @trackpoint_write(ptr noundef %ps2dev193, i8 noundef zeroext %138, i8 noundef zeroext %140) #17, !dbg !5499
  br label %if.end203, !dbg !5499

if.else197:                                       ; preds = %if.then189
  %141 = load ptr, ptr %psmouse.addr, align 8, !dbg !5499
  %ps2dev198 = getelementptr inbounds %struct.psmouse, ptr %141, i32 0, i32 2, !dbg !5499
  %142 = load ptr, ptr %_attr178, align 8, !dbg !5499
  %command199 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %142, i32 0, i32 1, !dbg !5499
  %143 = load i8, ptr %command199, align 8, !dbg !5499
  %144 = load ptr, ptr %_attr178, align 8, !dbg !5499
  %mask200 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %144, i32 0, i32 2, !dbg !5499
  %145 = load i8, ptr %mask200, align 1, !dbg !5499
  %146 = load ptr, ptr %tp, align 8, !dbg !5499
  %thresh201 = getelementptr inbounds %struct.trackpoint_data, ptr %146, i32 0, i32 8, !dbg !5499
  %147 = load i8, ptr %thresh201, align 1, !dbg !5499
  %call202 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev198, i8 noundef zeroext %143, i8 noundef zeroext %145, i8 noundef zeroext %147) #17, !dbg !5499
  br label %if.end203

if.end203:                                        ; preds = %if.else197, %if.then192
  br label %if.end204, !dbg !5502

if.end204:                                        ; preds = %if.end203, %land.lhs.true186, %lor.lhs.false180
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr178) #16, !dbg !5495
  br label %do.cond205, !dbg !5496

do.cond205:                                       ; preds = %if.end204
  br label %do.end206, !dbg !5496

do.end206:                                        ; preds = %do.cond205
  br label %do.body207, !dbg !5503

do.body207:                                       ; preds = %do.end206
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr208) #16, !dbg !5504
  call void @llvm.dbg.declare(metadata ptr %_attr208, metadata !5409, metadata !DIExpression()), !dbg !5504
  store ptr @trackpoint_attr_upthresh, ptr %_attr208, align 8, !dbg !5504
  %148 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5505, !range !5009, !noundef !923
  %tobool209 = trunc i8 %148 to i1, !dbg !5505
  br i1 %tobool209, label %lor.lhs.false210, label %land.lhs.true216, !dbg !5505

lor.lhs.false210:                                 ; preds = %do.body207
  %149 = load ptr, ptr %tp, align 8, !dbg !5505
  %upthresh = getelementptr inbounds %struct.trackpoint_data, ptr %149, i32 0, i32 9, !dbg !5505
  %150 = load i8, ptr %upthresh, align 1, !dbg !5505
  %conv211 = zext i8 %150 to i32, !dbg !5505
  %151 = load ptr, ptr %_attr208, align 8, !dbg !5505
  %power_on_default212 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %151, i32 0, i32 4, !dbg !5505
  %152 = load i8, ptr %power_on_default212, align 1, !dbg !5505
  %conv213 = zext i8 %152 to i32, !dbg !5505
  %cmp214 = icmp ne i32 %conv211, %conv213, !dbg !5505
  br i1 %cmp214, label %land.lhs.true216, label %if.end234, !dbg !5505

land.lhs.true216:                                 ; preds = %lor.lhs.false210, %do.body207
  %153 = load ptr, ptr %psmouse.addr, align 8, !dbg !5505
  %call217 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %153, ptr noundef @psmouse_attr_upthresh) #17, !dbg !5505
  br i1 %call217, label %if.then219, label %if.end234, !dbg !5504

if.then219:                                       ; preds = %land.lhs.true216
  %154 = load ptr, ptr %_attr208, align 8, !dbg !5507
  %mask220 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %154, i32 0, i32 2, !dbg !5507
  %155 = load i8, ptr %mask220, align 1, !dbg !5507
  %tobool221 = icmp ne i8 %155, 0, !dbg !5507
  br i1 %tobool221, label %if.else227, label %if.then222, !dbg !5510

if.then222:                                       ; preds = %if.then219
  %156 = load ptr, ptr %psmouse.addr, align 8, !dbg !5507
  %ps2dev223 = getelementptr inbounds %struct.psmouse, ptr %156, i32 0, i32 2, !dbg !5507
  %157 = load ptr, ptr %_attr208, align 8, !dbg !5507
  %command224 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %157, i32 0, i32 1, !dbg !5507
  %158 = load i8, ptr %command224, align 8, !dbg !5507
  %159 = load ptr, ptr %tp, align 8, !dbg !5507
  %upthresh225 = getelementptr inbounds %struct.trackpoint_data, ptr %159, i32 0, i32 9, !dbg !5507
  %160 = load i8, ptr %upthresh225, align 1, !dbg !5507
  %call226 = call i32 @trackpoint_write(ptr noundef %ps2dev223, i8 noundef zeroext %158, i8 noundef zeroext %160) #17, !dbg !5507
  br label %if.end233, !dbg !5507

if.else227:                                       ; preds = %if.then219
  %161 = load ptr, ptr %psmouse.addr, align 8, !dbg !5507
  %ps2dev228 = getelementptr inbounds %struct.psmouse, ptr %161, i32 0, i32 2, !dbg !5507
  %162 = load ptr, ptr %_attr208, align 8, !dbg !5507
  %command229 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %162, i32 0, i32 1, !dbg !5507
  %163 = load i8, ptr %command229, align 8, !dbg !5507
  %164 = load ptr, ptr %_attr208, align 8, !dbg !5507
  %mask230 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %164, i32 0, i32 2, !dbg !5507
  %165 = load i8, ptr %mask230, align 1, !dbg !5507
  %166 = load ptr, ptr %tp, align 8, !dbg !5507
  %upthresh231 = getelementptr inbounds %struct.trackpoint_data, ptr %166, i32 0, i32 9, !dbg !5507
  %167 = load i8, ptr %upthresh231, align 1, !dbg !5507
  %call232 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev228, i8 noundef zeroext %163, i8 noundef zeroext %165, i8 noundef zeroext %167) #17, !dbg !5507
  br label %if.end233

if.end233:                                        ; preds = %if.else227, %if.then222
  br label %if.end234, !dbg !5510

if.end234:                                        ; preds = %if.end233, %land.lhs.true216, %lor.lhs.false210
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr208) #16, !dbg !5503
  br label %do.cond235, !dbg !5504

do.cond235:                                       ; preds = %if.end234
  br label %do.end236, !dbg !5504

do.end236:                                        ; preds = %do.cond235
  br label %do.body237, !dbg !5511

do.body237:                                       ; preds = %do.end236
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr238) #16, !dbg !5512
  call void @llvm.dbg.declare(metadata ptr %_attr238, metadata !5411, metadata !DIExpression()), !dbg !5512
  store ptr @trackpoint_attr_ztime, ptr %_attr238, align 8, !dbg !5512
  %168 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5513, !range !5009, !noundef !923
  %tobool239 = trunc i8 %168 to i1, !dbg !5513
  br i1 %tobool239, label %lor.lhs.false240, label %land.lhs.true246, !dbg !5513

lor.lhs.false240:                                 ; preds = %do.body237
  %169 = load ptr, ptr %tp, align 8, !dbg !5513
  %ztime = getelementptr inbounds %struct.trackpoint_data, ptr %169, i32 0, i32 10, !dbg !5513
  %170 = load i8, ptr %ztime, align 1, !dbg !5513
  %conv241 = zext i8 %170 to i32, !dbg !5513
  %171 = load ptr, ptr %_attr238, align 8, !dbg !5513
  %power_on_default242 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %171, i32 0, i32 4, !dbg !5513
  %172 = load i8, ptr %power_on_default242, align 1, !dbg !5513
  %conv243 = zext i8 %172 to i32, !dbg !5513
  %cmp244 = icmp ne i32 %conv241, %conv243, !dbg !5513
  br i1 %cmp244, label %land.lhs.true246, label %if.end264, !dbg !5513

land.lhs.true246:                                 ; preds = %lor.lhs.false240, %do.body237
  %173 = load ptr, ptr %psmouse.addr, align 8, !dbg !5513
  %call247 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %173, ptr noundef @psmouse_attr_ztime) #17, !dbg !5513
  br i1 %call247, label %if.then249, label %if.end264, !dbg !5512

if.then249:                                       ; preds = %land.lhs.true246
  %174 = load ptr, ptr %_attr238, align 8, !dbg !5515
  %mask250 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %174, i32 0, i32 2, !dbg !5515
  %175 = load i8, ptr %mask250, align 1, !dbg !5515
  %tobool251 = icmp ne i8 %175, 0, !dbg !5515
  br i1 %tobool251, label %if.else257, label %if.then252, !dbg !5518

if.then252:                                       ; preds = %if.then249
  %176 = load ptr, ptr %psmouse.addr, align 8, !dbg !5515
  %ps2dev253 = getelementptr inbounds %struct.psmouse, ptr %176, i32 0, i32 2, !dbg !5515
  %177 = load ptr, ptr %_attr238, align 8, !dbg !5515
  %command254 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %177, i32 0, i32 1, !dbg !5515
  %178 = load i8, ptr %command254, align 8, !dbg !5515
  %179 = load ptr, ptr %tp, align 8, !dbg !5515
  %ztime255 = getelementptr inbounds %struct.trackpoint_data, ptr %179, i32 0, i32 10, !dbg !5515
  %180 = load i8, ptr %ztime255, align 1, !dbg !5515
  %call256 = call i32 @trackpoint_write(ptr noundef %ps2dev253, i8 noundef zeroext %178, i8 noundef zeroext %180) #17, !dbg !5515
  br label %if.end263, !dbg !5515

if.else257:                                       ; preds = %if.then249
  %181 = load ptr, ptr %psmouse.addr, align 8, !dbg !5515
  %ps2dev258 = getelementptr inbounds %struct.psmouse, ptr %181, i32 0, i32 2, !dbg !5515
  %182 = load ptr, ptr %_attr238, align 8, !dbg !5515
  %command259 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %182, i32 0, i32 1, !dbg !5515
  %183 = load i8, ptr %command259, align 8, !dbg !5515
  %184 = load ptr, ptr %_attr238, align 8, !dbg !5515
  %mask260 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %184, i32 0, i32 2, !dbg !5515
  %185 = load i8, ptr %mask260, align 1, !dbg !5515
  %186 = load ptr, ptr %tp, align 8, !dbg !5515
  %ztime261 = getelementptr inbounds %struct.trackpoint_data, ptr %186, i32 0, i32 10, !dbg !5515
  %187 = load i8, ptr %ztime261, align 1, !dbg !5515
  %call262 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev258, i8 noundef zeroext %183, i8 noundef zeroext %185, i8 noundef zeroext %187) #17, !dbg !5515
  br label %if.end263

if.end263:                                        ; preds = %if.else257, %if.then252
  br label %if.end264, !dbg !5518

if.end264:                                        ; preds = %if.end263, %land.lhs.true246, %lor.lhs.false240
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr238) #16, !dbg !5511
  br label %do.cond265, !dbg !5512

do.cond265:                                       ; preds = %if.end264
  br label %do.end266, !dbg !5512

do.end266:                                        ; preds = %do.cond265
  br label %do.body267, !dbg !5519

do.body267:                                       ; preds = %do.end266
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr268) #16, !dbg !5520
  call void @llvm.dbg.declare(metadata ptr %_attr268, metadata !5413, metadata !DIExpression()), !dbg !5520
  store ptr @trackpoint_attr_jenks, ptr %_attr268, align 8, !dbg !5520
  %188 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5521, !range !5009, !noundef !923
  %tobool269 = trunc i8 %188 to i1, !dbg !5521
  br i1 %tobool269, label %lor.lhs.false270, label %land.lhs.true276, !dbg !5521

lor.lhs.false270:                                 ; preds = %do.body267
  %189 = load ptr, ptr %tp, align 8, !dbg !5521
  %jenks = getelementptr inbounds %struct.trackpoint_data, ptr %189, i32 0, i32 11, !dbg !5521
  %190 = load i8, ptr %jenks, align 1, !dbg !5521
  %conv271 = zext i8 %190 to i32, !dbg !5521
  %191 = load ptr, ptr %_attr268, align 8, !dbg !5521
  %power_on_default272 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %191, i32 0, i32 4, !dbg !5521
  %192 = load i8, ptr %power_on_default272, align 1, !dbg !5521
  %conv273 = zext i8 %192 to i32, !dbg !5521
  %cmp274 = icmp ne i32 %conv271, %conv273, !dbg !5521
  br i1 %cmp274, label %land.lhs.true276, label %if.end294, !dbg !5521

land.lhs.true276:                                 ; preds = %lor.lhs.false270, %do.body267
  %193 = load ptr, ptr %psmouse.addr, align 8, !dbg !5521
  %call277 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %193, ptr noundef @psmouse_attr_jenks) #17, !dbg !5521
  br i1 %call277, label %if.then279, label %if.end294, !dbg !5520

if.then279:                                       ; preds = %land.lhs.true276
  %194 = load ptr, ptr %_attr268, align 8, !dbg !5523
  %mask280 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %194, i32 0, i32 2, !dbg !5523
  %195 = load i8, ptr %mask280, align 1, !dbg !5523
  %tobool281 = icmp ne i8 %195, 0, !dbg !5523
  br i1 %tobool281, label %if.else287, label %if.then282, !dbg !5526

if.then282:                                       ; preds = %if.then279
  %196 = load ptr, ptr %psmouse.addr, align 8, !dbg !5523
  %ps2dev283 = getelementptr inbounds %struct.psmouse, ptr %196, i32 0, i32 2, !dbg !5523
  %197 = load ptr, ptr %_attr268, align 8, !dbg !5523
  %command284 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %197, i32 0, i32 1, !dbg !5523
  %198 = load i8, ptr %command284, align 8, !dbg !5523
  %199 = load ptr, ptr %tp, align 8, !dbg !5523
  %jenks285 = getelementptr inbounds %struct.trackpoint_data, ptr %199, i32 0, i32 11, !dbg !5523
  %200 = load i8, ptr %jenks285, align 1, !dbg !5523
  %call286 = call i32 @trackpoint_write(ptr noundef %ps2dev283, i8 noundef zeroext %198, i8 noundef zeroext %200) #17, !dbg !5523
  br label %if.end293, !dbg !5523

if.else287:                                       ; preds = %if.then279
  %201 = load ptr, ptr %psmouse.addr, align 8, !dbg !5523
  %ps2dev288 = getelementptr inbounds %struct.psmouse, ptr %201, i32 0, i32 2, !dbg !5523
  %202 = load ptr, ptr %_attr268, align 8, !dbg !5523
  %command289 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %202, i32 0, i32 1, !dbg !5523
  %203 = load i8, ptr %command289, align 8, !dbg !5523
  %204 = load ptr, ptr %_attr268, align 8, !dbg !5523
  %mask290 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %204, i32 0, i32 2, !dbg !5523
  %205 = load i8, ptr %mask290, align 1, !dbg !5523
  %206 = load ptr, ptr %tp, align 8, !dbg !5523
  %jenks291 = getelementptr inbounds %struct.trackpoint_data, ptr %206, i32 0, i32 11, !dbg !5523
  %207 = load i8, ptr %jenks291, align 1, !dbg !5523
  %call292 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev288, i8 noundef zeroext %203, i8 noundef zeroext %205, i8 noundef zeroext %207) #17, !dbg !5523
  br label %if.end293

if.end293:                                        ; preds = %if.else287, %if.then282
  br label %if.end294, !dbg !5526

if.end294:                                        ; preds = %if.end293, %land.lhs.true276, %lor.lhs.false270
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr268) #16, !dbg !5519
  br label %do.cond295, !dbg !5520

do.cond295:                                       ; preds = %if.end294
  br label %do.end296, !dbg !5520

do.end296:                                        ; preds = %do.cond295
  br label %do.body297, !dbg !5527

do.body297:                                       ; preds = %do.end296
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr298) #16, !dbg !5528
  call void @llvm.dbg.declare(metadata ptr %_attr298, metadata !5415, metadata !DIExpression()), !dbg !5528
  store ptr @trackpoint_attr_drift_time, ptr %_attr298, align 8, !dbg !5528
  %208 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5529, !range !5009, !noundef !923
  %tobool299 = trunc i8 %208 to i1, !dbg !5529
  br i1 %tobool299, label %lor.lhs.false300, label %land.lhs.true306, !dbg !5529

lor.lhs.false300:                                 ; preds = %do.body297
  %209 = load ptr, ptr %tp, align 8, !dbg !5529
  %drift_time = getelementptr inbounds %struct.trackpoint_data, ptr %209, i32 0, i32 12, !dbg !5529
  %210 = load i8, ptr %drift_time, align 1, !dbg !5529
  %conv301 = zext i8 %210 to i32, !dbg !5529
  %211 = load ptr, ptr %_attr298, align 8, !dbg !5529
  %power_on_default302 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %211, i32 0, i32 4, !dbg !5529
  %212 = load i8, ptr %power_on_default302, align 1, !dbg !5529
  %conv303 = zext i8 %212 to i32, !dbg !5529
  %cmp304 = icmp ne i32 %conv301, %conv303, !dbg !5529
  br i1 %cmp304, label %land.lhs.true306, label %if.end324, !dbg !5529

land.lhs.true306:                                 ; preds = %lor.lhs.false300, %do.body297
  %213 = load ptr, ptr %psmouse.addr, align 8, !dbg !5529
  %call307 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %213, ptr noundef @psmouse_attr_drift_time) #17, !dbg !5529
  br i1 %call307, label %if.then309, label %if.end324, !dbg !5528

if.then309:                                       ; preds = %land.lhs.true306
  %214 = load ptr, ptr %_attr298, align 8, !dbg !5531
  %mask310 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %214, i32 0, i32 2, !dbg !5531
  %215 = load i8, ptr %mask310, align 1, !dbg !5531
  %tobool311 = icmp ne i8 %215, 0, !dbg !5531
  br i1 %tobool311, label %if.else317, label %if.then312, !dbg !5534

if.then312:                                       ; preds = %if.then309
  %216 = load ptr, ptr %psmouse.addr, align 8, !dbg !5531
  %ps2dev313 = getelementptr inbounds %struct.psmouse, ptr %216, i32 0, i32 2, !dbg !5531
  %217 = load ptr, ptr %_attr298, align 8, !dbg !5531
  %command314 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %217, i32 0, i32 1, !dbg !5531
  %218 = load i8, ptr %command314, align 8, !dbg !5531
  %219 = load ptr, ptr %tp, align 8, !dbg !5531
  %drift_time315 = getelementptr inbounds %struct.trackpoint_data, ptr %219, i32 0, i32 12, !dbg !5531
  %220 = load i8, ptr %drift_time315, align 1, !dbg !5531
  %call316 = call i32 @trackpoint_write(ptr noundef %ps2dev313, i8 noundef zeroext %218, i8 noundef zeroext %220) #17, !dbg !5531
  br label %if.end323, !dbg !5531

if.else317:                                       ; preds = %if.then309
  %221 = load ptr, ptr %psmouse.addr, align 8, !dbg !5531
  %ps2dev318 = getelementptr inbounds %struct.psmouse, ptr %221, i32 0, i32 2, !dbg !5531
  %222 = load ptr, ptr %_attr298, align 8, !dbg !5531
  %command319 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %222, i32 0, i32 1, !dbg !5531
  %223 = load i8, ptr %command319, align 8, !dbg !5531
  %224 = load ptr, ptr %_attr298, align 8, !dbg !5531
  %mask320 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %224, i32 0, i32 2, !dbg !5531
  %225 = load i8, ptr %mask320, align 1, !dbg !5531
  %226 = load ptr, ptr %tp, align 8, !dbg !5531
  %drift_time321 = getelementptr inbounds %struct.trackpoint_data, ptr %226, i32 0, i32 12, !dbg !5531
  %227 = load i8, ptr %drift_time321, align 1, !dbg !5531
  %call322 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev318, i8 noundef zeroext %223, i8 noundef zeroext %225, i8 noundef zeroext %227) #17, !dbg !5531
  br label %if.end323

if.end323:                                        ; preds = %if.else317, %if.then312
  br label %if.end324, !dbg !5534

if.end324:                                        ; preds = %if.end323, %land.lhs.true306, %lor.lhs.false300
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr298) #16, !dbg !5527
  br label %do.cond325, !dbg !5528

do.cond325:                                       ; preds = %if.end324
  br label %do.end326, !dbg !5528

do.end326:                                        ; preds = %do.cond325
  br label %do.body327, !dbg !5535

do.body327:                                       ; preds = %do.end326
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr328) #16, !dbg !5536
  call void @llvm.dbg.declare(metadata ptr %_attr328, metadata !5417, metadata !DIExpression()), !dbg !5536
  store ptr @trackpoint_attr_press_to_select, ptr %_attr328, align 8, !dbg !5536
  %228 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5537, !range !5009, !noundef !923
  %tobool329 = trunc i8 %228 to i1, !dbg !5537
  br i1 %tobool329, label %lor.lhs.false330, label %land.lhs.true337, !dbg !5537

lor.lhs.false330:                                 ; preds = %do.body327
  %229 = load ptr, ptr %tp, align 8, !dbg !5537
  %press_to_select = getelementptr inbounds %struct.trackpoint_data, ptr %229, i32 0, i32 13, !dbg !5537
  %230 = load i8, ptr %press_to_select, align 1, !dbg !5537, !range !5009, !noundef !923
  %tobool331 = trunc i8 %230 to i1, !dbg !5537
  %conv332 = zext i1 %tobool331 to i32, !dbg !5537
  %231 = load ptr, ptr %_attr328, align 8, !dbg !5537
  %power_on_default333 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %231, i32 0, i32 4, !dbg !5537
  %232 = load i8, ptr %power_on_default333, align 1, !dbg !5537
  %conv334 = zext i8 %232 to i32, !dbg !5537
  %cmp335 = icmp ne i32 %conv332, %conv334, !dbg !5537
  br i1 %cmp335, label %land.lhs.true337, label %if.end359, !dbg !5537

land.lhs.true337:                                 ; preds = %lor.lhs.false330, %do.body327
  %233 = load ptr, ptr %psmouse.addr, align 8, !dbg !5537
  %call338 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %233, ptr noundef @psmouse_attr_press_to_select) #17, !dbg !5537
  br i1 %call338, label %if.then340, label %if.end359, !dbg !5536

if.then340:                                       ; preds = %land.lhs.true337
  %234 = load ptr, ptr %_attr328, align 8, !dbg !5539
  %mask341 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %234, i32 0, i32 2, !dbg !5539
  %235 = load i8, ptr %mask341, align 1, !dbg !5539
  %tobool342 = icmp ne i8 %235, 0, !dbg !5539
  br i1 %tobool342, label %if.else350, label %if.then343, !dbg !5542

if.then343:                                       ; preds = %if.then340
  %236 = load ptr, ptr %psmouse.addr, align 8, !dbg !5539
  %ps2dev344 = getelementptr inbounds %struct.psmouse, ptr %236, i32 0, i32 2, !dbg !5539
  %237 = load ptr, ptr %_attr328, align 8, !dbg !5539
  %command345 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %237, i32 0, i32 1, !dbg !5539
  %238 = load i8, ptr %command345, align 8, !dbg !5539
  %239 = load ptr, ptr %tp, align 8, !dbg !5539
  %press_to_select346 = getelementptr inbounds %struct.trackpoint_data, ptr %239, i32 0, i32 13, !dbg !5539
  %240 = load i8, ptr %press_to_select346, align 1, !dbg !5539, !range !5009, !noundef !923
  %tobool347 = trunc i8 %240 to i1, !dbg !5539
  %conv348 = zext i1 %tobool347 to i8, !dbg !5539
  %call349 = call i32 @trackpoint_write(ptr noundef %ps2dev344, i8 noundef zeroext %238, i8 noundef zeroext %conv348) #17, !dbg !5539
  br label %if.end358, !dbg !5539

if.else350:                                       ; preds = %if.then340
  %241 = load ptr, ptr %psmouse.addr, align 8, !dbg !5539
  %ps2dev351 = getelementptr inbounds %struct.psmouse, ptr %241, i32 0, i32 2, !dbg !5539
  %242 = load ptr, ptr %_attr328, align 8, !dbg !5539
  %command352 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %242, i32 0, i32 1, !dbg !5539
  %243 = load i8, ptr %command352, align 8, !dbg !5539
  %244 = load ptr, ptr %_attr328, align 8, !dbg !5539
  %mask353 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %244, i32 0, i32 2, !dbg !5539
  %245 = load i8, ptr %mask353, align 1, !dbg !5539
  %246 = load ptr, ptr %tp, align 8, !dbg !5539
  %press_to_select354 = getelementptr inbounds %struct.trackpoint_data, ptr %246, i32 0, i32 13, !dbg !5539
  %247 = load i8, ptr %press_to_select354, align 1, !dbg !5539, !range !5009, !noundef !923
  %tobool355 = trunc i8 %247 to i1, !dbg !5539
  %conv356 = zext i1 %tobool355 to i8, !dbg !5539
  %call357 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev351, i8 noundef zeroext %243, i8 noundef zeroext %245, i8 noundef zeroext %conv356) #17, !dbg !5539
  br label %if.end358

if.end358:                                        ; preds = %if.else350, %if.then343
  br label %if.end359, !dbg !5542

if.end359:                                        ; preds = %if.end358, %land.lhs.true337, %lor.lhs.false330
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr328) #16, !dbg !5535
  br label %do.cond360, !dbg !5536

do.cond360:                                       ; preds = %if.end359
  br label %do.end361, !dbg !5536

do.end361:                                        ; preds = %do.cond360
  br label %do.body362, !dbg !5543

do.body362:                                       ; preds = %do.end361
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr363) #16, !dbg !5544
  call void @llvm.dbg.declare(metadata ptr %_attr363, metadata !5419, metadata !DIExpression()), !dbg !5544
  store ptr @trackpoint_attr_skipback, ptr %_attr363, align 8, !dbg !5544
  %248 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5545, !range !5009, !noundef !923
  %tobool364 = trunc i8 %248 to i1, !dbg !5545
  br i1 %tobool364, label %lor.lhs.false365, label %land.lhs.true372, !dbg !5545

lor.lhs.false365:                                 ; preds = %do.body362
  %249 = load ptr, ptr %tp, align 8, !dbg !5545
  %skipback = getelementptr inbounds %struct.trackpoint_data, ptr %249, i32 0, i32 14, !dbg !5545
  %250 = load i8, ptr %skipback, align 1, !dbg !5545, !range !5009, !noundef !923
  %tobool366 = trunc i8 %250 to i1, !dbg !5545
  %conv367 = zext i1 %tobool366 to i32, !dbg !5545
  %251 = load ptr, ptr %_attr363, align 8, !dbg !5545
  %power_on_default368 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %251, i32 0, i32 4, !dbg !5545
  %252 = load i8, ptr %power_on_default368, align 1, !dbg !5545
  %conv369 = zext i8 %252 to i32, !dbg !5545
  %cmp370 = icmp ne i32 %conv367, %conv369, !dbg !5545
  br i1 %cmp370, label %land.lhs.true372, label %if.end394, !dbg !5545

land.lhs.true372:                                 ; preds = %lor.lhs.false365, %do.body362
  %253 = load ptr, ptr %psmouse.addr, align 8, !dbg !5545
  %call373 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %253, ptr noundef @psmouse_attr_skipback) #17, !dbg !5545
  br i1 %call373, label %if.then375, label %if.end394, !dbg !5544

if.then375:                                       ; preds = %land.lhs.true372
  %254 = load ptr, ptr %_attr363, align 8, !dbg !5547
  %mask376 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %254, i32 0, i32 2, !dbg !5547
  %255 = load i8, ptr %mask376, align 1, !dbg !5547
  %tobool377 = icmp ne i8 %255, 0, !dbg !5547
  br i1 %tobool377, label %if.else385, label %if.then378, !dbg !5550

if.then378:                                       ; preds = %if.then375
  %256 = load ptr, ptr %psmouse.addr, align 8, !dbg !5547
  %ps2dev379 = getelementptr inbounds %struct.psmouse, ptr %256, i32 0, i32 2, !dbg !5547
  %257 = load ptr, ptr %_attr363, align 8, !dbg !5547
  %command380 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %257, i32 0, i32 1, !dbg !5547
  %258 = load i8, ptr %command380, align 8, !dbg !5547
  %259 = load ptr, ptr %tp, align 8, !dbg !5547
  %skipback381 = getelementptr inbounds %struct.trackpoint_data, ptr %259, i32 0, i32 14, !dbg !5547
  %260 = load i8, ptr %skipback381, align 1, !dbg !5547, !range !5009, !noundef !923
  %tobool382 = trunc i8 %260 to i1, !dbg !5547
  %conv383 = zext i1 %tobool382 to i8, !dbg !5547
  %call384 = call i32 @trackpoint_write(ptr noundef %ps2dev379, i8 noundef zeroext %258, i8 noundef zeroext %conv383) #17, !dbg !5547
  br label %if.end393, !dbg !5547

if.else385:                                       ; preds = %if.then375
  %261 = load ptr, ptr %psmouse.addr, align 8, !dbg !5547
  %ps2dev386 = getelementptr inbounds %struct.psmouse, ptr %261, i32 0, i32 2, !dbg !5547
  %262 = load ptr, ptr %_attr363, align 8, !dbg !5547
  %command387 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %262, i32 0, i32 1, !dbg !5547
  %263 = load i8, ptr %command387, align 8, !dbg !5547
  %264 = load ptr, ptr %_attr363, align 8, !dbg !5547
  %mask388 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %264, i32 0, i32 2, !dbg !5547
  %265 = load i8, ptr %mask388, align 1, !dbg !5547
  %266 = load ptr, ptr %tp, align 8, !dbg !5547
  %skipback389 = getelementptr inbounds %struct.trackpoint_data, ptr %266, i32 0, i32 14, !dbg !5547
  %267 = load i8, ptr %skipback389, align 1, !dbg !5547, !range !5009, !noundef !923
  %tobool390 = trunc i8 %267 to i1, !dbg !5547
  %conv391 = zext i1 %tobool390 to i8, !dbg !5547
  %call392 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev386, i8 noundef zeroext %263, i8 noundef zeroext %265, i8 noundef zeroext %conv391) #17, !dbg !5547
  br label %if.end393

if.end393:                                        ; preds = %if.else385, %if.then378
  br label %if.end394, !dbg !5550

if.end394:                                        ; preds = %if.end393, %land.lhs.true372, %lor.lhs.false365
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr363) #16, !dbg !5543
  br label %do.cond395, !dbg !5544

do.cond395:                                       ; preds = %if.end394
  br label %do.end396, !dbg !5544

do.end396:                                        ; preds = %do.cond395
  br label %do.body397, !dbg !5551

do.body397:                                       ; preds = %do.end396
  call void @llvm.lifetime.start.p0(i64 8, ptr %_attr398) #16, !dbg !5552
  call void @llvm.dbg.declare(metadata ptr %_attr398, metadata !5421, metadata !DIExpression()), !dbg !5552
  store ptr @trackpoint_attr_ext_dev, ptr %_attr398, align 8, !dbg !5552
  %268 = load i8, ptr %in_power_on_state.addr, align 1, !dbg !5553, !range !5009, !noundef !923
  %tobool399 = trunc i8 %268 to i1, !dbg !5553
  br i1 %tobool399, label %lor.lhs.false400, label %land.lhs.true407, !dbg !5553

lor.lhs.false400:                                 ; preds = %do.body397
  %269 = load ptr, ptr %tp, align 8, !dbg !5553
  %ext_dev = getelementptr inbounds %struct.trackpoint_data, ptr %269, i32 0, i32 15, !dbg !5553
  %270 = load i8, ptr %ext_dev, align 1, !dbg !5553, !range !5009, !noundef !923
  %tobool401 = trunc i8 %270 to i1, !dbg !5553
  %conv402 = zext i1 %tobool401 to i32, !dbg !5553
  %271 = load ptr, ptr %_attr398, align 8, !dbg !5553
  %power_on_default403 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %271, i32 0, i32 4, !dbg !5553
  %272 = load i8, ptr %power_on_default403, align 1, !dbg !5553
  %conv404 = zext i8 %272 to i32, !dbg !5553
  %cmp405 = icmp ne i32 %conv402, %conv404, !dbg !5553
  br i1 %cmp405, label %land.lhs.true407, label %if.end429, !dbg !5553

land.lhs.true407:                                 ; preds = %lor.lhs.false400, %do.body397
  %273 = load ptr, ptr %psmouse.addr, align 8, !dbg !5553
  %call408 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %273, ptr noundef @psmouse_attr_ext_dev) #17, !dbg !5553
  br i1 %call408, label %if.then410, label %if.end429, !dbg !5552

if.then410:                                       ; preds = %land.lhs.true407
  %274 = load ptr, ptr %_attr398, align 8, !dbg !5555
  %mask411 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %274, i32 0, i32 2, !dbg !5555
  %275 = load i8, ptr %mask411, align 1, !dbg !5555
  %tobool412 = icmp ne i8 %275, 0, !dbg !5555
  br i1 %tobool412, label %if.else420, label %if.then413, !dbg !5558

if.then413:                                       ; preds = %if.then410
  %276 = load ptr, ptr %psmouse.addr, align 8, !dbg !5555
  %ps2dev414 = getelementptr inbounds %struct.psmouse, ptr %276, i32 0, i32 2, !dbg !5555
  %277 = load ptr, ptr %_attr398, align 8, !dbg !5555
  %command415 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %277, i32 0, i32 1, !dbg !5555
  %278 = load i8, ptr %command415, align 8, !dbg !5555
  %279 = load ptr, ptr %tp, align 8, !dbg !5555
  %ext_dev416 = getelementptr inbounds %struct.trackpoint_data, ptr %279, i32 0, i32 15, !dbg !5555
  %280 = load i8, ptr %ext_dev416, align 1, !dbg !5555, !range !5009, !noundef !923
  %tobool417 = trunc i8 %280 to i1, !dbg !5555
  %conv418 = zext i1 %tobool417 to i8, !dbg !5555
  %call419 = call i32 @trackpoint_write(ptr noundef %ps2dev414, i8 noundef zeroext %278, i8 noundef zeroext %conv418) #17, !dbg !5555
  br label %if.end428, !dbg !5555

if.else420:                                       ; preds = %if.then410
  %281 = load ptr, ptr %psmouse.addr, align 8, !dbg !5555
  %ps2dev421 = getelementptr inbounds %struct.psmouse, ptr %281, i32 0, i32 2, !dbg !5555
  %282 = load ptr, ptr %_attr398, align 8, !dbg !5555
  %command422 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %282, i32 0, i32 1, !dbg !5555
  %283 = load i8, ptr %command422, align 8, !dbg !5555
  %284 = load ptr, ptr %_attr398, align 8, !dbg !5555
  %mask423 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %284, i32 0, i32 2, !dbg !5555
  %285 = load i8, ptr %mask423, align 1, !dbg !5555
  %286 = load ptr, ptr %tp, align 8, !dbg !5555
  %ext_dev424 = getelementptr inbounds %struct.trackpoint_data, ptr %286, i32 0, i32 15, !dbg !5555
  %287 = load i8, ptr %ext_dev424, align 1, !dbg !5555, !range !5009, !noundef !923
  %tobool425 = trunc i8 %287 to i1, !dbg !5555
  %conv426 = zext i1 %tobool425 to i8, !dbg !5555
  %call427 = call i32 @trackpoint_update_bit(ptr noundef %ps2dev421, i8 noundef zeroext %283, i8 noundef zeroext %285, i8 noundef zeroext %conv426) #17, !dbg !5555
  br label %if.end428

if.end428:                                        ; preds = %if.else420, %if.then413
  br label %if.end429, !dbg !5558

if.end429:                                        ; preds = %if.end428, %land.lhs.true407, %lor.lhs.false400
  call void @llvm.lifetime.end.p0(i64 8, ptr %_attr398) #16, !dbg !5551
  br label %do.cond430, !dbg !5552

do.cond430:                                       ; preds = %if.end429
  br label %do.end431, !dbg !5552

do.end431:                                        ; preds = %do.cond430
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #16, !dbg !5559
  ret i32 0, !dbg !5560
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @device_add_group(ptr noundef %dev, ptr noundef %grp) #8 align 16 !dbg !5561 {
entry:
  %dev.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %groups = alloca [2 x ptr], align 16
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5565, metadata !DIExpression()), !dbg !5569
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !5566, metadata !DIExpression()), !dbg !5570
  call void @llvm.lifetime.start.p0(i64 16, ptr %groups) #16, !dbg !5571
  call void @llvm.dbg.declare(metadata ptr %groups, metadata !5567, metadata !DIExpression()), !dbg !5572
  %arrayinit.begin = getelementptr inbounds [2 x ptr], ptr %groups, i64 0, i64 0, !dbg !5573
  %0 = load ptr, ptr %grp.addr, align 8, !dbg !5574
  store ptr %0, ptr %arrayinit.begin, align 8, !dbg !5573
  %arrayinit.element = getelementptr inbounds ptr, ptr %arrayinit.begin, i64 1, !dbg !5573
  store ptr null, ptr %arrayinit.element, align 8, !dbg !5573
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5575
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %groups, i64 0, i64 0, !dbg !5576
  %call = call i32 @device_add_groups(ptr noundef %1, ptr noundef %arraydecay) #17, !dbg !5577
  call void @llvm.lifetime.end.p0(i64 16, ptr %groups) #16, !dbg !5578
  ret i32 %call, !dbg !5579
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5580 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5581 dso_local void @kfree(ptr noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5584 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5585 dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5588 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5590, metadata !DIExpression()), !dbg !5595
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5591, metadata !DIExpression()), !dbg !5596
  %0 = load i64, ptr %size.addr, align 8, !dbg !5597
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5598
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5599

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5600
  %tobool = icmp ne i64 %2, 0, !dbg !5600
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5601

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5602
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5592, metadata !DIExpression()), !dbg !5603
  %3 = load i64, ptr %size.addr, align 8, !dbg !5604
  %cmp = icmp ugt i64 %3, 8192, !dbg !5606
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5607

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5608
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5609
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5610
  store ptr %call, ptr %retval, align 8, !dbg !5611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5611

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5612
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5612
  store i32 %call2, ptr %index, align 4, !dbg !5613
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5614
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5615
  %9 = ptrtoint ptr %8 to i64, !dbg !5615
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5616
  %idxprom = zext i32 %call3 to i64, !dbg !5617
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5617
  %10 = load i32, ptr %index, align 4, !dbg !5618
  %idxprom4 = zext i32 %10 to i64, !dbg !5617
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5617
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5617
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5619
  %13 = load i64, ptr %size.addr, align 8, !dbg !5620
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5621
  store ptr %call6, ptr %retval, align 8, !dbg !5622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5622

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5623
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5624
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5625
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5626
  store ptr %call8, ptr %retval, align 8, !dbg !5627
  br label %return, !dbg !5627

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5628
  ret ptr %16, !dbg !5628
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5629 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !5630 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5634, metadata !DIExpression()), !dbg !5636
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5635, metadata !DIExpression()), !dbg !5637
  %0 = load i64, ptr %size.addr, align 8, !dbg !5638
  %tobool = icmp ne i64 %0, 0, !dbg !5638
  br i1 %tobool, label %if.end, label %if.then, !dbg !5640

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5641
  br label %return, !dbg !5641

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5642
  %cmp = icmp ule i64 %1, 8, !dbg !5644
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5645

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5646
  br label %return, !dbg !5646

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5647
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5649
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5650

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5651
  %cmp4 = icmp ule i64 %3, 96, !dbg !5652
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5653

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5654
  br label %return, !dbg !5654

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5655
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5657
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5658

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5659
  %cmp9 = icmp ule i64 %5, 192, !dbg !5660
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5661

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5662
  br label %return, !dbg !5662

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5663
  %cmp12 = icmp ule i64 %6, 8, !dbg !5665
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5666

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5667
  br label %return, !dbg !5667

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5668
  %cmp15 = icmp ule i64 %7, 16, !dbg !5670
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5671

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5672
  br label %return, !dbg !5672

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5673
  %cmp18 = icmp ule i64 %8, 32, !dbg !5675
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5676

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5677
  br label %return, !dbg !5677

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5678
  %cmp21 = icmp ule i64 %9, 64, !dbg !5680
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5681

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5682
  br label %return, !dbg !5682

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5683
  %cmp24 = icmp ule i64 %10, 128, !dbg !5685
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5686

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5687
  br label %return, !dbg !5687

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5688
  %cmp27 = icmp ule i64 %11, 256, !dbg !5690
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5691

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5692
  br label %return, !dbg !5692

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5693
  %cmp30 = icmp ule i64 %12, 512, !dbg !5695
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5696

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5697
  br label %return, !dbg !5697

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5698
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5700
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5701

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5702
  br label %return, !dbg !5702

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5703
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5705
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5706

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5707
  br label %return, !dbg !5707

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5708
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5710
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5711

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5712
  br label %return, !dbg !5712

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5713
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5715
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5716

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5717
  br label %return, !dbg !5717

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5718
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5720
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5721

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5722
  br label %return, !dbg !5722

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5723
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5725
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5726

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5727
  br label %return, !dbg !5727

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5728
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5730
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5731

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5732
  br label %return, !dbg !5732

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5733
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5735
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5736

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5737
  br label %return, !dbg !5737

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5738
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5740
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5741

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5742
  br label %return, !dbg !5742

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5743
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5745
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5746

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5747
  br label %return, !dbg !5747

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5748
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5750
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5751

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5752
  br label %return, !dbg !5752

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5753
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5755
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5756

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5757
  br label %return, !dbg !5757

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5758, !range !5009, !noundef !923
  %tobool69 = trunc i8 %25 to i1, !dbg !5758
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5760

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5761

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !5762, !srcloc !5765
  unreachable, !dbg !5762

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5766

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5767

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5768

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5770

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5768

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #16, !dbg !5772, !srcloc !5774
  br label %do.end75, !dbg !5772

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5768

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5775
  br label %return, !dbg !5775

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5776
  ret i32 %26, !dbg !5776
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5777 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !5782 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5786, metadata !DIExpression()), !dbg !5788
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5787, metadata !DIExpression()), !dbg !5789
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5790
  %and = and i32 %0, 17, !dbg !5790
  %cmp = icmp eq i32 %and, 0, !dbg !5790
  %lnot = xor i1 %cmp, true, !dbg !5790
  %lnot1 = xor i1 %lnot, true, !dbg !5790
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5790
  %conv = sext i32 %lnot.ext to i64, !dbg !5790
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5790
  %tobool = icmp ne i64 %expval, 0, !dbg !5790
  br i1 %tobool, label %if.then, label %if.end, !dbg !5792

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5793
  br label %return, !dbg !5793

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5794
  %and2 = and i32 %1, 1, !dbg !5796
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5796
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5797

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5798
  br label %return, !dbg !5798

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5799
  br label %return, !dbg !5799

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5801
  ret i32 %2, !dbg !5801
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5802 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5803 dso_local void @__compiletime_assert_117() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_remove_group(ptr noundef %dev, ptr noundef %grp) #8 align 16 !dbg !5804 {
entry:
  %dev.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %groups = alloca [2 x ptr], align 16
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5808, metadata !DIExpression()), !dbg !5811
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !5809, metadata !DIExpression()), !dbg !5812
  call void @llvm.lifetime.start.p0(i64 16, ptr %groups) #16, !dbg !5813
  call void @llvm.dbg.declare(metadata ptr %groups, metadata !5810, metadata !DIExpression()), !dbg !5814
  %arrayinit.begin = getelementptr inbounds [2 x ptr], ptr %groups, i64 0, i64 0, !dbg !5815
  %0 = load ptr, ptr %grp.addr, align 8, !dbg !5816
  store ptr %0, ptr %arrayinit.begin, align 8, !dbg !5815
  %arrayinit.element = getelementptr inbounds ptr, ptr %arrayinit.begin, i64 1, !dbg !5815
  store ptr null, ptr %arrayinit.element, align 8, !dbg !5815
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5817
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %groups, i64 0, i64 0, !dbg !5818
  call void @device_remove_groups(ptr noundef %1, ptr noundef %arraydecay) #17, !dbg !5819
  call void @llvm.lifetime.end.p0(i64 16, ptr %groups) #16, !dbg !5820
  ret void, !dbg !5820
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5821 dso_local void @device_remove_groups(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5824 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5832, metadata !DIExpression()), !dbg !5834
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5833, metadata !DIExpression()), !dbg !5835
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5836
  %1 = load i64, ptr %size.addr, align 8, !dbg !5837
  %conv = trunc i64 %1 to i32, !dbg !5837
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !5838
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5839
  %3 = load i64, ptr %size.addr, align 8, !dbg !5839
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #17, !dbg !5839
  ret void, !dbg !5840
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5841 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5844, metadata !DIExpression()), !dbg !5846
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5845, metadata !DIExpression()), !dbg !5847
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5848
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5849
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !5850, !srcloc !5851
  ret void, !dbg !5852
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !5853 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5858, metadata !DIExpression()), !dbg !5860
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5859, metadata !DIExpression()), !dbg !5861
  ret i1 true, !dbg !5862
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #8 align 16 !dbg !5863 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5868, metadata !DIExpression()), !dbg !5871
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5869, metadata !DIExpression()), !dbg !5872
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5870, metadata !DIExpression()), !dbg !5873
  ret void, !dbg !5874
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trackpoint_update_bit(ptr noundef %ps2dev, i8 noundef zeroext %loc, i8 noundef zeroext %mask, i8 noundef zeroext %value) #0 align 16 !dbg !5875 {
entry:
  %retval = alloca i32, align 4
  %ps2dev.addr = alloca ptr, align 8
  %loc.addr = alloca i8, align 1
  %mask.addr = alloca i8, align 1
  %value.addr = alloca i8, align 1
  %retval1 = alloca i32, align 4
  %data = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !5879, metadata !DIExpression()), !dbg !5885
  store i8 %loc, ptr %loc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %loc.addr, metadata !5880, metadata !DIExpression()), !dbg !5886
  store i8 %mask, ptr %mask.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5881, metadata !DIExpression()), !dbg !5887
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5882, metadata !DIExpression()), !dbg !5888
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !5889
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5883, metadata !DIExpression()), !dbg !5890
  call void @llvm.lifetime.start.p0(i64 1, ptr %data) #16, !dbg !5891
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5884, metadata !DIExpression()), !dbg !5892
  %0 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5893
  %1 = load i8, ptr %loc.addr, align 1, !dbg !5894
  %call = call i32 @trackpoint_read(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %data) #17, !dbg !5895
  store i32 %call, ptr %retval1, align 4, !dbg !5896
  %2 = load i32, ptr %retval1, align 4, !dbg !5897
  %tobool = icmp ne i32 %2, 0, !dbg !5897
  br i1 %tobool, label %if.then, label %if.end, !dbg !5899

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %retval1, align 4, !dbg !5900
  store i32 %3, ptr %retval, align 4, !dbg !5901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5901

if.end:                                           ; preds = %entry
  %4 = load i8, ptr %data, align 1, !dbg !5902
  %conv = zext i8 %4 to i32, !dbg !5902
  %5 = load i8, ptr %mask.addr, align 1, !dbg !5904
  %conv2 = zext i8 %5 to i32, !dbg !5904
  %and = and i32 %conv, %conv2, !dbg !5905
  %6 = load i8, ptr %mask.addr, align 1, !dbg !5906
  %conv3 = zext i8 %6 to i32, !dbg !5906
  %cmp = icmp eq i32 %and, %conv3, !dbg !5907
  %conv4 = zext i1 %cmp to i32, !dbg !5907
  %7 = load i8, ptr %value.addr, align 1, !dbg !5908
  %tobool5 = icmp ne i8 %7, 0, !dbg !5909
  %lnot = xor i1 %tobool5, true, !dbg !5909
  %lnot6 = xor i1 %lnot, true, !dbg !5910
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5910
  %cmp7 = icmp ne i32 %conv4, %lnot.ext, !dbg !5911
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !5912

if.then9:                                         ; preds = %if.end
  %8 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5913
  %9 = load i8, ptr %loc.addr, align 1, !dbg !5914
  %10 = load i8, ptr %mask.addr, align 1, !dbg !5915
  %call10 = call i32 @trackpoint_toggle_bit(ptr noundef %8, i8 noundef zeroext %9, i8 noundef zeroext %10) #17, !dbg !5916
  store i32 %call10, ptr %retval1, align 4, !dbg !5917
  br label %if.end11, !dbg !5918

if.end11:                                         ; preds = %if.then9, %if.end
  %11 = load i32, ptr %retval1, align 4, !dbg !5919
  store i32 %11, ptr %retval, align 4, !dbg !5920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5920

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %data) #16, !dbg !5921
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !5921
  %12 = load i32, ptr %retval, align 4, !dbg !5921
  ret i32 %12, !dbg !5921
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trackpoint_is_attr_available(ptr noundef %psmouse, ptr noundef %attr) #0 align 16 !dbg !5922 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %tp = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5926, metadata !DIExpression()), !dbg !5929
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5927, metadata !DIExpression()), !dbg !5930
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #16, !dbg !5931
  call void @llvm.dbg.declare(metadata ptr %tp, metadata !5928, metadata !DIExpression()), !dbg !5932
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5933
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5934
  %1 = load ptr, ptr %private, align 8, !dbg !5934
  store ptr %1, ptr %tp, align 8, !dbg !5932
  %2 = load ptr, ptr %tp, align 8, !dbg !5935
  %variant_id = getelementptr inbounds %struct.trackpoint_data, ptr %2, i32 0, i32 0, !dbg !5936
  %3 = load i8, ptr %variant_id, align 1, !dbg !5936
  %conv = zext i8 %3 to i32, !dbg !5935
  %cmp = icmp eq i32 %conv, 1, !dbg !5937
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !5938

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %attr.addr, align 8, !dbg !5939
  %cmp2 = icmp eq ptr %4, @psmouse_attr_sensitivity, !dbg !5940
  br i1 %cmp2, label %lor.end, label %lor.rhs, !dbg !5941

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %attr.addr, align 8, !dbg !5942
  %cmp4 = icmp eq ptr %5, @psmouse_attr_press_to_select, !dbg !5943
  br label %lor.end, !dbg !5941

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp4, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #16, !dbg !5944
  ret i1 %6, !dbg !5945
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trackpoint_write(ptr noundef %ps2dev, i8 noundef zeroext %loc, i8 noundef zeroext %val) #0 align 16 !dbg !5946 {
entry:
  %ps2dev.addr = alloca ptr, align 8
  %loc.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  %param = alloca [3 x i8], align 1
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !5950, metadata !DIExpression()), !dbg !5954
  store i8 %loc, ptr %loc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %loc.addr, metadata !5951, metadata !DIExpression()), !dbg !5955
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5952, metadata !DIExpression()), !dbg !5956
  call void @llvm.lifetime.start.p0(i64 3, ptr %param) #16, !dbg !5957
  call void @llvm.dbg.declare(metadata ptr %param, metadata !5953, metadata !DIExpression()), !dbg !5958
  %arrayinit.begin = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5959
  store i8 -127, ptr %arrayinit.begin, align 1, !dbg !5959
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !5959
  %0 = load i8, ptr %loc.addr, align 1, !dbg !5960
  store i8 %0, ptr %arrayinit.element, align 1, !dbg !5959
  %arrayinit.element1 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !5959
  %1 = load i8, ptr %val.addr, align 1, !dbg !5961
  store i8 %1, ptr %arrayinit.element1, align 1, !dbg !5959
  %2 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5962
  %arraydecay = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5963
  %call = call i32 @ps2_command(ptr noundef %2, ptr noundef %arraydecay, i32 noundef 12514) #17, !dbg !5964
  call void @llvm.lifetime.end.p0(i64 3, ptr %param) #16, !dbg !5965
  ret i32 %call, !dbg !5966
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trackpoint_toggle_bit(ptr noundef %ps2dev, i8 noundef zeroext %loc, i8 noundef zeroext %mask) #0 align 16 !dbg !5967 {
entry:
  %retval = alloca i32, align 4
  %ps2dev.addr = alloca ptr, align 8
  %loc.addr = alloca i8, align 1
  %mask.addr = alloca i8, align 1
  %param = alloca [3 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ps2dev, ptr %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps2dev.addr, metadata !5969, metadata !DIExpression()), !dbg !5973
  store i8 %loc, ptr %loc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %loc.addr, metadata !5970, metadata !DIExpression()), !dbg !5974
  store i8 %mask, ptr %mask.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5971, metadata !DIExpression()), !dbg !5975
  call void @llvm.lifetime.start.p0(i64 3, ptr %param) #16, !dbg !5976
  call void @llvm.dbg.declare(metadata ptr %param, metadata !5972, metadata !DIExpression()), !dbg !5977
  %arrayinit.begin = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5978
  store i8 71, ptr %arrayinit.begin, align 1, !dbg !5978
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !5978
  %0 = load i8, ptr %loc.addr, align 1, !dbg !5979
  store i8 %0, ptr %arrayinit.element, align 1, !dbg !5978
  %arrayinit.element1 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !5978
  %1 = load i8, ptr %mask.addr, align 1, !dbg !5980
  store i8 %1, ptr %arrayinit.element1, align 1, !dbg !5978
  %2 = load i8, ptr %loc.addr, align 1, !dbg !5981
  %conv = zext i8 %2 to i32, !dbg !5981
  %cmp = icmp slt i32 %conv, 32, !dbg !5983
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5984

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, ptr %loc.addr, align 1, !dbg !5985
  %conv3 = zext i8 %3 to i32, !dbg !5985
  %cmp4 = icmp sge i32 %conv3, 47, !dbg !5986
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5987

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !5988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5988

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ps2dev.addr, align 8, !dbg !5989
  %arraydecay = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5990
  %call = call i32 @ps2_command(ptr noundef %4, ptr noundef %arraydecay, i32 noundef 12514) #17, !dbg !5991
  store i32 %call, ptr %retval, align 4, !dbg !5992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5992

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 3, ptr %param) #16, !dbg !5993
  %5 = load i32, ptr %retval, align 4, !dbg !5993
  ret i32 %5, !dbg !5993
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @psmouse_attr_show_helper(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @psmouse_attr_set_helper(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @trackpoint_show_int_attr(ptr noundef %psmouse, ptr noundef %data, ptr noundef %buf) #0 align 16 !dbg !5994 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %value = alloca i8, align 1
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5996, metadata !DIExpression()), !dbg !6002
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5997, metadata !DIExpression()), !dbg !6003
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5998, metadata !DIExpression()), !dbg !6004
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #16, !dbg !6005
  call void @llvm.dbg.declare(metadata ptr %tp, metadata !5999, metadata !DIExpression()), !dbg !6006
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !6007
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !6008
  %1 = load ptr, ptr %private, align 8, !dbg !6008
  store ptr %1, ptr %tp, align 8, !dbg !6006
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #16, !dbg !6009
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !6000, metadata !DIExpression()), !dbg !6010
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6011
  store ptr %2, ptr %attr, align 8, !dbg !6010
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #16, !dbg !6012
  call void @llvm.dbg.declare(metadata ptr %value, metadata !6001, metadata !DIExpression()), !dbg !6013
  %3 = load ptr, ptr %tp, align 8, !dbg !6014
  %4 = load ptr, ptr %attr, align 8, !dbg !6015
  %field_offset = getelementptr inbounds %struct.trackpoint_attr_data, ptr %4, i32 0, i32 0, !dbg !6016
  %5 = load i64, ptr %field_offset, align 8, !dbg !6016
  %add.ptr = getelementptr i8, ptr %3, i64 %5, !dbg !6017
  %6 = load i8, ptr %add.ptr, align 1, !dbg !6018
  store i8 %6, ptr %value, align 1, !dbg !6013
  %7 = load ptr, ptr %attr, align 8, !dbg !6019
  %inverted = getelementptr inbounds %struct.trackpoint_attr_data, ptr %7, i32 0, i32 3, !dbg !6021
  %8 = load i8, ptr %inverted, align 2, !dbg !6021, !range !5009, !noundef !923
  %tobool = trunc i8 %8 to i1, !dbg !6021
  br i1 %tobool, label %if.then, label %if.end, !dbg !6022

if.then:                                          ; preds = %entry
  %9 = load i8, ptr %value, align 1, !dbg !6023
  %tobool1 = icmp ne i8 %9, 0, !dbg !6024
  %lnot = xor i1 %tobool1, true, !dbg !6024
  %lnot.ext = zext i1 %lnot to i32, !dbg !6024
  %conv = trunc i32 %lnot.ext to i8, !dbg !6024
  store i8 %conv, ptr %value, align 1, !dbg !6025
  br label %if.end, !dbg !6026

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !6027
  %11 = load i8, ptr %value, align 1, !dbg !6028
  %conv2 = zext i8 %11 to i32, !dbg !6028
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %10, ptr noundef @.str.13, i32 noundef %conv2) #17, !dbg !6029
  %conv3 = sext i32 %call to i64, !dbg !6029
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #16, !dbg !6030
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #16, !dbg !6030
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #16, !dbg !6030
  ret i64 %conv3, !dbg !6031
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @trackpoint_set_int_attr(ptr noundef %psmouse, ptr noundef %data, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !6032 {
entry:
  %retval = alloca i64, align 8
  %psmouse.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tp = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %field = alloca ptr, align 8
  %value = alloca i8, align 1
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !6034, metadata !DIExpression()), !dbg !6043
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6035, metadata !DIExpression()), !dbg !6044
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6036, metadata !DIExpression()), !dbg !6045
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6037, metadata !DIExpression()), !dbg !6046
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #16, !dbg !6047
  call void @llvm.dbg.declare(metadata ptr %tp, metadata !6038, metadata !DIExpression()), !dbg !6048
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !6049
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !6050
  %1 = load ptr, ptr %private, align 8, !dbg !6050
  store ptr %1, ptr %tp, align 8, !dbg !6048
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #16, !dbg !6051
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !6039, metadata !DIExpression()), !dbg !6052
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6053
  store ptr %2, ptr %attr, align 8, !dbg !6052
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #16, !dbg !6054
  call void @llvm.dbg.declare(metadata ptr %field, metadata !6040, metadata !DIExpression()), !dbg !6055
  %3 = load ptr, ptr %tp, align 8, !dbg !6056
  %4 = load ptr, ptr %attr, align 8, !dbg !6057
  %field_offset = getelementptr inbounds %struct.trackpoint_attr_data, ptr %4, i32 0, i32 0, !dbg !6058
  %5 = load i64, ptr %field_offset, align 8, !dbg !6058
  %add.ptr = getelementptr i8, ptr %3, i64 %5, !dbg !6059
  store ptr %add.ptr, ptr %field, align 8, !dbg !6055
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #16, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %value, metadata !6041, metadata !DIExpression()), !dbg !6061
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !6062
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6042, metadata !DIExpression()), !dbg !6063
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !6064
  %call = call i32 @kstrtou8(ptr noundef %6, i32 noundef 10, ptr noundef %value) #17, !dbg !6065
  store i32 %call, ptr %err, align 4, !dbg !6066
  %7 = load i32, ptr %err, align 4, !dbg !6067
  %tobool = icmp ne i32 %7, 0, !dbg !6067
  br i1 %tobool, label %if.then, label %if.end, !dbg !6069

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %err, align 4, !dbg !6070
  %conv = sext i32 %8 to i64, !dbg !6070
  store i64 %conv, ptr %retval, align 8, !dbg !6071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6071

if.end:                                           ; preds = %entry
  %9 = load i8, ptr %value, align 1, !dbg !6072
  %10 = load ptr, ptr %field, align 8, !dbg !6073
  store i8 %9, ptr %10, align 1, !dbg !6074
  %11 = load ptr, ptr %psmouse.addr, align 8, !dbg !6075
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %11, i32 0, i32 2, !dbg !6076
  %12 = load ptr, ptr %attr, align 8, !dbg !6077
  %command = getelementptr inbounds %struct.trackpoint_attr_data, ptr %12, i32 0, i32 1, !dbg !6078
  %13 = load i8, ptr %command, align 8, !dbg !6078
  %14 = load i8, ptr %value, align 1, !dbg !6079
  %call1 = call i32 @trackpoint_write(ptr noundef %ps2dev, i8 noundef zeroext %13, i8 noundef zeroext %14) #17, !dbg !6080
  store i32 %call1, ptr %err, align 4, !dbg !6081
  %15 = load i32, ptr %err, align 4, !dbg !6082
  %tobool2 = icmp ne i32 %15, 0, !dbg !6082
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !6082

cond.true:                                        ; preds = %if.end
  %conv3 = sext i32 %15 to i64, !dbg !6082
  br label %cond.end, !dbg !6082

cond.false:                                       ; preds = %if.end
  %16 = load i64, ptr %count.addr, align 8, !dbg !6083
  br label %cond.end, !dbg !6082

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv3, %cond.true ], [ %16, %cond.false ], !dbg !6082
  store i64 %cond, ptr %retval, align 8, !dbg !6084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6084

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #16, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #16, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #16, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #16, !dbg !6085
  %17 = load i64, ptr %retval, align 8, !dbg !6085
  ret i64 %17, !dbg !6085
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6086 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6090 dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @trackpoint_set_bit_attr(ptr noundef %psmouse, ptr noundef %data, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !6094 {
entry:
  %retval = alloca i64, align 8
  %psmouse.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tp = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %field = alloca ptr, align 8
  %value = alloca i8, align 1
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !6096, metadata !DIExpression()), !dbg !6105
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6097, metadata !DIExpression()), !dbg !6106
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6098, metadata !DIExpression()), !dbg !6107
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6099, metadata !DIExpression()), !dbg !6108
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #16, !dbg !6109
  call void @llvm.dbg.declare(metadata ptr %tp, metadata !6100, metadata !DIExpression()), !dbg !6110
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !6111
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !6112
  %1 = load ptr, ptr %private, align 8, !dbg !6112
  store ptr %1, ptr %tp, align 8, !dbg !6110
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #16, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !6101, metadata !DIExpression()), !dbg !6114
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6115
  store ptr %2, ptr %attr, align 8, !dbg !6114
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #16, !dbg !6116
  call void @llvm.dbg.declare(metadata ptr %field, metadata !6102, metadata !DIExpression()), !dbg !6117
  %3 = load ptr, ptr %tp, align 8, !dbg !6118
  %4 = load ptr, ptr %attr, align 8, !dbg !6119
  %field_offset = getelementptr inbounds %struct.trackpoint_attr_data, ptr %4, i32 0, i32 0, !dbg !6120
  %5 = load i64, ptr %field_offset, align 8, !dbg !6120
  %add.ptr = getelementptr i8, ptr %3, i64 %5, !dbg !6121
  store ptr %add.ptr, ptr %field, align 8, !dbg !6117
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #16, !dbg !6122
  call void @llvm.dbg.declare(metadata ptr %value, metadata !6103, metadata !DIExpression()), !dbg !6123
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !6124
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6104, metadata !DIExpression()), !dbg !6125
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !6126
  %call = call i32 @kstrtobool(ptr noundef %6, ptr noundef %value) #17, !dbg !6127
  store i32 %call, ptr %err, align 4, !dbg !6128
  %7 = load i32, ptr %err, align 4, !dbg !6129
  %tobool = icmp ne i32 %7, 0, !dbg !6129
  br i1 %tobool, label %if.then, label %if.end, !dbg !6131

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %err, align 4, !dbg !6132
  %conv = sext i32 %8 to i64, !dbg !6132
  store i64 %conv, ptr %retval, align 8, !dbg !6133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6133

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %attr, align 8, !dbg !6134
  %inverted = getelementptr inbounds %struct.trackpoint_attr_data, ptr %9, i32 0, i32 3, !dbg !6136
  %10 = load i8, ptr %inverted, align 2, !dbg !6136, !range !5009, !noundef !923
  %tobool1 = trunc i8 %10 to i1, !dbg !6136
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !6137

if.then2:                                         ; preds = %if.end
  %11 = load i8, ptr %value, align 1, !dbg !6138, !range !5009, !noundef !923
  %tobool3 = trunc i8 %11 to i1, !dbg !6138
  %lnot = xor i1 %tobool3, true, !dbg !6139
  %frombool = zext i1 %lnot to i8, !dbg !6140
  store i8 %frombool, ptr %value, align 1, !dbg !6140
  br label %if.end4, !dbg !6141

if.end4:                                          ; preds = %if.then2, %if.end
  %12 = load ptr, ptr %field, align 8, !dbg !6142
  %13 = load i8, ptr %12, align 1, !dbg !6144, !range !5009, !noundef !923
  %tobool5 = trunc i8 %13 to i1, !dbg !6144
  %conv6 = zext i1 %tobool5 to i32, !dbg !6144
  %14 = load i8, ptr %value, align 1, !dbg !6145, !range !5009, !noundef !923
  %tobool7 = trunc i8 %14 to i1, !dbg !6145
  %conv8 = zext i1 %tobool7 to i32, !dbg !6145
  %cmp = icmp ne i32 %conv6, %conv8, !dbg !6146
  br i1 %cmp, label %if.then10, label %if.end14, !dbg !6147

if.then10:                                        ; preds = %if.end4
  %15 = load i8, ptr %value, align 1, !dbg !6148, !range !5009, !noundef !923
  %tobool11 = trunc i8 %15 to i1, !dbg !6148
  %16 = load ptr, ptr %field, align 8, !dbg !6150
  %frombool12 = zext i1 %tobool11 to i8, !dbg !6151
  store i8 %frombool12, ptr %16, align 1, !dbg !6151
  %17 = load ptr, ptr %psmouse.addr, align 8, !dbg !6152
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %17, i32 0, i32 2, !dbg !6153
  %18 = load ptr, ptr %attr, align 8, !dbg !6154
  %command = getelementptr inbounds %struct.trackpoint_attr_data, ptr %18, i32 0, i32 1, !dbg !6155
  %19 = load i8, ptr %command, align 8, !dbg !6155
  %20 = load ptr, ptr %attr, align 8, !dbg !6156
  %mask = getelementptr inbounds %struct.trackpoint_attr_data, ptr %20, i32 0, i32 2, !dbg !6157
  %21 = load i8, ptr %mask, align 1, !dbg !6157
  %call13 = call i32 @trackpoint_toggle_bit(ptr noundef %ps2dev, i8 noundef zeroext %19, i8 noundef zeroext %21) #17, !dbg !6158
  store i32 %call13, ptr %err, align 4, !dbg !6159
  br label %if.end14, !dbg !6160

if.end14:                                         ; preds = %if.then10, %if.end4
  %22 = load i32, ptr %err, align 4, !dbg !6161
  %tobool15 = icmp ne i32 %22, 0, !dbg !6161
  br i1 %tobool15, label %cond.true, label %cond.false, !dbg !6161

cond.true:                                        ; preds = %if.end14
  %conv16 = sext i32 %22 to i64, !dbg !6161
  br label %cond.end, !dbg !6161

cond.false:                                       ; preds = %if.end14
  %23 = load i64, ptr %count.addr, align 8, !dbg !6162
  br label %cond.end, !dbg !6161

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv16, %cond.true ], [ %23, %cond.false ], !dbg !6161
  store i64 %cond, ptr %retval, align 8, !dbg !6163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6163

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !6164
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #16, !dbg !6164
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #16, !dbg !6164
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #16, !dbg !6164
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #16, !dbg !6164
  %24 = load i64, ptr %retval, align 8, !dbg !6164
  ret i64 %24, !dbg !6164
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6165 dso_local i32 @kstrtobool(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6168 dso_local i32 @device_add_groups(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @trackpoint_is_attr_visible(ptr noundef %kobj, ptr noundef %attr, i32 noundef %n) #0 align 16 !dbg !6171 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %psmouse = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6173, metadata !DIExpression()), !dbg !6183
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6174, metadata !DIExpression()), !dbg !6184
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6175, metadata !DIExpression()), !dbg !6185
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !6186
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6176, metadata !DIExpression()), !dbg !6187
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6188
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6177, metadata !DIExpression()), !dbg !6188
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6188
  store ptr %0, ptr %__mptr, align 8, !dbg !6188
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6188
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6188
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6188
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6189
  %2 = load ptr, ptr %tmp, align 8, !dbg !6188
  store ptr %2, ptr %dev, align 8, !dbg !6187
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !6190
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !6179, metadata !DIExpression()), !dbg !6191
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #16, !dbg !6192
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6180, metadata !DIExpression()), !dbg !6192
  %3 = load ptr, ptr %dev, align 8, !dbg !6192
  store ptr %3, ptr %__mptr1, align 8, !dbg !6192
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !6192
  %add.ptr3 = getelementptr i8, ptr %4, i64 -344, !dbg !6192
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6192
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #16, !dbg !6193
  %5 = load ptr, ptr %tmp2, align 8, !dbg !6192
  store ptr %5, ptr %serio, align 8, !dbg !6191
  call void @llvm.lifetime.start.p0(i64 8, ptr %psmouse) #16, !dbg !6194
  call void @llvm.dbg.declare(metadata ptr %psmouse, metadata !6182, metadata !DIExpression()), !dbg !6195
  %6 = load ptr, ptr %serio, align 8, !dbg !6196
  %call = call ptr @psmouse_from_serio(ptr noundef %6) #17, !dbg !6197
  store ptr %call, ptr %psmouse, align 8, !dbg !6195
  %7 = load ptr, ptr %psmouse, align 8, !dbg !6198
  %8 = load ptr, ptr %attr.addr, align 8, !dbg !6199
  %call4 = call zeroext i1 @trackpoint_is_attr_available(ptr noundef %7, ptr noundef %8) #17, !dbg !6200
  br i1 %call4, label %cond.true, label %cond.false, !dbg !6200

cond.true:                                        ; preds = %entry
  %9 = load ptr, ptr %attr.addr, align 8, !dbg !6201
  %mode = getelementptr inbounds %struct.attribute, ptr %9, i32 0, i32 1, !dbg !6202
  %10 = load i16, ptr %mode, align 8, !dbg !6202
  %conv = zext i16 %10 to i32, !dbg !6201
  br label %cond.end, !dbg !6200

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6200

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ], !dbg !6200
  %conv5 = trunc i32 %cond to i16, !dbg !6200
  call void @llvm.lifetime.end.p0(i64 8, ptr %psmouse) #16, !dbg !6203
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !6203
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !6203
  ret i16 %conv5, !dbg !6204
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6205 dso_local ptr @psmouse_from_serio(ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951}
!llvm.ident = !{!4952}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "trackpoint_variants", scope: !2, file: !3, line: 19, type: !4942, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/mouse/.trackpoint.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/mouse/psmouse\22 -D KBUILD_BASENAME=\22trackpoint\22 -D KBUILD_MODNAME=\22psmouse\22 -D __KBUILD_MODNAME=kmod_psmouse -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/mouse/trackpoint.ll drivers/input/mouse/trackpoint.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !187, globals: !4388, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/mouse/trackpoint.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4bd821c3ffa668f132d2407f14552efe")
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
!187 = !{!188, !190, !192, !193, !191, !195, !196, !199, !205, !4324}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !189, line: 154, baseType: !7)
!189 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !189, line: 42, baseType: !191)
!191 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !198)
!198 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !201, line: 17, baseType: !202)
!201 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !203, line: 21, baseType: !204)
!203 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!204 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !207)
!207 = !{!208, !3964, !3965, !3968, !3969, !4022, !4107, !4108, !4109, !4110, !4111, !4118, !4210, !4223, !4233, !4237, !4239, !4240, !4241, !4245, !4252, !4253, !4256, !4259, !4263, !4266, !4267, !4268, !4269, !4270, !4271, !4301, !4302, !4303, !4306, !4309, !4318, !4319, !4320, !4321, !4322, !4323}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !206, file: !70, line: 706, baseType: !209, size: 512)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !210, line: 64, size: 512, elements: !211)
!210 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!211 = !{!212, !216, !222, !224, !308, !3851, !3954, !3959, !3960, !3961, !3962, !3963}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !210, line: 65, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !209, file: !210, line: 66, baseType: !217, size: 128, offset: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !189, line: 190, size: 128, elements: !218)
!218 = !{!219, !221}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !189, line: 191, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !217, file: !189, line: 191, baseType: !220, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !209, file: !210, line: 67, baseType: !223, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !209, file: !210, line: 68, baseType: !225, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !210, line: 168, size: 768, elements: !227)
!227 = !{!228, !229, !267, !268}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !226, file: !210, line: 169, baseType: !217, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !226, file: !210, line: 170, baseType: !230, size: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !231, line: 29, baseType: !232)
!231 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !231, line: 17, size: 32, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !231, line: 18, baseType: !235, size: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !231, line: 18, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !235, file: !231, line: 19, baseType: !238, size: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !239, line: 14, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !238, file: !239, line: 15, baseType: !242, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !243, line: 44, baseType: !244)
!243 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !243, line: 14, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !243, line: 15, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !243, line: 15, size: 32, elements: !248)
!248 = !{!249, !254, !259}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !247, file: !243, line: 16, baseType: !250, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !189, line: 174, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 172, size: 32, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !251, file: !189, line: 173, baseType: !85, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !243, line: 24, baseType: !255, size: 16)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !243, line: 24, size: 16, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !255, file: !243, line: 25, baseType: !200, size: 8)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !255, file: !243, line: 26, baseType: !200, size: 8, offset: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !243, line: 28, baseType: !260, size: 32)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !243, line: 28, size: 32, elements: !261)
!261 = !{!262, !266}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !260, file: !243, line: 29, baseType: !263, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !201, line: 19, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !203, line: 24, baseType: !265)
!265 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !260, file: !243, line: 30, baseType: !263, size: 16, offset: 16)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !226, file: !210, line: 171, baseType: !209, size: 512, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !226, file: !210, line: 172, baseType: !269, size: 64, offset: 704)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !210, line: 133, size: 192, elements: !272)
!272 = !{!273, !280, !285}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !271, file: !210, line: 134, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!85, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !210, line: 135, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!213, !278}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !271, file: !210, line: 136, baseType: !286, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!85, !278, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !210, line: 125, size: 20736, elements: !292)
!292 = !{!293, !298, !302, !303, !307}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !291, file: !210, line: 126, baseType: !294, size: 192)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 192, elements: !296)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!296 = !{!297}
!297 = !DISubrange(count: 3)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !291, file: !210, line: 127, baseType: !299, size: 4096, offset: 192)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 4096, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !291, file: !210, line: 128, baseType: !85, size: 32, offset: 4288)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !291, file: !210, line: 129, baseType: !304, size: 16384, offset: 4320)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 16384, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 2048)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !291, file: !210, line: 130, baseType: !85, size: 32, offset: 20704)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !209, file: !210, line: 69, baseType: !309, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !210, line: 116, size: 384, elements: !312)
!312 = !{!313, !317, !344, !3813, !3841, !3845}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !311, file: !210, line: 117, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !223}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !311, file: !210, line: 118, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !321, line: 254, size: 128, elements: !322)
!321 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!322 = !{!323, !337}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !320, file: !321, line: 255, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !223, !331, !295}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !189, line: 66, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !329, line: 73, baseType: !330)
!329 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !329, line: 15, baseType: !198)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !321, line: 30, size: 128, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !321, line: 31, baseType: !213, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !332, file: !321, line: 32, baseType: !336, size: 16, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !189, line: 24, baseType: !265)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !320, file: !321, line: 256, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!327, !223, !331, !213, !341}
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 61, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !329, line: 72, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !329, line: 16, baseType: !191)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !311, file: !210, line: 119, baseType: !345, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !321, line: 84, size: 320, elements: !349)
!349 = !{!350, !351, !355, !3809, !3811}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !348, file: !321, line: 85, baseType: !213, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !348, file: !321, line: 86, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!336, !223, !331, !85}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !348, file: !321, line: 88, baseType: !356, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!336, !223, !359, !85}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !321, line: 175, size: 512, elements: !361)
!361 = !{!362, !363, !364, !365, !3800, !3804, !3805}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !360, file: !321, line: 176, baseType: !332, size: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !360, file: !321, line: 177, baseType: !341, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !360, file: !321, line: 178, baseType: !192, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !360, file: !321, line: 179, baseType: !366, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !371)
!371 = !{!372, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3794, !3795, !3796, !3797, !3798, !3799}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !370, file: !35, line: 473, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !375)
!375 = !{!376, !377, !378, !386, !387, !394, !395, !398, !399, !3572, !3573, !3574, !3575, !3576, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3616, !3619, !3620, !3621, !3630, !3631, !3632, !3633}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !374, file: !35, line: 642, baseType: !336, size: 16)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !374, file: !35, line: 643, baseType: !265, size: 16, offset: 16)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !374, file: !35, line: 644, baseType: !379, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !380, line: 23, baseType: !381)
!380 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 21, size: 32, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !381, file: !380, line: 22, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !189, line: 37, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !329, line: 49, baseType: !7)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !374, file: !35, line: 645, baseType: !217, size: 128, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !374, file: !35, line: 646, baseType: !388, size: 32, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !380, line: 28, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 26, size: 32, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !389, file: !380, line: 27, baseType: !392, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !189, line: 38, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !329, line: 50, baseType: !7)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !374, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !374, file: !35, line: 650, baseType: !396, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !374, file: !35, line: 651, baseType: !396, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !374, file: !35, line: 654, baseType: !400, size: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !403)
!403 = !{!404, !3400, !3410, !3414, !3418, !3422, !3426, !3430, !3434, !3438, !3442, !3443, !3447, !3451, !3488, !3517, !3521, !3527, !3531, !3535, !3539, !3543, !3547, !3553, !3557}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !402, file: !35, line: 1967, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!408, !373, !408, !7}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !410, line: 82, size: 1536, elements: !411)
!410 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!411 = !{!412, !413, !423, !431, !432, !452, !453, !457, !470, !3383, !3384, !3385, !3386, !3392, !3393, !3394}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !409, file: !410, line: 84, baseType: !7, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !409, file: !410, line: 85, baseType: !414, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !415, line: 275, baseType: !416)
!415 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !415, line: 275, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !416, file: !415, line: 275, baseType: !419, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !415, line: 69, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !415, line: 64, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !420, file: !415, line: 65, baseType: !7, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !409, file: !410, line: 86, baseType: !424, size: 128, offset: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !425, line: 38, size: 128, elements: !426)
!425 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!426 = !{!427, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !425, line: 39, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !424, file: !425, line: 39, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !409, file: !410, line: 87, baseType: !408, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !409, file: !410, line: 88, baseType: !433, size: 128, offset: 256)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !410, line: 49, size: 128, elements: !434)
!434 = !{!435, !449}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !410, line: 50, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !410, line: 50, size: 64, elements: !437)
!437 = !{!438, !445}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !410, line: 51, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !436, file: !410, line: 51, size: 64, elements: !440)
!440 = !{!441, !444}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !439, file: !410, line: 52, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !201, line: 21, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !203, line: 27, baseType: !7)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !439, file: !410, line: 52, baseType: !442, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !436, file: !410, line: 54, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !201, line: 23, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !203, line: 31, baseType: !448)
!448 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !410, line: 56, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !409, file: !410, line: 89, baseType: !373, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !409, file: !410, line: 91, baseType: !454, size: 256, offset: 448)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 256, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !409, file: !410, line: 94, baseType: !458, size: 64, offset: 704)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !459, line: 25, size: 64, elements: !460)
!459 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !459, line: 26, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !458, file: !459, line: 26, size: 64, elements: !463)
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !462, file: !459, line: 28, baseType: !447, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !459, line: 30, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !459, line: 30, size: 64, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !466, file: !459, line: 31, baseType: !230, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !466, file: !459, line: 32, baseType: !85, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !409, file: !410, line: 95, baseType: !471, size: 64, offset: 768)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !410, line: 128, size: 1024, align: 512, elements: !474)
!474 = !{!475, !479, !480, !487, !493, !497, !501, !505, !506, !510, !514, !3373, !3377}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !473, file: !410, line: 129, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!85, !408, !7}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !473, file: !410, line: 130, baseType: !476, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !473, file: !410, line: 131, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!85, !484, !486}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !473, file: !410, line: 132, baseType: !488, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!85, !484, !7, !213, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !473, file: !410, line: 134, baseType: !494, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!85, !484}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !473, file: !410, line: 135, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!85, !408}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !473, file: !410, line: 136, baseType: !502, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !408}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !473, file: !410, line: 137, baseType: !502, size: 64, offset: 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !473, file: !410, line: 138, baseType: !507, size: 64, offset: 512)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !408, !373}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !473, file: !410, line: 139, baseType: !511, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!295, !408, !295, !85}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !473, file: !410, line: 140, baseType: !515, size: 64, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!518, !3372}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !520, line: 70, size: 256, elements: !521)
!520 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!521 = !{!522, !523, !3368, !3369}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !519, file: !520, line: 71, baseType: !408, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !519, file: !520, line: 72, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !526)
!526 = !{!527, !528, !531, !532, !533, !537, !1016, !1156, !1196, !1286, !1290, !1291, !1292, !1293, !1294, !1303, !1304, !1305, !1306, !1311, !1315, !1316, !1319, !1322, !1325, !1328, !1329, !1330, !1371, !3301, !3302, !3303, !3304, !3305, !3306, !3309, !3311, !3318, !3319, !3320, !3321, !3322, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !525, file: !35, line: 1191, baseType: !217, size: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !525, file: !35, line: 1192, baseType: !529, size: 32, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !189, line: 21, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !189, line: 18, baseType: !442)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !525, file: !35, line: 1193, baseType: !204, size: 8, offset: 160)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !525, file: !35, line: 1194, baseType: !191, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !525, file: !35, line: 1195, baseType: !534, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !189, line: 52, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !329, line: 88, baseType: !536)
!536 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !525, file: !35, line: 1196, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !540)
!540 = !{!541, !542, !543, !550, !554, !558, !562, !1001, !1002, !1006, !1008, !1009, !1010, !1012, !1013, !1014, !1015}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !539, file: !35, line: 2367, baseType: !213, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !539, file: !35, line: 2368, baseType: !85, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !539, file: !35, line: 2376, baseType: !544, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!85, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !549, line: 32, flags: DIFlagFwdDecl)
!549 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!550 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !539, file: !35, line: 2377, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !539, file: !35, line: 2378, baseType: !555, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!408, !538, !85, !213, !192}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !539, file: !35, line: 2380, baseType: !559, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !524}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !539, file: !35, line: 2381, baseType: !563, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !565)
!565 = !{!566, !567, !568, !572, !594, !620, !621, !622, !623, !627, !632, !633, !653, !709, !710, !711, !712, !713, !716, !717, !718, !726, !730, !757, !778, !779, !780, !781, !790, !813, !814, !817, !820, !821, !822, !823, !824, !825, !826, !831, !832, !960, !968, !969, !970, !972, !976, !977, !981, !982, !983, !984, !985, !986, !987, !994, !995, !996, !1000}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !564, file: !15, line: 403, baseType: !14, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !564, file: !15, line: 406, baseType: !217, size: 128, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !564, file: !15, line: 409, baseType: !569, size: 448, offset: 192)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 448, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 56)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !564, file: !15, line: 417, baseType: !573, size: 768, offset: 640)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !574)
!574 = !{!575, !576, !577, !578, !581}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !573, file: !15, line: 46, baseType: !209, size: 512)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !573, file: !15, line: 47, baseType: !563, size: 64, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !573, file: !15, line: 48, baseType: !223, size: 64, offset: 576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !573, file: !15, line: 49, baseType: !579, size: 64, offset: 640)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !573, file: !15, line: 50, baseType: !582, size: 64, offset: 704)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !584, line: 26, size: 256, elements: !585)
!584 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !583, file: !584, line: 27, baseType: !7, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !583, file: !584, line: 28, baseType: !588, size: 192, offset: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !589, line: 43, size: 192, elements: !590)
!589 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!590 = !{!591, !593}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !588, file: !589, line: 44, baseType: !592, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !239, line: 23, baseType: !238)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !588, file: !589, line: 45, baseType: !217, size: 128, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !564, file: !15, line: 418, baseType: !595, size: 64, offset: 1408)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !597)
!597 = !{!598, !599, !604, !608, !612, !616}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !596, file: !15, line: 54, baseType: !332, size: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !596, file: !15, line: 55, baseType: !600, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!327, !595, !603, !295}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !596, file: !15, line: 57, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!327, !595, !603, !213, !341}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !596, file: !15, line: 59, baseType: !609, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !563, !213}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !596, file: !15, line: 60, baseType: !613, size: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!85, !563}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !596, file: !15, line: 61, baseType: !617, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !563}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !564, file: !15, line: 419, baseType: !213, size: 64, offset: 1472)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !564, file: !15, line: 420, baseType: !213, size: 64, offset: 1536)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !564, file: !15, line: 421, baseType: !223, size: 64, offset: 1600)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !564, file: !15, line: 424, baseType: !624, size: 64, offset: 1664)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !564, file: !15, line: 425, baseType: !628, size: 64, offset: 1728)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !201, line: 20, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !203, line: 26, baseType: !85)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !564, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !564, file: !15, line: 435, baseType: !634, size: 256, offset: 1856)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !635, line: 66, size: 256, elements: !636)
!635 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!636 = !{!637, !646, !647, !652}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !634, file: !635, line: 67, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !639, line: 13, baseType: !640)
!639 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !189, line: 181, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 179, size: 64, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !641, file: !189, line: 180, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !201, line: 22, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !203, line: 30, baseType: !536)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !634, file: !635, line: 68, baseType: !592, size: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !634, file: !635, line: 70, baseType: !648, size: 32, offset: 96)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !649, line: 15, size: 32, elements: !650)
!649 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !648, file: !649, line: 20, baseType: !250, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !634, file: !635, line: 72, baseType: !217, size: 128, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !564, file: !15, line: 437, baseType: !654, size: 64, offset: 2112)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !656, line: 69, size: 320, elements: !657)
!656 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!657 = !{!658, !659, !660, !680, !682, !686, !687}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !655, file: !656, line: 70, baseType: !213, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !655, file: !656, line: 71, baseType: !563, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !655, file: !656, line: 72, baseType: !661, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !656, line: 47, size: 256, elements: !664)
!664 = !{!665, !666, !672, !676}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !656, line: 49, baseType: !7, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !663, file: !656, line: 51, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!85, !213, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !663, file: !656, line: 53, baseType: !673, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!85, !295, !670}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !663, file: !656, line: 55, baseType: !677, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !192}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !655, file: !656, line: 73, baseType: !681, size: 16, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !655, file: !656, line: 74, baseType: !683, size: 8, offset: 208)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !201, line: 16, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !203, line: 20, baseType: !685)
!685 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !656, line: 75, baseType: !200, size: 8, offset: 216)
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !656, line: 76, baseType: !688, size: 64, offset: 256)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !656, line: 76, size: 64, elements: !689)
!689 = !{!690, !691, !698}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !688, file: !656, line: 77, baseType: !192, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !688, file: !656, line: 78, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !656, line: 86, size: 128, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !694, file: !656, line: 87, baseType: !7, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !694, file: !656, line: 88, baseType: !295, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !688, file: !656, line: 79, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !656, line: 92, size: 256, elements: !702)
!702 = !{!703, !704, !705, !707, !708}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !701, file: !656, line: 94, baseType: !7, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !701, file: !656, line: 95, baseType: !7, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !701, file: !656, line: 96, baseType: !706, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !701, file: !656, line: 97, baseType: !661, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !701, file: !656, line: 98, baseType: !192, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !564, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !564, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !564, file: !15, line: 442, baseType: !624, size: 64, offset: 2240)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !564, file: !15, line: 443, baseType: !628, size: 64, offset: 2304)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !564, file: !15, line: 444, baseType: !714, size: 8, offset: 2368)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !189, line: 35, baseType: !715)
!715 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !564, file: !15, line: 451, baseType: !714, size: 8, offset: 2376)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !564, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !564, file: !15, line: 455, baseType: !719, size: 64, offset: 2432)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !721, line: 23, size: 96, elements: !722)
!721 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!722 = !{!723, !724, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !720, file: !721, line: 24, baseType: !85, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !720, file: !721, line: 24, baseType: !85, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !720, file: !721, line: 24, baseType: !85, size: 32, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !564, file: !15, line: 458, baseType: !727, size: 64, offset: 2496)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!85}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !564, file: !15, line: 460, baseType: !731, size: 4032, align: 512, offset: 2560)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 4032, elements: !755)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !733)
!733 = !{!734, !735, !736}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !732, file: !15, line: 363, baseType: !192, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !732, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !732, file: !15, line: 367, baseType: !737, size: 448, offset: 128)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !737, file: !15, line: 320, baseType: !563, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !15, line: 321, baseType: !741, size: 384, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !742, line: 40, size: 384, elements: !743)
!742 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !741, file: !742, line: 41, baseType: !745, size: 384, align: 64)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 384, align: 64, elements: !753)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !747, line: 5, size: 192, align: 64, elements: !748)
!747 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!748 = !{!749, !750, !752}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !746, file: !747, line: 6, baseType: !191, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !746, file: !747, line: 7, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !746, file: !747, line: 8, baseType: !751, size: 64, offset: 128)
!753 = !{!754}
!754 = !DISubrange(count: 2)
!755 = !{!756}
!756 = !DISubrange(count: 7)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !564, file: !15, line: 463, baseType: !758, size: 192, offset: 6592)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !759, line: 8, size: 192, elements: !760)
!759 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!760 = !{!761, !762, !764}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !758, file: !759, line: 10, baseType: !7, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !758, file: !759, line: 11, baseType: !763, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !758, file: !759, line: 12, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !767, line: 59, size: 48, elements: !768)
!767 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!768 = !{!769, !773, !774, !775, !776, !777}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !766, file: !767, line: 60, baseType: !770, size: 16)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !201, line: 18, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !203, line: 23, baseType: !772)
!772 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !766, file: !767, line: 61, baseType: !770, size: 16, offset: 16)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !766, file: !767, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !766, file: !767, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !767, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !766, file: !767, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !564, file: !15, line: 465, baseType: !191, size: 64, offset: 6784)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !564, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !564, file: !15, line: 470, baseType: !217, size: 128, offset: 6912)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !564, file: !15, line: 471, baseType: !782, size: 64, offset: 7040)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !784, line: 33, size: 96, elements: !785)
!784 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!785 = !{!786, !787, !788, !789}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !783, file: !784, line: 37, baseType: !85, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !783, file: !784, line: 43, baseType: !85, size: 32, offset: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !783, file: !784, line: 45, baseType: !265, size: 16, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !784, line: 47, baseType: !265, size: 16, offset: 80)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !564, file: !15, line: 476, baseType: !791, size: 64, offset: 7104)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !793)
!793 = !{!794, !810, !811, !812}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !792, file: !15, line: 379, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !797, line: 204, baseType: !798)
!797 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !797, line: 197, size: 192, elements: !799)
!799 = !{!800, !802, !803, !804, !806, !808}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !798, file: !797, line: 198, baseType: !801, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !797, line: 21, baseType: !443)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !798, file: !797, line: 199, baseType: !204, size: 8, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !798, file: !797, line: 200, baseType: !204, size: 8, offset: 40)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !798, file: !797, line: 201, baseType: !805, size: 16, offset: 48)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !797, line: 17, baseType: !264)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !798, file: !797, line: 202, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !797, line: 16, baseType: !447)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !798, file: !797, line: 203, baseType: !809, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !797, line: 22, baseType: !447)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !792, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !792, file: !15, line: 381, baseType: !295, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !792, file: !15, line: 382, baseType: !295, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !564, file: !15, line: 477, baseType: !792, size: 256, offset: 7168)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !564, file: !15, line: 480, baseType: !815, size: 64, offset: 7424)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !564, file: !15, line: 483, baseType: !818, size: 64, offset: 7488)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !564, file: !15, line: 488, baseType: !295, size: 64, offset: 7552)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !564, file: !15, line: 492, baseType: !192, size: 64, offset: 7616)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !564, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !564, file: !15, line: 495, baseType: !192, size: 64, offset: 7744)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !564, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !564, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !564, file: !15, line: 500, baseType: !827, size: 64, offset: 7872)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !829, line: 45, baseType: !830)
!829 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !564, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !564, file: !15, line: 504, baseType: !833, size: 64, offset: 8000)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !836, line: 96, size: 192, elements: !837)
!836 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!837 = !{!838, !839, !920, !924}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !835, file: !836, line: 97, baseType: !7, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !835, file: !836, line: 98, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !836, line: 24, size: 3072, elements: !842)
!842 = !{!843, !845, !846, !847, !848, !872, !873, !874, !875, !893, !905, !906, !917, !918, !919}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !841, file: !836, line: 26, baseType: !844, size: 128)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 128, elements: !753)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !841, file: !836, line: 27, baseType: !844, size: 128, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !841, file: !836, line: 28, baseType: !85, size: 32, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !841, file: !836, line: 31, baseType: !230, size: 32, align: 512, offset: 512)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !841, file: !836, line: 32, baseType: !849, size: 960, offset: 576)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !850, line: 206, size: 960, elements: !851)
!850 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!851 = !{!852, !861, !866, !868, !869, !871}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !849, file: !850, line: 207, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !189, line: 232, size: 128, align: 64, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !854, file: !189, line: 233, baseType: !853, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !854, file: !189, line: 234, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !853}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !849, file: !850, line: 208, baseType: !862, size: 256, offset: 64)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !863, size: 256, elements: !864)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!864 = !{!865}
!865 = !DISubrange(count: 4)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !849, file: !850, line: 209, baseType: !867, size: 256, offset: 320)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !864)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !849, file: !850, line: 213, baseType: !198, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !849, file: !850, line: 215, baseType: !870, size: 256, offset: 640)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 256, elements: !864)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !849, file: !850, line: 216, baseType: !200, size: 8, offset: 896)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !841, file: !836, line: 33, baseType: !191, size: 64, offset: 1536)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !841, file: !836, line: 34, baseType: !191, size: 64, offset: 1600)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !841, file: !836, line: 35, baseType: !714, size: 8, offset: 1664)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !841, file: !836, line: 36, baseType: !876, size: 320, offset: 1728)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !877, line: 11, size: 320, elements: !878)
!877 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!878 = !{!879, !886, !887, !892}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !876, file: !877, line: 16, baseType: !880, size: 128)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !189, line: 198, size: 128, elements: !881)
!881 = !{!882, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !880, file: !189, line: 199, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !880, file: !189, line: 199, baseType: !885, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !876, file: !877, line: 17, baseType: !191, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !876, file: !877, line: 18, baseType: !888, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !877, line: 19, baseType: !442, size: 32, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !841, file: !836, line: 37, baseType: !894, size: 256, offset: 2048)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !895, line: 98, size: 256, elements: !896)
!895 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !894, file: !895, line: 99, baseType: !638, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !894, file: !895, line: 100, baseType: !217, size: 128, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !894, file: !895, line: 101, baseType: !900, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !895, line: 21, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !841, file: !836, line: 38, baseType: !854, size: 128, align: 64, offset: 2304)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !841, file: !836, line: 39, baseType: !907, size: 64, offset: 2432)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !836, line: 49, size: 768, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !908, file: !836, line: 50, baseType: !230, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !908, file: !836, line: 51, baseType: !867, size: 256, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !908, file: !836, line: 53, baseType: !867, size: 256, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !908, file: !836, line: 54, baseType: !191, size: 64, offset: 576)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !908, file: !836, line: 55, baseType: !907, size: 64, offset: 640)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !908, file: !836, line: 56, baseType: !85, size: 32, offset: 704)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !908, file: !836, line: 57, baseType: !85, size: 32, offset: 736)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !841, file: !836, line: 40, baseType: !191, size: 64, offset: 2496)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !841, file: !836, line: 42, baseType: !85, size: 32, offset: 2560)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !841, file: !836, line: 43, baseType: !834, size: 64, offset: 2624)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !835, file: !836, line: 99, baseType: !921, offset: 128)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !922, line: 211, elements: !923)
!922 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!923 = !{}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !835, file: !836, line: 100, baseType: !925, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !836, line: 63, size: 3008, elements: !927)
!927 = !{!928, !929, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !959}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !926, file: !836, line: 64, baseType: !907, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !926, file: !836, line: 65, baseType: !930, size: 192, offset: 64)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 192, elements: !296)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !926, file: !836, line: 67, baseType: !85, size: 32, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !926, file: !836, line: 68, baseType: !634, size: 256, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !926, file: !836, line: 69, baseType: !230, size: 32, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !926, file: !836, line: 70, baseType: !634, size: 256, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !926, file: !836, line: 71, baseType: !191, size: 64, offset: 896)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !926, file: !836, line: 72, baseType: !191, size: 64, offset: 960)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !926, file: !836, line: 73, baseType: !191, size: 64, offset: 1024)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !926, file: !836, line: 74, baseType: !191, size: 64, offset: 1088)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !926, file: !836, line: 75, baseType: !191, size: 64, offset: 1152)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !926, file: !836, line: 76, baseType: !191, size: 64, offset: 1216)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !926, file: !836, line: 77, baseType: !191, size: 64, offset: 1280)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !926, file: !836, line: 78, baseType: !191, size: 64, offset: 1344)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !926, file: !836, line: 79, baseType: !714, size: 8, offset: 1408)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !926, file: !836, line: 80, baseType: !191, size: 64, offset: 1472)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !926, file: !836, line: 81, baseType: !634, size: 256, offset: 1536)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !926, file: !836, line: 82, baseType: !583, size: 256, offset: 1792)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !926, file: !836, line: 84, baseType: !250, size: 32, offset: 2048)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !926, file: !836, line: 87, baseType: !191, size: 64, offset: 2112)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !926, file: !836, line: 88, baseType: !191, size: 64, offset: 2176)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !926, file: !836, line: 89, baseType: !951, size: 704, offset: 2240)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !895, line: 111, size: 704, elements: !952)
!952 = !{!953, !954, !955, !958}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !951, file: !895, line: 112, baseType: !894, size: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !951, file: !895, line: 113, baseType: !876, size: 320, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !951, file: !895, line: 116, baseType: !956, size: 64, offset: 576)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !895, line: 18, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !951, file: !895, line: 117, baseType: !85, size: 32, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !926, file: !836, line: 90, baseType: !834, size: 64, offset: 2944)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !564, file: !15, line: 515, baseType: !961, size: 64, offset: 8064)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !963, line: 117, size: 128, elements: !964)
!963 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!964 = !{!965, !966, !967}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !962, file: !963, line: 118, baseType: !630, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !962, file: !963, line: 119, baseType: !630, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !962, file: !963, line: 120, baseType: !198, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !564, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !564, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !564, file: !15, line: 520, baseType: !971, size: 64, offset: 8192)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !564, file: !15, line: 523, baseType: !973, size: 64, offset: 8256)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !564, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !564, file: !15, line: 525, baseType: !978, size: 64, offset: 8384)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !564, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !564, file: !15, line: 533, baseType: !192, size: 64, offset: 8512)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !564, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !564, file: !15, line: 535, baseType: !195, size: 64, offset: 8640)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !564, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !564, file: !15, line: 539, baseType: !85, size: 32, offset: 8736)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !564, file: !15, line: 540, baseType: !988, size: 64, offset: 8768)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !990, line: 32, size: 64, elements: !991)
!990 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !989, file: !990, line: 33, baseType: !630, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !989, file: !990, line: 34, baseType: !630, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !564, file: !15, line: 563, baseType: !217, size: 128, offset: 8832)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !564, file: !15, line: 565, baseType: !217, size: 128, offset: 8960)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !564, file: !15, line: 568, baseType: !997, size: 64, offset: 9088)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{null}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !564, file: !15, line: 570, baseType: !250, size: 32, offset: 9152)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !539, file: !35, line: 2382, baseType: !538, size: 64, offset: 448)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !539, file: !35, line: 2383, baseType: !1003, size: 64, offset: 512)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !189, line: 194, size: 64, elements: !1004)
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1003, file: !189, line: 195, baseType: !883, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !539, file: !35, line: 2385, baseType: !1007, offset: 576)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !922, line: 206, elements: !923)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !539, file: !35, line: 2386, baseType: !1007, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !539, file: !35, line: 2387, baseType: !1007, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !539, file: !35, line: 2388, baseType: !1011, offset: 576)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, elements: !296)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !539, file: !35, line: 2390, baseType: !1007, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !539, file: !35, line: 2391, baseType: !1007, offset: 576)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !539, file: !35, line: 2392, baseType: !1007, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !539, file: !35, line: 2393, baseType: !1007, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !525, file: !35, line: 1197, baseType: !1017, size: 64, offset: 384)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !1020)
!1020 = !{!1021, !1025, !1029, !1030, !1034, !1040, !1044, !1045, !1046, !1050, !1054, !1058, !1059, !1060, !1066, !1070, !1071, !1078, !1079, !1080, !1081, !1085, !1089, !1138, !1154, !1155}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1019, file: !35, line: 2058, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!373, !524}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1019, file: !35, line: 2059, baseType: !1026, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !373}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1019, file: !35, line: 2060, baseType: !1026, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1019, file: !35, line: 2062, baseType: !1031, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !373, !85}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1019, file: !35, line: 2063, baseType: !1035, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!85, !373, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1019, file: !35, line: 2064, baseType: !1041, size: 64, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!85, !373}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1019, file: !35, line: 2065, baseType: !1026, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1019, file: !35, line: 2066, baseType: !559, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1019, file: !35, line: 2067, baseType: !1047, size: 64, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!85, !524, !85}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1019, file: !35, line: 2068, baseType: !1051, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!85, !524, !34}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1019, file: !35, line: 2069, baseType: !1055, size: 64, offset: 640)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!85, !524}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1019, file: !35, line: 2070, baseType: !1051, size: 64, offset: 704)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1019, file: !35, line: 2071, baseType: !1055, size: 64, offset: 768)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1019, file: !35, line: 2072, baseType: !1061, size: 64, offset: 832)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!85, !408, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1019, file: !35, line: 2073, baseType: !1067, size: 64, offset: 896)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!85, !524, !763, !295}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1019, file: !35, line: 2074, baseType: !559, size: 64, offset: 960)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1019, file: !35, line: 2076, baseType: !1072, size: 64, offset: 1024)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!85, !1075, !408}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1077, line: 66, flags: DIFlagFwdDecl)
!1077 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1019, file: !35, line: 2077, baseType: !1072, size: 64, offset: 1088)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1019, file: !35, line: 2078, baseType: !1072, size: 64, offset: 1152)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1019, file: !35, line: 2079, baseType: !1072, size: 64, offset: 1216)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1019, file: !35, line: 2081, baseType: !1082, size: 64, offset: 1280)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!327, !524, !85, !295, !341, !534}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1019, file: !35, line: 2082, baseType: !1086, size: 64, offset: 1344)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!327, !524, !85, !213, !341, !534}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1019, file: !35, line: 2083, baseType: !1090, size: 64, offset: 1408)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!1093, !373}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1121, !1122, !1123}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1095, file: !40, line: 297, baseType: !880, size: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1095, file: !40, line: 298, baseType: !217, size: 128, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1095, file: !40, line: 299, baseType: !217, size: 128, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1095, file: !40, line: 300, baseType: !217, size: 128, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1095, file: !40, line: 301, baseType: !634, size: 256, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1095, file: !40, line: 302, baseType: !230, size: 32, offset: 768)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1095, file: !40, line: 303, baseType: !250, size: 32, offset: 800)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1095, file: !40, line: 304, baseType: !524, size: 64, offset: 832)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1095, file: !40, line: 305, baseType: !1106, size: 64, offset: 896)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !1107)
!1107 = !{!1108, !1120}
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !40, line: 69, baseType: !1109, size: 32)
!1109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !40, line: 69, size: 32, elements: !1110)
!1110 = !{!1111, !1112, !1113}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1109, file: !40, line: 70, baseType: !379, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1109, file: !40, line: 71, baseType: !388, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1109, file: !40, line: 72, baseType: !1114, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1115, line: 24, baseType: !1116)
!1115 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1115, line: 22, size: 32, elements: !1117)
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1116, file: !1115, line: 23, baseType: !1119, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1115, line: 20, baseType: !385)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1106, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1095, file: !40, line: 306, baseType: !534, size: 64, offset: 960)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1095, file: !40, line: 307, baseType: !191, size: 64, offset: 1024)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1095, file: !40, line: 308, baseType: !1124, size: 576, offset: 1088)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !1125)
!1125 = !{!1126, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1137}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1124, file: !40, line: 206, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !536)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1124, file: !40, line: 207, baseType: !1127, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1124, file: !40, line: 208, baseType: !1127, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1124, file: !40, line: 209, baseType: !1127, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1124, file: !40, line: 210, baseType: !1127, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1124, file: !40, line: 211, baseType: !1127, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1124, file: !40, line: 212, baseType: !1127, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1124, file: !40, line: 213, baseType: !1135, size: 64, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1136, line: 8, baseType: !645)
!1136 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1124, file: !40, line: 214, baseType: !1135, size: 64, offset: 512)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1019, file: !35, line: 2085, baseType: !1139, size: 64, offset: 1472)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!198, !524, !1142}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1144, line: 15, size: 256, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1145 = !{!1146, !1147, !1148, !1149, !1150}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1143, file: !1144, line: 16, baseType: !188, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1143, file: !1144, line: 19, baseType: !85, size: 32, offset: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1143, file: !1144, line: 26, baseType: !191, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1143, file: !1144, line: 33, baseType: !191, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1143, file: !1144, line: 36, baseType: !1151, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1153, line: 33, flags: DIFlagFwdDecl)
!1153 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1019, file: !35, line: 2087, baseType: !1139, size: 64, offset: 1536)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1019, file: !35, line: 2089, baseType: !559, size: 64, offset: 1600)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !525, file: !35, line: 1198, baseType: !1157, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !1160)
!1160 = !{!1161, !1165, !1169, !1173, !1174, !1175, !1176, !1177, !1182, !1187, !1191}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1159, file: !40, line: 325, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!85, !1094}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1159, file: !40, line: 326, baseType: !1166, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!1094, !524, !85}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1159, file: !40, line: 327, baseType: !1170, size: 64, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1094}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1159, file: !40, line: 328, baseType: !1162, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1159, file: !40, line: 329, baseType: !1162, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1159, file: !40, line: 330, baseType: !1162, size: 64, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1159, file: !40, line: 331, baseType: !1047, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1159, file: !40, line: 334, baseType: !1178, size: 64, offset: 448)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1181, !373}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1159, file: !40, line: 335, baseType: !1183, size: 64, offset: 512)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!85, !373, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1159, file: !40, line: 337, baseType: !1188, size: 64, offset: 576)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!85, !373, !1181}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1159, file: !40, line: 339, baseType: !1192, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!85, !524, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !525, file: !35, line: 1199, baseType: !1197, size: 64, offset: 512)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !1200)
!1200 = !{!1201, !1212, !1213, !1217, !1218, !1219, !1234, !1257, !1261, !1262, !1285}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1199, file: !40, line: 431, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!85, !524, !85, !85, !1205}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1208, line: 8, size: 128, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1207, file: !1208, line: 9, baseType: !518, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1207, file: !1208, line: 10, baseType: !408, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1199, file: !40, line: 432, baseType: !1047, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1199, file: !40, line: 433, baseType: !1214, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!85, !524, !7}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1199, file: !40, line: 434, baseType: !1214, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1199, file: !40, line: 435, baseType: !1047, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1199, file: !40, line: 436, baseType: !1220, size: 64, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!85, !524, !85, !1223}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1224, file: !40, line: 418, baseType: !85, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1224, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1224, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1224, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1224, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1224, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1224, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1224, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1199, file: !40, line: 437, baseType: !1235, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!85, !524, !1106, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1239, file: !40, line: 346, baseType: !85, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1239, file: !40, line: 347, baseType: !446, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1239, file: !40, line: 348, baseType: !446, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1239, file: !40, line: 349, baseType: !446, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1239, file: !40, line: 350, baseType: !446, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1239, file: !40, line: 351, baseType: !446, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1239, file: !40, line: 352, baseType: !446, size: 64, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1239, file: !40, line: 353, baseType: !644, size: 64, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1239, file: !40, line: 355, baseType: !644, size: 64, offset: 512)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1239, file: !40, line: 356, baseType: !85, size: 32, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1239, file: !40, line: 357, baseType: !85, size: 32, offset: 608)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1239, file: !40, line: 358, baseType: !446, size: 64, offset: 640)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1239, file: !40, line: 359, baseType: !446, size: 64, offset: 704)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1239, file: !40, line: 360, baseType: !446, size: 64, offset: 768)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1239, file: !40, line: 361, baseType: !644, size: 64, offset: 832)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1239, file: !40, line: 362, baseType: !85, size: 32, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1199, file: !40, line: 438, baseType: !1258, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!85, !524, !1195, !1238}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1199, file: !40, line: 440, baseType: !1235, size: 64, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1199, file: !40, line: 441, baseType: !1263, size: 64, offset: 576)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!85, !524, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1267, file: !40, line: 412, baseType: !7, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1267, file: !40, line: 413, baseType: !1271, size: 1344, offset: 64)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 1344, elements: !296)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1284}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1272, file: !40, line: 398, baseType: !7, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1272, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1272, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1272, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1272, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1272, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1272, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1272, file: !40, line: 406, baseType: !448, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1272, file: !40, line: 407, baseType: !1283, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !189, line: 132, baseType: !446)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1272, file: !40, line: 408, baseType: !1283, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1199, file: !40, line: 442, baseType: !1214, size: 64, offset: 640)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !525, file: !35, line: 1200, baseType: !1287, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !525, file: !35, line: 1201, baseType: !191, size: 64, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !525, file: !35, line: 1202, baseType: !191, size: 64, offset: 704)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !525, file: !35, line: 1203, baseType: !191, size: 64, offset: 768)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !525, file: !35, line: 1204, baseType: !408, size: 64, offset: 832)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !525, file: !35, line: 1205, baseType: !1295, size: 320, offset: 896)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1296, line: 48, size: 320, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1297 = !{!1298, !1299, !1300, !1301, !1302}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1295, file: !1296, line: 49, baseType: !638, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1295, file: !1296, line: 55, baseType: !638, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1295, file: !1296, line: 57, baseType: !648, size: 32, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1295, file: !1296, line: 59, baseType: !592, size: 32, offset: 160)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1295, file: !1296, line: 60, baseType: !217, size: 128, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !525, file: !35, line: 1206, baseType: !85, size: 32, offset: 1216)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !525, file: !35, line: 1207, baseType: !250, size: 32, offset: 1248)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !525, file: !35, line: 1209, baseType: !192, size: 64, offset: 1280)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !525, file: !35, line: 1211, baseType: !1307, size: 64, offset: 1344)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1310)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !525, file: !35, line: 1223, baseType: !1312, size: 64, offset: 1408)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !425, line: 34, size: 64, elements: !1313)
!1313 = !{!1314}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1312, file: !425, line: 35, baseType: !428, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !525, file: !35, line: 1224, baseType: !217, size: 128, offset: 1472)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !525, file: !35, line: 1225, baseType: !1317, size: 64, offset: 1600)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !525, file: !35, line: 1226, baseType: !1320, size: 64, offset: 1664)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !525, file: !35, line: 1227, baseType: !1323, size: 64, offset: 1728)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !525, file: !35, line: 1228, baseType: !1326, size: 64, offset: 1792)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !525, file: !35, line: 1229, baseType: !880, size: 128, offset: 1856)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !525, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !525, file: !35, line: 1231, baseType: !1331, size: 2496, offset: 2048)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1337, !1369}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1331, file: !40, line: 522, baseType: !7, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1331, file: !40, line: 523, baseType: !1295, size: 320, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1331, file: !40, line: 524, baseType: !1336, size: 192, offset: 384)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 192, elements: !296)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1331, file: !40, line: 525, baseType: !1338, size: 1728, offset: 576)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1339, size: 1728, elements: !296)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !1340)
!1340 = !{!1341, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1339, file: !40, line: 223, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !1344)
!1344 = !{!1345, !1346, !1359, !1360}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1343, file: !40, line: 446, baseType: !85, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1343, file: !40, line: 447, baseType: !1347, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1349)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1349, file: !40, line: 313, baseType: !1047, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1349, file: !40, line: 314, baseType: !1047, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1349, file: !40, line: 315, baseType: !1047, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1349, file: !40, line: 316, baseType: !1047, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1349, file: !40, line: 317, baseType: !1162, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1349, file: !40, line: 318, baseType: !1162, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1349, file: !40, line: 319, baseType: !1162, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1349, file: !40, line: 320, baseType: !1192, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1343, file: !40, line: 448, baseType: !563, size: 64, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1343, file: !40, line: 449, baseType: !1342, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1339, file: !40, line: 224, baseType: !85, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1339, file: !40, line: 226, baseType: !217, size: 128, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1339, file: !40, line: 227, baseType: !191, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1339, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1339, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1339, file: !40, line: 230, baseType: !1127, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1339, file: !40, line: 231, baseType: !1127, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1339, file: !40, line: 232, baseType: !192, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1331, file: !40, line: 526, baseType: !1370, size: 192, offset: 2304)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1347, size: 192, elements: !296)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !525, file: !35, line: 1233, baseType: !1372, size: 2368, offset: 4544)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !1373)
!1373 = !{!1374, !1375, !1376}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1372, file: !35, line: 1185, baseType: !265, size: 16)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1372, file: !35, line: 1186, baseType: !265, size: 16, offset: 16)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1372, file: !35, line: 1187, baseType: !1377, size: 2304, offset: 64)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 2304, elements: !296)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1379, line: 12, size: 768, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1380 = !{!1381, !1395, !1396, !3299, !3300}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1378, file: !1379, line: 13, baseType: !1382, size: 384)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1383, line: 17, size: 384, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1384 = !{!1385, !1386, !1387, !1394}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1382, file: !1383, line: 18, baseType: !85, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1382, file: !1383, line: 19, baseType: !85, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1382, file: !1383, line: 20, baseType: !1388, size: 192, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1389, line: 41, baseType: !1390)
!1389 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1389, line: 37, size: 192, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1390, file: !1389, line: 38, baseType: !230, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1390, file: !1389, line: 39, baseType: !217, size: 128, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1382, file: !1383, line: 22, baseType: !854, size: 128, align: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1378, file: !1379, line: 14, baseType: !706, size: 64, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1378, file: !1379, line: 15, baseType: !1397, size: 64, offset: 448)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1398, line: 16, size: 64, elements: !1399)
!1398 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1397, file: !1398, line: 17, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1077, line: 746, size: 58368, elements: !1403)
!1403 = !{!1404, !1412, !1413, !1414, !1420, !1421, !1422, !1423, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1494, !1505, !1600, !1604, !1607, !1638, !1639, !1640, !1641, !1652, !1654, !1655, !1656, !1657, !1658, !1659, !1670, !1671, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1688, !1689, !1696, !1697, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2425, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2473, !2479, !2480, !2481, !2482, !2483, !2487, !2490, !2497, !2502, !2505, !2508, !2511, !2514, !2652, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2690, !2691, !2692, !2701, !2709, !2710, !2711, !2712, !2713, !2718, !2719, !2720, !2723, !2724, !2727, !2730, !2733, !2741, !2744, !2745, !2831, !2832, !2833, !2834, !2835, !2841, !2842, !2843, !2844, !2847, !2848, !2851, !2854, !2855, !2858, !2859, !2860, !2863, !2864, !2865, !2866, !2867, !2868, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2900, !2901, !2967, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2979, !3051, !3053, !3054, !3055, !3056, !3057, !3058, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3076, !3077, !3078}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1402, file: !1077, line: 752, baseType: !1405, size: 192)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1406, line: 56, size: 192, elements: !1407)
!1406 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1407 = !{!1408, !1409, !1410, !1411}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1405, file: !1406, line: 57, baseType: !191, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1405, file: !1406, line: 58, baseType: !191, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1405, file: !1406, line: 59, baseType: !442, size: 32, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1405, file: !1406, line: 61, baseType: !442, size: 32, offset: 160)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1402, file: !1077, line: 754, baseType: !7, size: 32, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1402, file: !1077, line: 767, baseType: !192, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1402, file: !1077, line: 768, baseType: !1415, size: 32, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1416, line: 113, baseType: !1417)
!1416 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1416, line: 111, size: 32, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1417, file: !1416, line: 112, baseType: !250, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1402, file: !1077, line: 770, baseType: !7, size: 32, offset: 352)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1402, file: !1077, line: 771, baseType: !7, size: 32, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1402, file: !1077, line: 774, baseType: !85, size: 32, offset: 416)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1402, file: !1077, line: 775, baseType: !1424, size: 128, offset: 448)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1425, line: 58, size: 128, elements: !1426)
!1425 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1426 = !{!1427, !1433, !1438, !1439}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1424, file: !1425, line: 59, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1429, line: 60, size: 64, elements: !1430)
!1429 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1430 = !{!1431}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1428, file: !1429, line: 61, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !1425, line: 60, baseType: !1434, size: 32, offset: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1424, file: !1425, line: 60, size: 32, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1434, file: !1425, line: 61, baseType: !7, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1434, file: !1425, line: 62, baseType: !250, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1424, file: !1425, line: 65, baseType: !263, size: 16, offset: 96)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1424, file: !1425, line: 65, baseType: !263, size: 16, offset: 112)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1402, file: !1077, line: 776, baseType: !7, size: 32, offset: 576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1402, file: !1077, line: 777, baseType: !191, size: 64, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1402, file: !1077, line: 778, baseType: !1401, size: 64, offset: 704)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1402, file: !1077, line: 787, baseType: !85, size: 32, offset: 768)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1402, file: !1077, line: 788, baseType: !85, size: 32, offset: 800)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1402, file: !1077, line: 790, baseType: !85, size: 32, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1402, file: !1077, line: 792, baseType: !85, size: 32, offset: 864)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1402, file: !1077, line: 793, baseType: !85, size: 32, offset: 896)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1402, file: !1077, line: 794, baseType: !85, size: 32, offset: 928)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1402, file: !1077, line: 795, baseType: !7, size: 32, offset: 960)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1402, file: !1077, line: 797, baseType: !1451, size: 2048, offset: 1024)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1077, line: 551, size: 2048, elements: !1452)
!1452 = !{!1453, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1473, !1476, !1477, !1478}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1451, file: !1077, line: 553, baseType: !1454, size: 128)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1077, line: 411, size: 128, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1454, file: !1077, line: 412, baseType: !191, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1454, file: !1077, line: 413, baseType: !442, size: 32, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1451, file: !1077, line: 554, baseType: !746, size: 192, align: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1451, file: !1077, line: 555, baseType: !446, size: 64, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1451, file: !1077, line: 556, baseType: !446, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1451, file: !1077, line: 558, baseType: !217, size: 128, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1451, file: !1077, line: 559, baseType: !7, size: 32, offset: 576)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1451, file: !1077, line: 561, baseType: !446, size: 64, offset: 640)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1451, file: !1077, line: 562, baseType: !446, size: 64, offset: 704)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1451, file: !1077, line: 563, baseType: !446, size: 64, offset: 768)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1451, file: !1077, line: 564, baseType: !446, size: 64, offset: 832)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1451, file: !1077, line: 565, baseType: !644, size: 64, offset: 896)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1451, file: !1077, line: 566, baseType: !446, size: 64, offset: 960)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1451, file: !1077, line: 568, baseType: !446, size: 64, offset: 1024)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1451, file: !1077, line: 571, baseType: !85, size: 32, offset: 1088)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1451, file: !1077, line: 572, baseType: !1472, size: 64, offset: 1152)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1451, file: !1077, line: 574, baseType: !1474, size: 64, offset: 1216)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1077, line: 49, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1451, file: !1077, line: 576, baseType: !1474, size: 64, offset: 1280)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1451, file: !1077, line: 578, baseType: !191, size: 64, offset: 1344)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1451, file: !1077, line: 588, baseType: !1479, size: 512, align: 512, offset: 1536)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1077, line: 497, size: 512, align: 512, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1479, file: !1077, line: 498, baseType: !446, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1479, file: !1077, line: 499, baseType: !446, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1479, file: !1077, line: 500, baseType: !446, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1479, file: !1077, line: 501, baseType: !442, size: 32, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1479, file: !1077, line: 502, baseType: !442, size: 32, offset: 224)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1479, file: !1077, line: 503, baseType: !191, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1479, file: !1077, line: 504, baseType: !191, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1479, file: !1077, line: 505, baseType: !191, size: 64, offset: 384)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1479, file: !1077, line: 506, baseType: !1490, size: 64, align: 64, offset: 448)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1077, line: 445, size: 64, align: 64, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1490, file: !1077, line: 446, baseType: !7, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1490, file: !1077, line: 447, baseType: !7, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1402, file: !1077, line: 798, baseType: !1495, size: 384, offset: 3072)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1077, line: 592, size: 384, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1495, file: !1077, line: 593, baseType: !217, size: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1495, file: !1077, line: 594, baseType: !191, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1495, file: !1077, line: 595, baseType: !191, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1495, file: !1077, line: 596, baseType: !7, size: 32, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1495, file: !1077, line: 597, baseType: !265, size: 16, offset: 288)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1495, file: !1077, line: 598, baseType: !265, size: 16, offset: 304)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1495, file: !1077, line: 600, baseType: !1504, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1402, file: !1077, line: 799, baseType: !1506, size: 1792, offset: 3456)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1077, line: 610, size: 1792, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1597, !1598}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1506, file: !1077, line: 611, baseType: !746, size: 192, align: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1506, file: !1077, line: 618, baseType: !446, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1506, file: !1077, line: 619, baseType: !446, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1506, file: !1077, line: 620, baseType: !446, size: 64, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1506, file: !1077, line: 621, baseType: !446, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1506, file: !1077, line: 622, baseType: !446, size: 64, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1506, file: !1077, line: 629, baseType: !644, size: 64, offset: 512)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1506, file: !1077, line: 630, baseType: !446, size: 64, offset: 576)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1506, file: !1077, line: 631, baseType: !7, size: 32, offset: 640)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1506, file: !1077, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1506, file: !1077, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1506, file: !1077, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1506, file: !1077, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1506, file: !1077, line: 662, baseType: !1522, size: 512, offset: 704)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !1523)
!1523 = !{!1524, !1532, !1533, !1538, !1593, !1594, !1595, !1596}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1522, file: !46, line: 119, baseType: !1525, size: 256)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1526, line: 9, size: 256, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1525, file: !1526, line: 10, baseType: !746, size: 192, align: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1525, file: !1526, line: 11, baseType: !1530, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1531, line: 29, baseType: !644)
!1531 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1522, file: !46, line: 120, baseType: !1530, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1522, file: !46, line: 121, baseType: !1534, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!45, !1537}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1522, file: !46, line: 122, baseType: !1539, size: 64, offset: 384)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !1541)
!1541 = !{!1542, !1567, !1568, !1571, !1576, !1577, !1588, !1592}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1540, file: !46, line: 160, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1544, file: !46, line: 216, baseType: !592, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1544, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1544, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1544, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1544, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1544, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1544, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1544, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1544, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1544, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1544, file: !46, line: 227, baseType: !265, size: 16, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1544, file: !46, line: 228, baseType: !265, size: 16, offset: 208)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1544, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1544, file: !46, line: 235, baseType: !1530, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1544, file: !46, line: 236, baseType: !1537, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1544, file: !46, line: 237, baseType: !1530, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1544, file: !46, line: 238, baseType: !1537, size: 64, offset: 448)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1544, file: !46, line: 239, baseType: !1564, size: 4096, align: 512, offset: 512)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1540, size: 4096, align: 512, elements: !1565)
!1565 = !{!1566}
!1566 = !DISubrange(count: 8)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1540, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1540, file: !46, line: 162, baseType: !1569, size: 32, offset: 96)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !189, line: 32, baseType: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !329, line: 96, baseType: !85)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1540, file: !46, line: 163, baseType: !1572, size: 32, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !415, line: 274, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !415, line: 274, size: 32, elements: !1574)
!1574 = !{!1575}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1573, file: !415, line: 274, baseType: !419, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1540, file: !46, line: 164, baseType: !1537, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1540, file: !46, line: 165, baseType: !1578, size: 128, offset: 256)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1526, line: 14, size: 128, elements: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1578, file: !1526, line: 15, baseType: !1581, size: 128)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !747, line: 26, size: 128, elements: !1582)
!1582 = !{!1583, !1587}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1581, file: !747, line: 27, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !747, line: 12, size: 64, elements: !1585)
!1585 = !{!1586}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1584, file: !747, line: 13, baseType: !751, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1581, file: !747, line: 28, baseType: !751, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1540, file: !46, line: 166, baseType: !1589, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!1530}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1540, file: !46, line: 167, baseType: !1530, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1522, file: !46, line: 123, baseType: !200, size: 8, offset: 448)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1522, file: !46, line: 124, baseType: !200, size: 8, offset: 456)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1522, file: !46, line: 125, baseType: !200, size: 8, offset: 464)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1522, file: !46, line: 126, baseType: !200, size: 8, offset: 472)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1506, file: !1077, line: 671, baseType: !1522, size: 512, offset: 1216)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1506, file: !1077, line: 679, baseType: !1599, size: 64, offset: 1728)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1402, file: !1077, line: 800, baseType: !1601, size: 64, offset: 5248)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1603)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1077, line: 800, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1402, file: !1077, line: 809, baseType: !1605, size: 64, offset: 5312)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1077, line: 70, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1402, file: !1077, line: 825, baseType: !1608, size: 2048, align: 512, offset: 5632)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1077, line: 509, size: 2048, align: 512, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1608, file: !1077, line: 511, baseType: !446, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1608, file: !1077, line: 512, baseType: !446, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1608, file: !1077, line: 513, baseType: !446, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1608, file: !1077, line: 514, baseType: !446, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1608, file: !1077, line: 515, baseType: !446, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1608, file: !1077, line: 516, baseType: !446, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1608, file: !1077, line: 518, baseType: !446, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1608, file: !1077, line: 519, baseType: !446, size: 64, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1608, file: !1077, line: 520, baseType: !644, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1608, file: !1077, line: 522, baseType: !446, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1608, file: !1077, line: 523, baseType: !446, size: 64, offset: 640)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1608, file: !1077, line: 524, baseType: !644, size: 64, offset: 704)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1608, file: !1077, line: 526, baseType: !644, size: 64, offset: 768)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1608, file: !1077, line: 527, baseType: !446, size: 64, offset: 832)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1608, file: !1077, line: 529, baseType: !446, size: 64, offset: 896)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1608, file: !1077, line: 530, baseType: !446, size: 64, offset: 960)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1608, file: !1077, line: 531, baseType: !446, size: 64, offset: 1024)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1608, file: !1077, line: 532, baseType: !446, size: 64, offset: 1088)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1608, file: !1077, line: 533, baseType: !446, size: 64, offset: 1152)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1608, file: !1077, line: 535, baseType: !446, size: 64, offset: 1216)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1608, file: !1077, line: 536, baseType: !446, size: 64, offset: 1280)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1608, file: !1077, line: 537, baseType: !446, size: 64, offset: 1344)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1608, file: !1077, line: 538, baseType: !446, size: 64, offset: 1408)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1608, file: !1077, line: 539, baseType: !446, size: 64, offset: 1472)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1608, file: !1077, line: 540, baseType: !446, size: 64, offset: 1536)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1608, file: !1077, line: 541, baseType: !446, size: 64, offset: 1600)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1608, file: !1077, line: 542, baseType: !446, size: 64, offset: 1664)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1608, file: !1077, line: 543, baseType: !446, size: 64, offset: 1728)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1402, file: !1077, line: 833, baseType: !7, size: 32, offset: 7680)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1402, file: !1077, line: 836, baseType: !7, size: 32, offset: 7712)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1402, file: !1077, line: 837, baseType: !85, size: 32, offset: 7744)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1402, file: !1077, line: 838, baseType: !1642, size: 64, offset: 7808)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1644)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1645, line: 19, baseType: !1646)
!1645 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1645, line: 19, size: 64, elements: !1647)
!1647 = !{!1648}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1646, file: !1645, line: 19, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 64, elements: !1650)
!1650 = !{!1651}
!1651 = !DISubrange(count: 1)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1402, file: !1077, line: 839, baseType: !1653, size: 64, offset: 7872)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1402, file: !1077, line: 840, baseType: !1644, size: 64, offset: 7936)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1402, file: !1077, line: 841, baseType: !192, size: 64, offset: 8000)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1402, file: !1077, line: 843, baseType: !265, size: 16, offset: 8064)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1402, file: !1077, line: 845, baseType: !265, size: 16, offset: 8080)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1402, file: !1077, line: 848, baseType: !85, size: 32, offset: 8096)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1402, file: !1077, line: 849, baseType: !1660, size: 32, offset: 8128)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1077, line: 718, size: 32, elements: !1661)
!1661 = !{!1662, !1669}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1660, file: !1077, line: 724, baseType: !1663, size: 32)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1660, file: !1077, line: 719, size: 32, elements: !1664)
!1664 = !{!1665, !1666, !1667, !1668}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1663, file: !1077, line: 720, baseType: !200, size: 8)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1663, file: !1077, line: 721, baseType: !200, size: 8, offset: 8)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1663, file: !1077, line: 722, baseType: !200, size: 8, offset: 16)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1663, file: !1077, line: 723, baseType: !200, size: 8, offset: 24)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1660, file: !1077, line: 725, baseType: !442, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1402, file: !1077, line: 850, baseType: !217, size: 128, offset: 8192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1402, file: !1077, line: 851, baseType: !1672, size: 64, offset: 8320)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1077, line: 60, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1402, file: !1077, line: 855, baseType: !191, size: 64, offset: 8384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1402, file: !1077, line: 856, baseType: !200, size: 8, offset: 8448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1402, file: !1077, line: 857, baseType: !200, size: 8, offset: 8456)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1402, file: !1077, line: 858, baseType: !85, size: 32, offset: 8480)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1402, file: !1077, line: 859, baseType: !217, size: 128, offset: 8512)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1402, file: !1077, line: 860, baseType: !85, size: 32, offset: 8640)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1402, file: !1077, line: 861, baseType: !217, size: 128, offset: 8704)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1402, file: !1077, line: 873, baseType: !1682, size: 256, offset: 8832)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1077, line: 376, size: 256, elements: !1683)
!1683 = !{!1684, !1685, !1686, !1687}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1682, file: !1077, line: 381, baseType: !191, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1682, file: !1077, line: 384, baseType: !448, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1682, file: !1077, line: 389, baseType: !448, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1682, file: !1077, line: 392, baseType: !448, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1402, file: !1077, line: 875, baseType: !217, size: 128, offset: 9088)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1402, file: !1077, line: 877, baseType: !1690, size: 320, offset: 9216)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1691, line: 86, size: 320, elements: !1692)
!1691 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1692 = !{!1693, !1694, !1695}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1690, file: !1691, line: 87, baseType: !85, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1690, file: !1691, line: 88, baseType: !217, size: 128, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1690, file: !1691, line: 89, baseType: !217, size: 128, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1402, file: !1077, line: 878, baseType: !746, size: 192, align: 64, offset: 9536)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1402, file: !1077, line: 881, baseType: !1698, size: 64, offset: 9728)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1153, line: 733, size: 10240, elements: !1700)
!1700 = !{!1701, !2344}
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1699, file: !1153, line: 734, baseType: !1702, size: 10240)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1699, file: !1153, line: 734, size: 10240, elements: !1703)
!1703 = !{!1704, !1708, !1721, !2221, !2222, !2223, !2224, !2225, !2226, !2233, !2234, !2235, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2274, !2276, !2279, !2324, !2325, !2326, !2329, !2330, !2331, !2334, !2335, !2336, !2342, !2343}
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1153, line: 739, baseType: !1705, size: 512, align: 512)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1702, file: !1153, line: 739, size: 512, align: 512, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1705, file: !1153, line: 747, baseType: !250, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1702, file: !1153, line: 750, baseType: !1709, size: 128, offset: 512)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1710, line: 218, size: 128, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1711 = !{!1712, !1719, !1720}
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !1710, line: 219, baseType: !1713, size: 32)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1709, file: !1710, line: 219, size: 32, elements: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1713, file: !1710, line: 220, baseType: !230, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1713, file: !1710, line: 221, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1710, line: 197, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1710, line: 197, elements: !923)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1709, file: !1710, line: 223, baseType: !7, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1709, file: !1710, line: 224, baseType: !192, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1702, file: !1153, line: 752, baseType: !1722, size: 64, offset: 640)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!191, !1725, !191, !191, !191, !191}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !1727)
!1727 = !{!1728, !1734, !1735, !1737, !1738, !1739, !1740, !1741, !1791, !1981, !1990, !1991, !1992, !2211, !2212, !2213, !2214, !2216, !2217, !2220}
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1726, file: !35, line: 995, baseType: !1729, size: 128)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1726, file: !35, line: 995, size: 128, elements: !1730)
!1730 = !{!1731, !1732, !1733}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1729, file: !35, line: 996, baseType: !1428, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1729, file: !35, line: 997, baseType: !854, size: 128, align: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1729, file: !35, line: 998, baseType: !7, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1726, file: !35, line: 1005, baseType: !230, size: 32, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1726, file: !35, line: 1006, baseType: !1736, size: 32, offset: 160)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !189, line: 156, baseType: !7)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1726, file: !35, line: 1007, baseType: !638, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1726, file: !35, line: 1008, baseType: !634, size: 256, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1726, file: !35, line: 1009, baseType: !534, size: 64, offset: 512)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1726, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1726, file: !35, line: 1011, baseType: !1742, size: 256, offset: 640)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !1743)
!1743 = !{!1744, !1765, !1787, !1788, !1789, !1790}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1742, file: !35, line: 949, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1746, line: 34, baseType: !1747)
!1746 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1746, line: 25, size: 64, elements: !1748)
!1748 = !{!1749}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1747, file: !1746, line: 26, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1751, line: 27, baseType: !1752)
!1751 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1751, line: 13, size: 64, elements: !1753)
!1753 = !{!1754, !1764}
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !1751, line: 14, baseType: !1755, size: 32)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !1751, line: 14, size: 32, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1755, file: !1751, line: 15, baseType: !250, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !1751, line: 16, baseType: !1759, size: 32)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !1751, line: 16, size: 32, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1759, file: !1751, line: 18, baseType: !200, size: 8)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1759, file: !1751, line: 19, baseType: !1763, size: 24, offset: 8)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 24, elements: !296)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1752, file: !1751, line: 26, baseType: !242, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1742, file: !35, line: 950, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1774, !1775, !1776, !1777}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1767, file: !6, line: 61, baseType: !1415, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1767, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1767, file: !6, line: 63, baseType: !230, size: 32, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1767, file: !6, line: 65, baseType: !1773, size: 256, offset: 128)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1003, size: 256, elements: !864)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1767, file: !6, line: 66, baseType: !1003, size: 64, offset: 384)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1767, file: !6, line: 68, baseType: !1388, size: 192, offset: 448)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1767, file: !6, line: 69, baseType: !854, size: 128, align: 64, offset: 640)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1767, file: !6, line: 70, baseType: !1778, offset: 768)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1779, elements: !1785)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1779, file: !6, line: 55, baseType: !85, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1779, file: !6, line: 56, baseType: !1783, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!1785 = !{!1786}
!1786 = !DISubrange(count: -1)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1742, file: !35, line: 951, baseType: !5, size: 32, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1742, file: !35, line: 952, baseType: !379, size: 32, offset: 160)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1742, file: !35, line: 952, baseType: !379, size: 32, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1742, file: !35, line: 953, baseType: !85, size: 32, offset: 224)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1726, file: !35, line: 1012, baseType: !1792, size: 64, offset: 896)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1794)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1795, line: 110, size: 1472, elements: !1796)
!1795 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1813, !1814, !1815, !1816, !1817, !1818, !1926, !1927, !1928, !1929, !1930, !1961, !1964, !1968, !1976}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1794, file: !1795, line: 111, baseType: !638, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1794, file: !1795, line: 112, baseType: !379, size: 32, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1794, file: !1795, line: 113, baseType: !388, size: 32, offset: 96)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1794, file: !1795, line: 114, baseType: !379, size: 32, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1794, file: !1795, line: 115, baseType: !388, size: 32, offset: 160)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1794, file: !1795, line: 116, baseType: !379, size: 32, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1794, file: !1795, line: 117, baseType: !388, size: 32, offset: 224)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1794, file: !1795, line: 118, baseType: !379, size: 32, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1794, file: !1795, line: 119, baseType: !388, size: 32, offset: 288)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1794, file: !1795, line: 120, baseType: !7, size: 32, offset: 320)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1794, file: !1795, line: 121, baseType: !1808, size: 64, offset: 384)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1809, line: 24, baseType: !1810)
!1809 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1809, line: 24, size: 64, elements: !1811)
!1811 = !{!1812}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1810, file: !1809, line: 24, baseType: !446, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1794, file: !1795, line: 122, baseType: !1808, size: 64, offset: 448)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1794, file: !1795, line: 123, baseType: !1808, size: 64, offset: 512)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1794, file: !1795, line: 124, baseType: !1808, size: 64, offset: 576)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1794, file: !1795, line: 125, baseType: !1808, size: 64, offset: 640)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1794, file: !1795, line: 127, baseType: !204, size: 8, offset: 704)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1794, file: !1795, line: 129, baseType: !1819, size: 64, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1821, line: 195, size: 1728, elements: !1822)
!1821 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1822 = !{!1823, !1824, !1827, !1832, !1833, !1836, !1837, !1842, !1843, !1844, !1845, !1848, !1849, !1850, !1851, !1852, !1890, !1911}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1820, file: !1821, line: 196, baseType: !1415, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1820, file: !1821, line: 197, baseType: !1825, size: 32, offset: 32)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1821, line: 28, baseType: !1826)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !189, line: 104, baseType: !630)
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !1821, line: 198, baseType: !1828, size: 192, offset: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !1821, line: 198, size: 192, elements: !1829)
!1829 = !{!1830, !1831}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1828, file: !1821, line: 199, baseType: !217, size: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1828, file: !1821, line: 200, baseType: !746, size: 192, align: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1820, file: !1821, line: 205, baseType: !1295, size: 320, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1820, file: !1821, line: 206, baseType: !1834, size: 64, offset: 576)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1821, line: 206, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1820, file: !1821, line: 207, baseType: !192, size: 64, offset: 640)
!1837 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !1821, line: 208, baseType: !1838, size: 64, offset: 704)
!1838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !1821, line: 208, size: 64, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1838, file: !1821, line: 209, baseType: !1135, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1838, file: !1821, line: 210, baseType: !1135, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1820, file: !1821, line: 212, baseType: !1135, size: 64, offset: 768)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1820, file: !1821, line: 213, baseType: !379, size: 32, offset: 832)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1820, file: !1821, line: 214, baseType: !388, size: 32, offset: 864)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1820, file: !1821, line: 215, baseType: !1846, size: 32, offset: 896)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1821, line: 31, baseType: !1847)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !189, line: 110, baseType: !442)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1820, file: !1821, line: 216, baseType: !265, size: 16, offset: 928)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1820, file: !1821, line: 217, baseType: !265, size: 16, offset: 944)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1820, file: !1821, line: 221, baseType: !772, size: 16, offset: 960)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1820, file: !1821, line: 228, baseType: !191, size: 64, offset: 1024)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !1821, line: 245, baseType: !1853, size: 320, offset: 1088)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !1821, line: 245, size: 320, elements: !1854)
!1854 = !{!1855, !1882}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1853, file: !1821, line: 246, baseType: !1856, size: 320)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1821, line: 114, size: 320, elements: !1857)
!1857 = !{!1858, !1859, !1871, !1874, !1881}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1856, file: !1821, line: 116, baseType: !191, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !1821, line: 117, baseType: !1860, size: 64, offset: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1856, file: !1821, line: 117, size: 64, elements: !1861)
!1861 = !{!1862, !1870}
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !1821, line: 118, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !1821, line: 118, size: 64, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1863, file: !1821, line: 120, baseType: !263, size: 16)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1863, file: !1821, line: 121, baseType: !1867, size: 48, offset: 16)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 48, elements: !1868)
!1868 = !{!1869}
!1869 = !DISubrange(count: 6)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1860, file: !1821, line: 127, baseType: !191, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1856, file: !1821, line: 129, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1821, line: 102, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1856, file: !1821, line: 130, baseType: !1875, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1821, line: 108, size: 192, elements: !1877)
!1877 = !{!1878, !1879, !1880}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1876, file: !1821, line: 109, baseType: !854, size: 128, align: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1876, file: !1821, line: 110, baseType: !1415, size: 32, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1876, file: !1821, line: 111, baseType: !714, size: 8, offset: 160)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1856, file: !1821, line: 131, baseType: !213, size: 64, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !1821, line: 247, baseType: !1883, size: 320)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !1821, line: 247, size: 320, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888, !1889}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1883, file: !1821, line: 248, baseType: !191, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1883, file: !1821, line: 249, baseType: !191, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1883, file: !1821, line: 250, baseType: !1872, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1883, file: !1821, line: 251, baseType: !1875, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1883, file: !1821, line: 252, baseType: !295, size: 64, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !1821, line: 260, baseType: !1891, size: 256, offset: 1408)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !1821, line: 260, size: 256, elements: !1892)
!1892 = !{!1893, !1899}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1891, file: !1821, line: 261, baseType: !1894, size: 256)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1821, line: 134, size: 256, elements: !1895)
!1895 = !{!1896, !1897}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1894, file: !1821, line: 135, baseType: !192, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1894, file: !1821, line: 136, baseType: !1898, size: 256)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 256, elements: !864)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !1821, line: 262, baseType: !1900, size: 256)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1891, file: !1821, line: 262, size: 256, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1900, file: !1821, line: 264, baseType: !217, size: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1900, file: !1821, line: 265, baseType: !1904, size: 128, offset: 128)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1905, line: 22, size: 128, elements: !1906)
!1905 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1906 = !{!1907, !1910}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1904, file: !1905, line: 23, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1905, line: 23, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1904, file: !1905, line: 24, baseType: !191, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1820, file: !1821, line: 280, baseType: !1912, size: 64, offset: 1664)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1821, line: 176, size: 192, elements: !1914)
!1914 = !{!1915, !1924, !1925}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1913, file: !1821, line: 177, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1821, line: 171, baseType: !1917)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!85, !1819, !1920, !1922, !1819}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1873)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1894)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1913, file: !1821, line: 178, baseType: !1819, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1913, file: !1821, line: 179, baseType: !1872, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1794, file: !1795, line: 130, baseType: !1819, size: 64, offset: 832)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1794, file: !1795, line: 131, baseType: !1819, size: 64, offset: 896)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1794, file: !1795, line: 132, baseType: !1819, size: 64, offset: 960)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1794, file: !1795, line: 135, baseType: !192, size: 64, offset: 1024)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1794, file: !1795, line: 137, baseType: !1931, size: 64, offset: 1088)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1933, line: 14, size: 1088, elements: !1934)
!1933 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1934 = !{!1935, !1936, !1945, !1946, !1947, !1948, !1949, !1950}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1932, file: !1933, line: 15, baseType: !1415, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1932, file: !1933, line: 17, baseType: !1937, size: 320, offset: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1938, line: 22, size: 320, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1939 = !{!1940, !1941, !1942, !1943}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1937, file: !1938, line: 23, baseType: !592, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1937, file: !1938, line: 24, baseType: !644, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1937, file: !1938, line: 26, baseType: !217, size: 128, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1937, file: !1938, line: 28, baseType: !1944, size: 64, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1932, file: !1933, line: 19, baseType: !191, size: 64, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1932, file: !1933, line: 20, baseType: !638, size: 64, offset: 448)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1932, file: !1933, line: 23, baseType: !880, size: 128, offset: 512)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1932, file: !1933, line: 24, baseType: !379, size: 32, offset: 640)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1932, file: !1933, line: 29, baseType: !638, size: 64, offset: 704)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1932, file: !1933, line: 36, baseType: !1951, size: 320, offset: 768)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1952, line: 15, size: 320, elements: !1953)
!1952 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1953 = !{!1954, !1955, !1956, !1957, !1958, !1959, !1960}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1951, file: !1952, line: 16, baseType: !592, size: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1951, file: !1952, line: 18, baseType: !85, size: 32, offset: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1951, file: !1952, line: 19, baseType: !85, size: 32, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1951, file: !1952, line: 20, baseType: !85, size: 32, offset: 96)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1951, file: !1952, line: 21, baseType: !85, size: 32, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1951, file: !1952, line: 22, baseType: !191, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1951, file: !1952, line: 23, baseType: !191, size: 64, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1794, file: !1795, line: 138, baseType: !1962, size: 64, offset: 1152)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1153, line: 901, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1794, file: !1795, line: 139, baseType: !1965, size: 64, offset: 1216)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1967, line: 16, flags: DIFlagFwdDecl)
!1967 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1794, file: !1795, line: 140, baseType: !1969, size: 64, offset: 1280)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1795, line: 25, size: 64, elements: !1971)
!1971 = !{!1972, !1973, !1974}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1970, file: !1795, line: 26, baseType: !250, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1970, file: !1795, line: 27, baseType: !85, size: 32, offset: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1970, file: !1795, line: 28, baseType: !1975, offset: 64)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, elements: !1785)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1794, file: !1795, line: 142, baseType: !1977, size: 128, offset: 1344)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1794, file: !1795, line: 142, size: 128, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1977, file: !1795, line: 143, baseType: !85, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1977, file: !1795, line: 144, baseType: !854, size: 128, align: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1726, file: !35, line: 1013, baseType: !1982, size: 256, offset: 960)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1982, file: !35, line: 971, baseType: !191, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1982, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1982, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1982, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1982, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1982, file: !35, line: 976, baseType: !534, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1726, file: !35, line: 1014, baseType: !1207, size: 128, offset: 1216)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1726, file: !35, line: 1015, baseType: !373, size: 64, offset: 1344)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1726, file: !35, line: 1016, baseType: !1993, size: 64, offset: 1408)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1995)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !1996)
!1996 = !{!1997, !1998, !2002, !2007, !2011, !2039, !2040, !2046, !2059, !2067, !2071, !2072, !2133, !2134, !2138, !2143, !2144, !2148, !2152, !2158, !2159, !2163, !2164, !2170, !2174, !2178, !2184, !2188, !2192, !2196, !2200, !2201, !2207}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1995, file: !35, line: 1915, baseType: !563, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1995, file: !35, line: 1916, baseType: !1999, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!534, !1725, !534, !85}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1995, file: !35, line: 1917, baseType: !2003, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!327, !1725, !295, !341, !2006}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1995, file: !35, line: 1918, baseType: !2008, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!327, !1725, !213, !341, !2006}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1995, file: !35, line: 1919, baseType: !2012, size: 64, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!327, !2015, !2037}
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !2017)
!2017 = !{!2018, !2019, !2020, !2024, !2025, !2026, !2027}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2016, file: !35, line: 374, baseType: !1725, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2016, file: !35, line: 375, baseType: !534, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2016, file: !35, line: 376, baseType: !2021, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !2015, !198}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2016, file: !35, line: 377, baseType: !192, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2016, file: !35, line: 378, baseType: !85, size: 32, offset: 256)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2016, file: !35, line: 379, baseType: !263, size: 16, offset: 288)
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !2016, file: !35, line: 380, baseType: !2028, size: 64, offset: 320)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2016, file: !35, line: 380, size: 64, elements: !2029)
!2029 = !{!2030, !2033}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2028, file: !35, line: 386, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2028, file: !35, line: 395, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!327, !192}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1995, file: !35, line: 1920, baseType: !2012, size: 64, offset: 320)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1995, file: !35, line: 1921, baseType: !2041, size: 64, offset: 384)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!85, !2015, !2044, !7}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1995, file: !35, line: 1923, baseType: !2047, size: 64, offset: 448)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!85, !1725, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !2052)
!2052 = !{!2053, !2058}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2051, file: !35, line: 1859, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !2055)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!714, !2050, !213, !85, !534, !446, !7}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2051, file: !35, line: 1860, baseType: !534, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1995, file: !35, line: 1924, baseType: !2060, size: 64, offset: 512)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!2063, !1725, !2065}
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2064, line: 59, baseType: !7)
!2064 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !549, line: 31, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1995, file: !35, line: 1925, baseType: !2068, size: 64, offset: 576)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!198, !1725, !7, !191}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1995, file: !35, line: 1926, baseType: !2068, size: 64, offset: 640)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1995, file: !35, line: 1927, baseType: !2073, size: 64, offset: 704)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!85, !1725, !2076}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1153, line: 625, size: 1344, elements: !2078)
!2078 = !{!2079, !2088, !2089, !2097, !2104, !2105, !2110, !2111, !2116, !2117, !2120, !2124, !2125, !2126, !2127, !2128, !2131}
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2077, file: !1153, line: 628, baseType: !2080, size: 128)
!2080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2077, file: !1153, line: 628, size: 128, elements: !2081)
!2081 = !{!2082, !2087}
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !1153, line: 629, baseType: !2083, size: 128)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2080, file: !1153, line: 629, size: 128, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2083, file: !1153, line: 631, baseType: !191, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2083, file: !1153, line: 632, baseType: !191, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2080, file: !1153, line: 635, baseType: !854, size: 128, align: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2077, file: !1153, line: 639, baseType: !1698, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2077, file: !1153, line: 640, baseType: !2090, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2091, line: 297, baseType: !2092)
!2091 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2091, line: 297, size: 64, elements: !2093)
!2093 = !{!2094}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2092, file: !2091, line: 297, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2096, line: 19, baseType: !191)
!2096 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2097 = !DIDerivedType(tag: DW_TAG_member, scope: !2077, file: !1153, line: 646, baseType: !2098, size: 64, offset: 256)
!2098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2077, file: !1153, line: 646, size: 64, elements: !2099)
!2099 = !{!2100, !2103}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2098, file: !1153, line: 647, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1153, line: 542, baseType: !191)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2098, file: !1153, line: 648, baseType: !2102, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2077, file: !1153, line: 666, baseType: !85, size: 32, offset: 320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2077, file: !1153, line: 667, baseType: !2106, size: 64, offset: 384)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1153, line: 579, size: 320, elements: !2108)
!2108 = !{!2109}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2107, file: !1153, line: 580, baseType: !1295, size: 320)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2077, file: !1153, line: 670, baseType: !714, size: 8, offset: 448)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2077, file: !1153, line: 681, baseType: !2112, size: 256, offset: 512)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !1153, line: 678, size: 256, elements: !2113)
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2112, file: !1153, line: 679, baseType: !746, size: 192, align: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2112, file: !1153, line: 680, baseType: !191, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2077, file: !1153, line: 689, baseType: !217, size: 128, offset: 768)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2077, file: !1153, line: 691, baseType: !2118, size: 64, offset: 896)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1153, line: 691, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2077, file: !1153, line: 694, baseType: !2121, size: 64, offset: 960)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2123)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1153, line: 694, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2077, file: !1153, line: 697, baseType: !191, size: 64, offset: 1024)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2077, file: !1153, line: 699, baseType: !1725, size: 64, offset: 1088)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2077, file: !1153, line: 700, baseType: !192, size: 64, offset: 1152)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2077, file: !1153, line: 711, baseType: !638, size: 64, offset: 1216)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2077, file: !1153, line: 717, baseType: !2129, size: 64, offset: 1280)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1153, line: 717, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2077, file: !1153, line: 722, baseType: !2132, offset: 1344)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1153, line: 570, elements: !923)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1995, file: !35, line: 1928, baseType: !191, size: 64, offset: 768)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1995, file: !35, line: 1929, baseType: !2135, size: 64, offset: 832)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!85, !373, !1725}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1995, file: !35, line: 1930, baseType: !2139, size: 64, offset: 896)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!85, !1725, !2142}
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1995, file: !35, line: 1931, baseType: !2135, size: 64, offset: 960)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1995, file: !35, line: 1932, baseType: !2145, size: 64, offset: 1024)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!85, !1725, !534, !534, !85}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1995, file: !35, line: 1933, baseType: !2149, size: 64, offset: 1088)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!85, !85, !1725, !85}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1995, file: !35, line: 1934, baseType: !2153, size: 64, offset: 1152)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!85, !1725, !85, !2156}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1995, file: !35, line: 1935, baseType: !1722, size: 64, offset: 1216)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1995, file: !35, line: 1936, baseType: !2160, size: 64, offset: 1280)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!85, !85}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1995, file: !35, line: 1937, baseType: !2153, size: 64, offset: 1344)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1995, file: !35, line: 1938, baseType: !2165, size: 64, offset: 1408)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!327, !2168, !1725, !2006, !341, !7}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1077, line: 59, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1995, file: !35, line: 1939, baseType: !2171, size: 64, offset: 1472)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!327, !1725, !2006, !2168, !341, !7}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1995, file: !35, line: 1940, baseType: !2175, size: 64, offset: 1536)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !1725}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1995, file: !35, line: 1941, baseType: !2179, size: 64, offset: 1600)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!85, !1725, !85, !2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1995, file: !35, line: 1942, baseType: !2185, size: 64, offset: 1664)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!198, !1725, !85, !534, !534}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1995, file: !35, line: 1944, baseType: !2189, size: 64, offset: 1728)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !1075, !1725}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1995, file: !35, line: 1948, baseType: !2193, size: 64, offset: 1792)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!327, !1725, !534, !1725, !534, !341, !7}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1995, file: !35, line: 1950, baseType: !2197, size: 64, offset: 1856)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!534, !1725, !534, !1725, !534, !534, !7}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1995, file: !35, line: 1953, baseType: !2145, size: 64, offset: 1920)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1995, file: !35, line: 1954, baseType: !2202, size: 64, offset: 1984)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!85, !2205, !7}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1995, file: !35, line: 1955, baseType: !2208, size: 64, offset: 2048)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!85, !2205, !2044, !7}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1726, file: !35, line: 1018, baseType: !446, size: 64, offset: 1472)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1726, file: !35, line: 1020, baseType: !192, size: 64, offset: 1536)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1726, file: !35, line: 1023, baseType: !192, size: 64, offset: 1600)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1726, file: !35, line: 1027, baseType: !2215, size: 64, offset: 1664)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1726, file: !35, line: 1029, baseType: !369, size: 64, offset: 1728)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1726, file: !35, line: 1030, baseType: !2218, size: 32, offset: 1792)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2219, line: 8, baseType: !442)
!2219 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1726, file: !35, line: 1031, baseType: !2218, size: 32, offset: 1824)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1702, file: !1153, line: 756, baseType: !191, size: 64, offset: 704)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1702, file: !1153, line: 757, baseType: !191, size: 64, offset: 768)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1702, file: !1153, line: 760, baseType: !191, size: 64, offset: 832)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1702, file: !1153, line: 761, baseType: !191, size: 64, offset: 896)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1702, file: !1153, line: 763, baseType: !191, size: 64, offset: 960)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1702, file: !1153, line: 764, baseType: !2227, size: 64, offset: 1024)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2091, line: 299, baseType: !2229)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2091, line: 299, size: 64, elements: !2230)
!2230 = !{!2231}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2229, file: !2091, line: 299, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2096, line: 18, baseType: !191)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1702, file: !1153, line: 773, baseType: !250, size: 32, offset: 1088)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1702, file: !1153, line: 785, baseType: !250, size: 32, offset: 1120)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1702, file: !1153, line: 795, baseType: !2236, size: 64, offset: 1152)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1153, line: 726, size: 128, elements: !2238)
!2238 = !{!2239, !2240}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2237, file: !1153, line: 727, baseType: !446, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2237, file: !1153, line: 728, baseType: !85, size: 32, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1702, file: !1153, line: 801, baseType: !191, size: 64, offset: 1216)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1702, file: !1153, line: 804, baseType: !638, size: 64, offset: 1280)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1702, file: !1153, line: 806, baseType: !85, size: 32, offset: 1344)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1702, file: !1153, line: 808, baseType: !230, size: 32, offset: 1376)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1702, file: !1153, line: 823, baseType: !1295, size: 320, offset: 1408)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1702, file: !1153, line: 825, baseType: !217, size: 128, offset: 1728)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1702, file: !1153, line: 845, baseType: !85, size: 32, offset: 1856)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1702, file: !1153, line: 849, baseType: !191, size: 64, offset: 1920)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1702, file: !1153, line: 850, baseType: !191, size: 64, offset: 1984)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1702, file: !1153, line: 852, baseType: !191, size: 64, offset: 2048)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1702, file: !1153, line: 853, baseType: !191, size: 64, offset: 2112)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1702, file: !1153, line: 854, baseType: !640, size: 64, offset: 2176)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1702, file: !1153, line: 855, baseType: !191, size: 64, offset: 2240)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1702, file: !1153, line: 856, baseType: !191, size: 64, offset: 2304)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1702, file: !1153, line: 857, baseType: !191, size: 64, offset: 2368)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1702, file: !1153, line: 858, baseType: !191, size: 64, offset: 2432)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1702, file: !1153, line: 865, baseType: !419, size: 32, offset: 2496)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1702, file: !1153, line: 867, baseType: !230, size: 32, offset: 2528)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1702, file: !1153, line: 869, baseType: !191, size: 64, offset: 2560)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1702, file: !1153, line: 869, baseType: !191, size: 64, offset: 2624)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1702, file: !1153, line: 869, baseType: !191, size: 64, offset: 2688)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1702, file: !1153, line: 869, baseType: !191, size: 64, offset: 2752)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1702, file: !1153, line: 870, baseType: !191, size: 64, offset: 2816)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1702, file: !1153, line: 870, baseType: !191, size: 64, offset: 2880)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1702, file: !1153, line: 870, baseType: !191, size: 64, offset: 2944)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1702, file: !1153, line: 871, baseType: !191, size: 64, offset: 3008)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1702, file: !1153, line: 871, baseType: !191, size: 64, offset: 3072)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1702, file: !1153, line: 871, baseType: !191, size: 64, offset: 3136)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1702, file: !1153, line: 871, baseType: !191, size: 64, offset: 3200)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1702, file: !1153, line: 873, baseType: !2271, size: 3328, offset: 3264)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 3328, elements: !2272)
!2272 = !{!2273}
!2273 = !DISubrange(count: 52)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1702, file: !1153, line: 875, baseType: !2275, size: 1280, offset: 6592)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1937, size: 1280, elements: !864)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1702, file: !1153, line: 877, baseType: !2277, size: 64, offset: 7872)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1153, line: 877, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1702, file: !1153, line: 880, baseType: !2280, size: 1088, offset: 7936)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2281, line: 72, baseType: !2282)
!2281 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2281, line: 23, size: 1088, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2291, !2292, !2293, !2294, !2321, !2322, !2323}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2282, file: !2281, line: 28, baseType: !446, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2282, file: !2281, line: 38, baseType: !640, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2282, file: !2281, line: 40, baseType: !191, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2282, file: !2281, line: 43, baseType: !1295, size: 320, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2282, file: !2281, line: 44, baseType: !2289, size: 64, offset: 512)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2281, line: 44, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2282, file: !2281, line: 48, baseType: !191, size: 64, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2282, file: !2281, line: 59, baseType: !634, size: 256, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2282, file: !2281, line: 60, baseType: !192, size: 64, offset: 896)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2282, file: !2281, line: 61, baseType: !2295, size: 64, offset: 960)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2297)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2298, line: 13, size: 1216, elements: !2299)
!2298 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2299 = !{!2300, !2301, !2302, !2303, !2304, !2305, !2306, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2297, file: !2298, line: 14, baseType: !192, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2297, file: !2298, line: 15, baseType: !191, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2297, file: !2298, line: 17, baseType: !191, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2297, file: !2298, line: 17, baseType: !191, size: 64, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2297, file: !2298, line: 18, baseType: !191, size: 64, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2297, file: !2298, line: 18, baseType: !191, size: 64, offset: 320)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2297, file: !2298, line: 19, baseType: !2307, size: 64, offset: 384)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2297, file: !2298, line: 21, baseType: !198, size: 64, offset: 448)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2297, file: !2298, line: 23, baseType: !198, size: 64, offset: 512)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2297, file: !2298, line: 24, baseType: !198, size: 64, offset: 576)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2297, file: !2298, line: 25, baseType: !198, size: 64, offset: 640)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2297, file: !2298, line: 26, baseType: !198, size: 64, offset: 704)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2297, file: !2298, line: 27, baseType: !198, size: 64, offset: 768)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2297, file: !2298, line: 28, baseType: !198, size: 64, offset: 832)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2297, file: !2298, line: 29, baseType: !198, size: 64, offset: 896)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2297, file: !2298, line: 30, baseType: !198, size: 64, offset: 960)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2297, file: !2298, line: 31, baseType: !198, size: 64, offset: 1024)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2297, file: !2298, line: 32, baseType: !198, size: 64, offset: 1088)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2297, file: !2298, line: 33, baseType: !198, size: 64, offset: 1152)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2282, file: !2281, line: 63, baseType: !250, size: 32, offset: 1024)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2282, file: !2281, line: 69, baseType: !263, size: 16, offset: 1056)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2282, file: !2281, line: 70, baseType: !770, size: 16, offset: 1072)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1702, file: !1153, line: 882, baseType: !191, size: 64, offset: 9024)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1702, file: !1153, line: 885, baseType: !230, size: 32, offset: 9088)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1702, file: !1153, line: 886, baseType: !2327, size: 64, offset: 9152)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1153, line: 732, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1702, file: !1153, line: 901, baseType: !1962, size: 64, offset: 9216)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1702, file: !1153, line: 904, baseType: !1725, size: 64, offset: 9280)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1702, file: !1153, line: 906, baseType: !2332, size: 64, offset: 9344)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1153, line: 906, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1702, file: !1153, line: 930, baseType: !250, size: 32, offset: 9408)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1702, file: !1153, line: 933, baseType: !250, size: 32, offset: 9440)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1702, file: !1153, line: 935, baseType: !2337, size: 64, offset: 9472)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !2338)
!2338 = !{!2339}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2337, file: !57, line: 104, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1702, file: !1153, line: 940, baseType: !638, size: 64, offset: 9536)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1702, file: !1153, line: 942, baseType: !894, size: 256, offset: 9600)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1699, file: !1153, line: 986, baseType: !2345, offset: 10240)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, elements: !1785)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1402, file: !1077, line: 882, baseType: !1698, size: 64, offset: 9792)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1402, file: !1077, line: 884, baseType: !85, size: 32, offset: 9856)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1402, file: !1077, line: 885, baseType: !85, size: 32, offset: 9888)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1402, file: !1077, line: 886, baseType: !85, size: 32, offset: 9920)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1402, file: !1077, line: 888, baseType: !85, size: 32, offset: 9952)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1402, file: !1077, line: 890, baseType: !191, size: 64, offset: 9984)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1402, file: !1077, line: 893, baseType: !7, size: 32, offset: 10048)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1402, file: !1077, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1402, file: !1077, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1402, file: !1077, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1402, file: !1077, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1402, file: !1077, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1402, file: !1077, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1402, file: !1077, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1402, file: !1077, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1402, file: !1077, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1402, file: !1077, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1402, file: !1077, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1402, file: !1077, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1402, file: !1077, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1402, file: !1077, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1402, file: !1077, line: 969, baseType: !191, size: 64, offset: 10176)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1402, file: !1077, line: 971, baseType: !2369, size: 448, offset: 10240)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !2370)
!2370 = !{!2371, !2372, !2377}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2369, file: !51, line: 26, baseType: !191, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2369, file: !51, line: 27, baseType: !2373, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!198, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, scope: !2369, file: !51, line: 28, baseType: !2378, size: 320, offset: 128)
!2378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2369, file: !51, line: 28, size: 320, elements: !2379)
!2379 = !{!2380, !2390, !2415}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2378, file: !51, line: 37, baseType: !2381, size: 320)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2378, file: !51, line: 30, size: 320, elements: !2382)
!2382 = !{!2383, !2385, !2386, !2387, !2388, !2389}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2381, file: !51, line: 31, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2381, file: !51, line: 32, baseType: !442, size: 32, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2381, file: !51, line: 33, baseType: !442, size: 32, offset: 96)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2381, file: !51, line: 34, baseType: !442, size: 32, offset: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2381, file: !51, line: 35, baseType: !446, size: 64, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2381, file: !51, line: 36, baseType: !2384, size: 64, offset: 256)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2378, file: !51, line: 47, baseType: !2391, size: 192)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2378, file: !51, line: 39, size: 192, elements: !2392)
!2392 = !{!2393, !2394, !2395, !2414}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2391, file: !51, line: 40, baseType: !1569, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2391, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, scope: !2391, file: !51, line: 42, baseType: !2396, size: 64, offset: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2391, file: !51, line: 42, size: 64, elements: !2397)
!2397 = !{!2398, !2406}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2396, file: !51, line: 43, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2401, line: 7, size: 128, elements: !2402)
!2401 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2402 = !{!2403, !2405}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2400, file: !2401, line: 8, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !329, line: 93, baseType: !536)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2400, file: !2401, line: 9, baseType: !536, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2396, file: !51, line: 44, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2409, line: 7, size: 64, elements: !2410)
!2409 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2410 = !{!2411, !2413}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2408, file: !2409, line: 8, baseType: !2412, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2409, line: 5, baseType: !630)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2408, file: !2409, line: 9, baseType: !630, size: 32, offset: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2391, file: !51, line: 46, baseType: !446, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2378, file: !51, line: 55, baseType: !2416, size: 256)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2378, file: !51, line: 49, size: 256, elements: !2417)
!2417 = !{!2418, !2421, !2422, !2423, !2424}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2416, file: !51, line: 50, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2416, file: !51, line: 51, baseType: !85, size: 32, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2416, file: !51, line: 52, baseType: !85, size: 32, offset: 96)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2416, file: !51, line: 53, baseType: !191, size: 64, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2416, file: !51, line: 54, baseType: !191, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1402, file: !1077, line: 973, baseType: !2426, size: 32, offset: 10688)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !189, line: 27, baseType: !2427)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !329, line: 28, baseType: !85)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1402, file: !1077, line: 974, baseType: !2426, size: 32, offset: 10720)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1402, file: !1077, line: 978, baseType: !191, size: 64, offset: 10752)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1402, file: !1077, line: 987, baseType: !1401, size: 64, offset: 10816)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1402, file: !1077, line: 990, baseType: !1401, size: 64, offset: 10880)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1402, file: !1077, line: 995, baseType: !217, size: 128, offset: 10944)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1402, file: !1077, line: 996, baseType: !217, size: 128, offset: 11072)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1402, file: !1077, line: 997, baseType: !1401, size: 64, offset: 11200)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1402, file: !1077, line: 1005, baseType: !217, size: 128, offset: 11264)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1402, file: !1077, line: 1006, baseType: !217, size: 128, offset: 11392)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1402, file: !1077, line: 1009, baseType: !1766, size: 64, offset: 11520)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1402, file: !1077, line: 1010, baseType: !2439, size: 512, offset: 11584)
!2439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 512, elements: !864)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1402, file: !1077, line: 1011, baseType: !217, size: 128, offset: 12096)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1402, file: !1077, line: 1012, baseType: !217, size: 128, offset: 12224)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1402, file: !1077, line: 1014, baseType: !582, size: 64, offset: 12352)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1402, file: !1077, line: 1017, baseType: !763, size: 64, offset: 12416)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1402, file: !1077, line: 1020, baseType: !763, size: 64, offset: 12480)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1402, file: !1077, line: 1023, baseType: !192, size: 64, offset: 12544)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1402, file: !1077, line: 1025, baseType: !446, size: 64, offset: 12608)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1402, file: !1077, line: 1026, baseType: !446, size: 64, offset: 12672)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1402, file: !1077, line: 1031, baseType: !446, size: 64, offset: 12736)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1402, file: !1077, line: 1032, baseType: !2450, size: 192, offset: 12800)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1077, line: 324, size: 192, elements: !2451)
!2451 = !{!2452, !2453, !2454}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2450, file: !1077, line: 326, baseType: !446, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2450, file: !1077, line: 327, baseType: !446, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2450, file: !1077, line: 328, baseType: !592, size: 32, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1402, file: !1077, line: 1041, baseType: !191, size: 64, offset: 12992)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1402, file: !1077, line: 1042, baseType: !191, size: 64, offset: 13056)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1402, file: !1077, line: 1045, baseType: !446, size: 64, offset: 13120)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1402, file: !1077, line: 1048, baseType: !446, size: 64, offset: 13184)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1402, file: !1077, line: 1051, baseType: !191, size: 64, offset: 13248)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1402, file: !1077, line: 1052, baseType: !191, size: 64, offset: 13312)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1402, file: !1077, line: 1055, baseType: !2462, size: 640, offset: 13376)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2463, line: 132, size: 640, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2464 = !{!2465, !2471, !2472}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2462, file: !2463, line: 133, baseType: !2466, size: 576)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2467, size: 576, elements: !296)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2463, line: 117, size: 192, elements: !2468)
!2468 = !{!2469, !2470}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2467, file: !2463, line: 118, baseType: !446, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2467, file: !2463, line: 119, baseType: !1578, size: 128, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2462, file: !2463, line: 134, baseType: !7, size: 32, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2462, file: !2463, line: 135, baseType: !7, size: 32, offset: 608)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1402, file: !1077, line: 1058, baseType: !2474, size: 448, offset: 14016)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2463, line: 144, size: 448, elements: !2475)
!2475 = !{!2476, !2477, !2478}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2474, file: !2463, line: 145, baseType: !854, size: 128, align: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2474, file: !2463, line: 146, baseType: !634, size: 256, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2474, file: !2463, line: 147, baseType: !7, size: 32, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1402, file: !1077, line: 1064, baseType: !1792, size: 64, offset: 14464)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1402, file: !1077, line: 1067, baseType: !1792, size: 64, offset: 14528)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1402, file: !1077, line: 1070, baseType: !1792, size: 64, offset: 14592)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1402, file: !1077, line: 1074, baseType: !1819, size: 64, offset: 14656)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1402, file: !1077, line: 1084, baseType: !2484, size: 128, offset: 14720)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !2485)
!2485 = !{!2486}
!2486 = !DISubrange(count: 16)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1402, file: !1077, line: 1086, baseType: !2488, size: 64, offset: 14848)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1077, line: 55, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1402, file: !1077, line: 1089, baseType: !2491, size: 64, offset: 14912)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2492, line: 12, size: 64, elements: !2493)
!2492 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2493 = !{!2494}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2491, file: !2492, line: 13, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2492, line: 8, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1402, file: !1077, line: 1090, baseType: !2498, size: 128, offset: 14976)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2499, line: 13, size: 128, elements: !2500)
!2499 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2500 = !{!2501}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2498, file: !2499, line: 14, baseType: !217, size: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1402, file: !1077, line: 1097, baseType: !2503, size: 64, offset: 15104)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1077, line: 50, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1402, file: !1077, line: 1100, baseType: !2506, size: 64, offset: 15168)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1077, line: 1100, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1402, file: !1077, line: 1103, baseType: !2509, size: 64, offset: 15232)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1077, line: 53, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1402, file: !1077, line: 1107, baseType: !2512, size: 64, offset: 15296)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1077, line: 56, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1402, file: !1077, line: 1110, baseType: !2515, size: 64, offset: 15360)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2517, line: 93, size: 8768, elements: !2518)
!2517 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2518 = !{!2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2566, !2575, !2576, !2578, !2579, !2580, !2583, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2621, !2622, !2629, !2639, !2642, !2643, !2646, !2647, !2648, !2649, !2650, !2651}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2516, file: !2517, line: 94, baseType: !1415, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2516, file: !2517, line: 95, baseType: !250, size: 32, offset: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2516, file: !2517, line: 96, baseType: !85, size: 32, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2516, file: !2517, line: 97, baseType: !85, size: 32, offset: 96)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2516, file: !2517, line: 98, baseType: !217, size: 128, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2516, file: !2517, line: 100, baseType: !1388, size: 192, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2516, file: !2517, line: 103, baseType: !1401, size: 64, offset: 448)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2516, file: !2517, line: 106, baseType: !2527, size: 192, offset: 512)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1967, line: 32, size: 192, elements: !2528)
!2528 = !{!2529, !2530}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2527, file: !1967, line: 33, baseType: !217, size: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2527, file: !1967, line: 34, baseType: !2531, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2532, line: 25, baseType: !2533)
!2532 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2532, line: 23, size: 64, elements: !2534)
!2534 = !{!2535}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2533, file: !2532, line: 24, baseType: !1649, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2516, file: !2517, line: 109, baseType: !1003, size: 64, offset: 704)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2516, file: !2517, line: 112, baseType: !85, size: 32, offset: 768)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2516, file: !2517, line: 114, baseType: !85, size: 32, offset: 800)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2516, file: !2517, line: 115, baseType: !1401, size: 64, offset: 832)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2516, file: !2517, line: 118, baseType: !85, size: 32, offset: 896)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2516, file: !2517, line: 119, baseType: !7, size: 32, offset: 928)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2516, file: !2517, line: 121, baseType: !2543, size: 64, offset: 960)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2517, line: 80, size: 448, elements: !2545)
!2545 = !{!2546, !2547, !2553}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2544, file: !2517, line: 81, baseType: !250, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2544, file: !2517, line: 82, baseType: !2548, size: 128, offset: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2517, line: 75, size: 128, elements: !2549)
!2549 = !{!2550, !2551}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2548, file: !2517, line: 76, baseType: !1401, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2548, file: !2517, line: 77, baseType: !2552, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2544, file: !2517, line: 83, baseType: !583, size: 256, offset: 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2516, file: !2517, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2516, file: !2517, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2516, file: !2517, line: 138, baseType: !7, size: 32, offset: 1056)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2516, file: !2517, line: 139, baseType: !217, size: 128, offset: 1088)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2516, file: !2517, line: 142, baseType: !1522, size: 512, offset: 1216)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2516, file: !2517, line: 143, baseType: !1530, size: 64, offset: 1728)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2516, file: !2517, line: 150, baseType: !2561, size: 256, offset: 1792)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2562, size: 256, elements: !753)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2517, line: 38, size: 128, elements: !2563)
!2563 = !{!2564, !2565}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2562, file: !2517, line: 39, baseType: !446, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2562, file: !2517, line: 40, baseType: !446, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2516, file: !2517, line: 156, baseType: !2567, size: 192, offset: 2048)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2517, line: 66, size: 192, elements: !2568)
!2568 = !{!2569}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2567, file: !2517, line: 67, baseType: !2570, size: 192)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2517, line: 47, size: 192, elements: !2571)
!2571 = !{!2572, !2573, !2574}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2570, file: !2517, line: 48, baseType: !640, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2570, file: !2517, line: 49, baseType: !640, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2570, file: !2517, line: 50, baseType: !640, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2516, file: !2517, line: 160, baseType: !2462, size: 640, offset: 2240)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2516, file: !2517, line: 163, baseType: !2577, size: 256, offset: 2880)
!2577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1766, size: 256, elements: !864)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2516, file: !2517, line: 169, baseType: !1766, size: 64, offset: 3136)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2516, file: !2517, line: 172, baseType: !85, size: 32, offset: 3200)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2516, file: !2517, line: 174, baseType: !2581, size: 64, offset: 3264)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2517, line: 174, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2516, file: !2517, line: 185, baseType: !2584, size: 64, offset: 3328)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !415, line: 860, baseType: !2585)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 853, size: 64, elements: !2586)
!2586 = !{!2587, !2588}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2585, file: !415, line: 858, baseType: !414, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2585, file: !415, line: 859, baseType: !230, size: 32, offset: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2516, file: !2517, line: 186, baseType: !446, size: 64, offset: 3392)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2516, file: !2517, line: 186, baseType: !446, size: 64, offset: 3456)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2516, file: !2517, line: 186, baseType: !446, size: 64, offset: 3520)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2516, file: !2517, line: 186, baseType: !446, size: 64, offset: 3584)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2516, file: !2517, line: 187, baseType: !446, size: 64, offset: 3648)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2516, file: !2517, line: 188, baseType: !446, size: 64, offset: 3712)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2516, file: !2517, line: 189, baseType: !2450, size: 192, offset: 3776)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2516, file: !2517, line: 190, baseType: !191, size: 64, offset: 3968)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2516, file: !2517, line: 190, baseType: !191, size: 64, offset: 4032)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2516, file: !2517, line: 190, baseType: !191, size: 64, offset: 4096)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2516, file: !2517, line: 190, baseType: !191, size: 64, offset: 4160)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2516, file: !2517, line: 191, baseType: !191, size: 64, offset: 4224)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2516, file: !2517, line: 191, baseType: !191, size: 64, offset: 4288)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2516, file: !2517, line: 191, baseType: !191, size: 64, offset: 4352)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2516, file: !2517, line: 191, baseType: !191, size: 64, offset: 4416)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2516, file: !2517, line: 192, baseType: !191, size: 64, offset: 4480)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2516, file: !2517, line: 192, baseType: !191, size: 64, offset: 4544)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2516, file: !2517, line: 192, baseType: !191, size: 64, offset: 4608)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2516, file: !2517, line: 192, baseType: !191, size: 64, offset: 4672)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2516, file: !2517, line: 193, baseType: !191, size: 64, offset: 4736)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2516, file: !2517, line: 193, baseType: !191, size: 64, offset: 4800)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2516, file: !2517, line: 194, baseType: !2611, size: 448, offset: 4864)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2612, line: 12, size: 448, elements: !2613)
!2612 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619, !2620}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2611, file: !2612, line: 15, baseType: !446, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2611, file: !2612, line: 17, baseType: !446, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2611, file: !2612, line: 19, baseType: !446, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2611, file: !2612, line: 21, baseType: !446, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2611, file: !2612, line: 29, baseType: !446, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2611, file: !2612, line: 35, baseType: !446, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2611, file: !2612, line: 44, baseType: !446, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2516, file: !2517, line: 202, baseType: !448, size: 64, offset: 5312)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2516, file: !2517, line: 213, baseType: !2623, size: 2048, offset: 5376)
!2623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2624, size: 2048, elements: !2485)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2625, line: 43, size: 128, elements: !2626)
!2625 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2626 = !{!2627, !2628}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2624, file: !2625, line: 44, baseType: !343, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2624, file: !2625, line: 45, baseType: !343, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2516, file: !2517, line: 216, baseType: !2630, size: 448, offset: 7424)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2517, line: 30, size: 448, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637, !2638}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2630, file: !2517, line: 31, baseType: !85, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2630, file: !2517, line: 32, baseType: !198, size: 64, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2630, file: !2517, line: 33, baseType: !191, size: 64, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2630, file: !2517, line: 34, baseType: !446, size: 64, offset: 192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2630, file: !2517, line: 34, baseType: !446, size: 64, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2630, file: !2517, line: 35, baseType: !191, size: 64, offset: 320)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2630, file: !2517, line: 35, baseType: !191, size: 64, offset: 384)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2516, file: !2517, line: 219, baseType: !2640, size: 64, offset: 7872)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2517, line: 219, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2516, file: !2517, line: 222, baseType: !7, size: 32, offset: 7936)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2516, file: !2517, line: 223, baseType: !2644, size: 64, offset: 8000)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2517, line: 223, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2516, file: !2517, line: 230, baseType: !714, size: 8, offset: 8064)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2516, file: !2517, line: 231, baseType: !772, size: 16, offset: 8080)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2516, file: !2517, line: 232, baseType: !772, size: 16, offset: 8096)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2516, file: !2517, line: 234, baseType: !1698, size: 64, offset: 8128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2516, file: !2517, line: 237, baseType: !634, size: 256, offset: 8192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2516, file: !2517, line: 243, baseType: !1295, size: 320, offset: 8448)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1402, file: !1077, line: 1111, baseType: !2653, size: 64, offset: 15424)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2517, line: 20, size: 16640, elements: !2655)
!2655 = !{!2656, !2657, !2658, !2659}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2654, file: !2517, line: 21, baseType: !230, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2654, file: !2517, line: 22, baseType: !1415, size: 32, offset: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2654, file: !2517, line: 23, baseType: !1388, size: 192, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2654, file: !2517, line: 24, baseType: !2660, size: 16384, offset: 256)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2661, size: 16384, elements: !300)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1967, line: 51, size: 256, elements: !2662)
!2662 = !{!2663}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2661, file: !1967, line: 52, baseType: !2664, size: 256)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1967, line: 37, size: 256, elements: !2665)
!2665 = !{!2666, !2673, !2674, !2678}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2664, file: !1967, line: 39, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2668, line: 83, baseType: !2669)
!2668 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2668, line: 82, baseType: !2671)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !85}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2664, file: !1967, line: 40, baseType: !191, size: 64, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2664, file: !1967, line: 46, baseType: !2675, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2668, line: 86, baseType: !2676)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2668, line: 85, baseType: !998)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2664, file: !1967, line: 48, baseType: !2531, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1402, file: !1077, line: 1112, baseType: !2531, size: 64, offset: 15488)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1402, file: !1077, line: 1113, baseType: !2531, size: 64, offset: 15552)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1402, file: !1077, line: 1115, baseType: !2531, size: 64, offset: 15616)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1402, file: !1077, line: 1116, baseType: !2527, size: 192, offset: 15680)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1402, file: !1077, line: 1117, baseType: !191, size: 64, offset: 15872)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1402, file: !1077, line: 1118, baseType: !341, size: 64, offset: 15936)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1402, file: !1077, line: 1119, baseType: !7, size: 32, offset: 16000)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1402, file: !1077, line: 1121, baseType: !853, size: 64, offset: 16064)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1402, file: !1077, line: 1125, baseType: !2688, size: 64, offset: 16128)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1077, line: 43, flags: DIFlagFwdDecl)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1402, file: !1077, line: 1127, baseType: !379, size: 32, offset: 16192)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1402, file: !1077, line: 1128, baseType: !7, size: 32, offset: 16224)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1402, file: !1077, line: 1130, baseType: !2693, size: 128, offset: 16256)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2694, line: 37, size: 128, elements: !2695)
!2694 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2695 = !{!2696, !2697, !2698}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2693, file: !2694, line: 38, baseType: !85, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2693, file: !2694, line: 39, baseType: !250, size: 32, offset: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2693, file: !2694, line: 40, baseType: !2699, size: 64, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2694, line: 24, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1402, file: !1077, line: 1131, baseType: !2702, size: 256, offset: 16384)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2703, line: 12, size: 256, elements: !2704)
!2703 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2704 = !{!2705, !2706, !2707, !2708}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2702, file: !2703, line: 13, baseType: !295, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2702, file: !2703, line: 14, baseType: !191, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2702, file: !2703, line: 15, baseType: !191, size: 64, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2702, file: !2703, line: 16, baseType: !714, size: 8, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1402, file: !1077, line: 1134, baseType: !446, size: 64, offset: 16640)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1402, file: !1077, line: 1135, baseType: !446, size: 64, offset: 16704)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1402, file: !1077, line: 1138, baseType: !230, size: 32, offset: 16768)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1402, file: !1077, line: 1141, baseType: !592, size: 32, offset: 16800)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1402, file: !1077, line: 1143, baseType: !2714, size: 64, offset: 16832)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1077, line: 735, size: 64, elements: !2715)
!2715 = !{!2716}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2714, file: !1077, line: 736, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1402, file: !1077, line: 1147, baseType: !1581, size: 128, offset: 16896)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1402, file: !1077, line: 1149, baseType: !1401, size: 64, offset: 17024)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1402, file: !1077, line: 1151, baseType: !2721, size: 64, offset: 17088)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1077, line: 1151, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1402, file: !1077, line: 1188, baseType: !192, size: 64, offset: 17152)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1402, file: !1077, line: 1191, baseType: !2725, size: 64, offset: 17216)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1077, line: 44, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1402, file: !1077, line: 1194, baseType: !2728, size: 64, offset: 17280)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1077, line: 45, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1402, file: !1077, line: 1197, baseType: !2731, size: 64, offset: 17344)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1077, line: 61, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1402, file: !1077, line: 1199, baseType: !2734, size: 64, offset: 17408)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2736, line: 99, size: 128, elements: !2737)
!2736 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2737 = !{!2738, !2739, !2740}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2735, file: !2736, line: 100, baseType: !638, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2735, file: !2736, line: 101, baseType: !250, size: 32, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2735, file: !2736, line: 103, baseType: !265, size: 16, offset: 96)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1402, file: !1077, line: 1202, baseType: !2742, size: 64, offset: 17472)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1077, line: 48, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1402, file: !1077, line: 1205, baseType: !191, size: 64, offset: 17536)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1402, file: !1077, line: 1206, baseType: !2746, size: 64, offset: 17600)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1967, line: 14, baseType: !2748)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1967, line: 12, size: 384, elements: !2749)
!2749 = !{!2750}
!2750 = !DIDerivedType(tag: DW_TAG_member, scope: !2748, file: !1967, line: 13, baseType: !2751, size: 384)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2748, file: !1967, line: 13, size: 384, elements: !2752)
!2752 = !{!2753, !2754, !2755, !2756}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2751, file: !1967, line: 13, baseType: !85, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2751, file: !1967, line: 13, baseType: !85, size: 32, offset: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2751, file: !1967, line: 13, baseType: !85, size: 32, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2751, file: !1967, line: 13, baseType: !2757, size: 256, offset: 128)
!2757 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2758, line: 37, size: 256, elements: !2759)
!2758 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2759 = !{!2760, !2765, !2778, !2784, !2793, !2820, !2825}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2757, file: !2758, line: 42, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2757, file: !2758, line: 39, size: 64, elements: !2762)
!2762 = !{!2763, !2764}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2761, file: !2758, line: 40, baseType: !2427, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2761, file: !2758, line: 41, baseType: !385, size: 32, offset: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2757, file: !2758, line: 50, baseType: !2766, size: 192)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2757, file: !2758, line: 45, size: 192, elements: !2767)
!2767 = !{!2768, !2770, !2771, !2777}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2766, file: !2758, line: 46, baseType: !2769, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !329, line: 95, baseType: !85)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2766, file: !2758, line: 47, baseType: !85, size: 32, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2766, file: !2758, line: 48, baseType: !2772, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2758, line: 11, baseType: !2773)
!2773 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2758, line: 8, size: 64, elements: !2774)
!2774 = !{!2775, !2776}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2773, file: !2758, line: 9, baseType: !85, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2773, file: !2758, line: 10, baseType: !192, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2766, file: !2758, line: 49, baseType: !85, size: 32, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2757, file: !2758, line: 57, baseType: !2779, size: 128)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2757, file: !2758, line: 53, size: 128, elements: !2780)
!2780 = !{!2781, !2782, !2783}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2779, file: !2758, line: 54, baseType: !2427, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2779, file: !2758, line: 55, baseType: !385, size: 32, offset: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2779, file: !2758, line: 56, baseType: !2772, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2757, file: !2758, line: 66, baseType: !2785, size: 256)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2757, file: !2758, line: 60, size: 256, elements: !2786)
!2786 = !{!2787, !2788, !2789, !2790, !2792}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2785, file: !2758, line: 61, baseType: !2427, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2785, file: !2758, line: 62, baseType: !385, size: 32, offset: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2785, file: !2758, line: 63, baseType: !85, size: 32, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2785, file: !2758, line: 64, baseType: !2791, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !329, line: 94, baseType: !330)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2785, file: !2758, line: 65, baseType: !2791, size: 64, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2757, file: !2758, line: 105, baseType: !2794, size: 256)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2757, file: !2758, line: 69, size: 256, elements: !2795)
!2795 = !{!2796, !2797}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2794, file: !2758, line: 70, baseType: !192, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, scope: !2794, file: !2758, line: 79, baseType: !2798, size: 192, offset: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2794, file: !2758, line: 79, size: 192, elements: !2799)
!2799 = !{!2800, !2801, !2802, !2809, !2814}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2798, file: !2758, line: 81, baseType: !85, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2798, file: !2758, line: 86, baseType: !772, size: 16)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2798, file: !2758, line: 92, baseType: !2803, size: 192)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2798, file: !2758, line: 88, size: 192, elements: !2804)
!2804 = !{!2805, !2807, !2808}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2803, file: !2758, line: 89, baseType: !2806, size: 64)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 64, elements: !1565)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2803, file: !2758, line: 90, baseType: !192, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2803, file: !2758, line: 91, baseType: !192, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2798, file: !2758, line: 97, baseType: !2810, size: 96)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2798, file: !2758, line: 94, size: 96, elements: !2811)
!2811 = !{!2812, !2813}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2810, file: !2758, line: 95, baseType: !2806, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2810, file: !2758, line: 96, baseType: !443, size: 32, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2798, file: !2758, line: 103, baseType: !2815, size: 128)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2798, file: !2758, line: 99, size: 128, elements: !2816)
!2816 = !{!2817, !2818, !2819}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2815, file: !2758, line: 100, baseType: !191, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2815, file: !2758, line: 101, baseType: !443, size: 32, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2815, file: !2758, line: 102, baseType: !443, size: 32, offset: 96)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2757, file: !2758, line: 111, baseType: !2821, size: 128)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2757, file: !2758, line: 108, size: 128, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2821, file: !2758, line: 109, baseType: !198, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2821, file: !2758, line: 110, baseType: !85, size: 32, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2757, file: !2758, line: 118, baseType: !2826, size: 128)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2757, file: !2758, line: 114, size: 128, elements: !2827)
!2827 = !{!2828, !2829, !2830}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2826, file: !2758, line: 115, baseType: !192, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2826, file: !2758, line: 116, baseType: !85, size: 32, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2826, file: !2758, line: 117, baseType: !7, size: 32, offset: 96)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1402, file: !1077, line: 1208, baseType: !2611, size: 448, offset: 17664)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1402, file: !1077, line: 1215, baseType: !446, size: 64, offset: 18112)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1402, file: !1077, line: 1217, baseType: !446, size: 64, offset: 18176)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1402, file: !1077, line: 1219, baseType: !446, size: 64, offset: 18240)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1402, file: !1077, line: 1223, baseType: !2836, size: 64, offset: 18304)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2837, line: 99, baseType: !2838)
!2837 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2837, line: 99, size: 64, elements: !2839)
!2839 = !{!2840}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2838, file: !2837, line: 99, baseType: !1649, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1402, file: !1077, line: 1225, baseType: !414, size: 32, offset: 18368)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1402, file: !1077, line: 1226, baseType: !85, size: 32, offset: 18400)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1402, file: !1077, line: 1227, baseType: !85, size: 32, offset: 18432)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1402, file: !1077, line: 1231, baseType: !2845, size: 64, offset: 18496)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1077, line: 1231, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1402, file: !1077, line: 1233, baseType: !217, size: 128, offset: 18560)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1402, file: !1077, line: 1240, baseType: !2849, size: 64, offset: 18688)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1077, line: 62, flags: DIFlagFwdDecl)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1402, file: !1077, line: 1242, baseType: !2852, size: 64, offset: 18752)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1077, line: 1242, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1402, file: !1077, line: 1244, baseType: !217, size: 128, offset: 18816)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1402, file: !1077, line: 1245, baseType: !2856, size: 64, offset: 18944)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1077, line: 51, flags: DIFlagFwdDecl)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1402, file: !1077, line: 1246, baseType: !634, size: 256, offset: 19008)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1402, file: !1077, line: 1247, baseType: !7, size: 32, offset: 19264)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1402, file: !1077, line: 1250, baseType: !2861, size: 64, offset: 19328)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1077, line: 57, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1402, file: !1077, line: 1251, baseType: !634, size: 256, offset: 19392)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1402, file: !1077, line: 1252, baseType: !217, size: 128, offset: 19648)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1402, file: !1077, line: 1259, baseType: !2129, size: 64, offset: 19776)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1402, file: !1077, line: 1260, baseType: !772, size: 16, offset: 19840)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1402, file: !1077, line: 1261, baseType: !772, size: 16, offset: 19856)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1402, file: !1077, line: 1314, baseType: !2869, size: 64, offset: 19904)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2871, line: 62, size: 256, align: 256, elements: !2872)
!2871 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2878, !2879}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2870, file: !2871, line: 75, baseType: !443, size: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2870, file: !2871, line: 90, baseType: !443, size: 32, offset: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2870, file: !2871, line: 112, baseType: !447, size: 64, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2870, file: !2871, line: 132, baseType: !443, size: 32, offset: 128)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2870, file: !2871, line: 140, baseType: !443, size: 32, offset: 160)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2870, file: !2871, line: 149, baseType: !443, size: 32, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2870, file: !2871, line: 154, baseType: !2880, offset: 224)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !1785)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1402, file: !1077, line: 1315, baseType: !442, size: 32, offset: 19968)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1402, file: !1077, line: 1316, baseType: !442, size: 32, offset: 20000)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1402, file: !1077, line: 1321, baseType: !191, size: 64, offset: 20032)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1402, file: !1077, line: 1325, baseType: !85, size: 32, offset: 20096)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1402, file: !1077, line: 1326, baseType: !85, size: 32, offset: 20128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1402, file: !1077, line: 1327, baseType: !85, size: 32, offset: 20160)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1402, file: !1077, line: 1328, baseType: !85, size: 32, offset: 20192)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1402, file: !1077, line: 1329, baseType: !854, size: 128, align: 64, offset: 20224)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1402, file: !1077, line: 1332, baseType: !2890, size: 128, offset: 20352)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2891, line: 51, size: 128, elements: !2892)
!2891 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2892 = !{!2893, !2898, !2899}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2890, file: !2891, line: 60, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2895, line: 7, size: 64, elements: !2896)
!2895 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2896 = !{!2897}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2894, file: !2895, line: 12, baseType: !1646, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2890, file: !2891, line: 63, baseType: !714, size: 8, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2890, file: !2891, line: 70, baseType: !714, size: 8, offset: 72)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1402, file: !1077, line: 1335, baseType: !2168, size: 64, offset: 20480)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1402, file: !1077, line: 1337, baseType: !2902, size: 128, offset: 20544)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2891, line: 39, size: 128, elements: !2903)
!2903 = !{!2904, !2965, !2966}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2902, file: !2891, line: 40, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1153, line: 74, size: 512, align: 128, elements: !2907)
!2907 = !{!2908, !2909, !2959, !2964}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2906, file: !1153, line: 75, baseType: !191, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, scope: !2906, file: !1153, line: 83, baseType: !2910, size: 320, offset: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2906, file: !1153, line: 83, size: 320, elements: !2911)
!2911 = !{!2912, !2933, !2947, !2951, !2958}
!2912 = !DIDerivedType(tag: DW_TAG_member, scope: !2910, file: !1153, line: 84, baseType: !2913, size: 320)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2910, file: !1153, line: 84, size: 320, elements: !2914)
!2914 = !{!2915, !2926, !2927, !2932}
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !2913, file: !1153, line: 90, baseType: !2916, size: 128)
!2916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2913, file: !1153, line: 90, size: 128, elements: !2917)
!2917 = !{!2918, !2919, !2924, !2925}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2916, file: !1153, line: 91, baseType: !217, size: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, scope: !2916, file: !1153, line: 94, baseType: !2920, size: 128)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2916, file: !1153, line: 94, size: 128, elements: !2921)
!2921 = !{!2922, !2923}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2920, file: !1153, line: 96, baseType: !192, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2920, file: !1153, line: 98, baseType: !7, size: 32, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2916, file: !1153, line: 102, baseType: !217, size: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2916, file: !1153, line: 103, baseType: !217, size: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2913, file: !1153, line: 106, baseType: !369, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, scope: !2913, file: !1153, line: 107, baseType: !2928, size: 64, offset: 192)
!2928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2913, file: !1153, line: 107, size: 64, elements: !2929)
!2929 = !{!2930, !2931}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2928, file: !1153, line: 108, baseType: !191, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2928, file: !1153, line: 109, baseType: !191, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2913, file: !1153, line: 117, baseType: !191, size: 64, offset: 256)
!2933 = !DIDerivedType(tag: DW_TAG_member, scope: !2910, file: !1153, line: 119, baseType: !2934, size: 320)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2910, file: !1153, line: 119, size: 320, elements: !2935)
!2935 = !{!2936, !2937, !2940, !2941, !2942}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2934, file: !1153, line: 124, baseType: !191, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2934, file: !1153, line: 125, baseType: !2938, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1153, line: 125, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2934, file: !1153, line: 126, baseType: !191, size: 64, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2934, file: !1153, line: 127, baseType: !191, size: 64, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_member, scope: !2934, file: !1153, line: 128, baseType: !2943, size: 64, offset: 256)
!2943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2934, file: !1153, line: 128, size: 64, elements: !2944)
!2944 = !{!2945, !2946}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2943, file: !1153, line: 133, baseType: !191, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2943, file: !1153, line: 138, baseType: !638, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, scope: !2910, file: !1153, line: 141, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2910, file: !1153, line: 141, size: 64, elements: !2949)
!2949 = !{!2950}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2948, file: !1153, line: 142, baseType: !191, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, scope: !2910, file: !1153, line: 144, baseType: !2952, size: 128)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2910, file: !1153, line: 144, size: 128, elements: !2953)
!2953 = !{!2954, !2957}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2952, file: !1153, line: 146, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1153, line: 146, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2952, file: !1153, line: 147, baseType: !192, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2910, file: !1153, line: 161, baseType: !854, size: 128, align: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, scope: !2906, file: !1153, line: 164, baseType: !2960, size: 32, offset: 384)
!2960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2906, file: !1153, line: 164, size: 32, elements: !2961)
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2960, file: !1153, line: 169, baseType: !250, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2960, file: !1153, line: 177, baseType: !7, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2906, file: !1153, line: 181, baseType: !250, size: 32, offset: 416)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2902, file: !2891, line: 42, baseType: !443, size: 32, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2902, file: !2891, line: 43, baseType: !443, size: 32, offset: 96)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1402, file: !1077, line: 1340, baseType: !2968, size: 64, offset: 20672)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1077, line: 69, flags: DIFlagFwdDecl)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1402, file: !1077, line: 1351, baseType: !85, size: 32, offset: 20736)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1402, file: !1077, line: 1352, baseType: !85, size: 32, offset: 20768)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1402, file: !1077, line: 1354, baseType: !191, size: 64, offset: 20800)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1402, file: !1077, line: 1364, baseType: !446, size: 64, offset: 20864)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1402, file: !1077, line: 1365, baseType: !446, size: 64, offset: 20928)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1402, file: !1077, line: 1412, baseType: !191, size: 64, offset: 20992)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1402, file: !1077, line: 1453, baseType: !2977, size: 64, offset: 21056)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1077, line: 1453, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1402, file: !1077, line: 1457, baseType: !2980, size: 64, offset: 21120)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !2982)
!2982 = !{!2983, !2984, !3003, !3006, !3007, !3040, !3050}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2981, file: !57, line: 62, baseType: !56, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, scope: !2981, file: !57, line: 64, baseType: !2985, size: 192, offset: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2981, file: !57, line: 64, size: 192, elements: !2986)
!2986 = !{!2987, !2998}
!2987 = !DIDerivedType(tag: DW_TAG_member, scope: !2985, file: !57, line: 65, baseType: !2988, size: 192)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2985, file: !57, line: 65, size: 192, elements: !2989)
!2989 = !{!2990, !2997}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2988, file: !57, line: 66, baseType: !2991, size: 128)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2992, line: 50, size: 128, elements: !2993)
!2992 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2993 = !{!2994, !2995, !2996}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2991, file: !2992, line: 52, baseType: !191, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2991, file: !2992, line: 54, baseType: !7, size: 32, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2991, file: !2992, line: 55, baseType: !7, size: 32, offset: 96)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2988, file: !57, line: 67, baseType: !191, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, scope: !2985, file: !57, line: 70, baseType: !2999, size: 192)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2985, file: !57, line: 70, size: 192, elements: !3000)
!3000 = !{!3001, !3002}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2999, file: !57, line: 71, baseType: !854, size: 128, align: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2999, file: !57, line: 72, baseType: !191, size: 64, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2981, file: !57, line: 76, baseType: !3004, size: 64, offset: 256)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2981, file: !57, line: 77, baseType: !191, size: 64, offset: 320)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2981, file: !57, line: 79, baseType: !3008, size: 64, offset: 384)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2992, line: 25, size: 256, elements: !3010)
!3010 = !{!3011, !3017, !3021}
!3011 = !DIDerivedType(tag: DW_TAG_member, scope: !3009, file: !2992, line: 26, baseType: !3012, size: 128)
!3012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3009, file: !2992, line: 26, size: 128, elements: !3013)
!3013 = !{!3014, !3016}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3012, file: !2992, line: 27, baseType: !3015, size: 128)
!3015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 128, elements: !2485)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3012, file: !2992, line: 28, baseType: !3015, size: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3009, file: !2992, line: 31, baseType: !3018, size: 64, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3020)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2992, line: 23, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, scope: !3009, file: !2992, line: 33, baseType: !3022, size: 64, offset: 192)
!3022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3009, file: !2992, line: 33, size: 64, elements: !3023)
!3023 = !{!3024, !3030, !3035}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3022, file: !2992, line: 38, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3022, file: !2992, line: 34, size: 64, elements: !3026)
!3026 = !{!3027, !3028, !3029}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3025, file: !2992, line: 35, baseType: !630, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3025, file: !2992, line: 36, baseType: !200, size: 8, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3025, file: !2992, line: 37, baseType: !200, size: 8, offset: 40)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3022, file: !2992, line: 42, baseType: !3031, size: 16)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3022, file: !2992, line: 39, size: 16, elements: !3032)
!3032 = !{!3033, !3034}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3031, file: !2992, line: 40, baseType: !200, size: 8)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3031, file: !2992, line: 41, baseType: !200, size: 8, offset: 8)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3022, file: !2992, line: 46, baseType: !3036, size: 16)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3022, file: !2992, line: 43, size: 16, elements: !3037)
!3037 = !{!3038, !3039}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3036, file: !2992, line: 44, baseType: !200, size: 8)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3036, file: !2992, line: 45, baseType: !200, size: 8, offset: 8)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2981, file: !57, line: 81, baseType: !3041, size: 64, offset: 448)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3043)
!3043 = !{!3044, !3045, !3046, !3047, !3048, !3049}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3042, file: !57, line: 86, baseType: !3004, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3042, file: !57, line: 87, baseType: !191, size: 64, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3042, file: !57, line: 88, baseType: !191, size: 64, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3042, file: !57, line: 89, baseType: !191, size: 64, offset: 192)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3042, file: !57, line: 90, baseType: !714, size: 8, offset: 256)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3042, file: !57, line: 92, baseType: !3041, size: 64, offset: 320)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2981, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1402, file: !1077, line: 1463, baseType: !3052, offset: 21184)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1077, line: 739, elements: !923)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1402, file: !1077, line: 1470, baseType: !854, size: 128, align: 64, offset: 21184)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1402, file: !1077, line: 1471, baseType: !1415, size: 32, offset: 21312)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1402, file: !1077, line: 1472, baseType: !85, size: 32, offset: 21344)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1402, file: !1077, line: 1474, baseType: !1401, size: 64, offset: 21376)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1402, file: !1077, line: 1475, baseType: !876, size: 320, offset: 21440)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1402, file: !1077, line: 1478, baseType: !3059, size: 64, offset: 21760)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3061, line: 14, flags: DIFlagFwdDecl)
!3061 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1402, file: !1077, line: 1482, baseType: !1415, size: 32, offset: 21824)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1402, file: !1077, line: 1489, baseType: !192, size: 64, offset: 21888)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1402, file: !1077, line: 1504, baseType: !192, size: 64, offset: 21952)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1402, file: !1077, line: 1505, baseType: !447, size: 64, offset: 22016)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1402, file: !1077, line: 1506, baseType: !446, size: 64, offset: 22080)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1402, file: !1077, line: 1507, baseType: !447, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1402, file: !1077, line: 1508, baseType: !447, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1402, file: !1077, line: 1509, baseType: !447, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1402, file: !1077, line: 1510, baseType: !854, size: 128, align: 64, offset: 22208)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1402, file: !1077, line: 1511, baseType: !85, size: 32, offset: 22336)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1402, file: !1077, line: 1515, baseType: !3073, size: 64, offset: 22400)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1429, line: 56, size: 64, elements: !3074)
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3073, file: !1429, line: 57, baseType: !1432, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1402, file: !1077, line: 1518, baseType: !3073, size: 64, offset: 22464)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1402, file: !1077, line: 1528, baseType: !854, size: 128, align: 64, offset: 22528)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1402, file: !1077, line: 1552, baseType: !3079, size: 35328, offset: 23040)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3080, line: 430, size: 35328, elements: !3081)
!3080 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3081 = !{!3082, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3111, !3112, !3113, !3114, !3115, !3116, !3119, !3120, !3121, !3122}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3079, file: !3080, line: 432, baseType: !3083, size: 192)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3084, size: 192, elements: !296)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3085, line: 16, size: 64, elements: !3086)
!3085 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3086 = !{!3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3084, file: !3085, line: 17, baseType: !263, size: 16)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3084, file: !3085, line: 18, baseType: !263, size: 16, offset: 16)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3084, file: !3085, line: 19, baseType: !263, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3084, file: !3085, line: 19, baseType: !263, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3084, file: !3085, line: 19, baseType: !263, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3084, file: !3085, line: 19, baseType: !263, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3084, file: !3085, line: 19, baseType: !263, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3084, file: !3085, line: 20, baseType: !263, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3084, file: !3085, line: 20, baseType: !263, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3084, file: !3085, line: 20, baseType: !263, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3084, file: !3085, line: 20, baseType: !263, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3084, file: !3085, line: 20, baseType: !263, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3084, file: !3085, line: 20, baseType: !263, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3079, file: !3080, line: 436, baseType: !191, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3079, file: !3080, line: 440, baseType: !265, size: 16, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3079, file: !3080, line: 441, baseType: !265, size: 16, offset: 272)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3079, file: !3080, line: 442, baseType: !265, size: 16, offset: 288)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3079, file: !3080, line: 443, baseType: !265, size: 16, offset: 304)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3079, file: !3080, line: 447, baseType: !191, size: 64, offset: 320)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3079, file: !3080, line: 448, baseType: !191, size: 64, offset: 384)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3079, file: !3080, line: 459, baseType: !3108, size: 256, offset: 448)
!3108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3109, size: 256, elements: !864)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3080, line: 428, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3079, file: !3080, line: 461, baseType: !191, size: 64, offset: 704)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3079, file: !3080, line: 463, baseType: !191, size: 64, offset: 768)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3079, file: !3080, line: 465, baseType: !191, size: 64, offset: 832)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3079, file: !3080, line: 466, baseType: !191, size: 64, offset: 896)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3079, file: !3080, line: 467, baseType: !191, size: 64, offset: 960)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3079, file: !3080, line: 473, baseType: !3117, size: 64, offset: 1024)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3080, line: 10, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3079, file: !3080, line: 480, baseType: !191, size: 64, offset: 1088)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3079, file: !3080, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3079, file: !3080, line: 491, baseType: !442, size: 32, offset: 1184)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3079, file: !3080, line: 501, baseType: !3123, size: 33792, offset: 1536)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3124, line: 448, size: 33792, elements: !3125)
!3124 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3125 = !{!3126, !3127, !3128, !3290, !3291, !3297, !3298}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3123, file: !3124, line: 461, baseType: !7, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3123, file: !3124, line: 468, baseType: !191, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3123, file: !3124, line: 476, baseType: !3129, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3124, line: 356, size: 33280, align: 512, elements: !3131)
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3130, file: !3124, line: 358, baseType: !7, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3130, file: !3124, line: 361, baseType: !7, size: 32, offset: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3130, file: !3124, line: 364, baseType: !446, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3130, file: !3124, line: 367, baseType: !446, size: 64, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3130, file: !3124, line: 370, baseType: !446, size: 64, offset: 192)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3130, file: !3124, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3130, file: !3124, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3130, file: !3124, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3130, file: !3124, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3130, file: !3124, line: 397, baseType: !3142, size: 32768, offset: 512)
!3142 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3124, line: 348, size: 32768, elements: !3143)
!3143 = !{!3144, !3159, !3196, !3273, !3286}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3142, file: !3124, line: 349, baseType: !3145, size: 896)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3124, line: 12, size: 896, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3158}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3145, file: !3124, line: 13, baseType: !442, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3145, file: !3124, line: 14, baseType: !442, size: 32, offset: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3145, file: !3124, line: 15, baseType: !442, size: 32, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3145, file: !3124, line: 16, baseType: !442, size: 32, offset: 96)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3145, file: !3124, line: 17, baseType: !442, size: 32, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3145, file: !3124, line: 18, baseType: !442, size: 32, offset: 160)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3145, file: !3124, line: 19, baseType: !442, size: 32, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3145, file: !3124, line: 22, baseType: !3155, size: 640, offset: 224)
!3155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 640, elements: !3156)
!3156 = !{!3157}
!3157 = !DISubrange(count: 20)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3145, file: !3124, line: 25, baseType: !442, size: 32, offset: 864)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3142, file: !3124, line: 350, baseType: !3160, size: 4096, align: 128)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3124, line: 34, size: 4096, align: 128, elements: !3161)
!3161 = !{!3162, !3163, !3164, !3165, !3166, !3181, !3182, !3183, !3185, !3187, !3191}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3160, file: !3124, line: 35, baseType: !263, size: 16)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3160, file: !3124, line: 36, baseType: !263, size: 16, offset: 16)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3160, file: !3124, line: 37, baseType: !263, size: 16, offset: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3160, file: !3124, line: 38, baseType: !263, size: 16, offset: 48)
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !3160, file: !3124, line: 39, baseType: !3167, size: 128, offset: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3160, file: !3124, line: 39, size: 128, elements: !3168)
!3168 = !{!3169, !3174}
!3169 = !DIDerivedType(tag: DW_TAG_member, scope: !3167, file: !3124, line: 40, baseType: !3170, size: 128)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3167, file: !3124, line: 40, size: 128, elements: !3171)
!3171 = !{!3172, !3173}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3170, file: !3124, line: 41, baseType: !446, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3170, file: !3124, line: 42, baseType: !446, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, scope: !3167, file: !3124, line: 44, baseType: !3175, size: 128)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3167, file: !3124, line: 44, size: 128, elements: !3176)
!3176 = !{!3177, !3178, !3179, !3180}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3175, file: !3124, line: 45, baseType: !442, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3175, file: !3124, line: 46, baseType: !442, size: 32, offset: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3175, file: !3124, line: 47, baseType: !442, size: 32, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3175, file: !3124, line: 48, baseType: !442, size: 32, offset: 96)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3160, file: !3124, line: 51, baseType: !442, size: 32, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3160, file: !3124, line: 52, baseType: !442, size: 32, offset: 224)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3160, file: !3124, line: 55, baseType: !3184, size: 1024, offset: 256)
!3184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 1024, elements: !455)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3160, file: !3124, line: 58, baseType: !3186, size: 2048, offset: 1280)
!3186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 2048, elements: !300)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3160, file: !3124, line: 60, baseType: !3188, size: 384, offset: 3328)
!3188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 384, elements: !3189)
!3189 = !{!3190}
!3190 = !DISubrange(count: 12)
!3191 = !DIDerivedType(tag: DW_TAG_member, scope: !3160, file: !3124, line: 62, baseType: !3192, size: 384, offset: 3712)
!3192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3160, file: !3124, line: 62, size: 384, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3192, file: !3124, line: 63, baseType: !3188, size: 384)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3192, file: !3124, line: 64, baseType: !3188, size: 384)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3142, file: !3124, line: 351, baseType: !3197, size: 1088)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3124, line: 79, size: 1088, elements: !3198)
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3272}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3197, file: !3124, line: 80, baseType: !442, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3197, file: !3124, line: 81, baseType: !442, size: 32, offset: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3197, file: !3124, line: 82, baseType: !442, size: 32, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3197, file: !3124, line: 83, baseType: !442, size: 32, offset: 96)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3197, file: !3124, line: 84, baseType: !442, size: 32, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3197, file: !3124, line: 85, baseType: !442, size: 32, offset: 160)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3197, file: !3124, line: 86, baseType: !442, size: 32, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3197, file: !3124, line: 88, baseType: !3155, size: 640, offset: 224)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3197, file: !3124, line: 89, baseType: !200, size: 8, offset: 864)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3197, file: !3124, line: 90, baseType: !200, size: 8, offset: 872)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3197, file: !3124, line: 91, baseType: !200, size: 8, offset: 880)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3197, file: !3124, line: 92, baseType: !200, size: 8, offset: 888)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3197, file: !3124, line: 93, baseType: !200, size: 8, offset: 896)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3197, file: !3124, line: 94, baseType: !200, size: 8, offset: 904)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3197, file: !3124, line: 95, baseType: !3214, size: 64, offset: 960)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3216, line: 11, size: 128, elements: !3217)
!3216 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3217 = !{!3218, !3219}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3215, file: !3216, line: 12, baseType: !198, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3215, file: !3216, line: 13, baseType: !3220, size: 64, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3222, line: 103, size: 1344, elements: !3223)
!3222 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3252, !3253, !3254}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3221, file: !3222, line: 109, baseType: !191, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3221, file: !3222, line: 110, baseType: !191, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3221, file: !3222, line: 111, baseType: !191, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3221, file: !3222, line: 112, baseType: !191, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3221, file: !3222, line: 113, baseType: !191, size: 64, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3221, file: !3222, line: 114, baseType: !191, size: 64, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3221, file: !3222, line: 117, baseType: !191, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3221, file: !3222, line: 118, baseType: !191, size: 64, offset: 448)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3221, file: !3222, line: 119, baseType: !191, size: 64, offset: 512)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3221, file: !3222, line: 120, baseType: !191, size: 64, offset: 576)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3221, file: !3222, line: 121, baseType: !191, size: 64, offset: 640)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3221, file: !3222, line: 122, baseType: !191, size: 64, offset: 704)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3221, file: !3222, line: 123, baseType: !191, size: 64, offset: 768)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3221, file: !3222, line: 124, baseType: !191, size: 64, offset: 832)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3221, file: !3222, line: 125, baseType: !191, size: 64, offset: 896)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3221, file: !3222, line: 139, baseType: !191, size: 64, offset: 960)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3221, file: !3222, line: 142, baseType: !191, size: 64, offset: 1024)
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !3221, file: !3222, line: 144, baseType: !3242, size: 64, offset: 1088)
!3242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3221, file: !3222, line: 144, size: 64, elements: !3243)
!3243 = !{!3244, !3245, !3246}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3242, file: !3222, line: 146, baseType: !263, size: 16)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3242, file: !3222, line: 148, baseType: !446, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3242, file: !3222, line: 150, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3222, line: 59, size: 64, elements: !3248)
!3248 = !{!3249, !3250, !3251}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3247, file: !3222, line: 61, baseType: !446, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3247, file: !3222, line: 63, baseType: !446, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3247, file: !3222, line: 65, baseType: !446, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3221, file: !3222, line: 153, baseType: !191, size: 64, offset: 1152)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3221, file: !3222, line: 154, baseType: !191, size: 64, offset: 1216)
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !3221, file: !3222, line: 156, baseType: !3255, size: 64, offset: 1280)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3221, file: !3222, line: 156, size: 64, elements: !3256)
!3256 = !{!3257, !3258, !3259}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3255, file: !3222, line: 158, baseType: !263, size: 16)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3255, file: !3222, line: 160, baseType: !446, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3255, file: !3222, line: 162, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3222, line: 69, size: 64, elements: !3261)
!3261 = !{!3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3260, file: !3222, line: 71, baseType: !446, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3260, file: !3222, line: 73, baseType: !446, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3260, file: !3222, line: 75, baseType: !446, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3260, file: !3222, line: 77, baseType: !446, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3260, file: !3222, line: 80, baseType: !446, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3260, file: !3222, line: 83, baseType: !446, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3260, file: !3222, line: 86, baseType: !446, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3260, file: !3222, line: 88, baseType: !446, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3260, file: !3222, line: 93, baseType: !446, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3260, file: !3222, line: 100, baseType: !446, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3197, file: !3124, line: 96, baseType: !442, size: 32, offset: 1024)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3142, file: !3124, line: 352, baseType: !3274, size: 4608, align: 512)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3124, line: 333, size: 4608, align: 512, elements: !3275)
!3275 = !{!3276, !3277, !3284}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3274, file: !3124, line: 334, baseType: !3160, size: 4096, align: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3274, file: !3124, line: 335, baseType: !3278, size: 512, offset: 4096)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3124, line: 312, size: 512, elements: !3279)
!3279 = !{!3280, !3281, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3278, file: !3124, line: 313, baseType: !446, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3278, file: !3124, line: 314, baseType: !446, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3278, file: !3124, line: 315, baseType: !3283, size: 384, offset: 128)
!3283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 384, elements: !1868)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3274, file: !3124, line: 336, baseType: !3285, offset: 4608)
!3285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, elements: !1785)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3142, file: !3124, line: 353, baseType: !3287, size: 32768)
!3287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 32768, elements: !3288)
!3288 = !{!3289}
!3289 = !DISubrange(count: 4096)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3123, file: !3124, line: 484, baseType: !3129, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3123, file: !3124, line: 491, baseType: !3292, size: 128, offset: 256)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3124, line: 404, size: 128, elements: !3293)
!3293 = !{!3294, !3295, !3296}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3292, file: !3124, line: 424, baseType: !446, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3292, file: !3124, line: 432, baseType: !7, size: 32, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3292, file: !3124, line: 440, baseType: !7, size: 32, offset: 96)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3123, file: !3124, line: 498, baseType: !3292, size: 128, offset: 384)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3123, file: !3124, line: 508, baseType: !3130, size: 33280, align: 512, offset: 512)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1378, file: !1379, line: 16, baseType: !1388, size: 192, offset: 512)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1378, file: !1379, line: 17, baseType: !250, size: 32, offset: 704)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !525, file: !35, line: 1240, baseType: !192, size: 64, offset: 6912)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !525, file: !35, line: 1243, baseType: !442, size: 32, offset: 6976)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !525, file: !35, line: 1245, baseType: !1135, size: 64, offset: 7040)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !525, file: !35, line: 1246, baseType: !1135, size: 64, offset: 7104)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !525, file: !35, line: 1248, baseType: !443, size: 32, offset: 7168)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !525, file: !35, line: 1249, baseType: !3307, size: 64, offset: 7232)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !525, file: !35, line: 1252, baseType: !3310, size: 256, offset: 7296)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 256, elements: !455)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !525, file: !35, line: 1253, baseType: !3312, size: 128, offset: 7552)
!3312 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3313, line: 21, baseType: !3314)
!3313 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3313, line: 19, size: 128, elements: !3315)
!3315 = !{!3316}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3314, file: !3313, line: 20, baseType: !3317, size: 128)
!3317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 128, elements: !2485)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !525, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !525, file: !35, line: 1261, baseType: !634, size: 256, offset: 7744)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !525, file: !35, line: 1267, baseType: !213, size: 64, offset: 8000)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !525, file: !35, line: 1269, baseType: !471, size: 64, offset: 8064)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !525, file: !35, line: 1271, baseType: !3323, size: 448, offset: 8128)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1144, line: 63, size: 448, elements: !3324)
!3324 = !{!3325, !3330, !3331, !3332, !3333, !3334, !3335}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3323, file: !1144, line: 64, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!191, !3329, !1142}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3323, file: !1144, line: 66, baseType: !3326, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3323, file: !1144, line: 69, baseType: !198, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3323, file: !1144, line: 70, baseType: !85, size: 32, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3323, file: !1144, line: 71, baseType: !7, size: 32, offset: 224)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3323, file: !1144, line: 74, baseType: !217, size: 128, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3323, file: !1144, line: 85, baseType: !3336, size: 64, offset: 384)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !525, file: !35, line: 1274, baseType: !638, size: 64, offset: 8576)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !525, file: !35, line: 1280, baseType: !638, size: 64, offset: 8640)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !525, file: !35, line: 1283, baseType: !85, size: 32, offset: 8704)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !525, file: !35, line: 1286, baseType: !2218, size: 32, offset: 8736)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !525, file: !35, line: 1289, baseType: !956, size: 64, offset: 8768)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !525, file: !35, line: 1290, baseType: !1003, size: 64, offset: 8832)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !525, file: !35, line: 1297, baseType: !1962, size: 64, offset: 8896)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !525, file: !35, line: 1304, baseType: !3345, size: 64, offset: 8960)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3346, line: 49, size: 64, elements: !3347)
!3346 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3347 = !{!3348}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3345, file: !3346, line: 50, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3346, line: 41, size: 512, align: 512, elements: !3351)
!3351 = !{!3352, !3353, !3358}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3350, file: !3346, line: 43, baseType: !230, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3350, file: !3346, line: 45, baseType: !3354, size: 192, offset: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3346, line: 29, size: 192, elements: !3355)
!3355 = !{!3356, !3357}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3354, file: !3346, line: 30, baseType: !217, size: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3354, file: !3346, line: 32, baseType: !198, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3350, file: !3346, line: 46, baseType: !198, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !525, file: !35, line: 1305, baseType: !3345, size: 64, offset: 9024)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !525, file: !35, line: 1306, baseType: !854, size: 128, align: 64, offset: 9088)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !525, file: !35, line: 1307, baseType: !894, size: 256, offset: 9216)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !525, file: !35, line: 1309, baseType: !634, size: 256, offset: 9472)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !525, file: !35, line: 1314, baseType: !85, size: 32, offset: 9728)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !525, file: !35, line: 1317, baseType: !230, size: 32, align: 512, offset: 10240)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !525, file: !35, line: 1318, baseType: !217, size: 128, offset: 10304)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !525, file: !35, line: 1320, baseType: !230, size: 32, offset: 10432)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !525, file: !35, line: 1321, baseType: !217, size: 128, offset: 10496)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !519, file: !520, line: 73, baseType: !85, size: 32, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !519, file: !520, line: 74, baseType: !3370, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1809, line: 42, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !473, file: !410, line: 141, baseType: !3374, size: 64, offset: 704)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!85, !1205, !714}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !473, file: !410, line: 142, baseType: !3378, size: 64, offset: 768)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!408, !408, !3381}
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !409, file: !410, line: 96, baseType: !524, size: 64, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !409, file: !410, line: 97, baseType: !191, size: 64, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !409, file: !410, line: 98, baseType: !192, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !410, line: 100, baseType: !3387, size: 128, offset: 1024)
!3387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !410, line: 100, size: 128, elements: !3388)
!3388 = !{!3389, !3390}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3387, file: !410, line: 101, baseType: !217, size: 128)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3387, file: !410, line: 102, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !409, file: !410, line: 104, baseType: !217, size: 128, offset: 1152)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !409, file: !410, line: 105, baseType: !217, size: 128, offset: 1280)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !409, file: !410, line: 113, baseType: !3395, size: 128, offset: 1408)
!3395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !410, line: 109, size: 128, elements: !3396)
!3396 = !{!3397, !3398, !3399}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3395, file: !410, line: 110, baseType: !880, size: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3395, file: !410, line: 111, baseType: !424, size: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3395, file: !410, line: 112, baseType: !854, size: 128, align: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !402, file: !35, line: 1968, baseType: !3401, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!213, !408, !373, !3404}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3406, line: 10, size: 128, elements: !3407)
!3406 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3407 = !{!3408, !3409}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3405, file: !3406, line: 11, baseType: !677, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3405, file: !3406, line: 12, baseType: !192, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !402, file: !35, line: 1969, baseType: !3411, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!85, !3370, !373, !85}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !402, file: !35, line: 1970, baseType: !3415, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!396, !373, !85, !714}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !402, file: !35, line: 1972, baseType: !3419, size: 64, offset: 256)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!85, !408, !295, !85}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !402, file: !35, line: 1974, baseType: !3423, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!85, !3370, !373, !408, !336, !714}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !402, file: !35, line: 1976, baseType: !3427, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!85, !408, !373, !408}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !402, file: !35, line: 1977, baseType: !3431, size: 64, offset: 448)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!85, !373, !408}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !402, file: !35, line: 1978, baseType: !3435, size: 64, offset: 512)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!85, !3370, !373, !408, !213}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !402, file: !35, line: 1980, baseType: !3439, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!85, !3370, !373, !408, !336}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !402, file: !35, line: 1982, baseType: !3431, size: 64, offset: 640)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !402, file: !35, line: 1983, baseType: !3444, size: 64, offset: 704)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!85, !3370, !373, !408, !336, !529}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !402, file: !35, line: 1985, baseType: !3448, size: 64, offset: 768)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!85, !3370, !373, !408, !373, !408, !7}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !402, file: !35, line: 1987, baseType: !3452, size: 64, offset: 832)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!85, !3370, !408, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !3457)
!3457 = !{!3458, !3459, !3460, !3470, !3479, !3480, !3485, !3486, !3487}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3456, file: !35, line: 227, baseType: !7, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3456, file: !35, line: 228, baseType: !336, size: 16, offset: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, scope: !3456, file: !35, line: 241, baseType: !3461, size: 32, offset: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3456, file: !35, line: 241, size: 32, elements: !3462)
!3462 = !{!3463, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3461, file: !35, line: 242, baseType: !379, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3461, file: !35, line: 243, baseType: !3465, size: 32)
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3466, line: 16, baseType: !3467)
!3466 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3466, line: 14, size: 32, elements: !3468)
!3468 = !{!3469}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3467, file: !3466, line: 15, baseType: !384, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3456, file: !35, line: 245, baseType: !3471, size: 32, offset: 96)
!3471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3456, file: !35, line: 245, size: 32, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3471, file: !35, line: 246, baseType: !388, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3471, file: !35, line: 247, baseType: !3475, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3466, line: 20, baseType: !3476)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3466, line: 18, size: 32, elements: !3477)
!3477 = !{!3478}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3476, file: !3466, line: 19, baseType: !392, size: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3456, file: !35, line: 249, baseType: !534, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3456, file: !35, line: 250, baseType: !3481, size: 128, offset: 192)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1136, line: 13, size: 128, elements: !3482)
!3482 = !{!3483, !3484}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3481, file: !1136, line: 14, baseType: !1135, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3481, file: !1136, line: 15, baseType: !198, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3456, file: !35, line: 251, baseType: !3481, size: 128, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3456, file: !35, line: 252, baseType: !3481, size: 128, offset: 448)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3456, file: !35, line: 259, baseType: !1725, size: 64, offset: 576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !402, file: !35, line: 1988, baseType: !3489, size: 64, offset: 896)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!85, !3370, !1205, !3492, !442, !7}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3494, line: 22, size: 1280, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3493, file: !3494, line: 23, baseType: !442, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3493, file: !3494, line: 24, baseType: !336, size: 16, offset: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3493, file: !3494, line: 25, baseType: !7, size: 32, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3493, file: !3494, line: 26, baseType: !1847, size: 32, offset: 96)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3493, file: !3494, line: 27, baseType: !446, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3493, file: !3494, line: 28, baseType: !446, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3493, file: !3494, line: 41, baseType: !446, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3493, file: !3494, line: 42, baseType: !529, size: 32, offset: 320)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3493, file: !3494, line: 43, baseType: !529, size: 32, offset: 352)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3493, file: !3494, line: 44, baseType: !379, size: 32, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3493, file: !3494, line: 45, baseType: !388, size: 32, offset: 416)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3493, file: !3494, line: 46, baseType: !534, size: 64, offset: 448)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3493, file: !3494, line: 47, baseType: !3481, size: 128, offset: 512)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3493, file: !3494, line: 48, baseType: !3481, size: 128, offset: 640)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3493, file: !3494, line: 49, baseType: !3481, size: 128, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3493, file: !3494, line: 50, baseType: !3481, size: 128, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3493, file: !3494, line: 51, baseType: !446, size: 64, offset: 1024)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3493, file: !3494, line: 52, baseType: !446, size: 64, offset: 1088)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3493, file: !3494, line: 53, baseType: !442, size: 32, offset: 1152)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3493, file: !3494, line: 54, baseType: !442, size: 32, offset: 1184)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3493, file: !3494, line: 55, baseType: !446, size: 64, offset: 1216)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !402, file: !35, line: 1990, baseType: !3518, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!327, !408, !295, !341}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !402, file: !35, line: 1991, baseType: !3522, size: 64, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!85, !373, !3525, !446, !446}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !402, file: !35, line: 1993, baseType: !3528, size: 64, offset: 1088)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!85, !373, !85}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !402, file: !35, line: 1994, baseType: !3532, size: 64, offset: 1152)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!85, !373, !408, !1725, !7, !336}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !402, file: !35, line: 1997, baseType: !3536, size: 64, offset: 1216)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!85, !3370, !373, !1725, !336}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !402, file: !35, line: 1999, baseType: !3540, size: 64, offset: 1280)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!396, !3370, !408, !85}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !402, file: !35, line: 2001, baseType: !3544, size: 64, offset: 1344)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!85, !3370, !408, !396, !85}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !402, file: !35, line: 2003, baseType: !3548, size: 64, offset: 1408)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!85, !3370, !408, !3551}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !402, file: !35, line: 2005, baseType: !3554, size: 64, offset: 1472)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!85, !408, !3551}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !402, file: !35, line: 2006, baseType: !3558, size: 64, offset: 1536)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!3561, !373}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !3563)
!3563 = !{!3564, !3571}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3562, file: !35, line: 3193, baseType: !3565, size: 128)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3566, line: 296, size: 128, elements: !3567)
!3566 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3567 = !{!3568, !3569, !3570}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3565, file: !3566, line: 297, baseType: !230, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3565, file: !3566, line: 299, baseType: !188, size: 32, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3565, file: !3566, line: 300, baseType: !192, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3562, file: !35, line: 3194, baseType: !442, size: 32, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !374, file: !35, line: 655, baseType: !524, size: 64, offset: 448)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !374, file: !35, line: 656, baseType: !369, size: 64, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !374, file: !35, line: 659, baseType: !192, size: 64, offset: 576)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !374, file: !35, line: 663, baseType: !191, size: 64, offset: 640)
!3576 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !35, line: 671, baseType: !3577, size: 32, offset: 704)
!3577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !35, line: 671, size: 32, elements: !3578)
!3578 = !{!3579, !3581}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3577, file: !35, line: 672, baseType: !3580, size: 32)
!3580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3577, file: !35, line: 673, baseType: !7, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !374, file: !35, line: 675, baseType: !529, size: 32, offset: 736)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !374, file: !35, line: 676, baseType: !534, size: 64, offset: 768)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !374, file: !35, line: 677, baseType: !3481, size: 128, offset: 832)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !374, file: !35, line: 678, baseType: !3481, size: 128, offset: 960)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !374, file: !35, line: 679, baseType: !3481, size: 128, offset: 1088)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !374, file: !35, line: 680, baseType: !230, size: 32, offset: 1216)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !374, file: !35, line: 681, baseType: !265, size: 16, offset: 1248)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !374, file: !35, line: 682, baseType: !200, size: 8, offset: 1264)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !374, file: !35, line: 683, baseType: !200, size: 8, offset: 1272)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !374, file: !35, line: 684, baseType: !1283, size: 64, offset: 1280)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !374, file: !35, line: 691, baseType: !191, size: 64, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !374, file: !35, line: 692, baseType: !1295, size: 320, offset: 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !374, file: !35, line: 694, baseType: !191, size: 64, offset: 1728)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !374, file: !35, line: 695, baseType: !191, size: 64, offset: 1792)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !374, file: !35, line: 697, baseType: !880, size: 128, offset: 1856)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !374, file: !35, line: 698, baseType: !217, size: 128, offset: 1984)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !374, file: !35, line: 707, baseType: !217, size: 128, offset: 2112)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !374, file: !35, line: 708, baseType: !217, size: 128, offset: 2240)
!3600 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !35, line: 709, baseType: !3601, size: 128, offset: 2368)
!3601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !35, line: 709, size: 128, elements: !3602)
!3602 = !{!3603, !3604}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3601, file: !35, line: 710, baseType: !1003, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3601, file: !35, line: 711, baseType: !854, size: 128, align: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !374, file: !35, line: 713, baseType: !640, size: 64, offset: 2496)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !374, file: !35, line: 714, baseType: !640, size: 64, offset: 2560)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !374, file: !35, line: 715, baseType: !250, size: 32, offset: 2624)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !374, file: !35, line: 716, baseType: !250, size: 32, offset: 2656)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !374, file: !35, line: 717, baseType: !250, size: 32, offset: 2688)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !374, file: !35, line: 719, baseType: !250, size: 32, offset: 2720)
!3611 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !35, line: 721, baseType: !3612, size: 64, offset: 2752)
!3612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !35, line: 721, size: 64, elements: !3613)
!3613 = !{!3614, !3615}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3612, file: !35, line: 722, baseType: !1993, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3612, file: !35, line: 723, baseType: !1026, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !374, file: !35, line: 725, baseType: !3617, size: 64, offset: 2816)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !374, file: !35, line: 726, baseType: !370, size: 1536, align: 64, offset: 2880)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !374, file: !35, line: 727, baseType: !217, size: 128, offset: 4416)
!3621 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !35, line: 728, baseType: !3622, size: 64, offset: 4544)
!3622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !35, line: 728, size: 64, elements: !3623)
!3623 = !{!3624, !3625, !3628, !3629}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3622, file: !35, line: 729, baseType: !2168, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3622, file: !35, line: 730, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3622, file: !35, line: 731, baseType: !295, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3622, file: !35, line: 732, baseType: !7, size: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !374, file: !35, line: 735, baseType: !443, size: 32, offset: 4608)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !374, file: !35, line: 738, baseType: !443, size: 32, offset: 4640)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !374, file: !35, line: 739, baseType: !3307, size: 64, offset: 4672)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !374, file: !35, line: 750, baseType: !192, size: 64, offset: 4736)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !370, file: !35, line: 474, baseType: !3565, size: 128, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !370, file: !35, line: 475, baseType: !1295, size: 320, offset: 192)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !370, file: !35, line: 476, baseType: !188, size: 32, offset: 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !370, file: !35, line: 477, baseType: !250, size: 32, offset: 544)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !370, file: !35, line: 482, baseType: !1581, size: 128, offset: 576)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !370, file: !35, line: 483, baseType: !191, size: 64, offset: 704)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !370, file: !35, line: 484, baseType: !191, size: 64, offset: 768)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !370, file: !35, line: 485, baseType: !3642, size: 64, offset: 832)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3644)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !3645)
!3645 = !{!3646, !3650, !3720, !3724, !3728, !3734, !3739, !3743, !3748, !3752, !3756, !3760, !3761, !3765, !3769, !3773, !3778, !3782, !3789, !3790}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3644, file: !35, line: 405, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!85, !2905, !1038}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3644, file: !35, line: 406, baseType: !3651, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!85, !1725, !3654}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1153, line: 293, size: 1536, elements: !3656)
!3656 = !{!3657, !3687, !3701}
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !1153, line: 295, baseType: !3658, size: 512)
!3658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3655, file: !1153, line: 295, size: 512, elements: !3659)
!3659 = !{!3660, !3686}
!3660 = !DIDerivedType(tag: DW_TAG_member, scope: !3658, file: !1153, line: 296, baseType: !3661, size: 448)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3658, file: !1153, line: 296, size: 448, elements: !3662)
!3662 = !{!3663, !3664, !3673, !3674, !3675, !3684, !3685}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3661, file: !1153, line: 298, baseType: !191, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, scope: !3661, file: !1153, line: 299, baseType: !3665, size: 128, offset: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3661, file: !1153, line: 299, size: 128, elements: !3666)
!3666 = !{!3667, !3668}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3665, file: !1153, line: 300, baseType: !217, size: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, scope: !3665, file: !1153, line: 302, baseType: !3669, size: 128)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3665, file: !1153, line: 302, size: 128, elements: !3670)
!3670 = !{!3671, !3672}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3669, file: !1153, line: 303, baseType: !192, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3669, file: !1153, line: 305, baseType: !7, size: 32, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3661, file: !1153, line: 310, baseType: !369, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3661, file: !1153, line: 311, baseType: !191, size: 64, offset: 256)
!3675 = !DIDerivedType(tag: DW_TAG_member, scope: !3661, file: !1153, line: 312, baseType: !3676, size: 64, offset: 320)
!3676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3661, file: !1153, line: 312, size: 64, elements: !3677)
!3677 = !{!3678, !3679}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3676, file: !1153, line: 313, baseType: !192, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3676, file: !1153, line: 314, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1153, line: 257, baseType: !3681)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1153, line: 255, size: 64, elements: !3682)
!3682 = !{!3683}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3681, file: !1153, line: 256, baseType: !191, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3661, file: !1153, line: 316, baseType: !250, size: 32, offset: 384)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3661, file: !1153, line: 317, baseType: !250, size: 32, offset: 416)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3658, file: !1153, line: 323, baseType: !2906, size: 512, align: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !1153, line: 325, baseType: !3688, size: 512, offset: 512)
!3688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3655, file: !1153, line: 325, size: 512, elements: !3689)
!3689 = !{!3690, !3700}
!3690 = !DIDerivedType(tag: DW_TAG_member, scope: !3688, file: !1153, line: 326, baseType: !3691, size: 320)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !1153, line: 326, size: 320, elements: !3692)
!3692 = !{!3693, !3694, !3695, !3696, !3697, !3698, !3699}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3691, file: !1153, line: 327, baseType: !191, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3691, file: !1153, line: 328, baseType: !191, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3691, file: !1153, line: 329, baseType: !191, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3691, file: !1153, line: 331, baseType: !250, size: 32, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3691, file: !1153, line: 332, baseType: !250, size: 32, offset: 224)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3691, file: !1153, line: 333, baseType: !250, size: 32, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3691, file: !1153, line: 335, baseType: !7, size: 32, offset: 288)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3688, file: !1153, line: 339, baseType: !2906, size: 512, align: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !1153, line: 341, baseType: !3702, size: 512, offset: 1024)
!3702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3655, file: !1153, line: 341, size: 512, elements: !3703)
!3703 = !{!3704, !3713, !3719}
!3704 = !DIDerivedType(tag: DW_TAG_member, scope: !3702, file: !1153, line: 342, baseType: !3705, size: 384)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3702, file: !1153, line: 342, size: 384, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3705, file: !1153, line: 343, baseType: !191, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3705, file: !1153, line: 344, baseType: !191, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3705, file: !1153, line: 346, baseType: !192, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3705, file: !1153, line: 347, baseType: !192, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3705, file: !1153, line: 348, baseType: !192, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3705, file: !1153, line: 349, baseType: !192, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_member, scope: !3702, file: !1153, line: 352, baseType: !3714, size: 256)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3702, file: !1153, line: 352, size: 256, elements: !3715)
!3715 = !{!3716, !3717, !3718}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3714, file: !1153, line: 353, baseType: !191, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3714, file: !1153, line: 354, baseType: !191, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3714, file: !1153, line: 356, baseType: !217, size: 128, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3702, file: !1153, line: 359, baseType: !2906, size: 512, align: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3644, file: !35, line: 409, baseType: !3721, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!85, !369, !1038}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3644, file: !35, line: 412, baseType: !3725, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!714, !369, !3654}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3644, file: !35, line: 414, baseType: !3729, size: 64, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{null, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3644, file: !35, line: 416, baseType: !3735, size: 64, offset: 320)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!85, !1725, !369, !534, !7, !3738, !2183}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3644, file: !35, line: 419, baseType: !3740, size: 64, offset: 384)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!85, !1725, !369, !534, !7, !7, !2905, !192}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3644, file: !35, line: 424, baseType: !3744, size: 64, offset: 448)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!3747, !369, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !189, line: 131, baseType: !446)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3644, file: !35, line: 425, baseType: !3749, size: 64, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{null, !3654, !341, !341}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3644, file: !35, line: 426, baseType: !3753, size: 64, offset: 576)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!714, !3654, !188}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3644, file: !35, line: 427, baseType: !3757, size: 64, offset: 640)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{null, !3654}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3644, file: !35, line: 428, baseType: !2012, size: 64, offset: 704)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3644, file: !35, line: 433, baseType: !3762, size: 64, offset: 768)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!85, !369, !3654, !3654, !21}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3644, file: !35, line: 435, baseType: !3766, size: 64, offset: 832)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!85, !3654}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3644, file: !35, line: 436, baseType: !3770, size: 64, offset: 896)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!714, !3654, !341, !341}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3644, file: !35, line: 438, baseType: !3774, size: 64, offset: 960)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{null, !3654, !3777, !3777}
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3644, file: !35, line: 439, baseType: !3779, size: 64, offset: 1024)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!85, !369, !2905}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3644, file: !35, line: 442, baseType: !3783, size: 64, offset: 1088)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!85, !3786, !1725, !3788}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3644, file: !35, line: 444, baseType: !2175, size: 64, offset: 1152)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3644, file: !35, line: 445, baseType: !3791, size: 64, offset: 1216)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!85, !2015, !2037}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !35, line: 486, baseType: !191, size: 64, offset: 896)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !370, file: !35, line: 487, baseType: !1295, size: 320, offset: 960)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !370, file: !35, line: 488, baseType: !2218, size: 32, offset: 1280)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !370, file: !35, line: 489, baseType: !230, size: 32, offset: 1312)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !370, file: !35, line: 490, baseType: !217, size: 128, offset: 1344)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !370, file: !35, line: 491, baseType: !192, size: 64, offset: 1472)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !360, file: !321, line: 180, baseType: !3801, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!327, !1725, !223, !359, !295, !534, !341}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !360, file: !321, line: 182, baseType: !3801, size: 64, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !360, file: !321, line: 184, baseType: !3806, size: 64, offset: 448)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!85, !1725, !223, !359, !2076}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !348, file: !321, line: 90, baseType: !3810, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !348, file: !321, line: 91, baseType: !3812, size: 64, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !311, file: !210, line: 120, baseType: !3814, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!3817, !278}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3819)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !3820)
!3820 = !{!3821, !3822, !3826, !3830, !3836, !3840}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3819, file: !29, line: 40, baseType: !28, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3819, file: !29, line: 41, baseType: !3823, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!714}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3819, file: !29, line: 42, baseType: !3827, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!192}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3819, file: !29, line: 43, baseType: !3831, size: 64, offset: 192)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!2307, !3834}
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3819, file: !29, line: 44, baseType: !3837, size: 64, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!2307}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3819, file: !29, line: 45, baseType: !677, size: 64, offset: 320)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !311, file: !210, line: 121, baseType: !3842, size: 64, offset: 256)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!2307, !278}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !311, file: !210, line: 122, baseType: !3846, size: 64, offset: 320)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{null, !278, !3849, !3850}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !209, file: !210, line: 70, baseType: !3852, size: 64, offset: 384)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !549, line: 190, size: 1152, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3946, !3947, !3948, !3949, !3950, !3953}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3853, file: !549, line: 191, baseType: !250, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3853, file: !549, line: 192, baseType: !250, size: 32, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3853, file: !549, line: 202, baseType: !3852, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3853, file: !549, line: 203, baseType: !213, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3853, file: !549, line: 205, baseType: !746, size: 192, align: 64, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3853, file: !549, line: 207, baseType: !2307, size: 64, offset: 384)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3853, file: !549, line: 208, baseType: !7, size: 32, offset: 448)
!3862 = !DIDerivedType(tag: DW_TAG_member, scope: !3853, file: !549, line: 209, baseType: !3863, size: 256, offset: 512)
!3863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3853, file: !549, line: 209, size: 256, elements: !3864)
!3864 = !{!3865, !3874, !3878}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3863, file: !549, line: 210, baseType: !3866, size: 256)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !549, line: 153, size: 256, elements: !3867)
!3867 = !{!3868, !3869, !3870, !3873}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3866, file: !549, line: 154, baseType: !191, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3866, file: !549, line: 156, baseType: !1584, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3866, file: !549, line: 162, baseType: !3871, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !549, line: 162, flags: DIFlagFwdDecl)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3866, file: !549, line: 167, baseType: !191, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3863, file: !549, line: 211, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !549, line: 170, size: 64, elements: !3876)
!3876 = !{!3877}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3875, file: !549, line: 171, baseType: !3852, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3863, file: !549, line: 212, baseType: !3879, size: 256)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !549, line: 174, size: 256, elements: !3880)
!3880 = !{!3881, !3941, !3944, !3945}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3879, file: !549, line: 175, baseType: !3882, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3884)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !549, line: 271, size: 768, elements: !3885)
!3885 = !{!3886, !3906, !3910, !3914, !3918, !3922, !3926, !3930, !3931, !3932, !3933, !3937}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3884, file: !549, line: 276, baseType: !3887, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!85, !3890}
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !549, line: 251, size: 1216, elements: !3892)
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3891, file: !549, line: 253, baseType: !3852, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3891, file: !549, line: 254, baseType: !1725, size: 64, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3891, file: !549, line: 255, baseType: !1075, size: 64, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3891, file: !549, line: 256, baseType: !192, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3891, file: !549, line: 259, baseType: !634, size: 256, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3891, file: !549, line: 260, baseType: !634, size: 256, offset: 512)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3891, file: !549, line: 261, baseType: !85, size: 32, offset: 768)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3891, file: !549, line: 262, baseType: !217, size: 128, offset: 832)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3891, file: !549, line: 263, baseType: !295, size: 64, offset: 960)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3891, file: !549, line: 265, baseType: !341, size: 64, offset: 1024)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3891, file: !549, line: 266, baseType: !714, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3891, file: !549, line: 267, baseType: !714, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3891, file: !549, line: 268, baseType: !2121, size: 64, offset: 1152)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3884, file: !549, line: 277, baseType: !3907, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{null, !3890}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3884, file: !549, line: 290, baseType: !3911, size: 64, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!85, !1075, !192}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3884, file: !549, line: 292, baseType: !3915, size: 64, offset: 192)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!192, !1075, !2006}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3884, file: !549, line: 293, baseType: !3919, size: 64, offset: 256)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!192, !1075, !192, !2006}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3884, file: !549, line: 294, baseType: !3923, size: 64, offset: 320)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{null, !1075, !192}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3884, file: !549, line: 296, baseType: !3927, size: 64, offset: 384)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!327, !3890, !295, !341, !534}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3884, file: !549, line: 306, baseType: !341, size: 64, offset: 448)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3884, file: !549, line: 313, baseType: !714, size: 8, offset: 512)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3884, file: !549, line: 314, baseType: !3927, size: 64, offset: 576)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3884, file: !549, line: 317, baseType: !3934, size: 64, offset: 640)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!2063, !3890, !2065}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3884, file: !549, line: 320, baseType: !3938, size: 64, offset: 704)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!85, !3890, !2076}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3879, file: !549, line: 176, baseType: !3942, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !549, line: 35, flags: DIFlagFwdDecl)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3879, file: !549, line: 177, baseType: !534, size: 64, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3879, file: !549, line: 178, baseType: !3852, size: 64, offset: 192)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3853, file: !549, line: 215, baseType: !192, size: 64, offset: 768)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3853, file: !549, line: 221, baseType: !446, size: 64, offset: 832)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3853, file: !549, line: 223, baseType: !265, size: 16, offset: 896)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3853, file: !549, line: 224, baseType: !336, size: 16, offset: 912)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3853, file: !549, line: 225, baseType: !3951, size: 64, offset: 960)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !549, line: 36, flags: DIFlagFwdDecl)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3853, file: !549, line: 227, baseType: !854, size: 128, align: 64, offset: 1024)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !209, file: !210, line: 71, baseType: !3955, size: 32, offset: 448)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3956, line: 19, size: 32, elements: !3957)
!3956 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3957 = !{!3958}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3955, file: !3956, line: 20, baseType: !1415, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !209, file: !210, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !209, file: !210, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !209, file: !210, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !209, file: !210, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !209, file: !210, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !70, line: 707, baseType: !205, size: 64, offset: 512)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !206, file: !70, line: 709, baseType: !3966, size: 64, offset: 576)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !206, file: !70, line: 711, baseType: !213, size: 64, offset: 640)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !206, file: !70, line: 712, baseType: !3970, size: 64, offset: 704)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3972)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !3973)
!3973 = !{!3974, !3975, !3976, !3982, !3987, !3991}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3972, file: !70, line: 90, baseType: !213, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3972, file: !70, line: 91, baseType: !345, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3972, file: !70, line: 92, baseType: !3977, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!85, !3980, !290}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3972, file: !70, line: 93, baseType: !3983, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!295, !3980, !3986, !3849, !3850}
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3972, file: !70, line: 95, baseType: !3988, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{null, !205}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3972, file: !70, line: 97, baseType: !3992, size: 64, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3994)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !3995)
!3995 = !{!3996, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3994, file: !77, line: 287, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!85, !205}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3994, file: !77, line: 288, baseType: !3988, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3994, file: !77, line: 289, baseType: !3997, size: 64, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3994, file: !77, line: 290, baseType: !3997, size: 64, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3994, file: !77, line: 291, baseType: !3997, size: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3994, file: !77, line: 292, baseType: !3997, size: 64, offset: 320)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3994, file: !77, line: 293, baseType: !3997, size: 64, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3994, file: !77, line: 294, baseType: !3997, size: 64, offset: 448)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3994, file: !77, line: 295, baseType: !3997, size: 64, offset: 512)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3994, file: !77, line: 296, baseType: !3997, size: 64, offset: 576)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3994, file: !77, line: 297, baseType: !3997, size: 64, offset: 640)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3994, file: !77, line: 298, baseType: !3997, size: 64, offset: 704)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3994, file: !77, line: 299, baseType: !3997, size: 64, offset: 768)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3994, file: !77, line: 300, baseType: !3997, size: 64, offset: 832)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3994, file: !77, line: 301, baseType: !3997, size: 64, offset: 896)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3994, file: !77, line: 302, baseType: !3997, size: 64, offset: 960)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3994, file: !77, line: 303, baseType: !3997, size: 64, offset: 1024)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3994, file: !77, line: 304, baseType: !3997, size: 64, offset: 1088)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3994, file: !77, line: 305, baseType: !3997, size: 64, offset: 1152)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3994, file: !77, line: 306, baseType: !3997, size: 64, offset: 1216)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3994, file: !77, line: 307, baseType: !3997, size: 64, offset: 1280)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3994, file: !77, line: 308, baseType: !3997, size: 64, offset: 1344)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3994, file: !77, line: 309, baseType: !3997, size: 64, offset: 1408)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !206, file: !70, line: 714, baseType: !4023, size: 64, offset: 768)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4025)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4026, line: 80, size: 1344, elements: !4027)
!4026 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4106}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4025, file: !4026, line: 81, baseType: !213, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4025, file: !4026, line: 82, baseType: !213, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4025, file: !4026, line: 83, baseType: !345, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4025, file: !4026, line: 84, baseType: !345, size: 64, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4025, file: !4026, line: 85, baseType: !345, size: 64, offset: 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4025, file: !4026, line: 87, baseType: !4034, size: 64, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!85, !205, !4037}
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4039)
!4039 = !{!4040, !4041, !4042, !4043, !4044, !4045, !4046, !4059, !4069, !4070, !4071, !4072, !4073, !4081, !4082, !4083, !4084, !4085, !4086}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4038, file: !64, line: 97, baseType: !213, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4038, file: !64, line: 98, baseType: !4023, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4038, file: !64, line: 100, baseType: !563, size: 64, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4038, file: !64, line: 101, baseType: !213, size: 64, offset: 192)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4038, file: !64, line: 103, baseType: !714, size: 8, offset: 256)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4038, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4038, file: !64, line: 106, baseType: !4047, size: 64, offset: 320)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4049)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4050, line: 282, size: 1600, elements: !4051)
!4050 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4051 = !{!4052, !4053, !4054, !4058}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4049, file: !4050, line: 283, baseType: !3310, size: 256)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4049, file: !4050, line: 284, baseType: !3310, size: 256, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4049, file: !4050, line: 285, baseType: !4055, size: 1024, offset: 512)
!4055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 1024, elements: !4056)
!4056 = !{!4057}
!4057 = !DISubrange(count: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4049, file: !4050, line: 286, baseType: !2307, size: 64, offset: 1536)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4038, file: !64, line: 107, baseType: !4060, size: 64, offset: 384)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4062)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4050, line: 217, size: 256, elements: !4063)
!4063 = !{!4064, !4065, !4067, !4068}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4062, file: !4050, line: 218, baseType: !3317, size: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4062, file: !4050, line: 219, baseType: !4066, size: 64, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4050, line: 15, baseType: !191)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4062, file: !4050, line: 220, baseType: !443, size: 32, offset: 192)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4062, file: !4050, line: 221, baseType: !443, size: 32, offset: 224)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4038, file: !64, line: 109, baseType: !3997, size: 64, offset: 448)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4038, file: !64, line: 110, baseType: !3988, size: 64, offset: 512)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4038, file: !64, line: 111, baseType: !3997, size: 64, offset: 576)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4038, file: !64, line: 112, baseType: !3988, size: 64, offset: 640)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4038, file: !64, line: 113, baseType: !4074, size: 64, offset: 704)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!85, !205, !4077}
!4077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4078)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4079)
!4079 = !{!4080}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4078, file: !77, line: 59, baseType: !85, size: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4038, file: !64, line: 114, baseType: !3997, size: 64, offset: 768)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4038, file: !64, line: 115, baseType: !345, size: 64, offset: 832)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4038, file: !64, line: 116, baseType: !345, size: 64, offset: 896)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4038, file: !64, line: 118, baseType: !3992, size: 64, offset: 960)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4038, file: !64, line: 119, baseType: !3988, size: 64, offset: 1024)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4038, file: !64, line: 121, baseType: !4087, size: 64, offset: 1088)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4025, file: !4026, line: 88, baseType: !3977, size: 64, offset: 384)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4025, file: !4026, line: 89, baseType: !3997, size: 64, offset: 448)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4025, file: !4026, line: 90, baseType: !3988, size: 64, offset: 512)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4025, file: !4026, line: 91, baseType: !3988, size: 64, offset: 576)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4025, file: !4026, line: 92, baseType: !3988, size: 64, offset: 640)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4025, file: !4026, line: 94, baseType: !3997, size: 64, offset: 704)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4025, file: !4026, line: 95, baseType: !3997, size: 64, offset: 768)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4025, file: !4026, line: 97, baseType: !4074, size: 64, offset: 832)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4025, file: !4026, line: 98, baseType: !3997, size: 64, offset: 896)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4025, file: !4026, line: 100, baseType: !3997, size: 64, offset: 960)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4025, file: !4026, line: 102, baseType: !3997, size: 64, offset: 1024)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4025, file: !4026, line: 103, baseType: !3988, size: 64, offset: 1088)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4025, file: !4026, line: 105, baseType: !3992, size: 64, offset: 1152)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4025, file: !4026, line: 107, baseType: !4103, size: 64, offset: 1216)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4105)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4026, line: 107, flags: DIFlagFwdDecl)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4025, file: !4026, line: 109, baseType: !714, size: 8, offset: 1280)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !206, file: !70, line: 715, baseType: !4037, size: 64, offset: 832)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !206, file: !70, line: 717, baseType: !192, size: 64, offset: 896)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !206, file: !70, line: 719, baseType: !192, size: 64, offset: 960)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !206, file: !70, line: 721, baseType: !634, size: 256, offset: 1024)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !206, file: !70, line: 725, baseType: !4112, size: 448, offset: 1280)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4113)
!4113 = !{!4114, !4115, !4116, !4117}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4112, file: !70, line: 518, baseType: !217, size: 128)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4112, file: !70, line: 519, baseType: !217, size: 128, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4112, file: !70, line: 520, baseType: !217, size: 128, offset: 256)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4112, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !206, file: !70, line: 726, baseType: !4119, size: 2496, offset: 1728)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4203, !4207}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4119, file: !77, line: 664, baseType: !4077, size: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4119, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4119, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4119, file: !77, line: 667, baseType: !714, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4119, file: !77, line: 668, baseType: !714, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4119, file: !77, line: 669, baseType: !714, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4119, file: !77, line: 670, baseType: !714, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4119, file: !77, line: 671, baseType: !714, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4119, file: !77, line: 672, baseType: !714, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4119, file: !77, line: 673, baseType: !714, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4119, file: !77, line: 674, baseType: !714, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4119, file: !77, line: 675, baseType: !442, size: 32, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4119, file: !77, line: 676, baseType: !230, size: 32, offset: 96)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4119, file: !77, line: 678, baseType: !217, size: 128, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4119, file: !77, line: 679, baseType: !583, size: 256, offset: 256)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4119, file: !77, line: 680, baseType: !4137, size: 64, offset: 512)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4139, line: 43, size: 1536, elements: !4140)
!4139 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4140 = !{!4141, !4142, !4143, !4144, !4145, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4138, file: !4139, line: 44, baseType: !213, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4138, file: !4139, line: 45, baseType: !85, size: 32, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4138, file: !4139, line: 46, baseType: !217, size: 128, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4138, file: !4139, line: 47, baseType: !230, size: 32, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4138, file: !4139, line: 48, baseType: !4146, size: 64, offset: 320)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4138, file: !4139, line: 49, baseType: !876, size: 320, offset: 384)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4138, file: !4139, line: 50, baseType: !191, size: 64, offset: 704)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4138, file: !4139, line: 51, baseType: !1530, size: 64, offset: 768)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4138, file: !4139, line: 52, baseType: !1530, size: 64, offset: 832)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4138, file: !4139, line: 53, baseType: !1530, size: 64, offset: 896)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4138, file: !4139, line: 54, baseType: !1530, size: 64, offset: 960)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4138, file: !4139, line: 55, baseType: !1530, size: 64, offset: 1024)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4138, file: !4139, line: 56, baseType: !191, size: 64, offset: 1088)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4138, file: !4139, line: 57, baseType: !191, size: 64, offset: 1152)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4138, file: !4139, line: 58, baseType: !191, size: 64, offset: 1216)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4138, file: !4139, line: 59, baseType: !191, size: 64, offset: 1280)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4138, file: !4139, line: 60, baseType: !191, size: 64, offset: 1344)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4138, file: !4139, line: 61, baseType: !205, size: 64, offset: 1408)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4138, file: !4139, line: 62, baseType: !714, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4138, file: !4139, line: 63, baseType: !714, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4119, file: !77, line: 681, baseType: !714, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4119, file: !77, line: 682, baseType: !714, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4119, file: !77, line: 683, baseType: !714, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4119, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4119, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4119, file: !77, line: 690, baseType: !1522, size: 512, offset: 640)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4119, file: !77, line: 691, baseType: !446, size: 64, offset: 1152)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4119, file: !77, line: 692, baseType: !894, size: 256, offset: 1216)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4119, file: !77, line: 693, baseType: !1388, size: 192, offset: 1472)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4119, file: !77, line: 694, baseType: !4146, size: 64, offset: 1664)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4119, file: !77, line: 695, baseType: !250, size: 32, offset: 1728)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4119, file: !77, line: 696, baseType: !250, size: 32, offset: 1760)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4119, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4119, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4119, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4119, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4119, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4119, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4119, file: !77, line: 703, baseType: !714, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4119, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4119, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4119, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4119, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4119, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4119, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4119, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4119, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4119, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4119, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4119, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4119, file: !77, line: 715, baseType: !446, size: 64, offset: 2048)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4119, file: !77, line: 716, baseType: !446, size: 64, offset: 2112)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4119, file: !77, line: 717, baseType: !446, size: 64, offset: 2176)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4119, file: !77, line: 718, baseType: !446, size: 64, offset: 2240)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4119, file: !77, line: 720, baseType: !4198, size: 64, offset: 2304)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4200)
!4200 = !{!4201, !4202}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4199, file: !77, line: 633, baseType: !230, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4199, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4119, file: !77, line: 721, baseType: !4204, size: 64, offset: 2368)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{null, !205, !630}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4119, file: !77, line: 722, baseType: !4208, size: 64, offset: 2432)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !206, file: !70, line: 727, baseType: !4211, size: 64, offset: 4224)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4213)
!4213 = !{!4214, !4215, !4216, !4220, !4221, !4222}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4212, file: !77, line: 743, baseType: !3994, size: 1472)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4212, file: !77, line: 744, baseType: !3997, size: 64, offset: 1472)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4212, file: !77, line: 745, baseType: !4217, size: 64, offset: 1536)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{null, !205, !714}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4212, file: !77, line: 746, baseType: !3997, size: 64, offset: 1600)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4212, file: !77, line: 747, baseType: !3988, size: 64, offset: 1664)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4212, file: !77, line: 748, baseType: !3988, size: 64, offset: 1728)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !206, file: !70, line: 736, baseType: !4224, size: 128, offset: 4288)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4225)
!4225 = !{!4226, !4230}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4224, file: !70, line: 531, baseType: !4227, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4229, line: 13, flags: DIFlagFwdDecl)
!4229 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4224, file: !70, line: 532, baseType: !4231, size: 64, offset: 64)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !206, file: !70, line: 738, baseType: !4234, size: 64, offset: 4416)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4236)
!4236 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !206, file: !70, line: 740, baseType: !4238, size: 64, offset: 4480)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !206, file: !70, line: 741, baseType: !446, size: 64, offset: 4544)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !206, file: !70, line: 746, baseType: !446, size: 64, offset: 4608)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !206, file: !70, line: 747, baseType: !4242, size: 64, offset: 4672)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4244)
!4244 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !206, file: !70, line: 749, baseType: !4246, size: 64, offset: 4736)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4248)
!4248 = !{!4249, !4250, !4251}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4247, file: !70, line: 433, baseType: !7, size: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4247, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4247, file: !70, line: 435, baseType: !191, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !206, file: !70, line: 751, baseType: !217, size: 128, offset: 4800)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !206, file: !70, line: 762, baseType: !4254, size: 64, offset: 4928)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !206, file: !70, line: 770, baseType: !4257, offset: 4992)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4258, line: 5, elements: !923)
!4258 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !206, file: !70, line: 772, baseType: !4260, size: 64, offset: 4992)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4262, line: 18, flags: DIFlagFwdDecl)
!4262 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !206, file: !70, line: 773, baseType: !4264, size: 64, offset: 5056)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4026, line: 22, flags: DIFlagFwdDecl)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !206, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !206, file: !70, line: 778, baseType: !529, size: 32, offset: 5152)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !206, file: !70, line: 779, baseType: !442, size: 32, offset: 5184)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !206, file: !70, line: 781, baseType: !230, size: 32, offset: 5216)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !206, file: !70, line: 782, baseType: !217, size: 128, offset: 5248)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !206, file: !70, line: 784, baseType: !4272, size: 64, offset: 5376)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4274)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4275, line: 52, size: 768, elements: !4276)
!4275 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4276 = !{!4277, !4278, !4279, !4280, !4281, !4285, !4289, !4290, !4291, !4292, !4296, !4300}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4274, file: !4275, line: 53, baseType: !213, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4274, file: !4275, line: 55, baseType: !345, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4274, file: !4275, line: 56, baseType: !345, size: 64, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4274, file: !4275, line: 58, baseType: !3977, size: 64, offset: 192)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4274, file: !4275, line: 59, baseType: !4282, size: 64, offset: 256)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!295, !3980, !3986}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4274, file: !4275, line: 61, baseType: !4286, size: 64, offset: 320)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !4272}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4274, file: !4275, line: 62, baseType: !3988, size: 64, offset: 384)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4274, file: !4275, line: 64, baseType: !3997, size: 64, offset: 448)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4274, file: !4275, line: 66, baseType: !3817, size: 64, offset: 512)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4274, file: !4275, line: 67, baseType: !4293, size: 64, offset: 576)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!2307, !3980}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4274, file: !4275, line: 69, baseType: !4297, size: 64, offset: 640)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{null, !3980, !3849, !3850}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4274, file: !4275, line: 71, baseType: !3992, size: 64, offset: 704)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !206, file: !70, line: 785, baseType: !345, size: 64, offset: 5440)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !206, file: !70, line: 787, baseType: !3988, size: 64, offset: 5504)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !206, file: !70, line: 788, baseType: !4304, size: 64, offset: 5568)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !206, file: !70, line: 789, baseType: !4307, size: 64, offset: 5632)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !206, file: !70, line: 791, baseType: !4310, size: 64, offset: 5696)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4312)
!4312 = !{!4313, !4314, !4315, !4316, !4317}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4311, file: !70, line: 598, baseType: !92, size: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4311, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4311, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4311, file: !70, line: 601, baseType: !714, size: 8, offset: 96)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4311, file: !70, line: 602, baseType: !714, size: 8, offset: 104)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !206, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !206, file: !70, line: 795, baseType: !714, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !206, file: !70, line: 796, baseType: !714, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !206, file: !70, line: 797, baseType: !714, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !206, file: !70, line: 798, baseType: !714, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !206, file: !70, line: 799, baseType: !714, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !4326, line: 21, size: 8768, elements: !4327)
!4326 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a9b334022147244b132d6aa1a8399b7")
!4327 = !{!4328, !4329, !4330, !4331, !4332, !4333, !4340, !4341, !4345, !4349, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4383, !4384, !4385, !4386}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !4325, file: !4326, line: 22, baseType: !192, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4325, file: !4326, line: 24, baseType: !3310, size: 256, offset: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4325, file: !4326, line: 25, baseType: !3310, size: 256, offset: 320)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !4325, file: !4326, line: 26, baseType: !4055, size: 1024, offset: 576)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !4325, file: !4326, line: 28, baseType: !714, size: 8, offset: 1600)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4325, file: !4326, line: 30, baseType: !4334, size: 32, offset: 1608)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !4050, line: 256, size: 32, elements: !4335)
!4335 = !{!4336, !4337, !4338, !4339}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4334, file: !4050, line: 257, baseType: !202, size: 8)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4334, file: !4050, line: 258, baseType: !202, size: 8, offset: 8)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4334, file: !4050, line: 259, baseType: !202, size: 8, offset: 16)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !4334, file: !4050, line: 260, baseType: !202, size: 8, offset: 24)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4325, file: !4326, line: 33, baseType: !230, size: 32, offset: 1664)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4325, file: !4326, line: 35, baseType: !4342, size: 64, offset: 1728)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!85, !4324, !204}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4325, file: !4326, line: 36, baseType: !4346, size: 64, offset: 1792)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!85, !4324}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4325, file: !4326, line: 37, baseType: !4350, size: 64, offset: 1856)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{null, !4324}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4325, file: !4326, line: 38, baseType: !4346, size: 64, offset: 1920)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4325, file: !4326, line: 39, baseType: !4350, size: 64, offset: 1984)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4325, file: !4326, line: 41, baseType: !4324, size: 64, offset: 2048)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !4325, file: !4326, line: 43, baseType: !217, size: 128, offset: 2112)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4325, file: !4326, line: 44, baseType: !217, size: 128, offset: 2240)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4325, file: !4326, line: 46, baseType: !7, size: 32, offset: 2368)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4325, file: !4326, line: 52, baseType: !4360, size: 64, offset: 2432)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !4326, line: 68, size: 1792, elements: !4362)
!4362 = !{!4363, !4364, !4367, !4368, !4369, !4374, !4378, !4379, !4380, !4381, !4382}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4361, file: !4326, line: 69, baseType: !213, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4361, file: !4326, line: 71, baseType: !4365, size: 64, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4334)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !4361, file: !4326, line: 72, baseType: !714, size: 8, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4361, file: !4326, line: 74, baseType: !4350, size: 64, offset: 192)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !4361, file: !4326, line: 75, baseType: !4370, size: 64, offset: 256)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!4373, !4324, !204, !7}
!4373 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !118, line: 17, baseType: !117)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4361, file: !4326, line: 76, baseType: !4375, size: 64, offset: 320)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!85, !4324, !4360}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !4361, file: !4326, line: 77, baseType: !4346, size: 64, offset: 384)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !4361, file: !4326, line: 78, baseType: !4346, size: 64, offset: 448)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4361, file: !4326, line: 79, baseType: !4350, size: 64, offset: 512)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4361, file: !4326, line: 80, baseType: !4350, size: 64, offset: 576)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4361, file: !4326, line: 82, baseType: !4038, size: 1152, offset: 640)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !4325, file: !4326, line: 54, baseType: !634, size: 256, offset: 2496)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4325, file: !4326, line: 56, baseType: !206, size: 5824, offset: 2752)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4325, file: !4326, line: 58, baseType: !217, size: 128, offset: 8576)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !4325, file: !4326, line: 64, baseType: !4387, size: 64, offset: 8704)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!4388 = !{!4389, !4394, !4399, !4404, !4409, !4414, !4419, !4428, !4430, !4432, !4434, !4436, !4438, !4440, !4442, !4444, !4446, !4448, !4450, !4452, !4454, !4457, !4462, !4464, !4466, !4471, !0, !4476, !4479, !4877, !4879, !4881, !4883, !4885, !4887, !4889, !4891, !4893, !4895, !4897, !4899, !4902, !4904, !4909, !4911, !4913, !4915, !4917, !4919, !4921, !4923, !4925, !4927, !4929, !4931, !4933, !4935, !4937}
!4389 = !DIGlobalVariableExpression(var: !4390, expr: !DIExpression())
!4390 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !4391, isLocal: true, isDefinition: true)
!4391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 88, elements: !4392)
!4392 = !{!4393}
!4393 = !DISubrange(count: 11)
!4394 = !DIGlobalVariableExpression(var: !4395, expr: !DIExpression())
!4395 = distinct !DIGlobalVariable(scope: null, file: !3, line: 434, type: !4396, isLocal: true, isDefinition: true)
!4396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 544, elements: !4397)
!4397 = !{!4398}
!4398 = !DISubrange(count: 68)
!4399 = !DIGlobalVariableExpression(var: !4400, expr: !DIExpression())
!4400 = distinct !DIGlobalVariable(scope: null, file: !3, line: 438, type: !4401, isLocal: true, isDefinition: true)
!4401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 504, elements: !4402)
!4402 = !{!4403}
!4403 = !DISubrange(count: 63)
!4404 = !DIGlobalVariableExpression(var: !4405, expr: !DIExpression())
!4405 = distinct !DIGlobalVariable(scope: null, file: !3, line: 460, type: !4406, isLocal: true, isDefinition: true)
!4406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 464, elements: !4407)
!4407 = !{!4408}
!4408 = !DISubrange(count: 58)
!4409 = !DIGlobalVariableExpression(var: !4410, expr: !DIExpression())
!4410 = distinct !DIGlobalVariable(scope: null, file: !3, line: 468, type: !4411, isLocal: true, isDefinition: true)
!4411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 480, elements: !4412)
!4412 = !{!4413}
!4413 = !DISubrange(count: 60)
!4414 = !DIGlobalVariableExpression(var: !4415, expr: !DIExpression())
!4415 = distinct !DIGlobalVariable(scope: null, file: !178, line: 480, type: !4416, isLocal: true, isDefinition: true)
!4416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 168, elements: !4417)
!4417 = !{!4418}
!4418 = !DISubrange(count: 21)
!4419 = !DIGlobalVariableExpression(var: !4420, expr: !DIExpression())
!4420 = distinct !DIGlobalVariable(name: "trackpoint_attr_sensitivity", scope: !2, file: !3, line: 185, type: !4421, isLocal: true, isDefinition: true)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trackpoint_attr_data", file: !3, line: 96, size: 128, elements: !4422)
!4422 = !{!4423, !4424, !4425, !4426, !4427}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "field_offset", scope: !4421, file: !3, line: 97, baseType: !341, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4421, file: !3, line: 98, baseType: !200, size: 8, offset: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4421, file: !3, line: 99, baseType: !200, size: 8, offset: 72)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "inverted", scope: !4421, file: !3, line: 100, baseType: !714, size: 8, offset: 80)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "power_on_default", scope: !4421, file: !3, line: 101, baseType: !200, size: 8, offset: 88)
!4428 = !DIGlobalVariableExpression(var: !4429, expr: !DIExpression())
!4429 = distinct !DIGlobalVariable(name: "trackpoint_attr_speed", scope: !2, file: !3, line: 186, type: !4421, isLocal: true, isDefinition: true)
!4430 = !DIGlobalVariableExpression(var: !4431, expr: !DIExpression())
!4431 = distinct !DIGlobalVariable(name: "trackpoint_attr_reach", scope: !2, file: !3, line: 188, type: !4421, isLocal: true, isDefinition: true)
!4432 = !DIGlobalVariableExpression(var: !4433, expr: !DIExpression())
!4433 = distinct !DIGlobalVariable(name: "trackpoint_attr_draghys", scope: !2, file: !3, line: 189, type: !4421, isLocal: true, isDefinition: true)
!4434 = !DIGlobalVariableExpression(var: !4435, expr: !DIExpression())
!4435 = distinct !DIGlobalVariable(name: "trackpoint_attr_mindrag", scope: !2, file: !3, line: 190, type: !4421, isLocal: true, isDefinition: true)
!4436 = !DIGlobalVariableExpression(var: !4437, expr: !DIExpression())
!4437 = distinct !DIGlobalVariable(name: "trackpoint_attr_thresh", scope: !2, file: !3, line: 191, type: !4421, isLocal: true, isDefinition: true)
!4438 = !DIGlobalVariableExpression(var: !4439, expr: !DIExpression())
!4439 = distinct !DIGlobalVariable(name: "trackpoint_attr_upthresh", scope: !2, file: !3, line: 192, type: !4421, isLocal: true, isDefinition: true)
!4440 = !DIGlobalVariableExpression(var: !4441, expr: !DIExpression())
!4441 = distinct !DIGlobalVariable(name: "trackpoint_attr_ztime", scope: !2, file: !3, line: 193, type: !4421, isLocal: true, isDefinition: true)
!4442 = !DIGlobalVariableExpression(var: !4443, expr: !DIExpression())
!4443 = distinct !DIGlobalVariable(name: "trackpoint_attr_jenks", scope: !2, file: !3, line: 194, type: !4421, isLocal: true, isDefinition: true)
!4444 = !DIGlobalVariableExpression(var: !4445, expr: !DIExpression())
!4445 = distinct !DIGlobalVariable(name: "trackpoint_attr_drift_time", scope: !2, file: !3, line: 195, type: !4421, isLocal: true, isDefinition: true)
!4446 = !DIGlobalVariableExpression(var: !4447, expr: !DIExpression())
!4447 = distinct !DIGlobalVariable(name: "trackpoint_attr_inertia", scope: !2, file: !3, line: 187, type: !4421, isLocal: true, isDefinition: true)
!4448 = !DIGlobalVariableExpression(var: !4449, expr: !DIExpression())
!4449 = distinct !DIGlobalVariable(name: "trackpoint_attr_press_to_select", scope: !2, file: !3, line: 197, type: !4421, isLocal: true, isDefinition: true)
!4450 = !DIGlobalVariableExpression(var: !4451, expr: !DIExpression())
!4451 = distinct !DIGlobalVariable(name: "trackpoint_attr_skipback", scope: !2, file: !3, line: 199, type: !4421, isLocal: true, isDefinition: true)
!4452 = !DIGlobalVariableExpression(var: !4453, expr: !DIExpression())
!4453 = distinct !DIGlobalVariable(name: "trackpoint_attr_ext_dev", scope: !2, file: !3, line: 201, type: !4421, isLocal: true, isDefinition: true)
!4454 = !DIGlobalVariableExpression(var: !4455, expr: !DIExpression())
!4455 = distinct !DIGlobalVariable(scope: null, file: !3, line: 20, type: !4456, isLocal: true, isDefinition: true)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 32, elements: !864)
!4457 = !DIGlobalVariableExpression(var: !4458, expr: !DIExpression())
!4458 = distinct !DIGlobalVariable(scope: null, file: !3, line: 21, type: !4459, isLocal: true, isDefinition: true)
!4459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 40, elements: !4460)
!4460 = !{!4461}
!4461 = !DISubrange(count: 5)
!4462 = !DIGlobalVariableExpression(var: !4463, expr: !DIExpression())
!4463 = distinct !DIGlobalVariable(scope: null, file: !3, line: 22, type: !4459, isLocal: true, isDefinition: true)
!4464 = !DIGlobalVariableExpression(var: !4465, expr: !DIExpression())
!4465 = distinct !DIGlobalVariable(scope: null, file: !3, line: 23, type: !4456, isLocal: true, isDefinition: true)
!4466 = !DIGlobalVariableExpression(var: !4467, expr: !DIExpression())
!4467 = distinct !DIGlobalVariable(scope: null, file: !3, line: 24, type: !4468, isLocal: true, isDefinition: true)
!4468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 112, elements: !4469)
!4469 = !{!4470}
!4470 = !DISubrange(count: 14)
!4471 = !DIGlobalVariableExpression(var: !4472, expr: !DIExpression())
!4472 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !4473, isLocal: true, isDefinition: true)
!4473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 80, elements: !4474)
!4474 = !{!4475}
!4475 = !DISubrange(count: 10)
!4476 = !DIGlobalVariableExpression(var: !4477, expr: !DIExpression())
!4477 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !4478, isLocal: true, isDefinition: true)
!4478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 96, elements: !3189)
!4479 = !DIGlobalVariableExpression(var: !4480, expr: !DIExpression())
!4480 = distinct !DIGlobalVariable(name: "psmouse_attr_sensitivity", scope: !2, file: !3, line: 185, type: !4481, isLocal: true, isDefinition: true)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_attribute", file: !130, line: 149, size: 512, elements: !4482)
!4482 = !{!4483, !4496, !4497, !4872, !4876}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "dattr", scope: !4481, file: !130, line: 150, baseType: !4484, size: 256)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !70, line: 106, size: 256, elements: !4485)
!4485 = !{!4486, !4487, !4492}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4484, file: !70, line: 107, baseType: !332, size: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4484, file: !70, line: 108, baseType: !4488, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!327, !205, !4491, !295}
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4484, file: !70, line: 110, baseType: !4493, size: 64, offset: 192)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!327, !205, !4491, !213, !341}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4481, file: !130, line: 151, baseType: !192, size: 64, offset: 256)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4481, file: !130, line: 152, baseType: !4498, size: 64, offset: 320)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!327, !4501, !192, !295}
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse", file: !130, line: 89, size: 3904, elements: !4503)
!4503 = !{!4504, !4505, !4782, !4804, !4805, !4806, !4807, !4827, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4853, !4857, !4858, !4862, !4863, !4864, !4868, !4869, !4870, !4871}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4502, file: !130, line: 90, baseType: !192, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4502, file: !130, line: 91, baseType: !4506, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4508, line: 137, size: 10880, elements: !4509)
!4508 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!4509 = !{!4510, !4511, !4512, !4513, !4521, !4522, !4523, !4525, !4526, !4527, !4528, !4529, !4530, !4532, !4533, !4534, !4535, !4536, !4537, !4551, !4556, !4651, !4654, !4655, !4656, !4658, !4661, !4671, !4672, !4673, !4674, !4675, !4679, !4683, !4687, !4691, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4778, !4779, !4781}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4507, file: !4508, line: 138, baseType: !213, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4507, file: !4508, line: 139, baseType: !213, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4507, file: !4508, line: 140, baseType: !213, size: 64, offset: 128)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4507, file: !4508, line: 141, baseType: !4514, size: 64, offset: 192)
!4514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4515, line: 59, size: 64, elements: !4516)
!4515 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!4516 = !{!4517, !4518, !4519, !4520}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4514, file: !4515, line: 60, baseType: !264, size: 16)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4514, file: !4515, line: 61, baseType: !264, size: 16, offset: 16)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4514, file: !4515, line: 62, baseType: !264, size: 16, offset: 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4514, file: !4515, line: 63, baseType: !264, size: 16, offset: 48)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4507, file: !4508, line: 143, baseType: !1649, size: 64, offset: 256)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4507, file: !4508, line: 145, baseType: !1649, size: 64, offset: 320)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4507, file: !4508, line: 146, baseType: !4524, size: 768, offset: 384)
!4524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 768, elements: !3189)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4507, file: !4508, line: 147, baseType: !1649, size: 64, offset: 1152)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4507, file: !4508, line: 148, baseType: !1649, size: 64, offset: 1216)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4507, file: !4508, line: 149, baseType: !1649, size: 64, offset: 1280)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4507, file: !4508, line: 150, baseType: !1649, size: 64, offset: 1344)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4507, file: !4508, line: 151, baseType: !1649, size: 64, offset: 1408)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4507, file: !4508, line: 152, baseType: !4531, size: 128, offset: 1472)
!4531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 128, elements: !753)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4507, file: !4508, line: 153, baseType: !1649, size: 64, offset: 1600)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4507, file: !4508, line: 155, baseType: !7, size: 32, offset: 1664)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4507, file: !4508, line: 157, baseType: !7, size: 32, offset: 1696)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4507, file: !4508, line: 158, baseType: !7, size: 32, offset: 1728)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4507, file: !4508, line: 159, baseType: !192, size: 64, offset: 1792)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4507, file: !4508, line: 161, baseType: !4538, size: 64, offset: 1856)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!85, !4506, !4541, !706}
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4543)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4515, line: 117, size: 320, elements: !4544)
!4544 = !{!4545, !4546, !4547, !4548, !4549}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4543, file: !4515, line: 119, baseType: !202, size: 8)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4543, file: !4515, line: 120, baseType: !202, size: 8, offset: 8)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4543, file: !4515, line: 121, baseType: !264, size: 16, offset: 16)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4543, file: !4515, line: 122, baseType: !443, size: 32, offset: 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4543, file: !4515, line: 123, baseType: !4550, size: 256, offset: 64)
!4550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, elements: !455)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4507, file: !4508, line: 164, baseType: !4552, size: 64, offset: 1920)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!85, !4506, !4555}
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4507, file: !4508, line: 167, baseType: !4557, size: 64, offset: 1984)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4508, line: 546, size: 960, elements: !4559)
!4559 = !{!4560, !4627, !4631, !4635, !4639, !4640, !4644, !4645, !4646, !4647, !4648, !4649}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4558, file: !4508, line: 547, baseType: !4561, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!85, !4506, !4564, !4564}
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4515, line: 454, size: 384, elements: !4566)
!4566 = !{!4567, !4568, !4569, !4570, !4575, !4580}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4565, file: !4515, line: 455, baseType: !264, size: 16)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4565, file: !4515, line: 456, baseType: !771, size: 16, offset: 16)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4565, file: !4515, line: 457, baseType: !264, size: 16, offset: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4565, file: !4515, line: 458, baseType: !4571, size: 32, offset: 48)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4515, line: 320, size: 32, elements: !4572)
!4572 = !{!4573, !4574}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4571, file: !4515, line: 321, baseType: !264, size: 16)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4571, file: !4515, line: 322, baseType: !264, size: 16, offset: 16)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4565, file: !4515, line: 459, baseType: !4576, size: 32, offset: 80)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4515, line: 310, size: 32, elements: !4577)
!4577 = !{!4578, !4579}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4576, file: !4515, line: 311, baseType: !264, size: 16)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4576, file: !4515, line: 312, baseType: !264, size: 16, offset: 16)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4565, file: !4515, line: 467, baseType: !4581, size: 256, offset: 128)
!4581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4565, file: !4515, line: 461, size: 256, elements: !4582)
!4582 = !{!4583, !4594, !4600, !4612, !4622}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4581, file: !4515, line: 462, baseType: !4584, size: 80)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4515, line: 349, size: 80, elements: !4585)
!4585 = !{!4586, !4587}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4584, file: !4515, line: 350, baseType: !771, size: 16)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4584, file: !4515, line: 351, baseType: !4588, size: 64, offset: 16)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4515, line: 337, size: 64, elements: !4589)
!4589 = !{!4590, !4591, !4592, !4593}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4588, file: !4515, line: 338, baseType: !264, size: 16)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4588, file: !4515, line: 339, baseType: !264, size: 16, offset: 16)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4588, file: !4515, line: 340, baseType: !264, size: 16, offset: 32)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4588, file: !4515, line: 341, baseType: !264, size: 16, offset: 48)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4581, file: !4515, line: 463, baseType: !4595, size: 96)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4515, line: 360, size: 96, elements: !4596)
!4596 = !{!4597, !4598, !4599}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4595, file: !4515, line: 361, baseType: !771, size: 16)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4595, file: !4515, line: 362, baseType: !771, size: 16, offset: 16)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4595, file: !4515, line: 363, baseType: !4588, size: 64, offset: 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4581, file: !4515, line: 464, baseType: !4601, size: 256)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4515, line: 405, size: 256, elements: !4602)
!4602 = !{!4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4601, file: !4515, line: 406, baseType: !264, size: 16)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4601, file: !4515, line: 407, baseType: !264, size: 16, offset: 16)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4601, file: !4515, line: 408, baseType: !771, size: 16, offset: 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4601, file: !4515, line: 409, baseType: !771, size: 16, offset: 48)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4601, file: !4515, line: 410, baseType: !264, size: 16, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4601, file: !4515, line: 412, baseType: !4588, size: 64, offset: 80)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4601, file: !4515, line: 414, baseType: !443, size: 32, offset: 160)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4601, file: !4515, line: 415, baseType: !4611, size: 64, offset: 192)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4581, file: !4515, line: 465, baseType: !4613, size: 192)
!4613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4614, size: 192, elements: !753)
!4614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4515, line: 376, size: 96, elements: !4615)
!4615 = !{!4616, !4617, !4618, !4619, !4620, !4621}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4614, file: !4515, line: 377, baseType: !264, size: 16)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4614, file: !4515, line: 378, baseType: !264, size: 16, offset: 16)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4614, file: !4515, line: 380, baseType: !771, size: 16, offset: 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4614, file: !4515, line: 381, baseType: !771, size: 16, offset: 48)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4614, file: !4515, line: 383, baseType: !264, size: 16, offset: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4614, file: !4515, line: 384, baseType: !771, size: 16, offset: 80)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4581, file: !4515, line: 466, baseType: !4623, size: 32)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4515, line: 426, size: 32, elements: !4624)
!4624 = !{!4625, !4626}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4623, file: !4515, line: 427, baseType: !264, size: 16)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4623, file: !4515, line: 428, baseType: !264, size: 16, offset: 16)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4558, file: !4508, line: 549, baseType: !4628, size: 64, offset: 64)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!85, !4506, !85}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4558, file: !4508, line: 551, baseType: !4632, size: 64, offset: 128)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!85, !4506, !85, !85}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4558, file: !4508, line: 552, baseType: !4636, size: 64, offset: 192)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !4506, !263}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4558, file: !4508, line: 553, baseType: !4636, size: 64, offset: 256)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4558, file: !4508, line: 555, baseType: !4641, size: 64, offset: 320)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{null, !4557}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4558, file: !4508, line: 557, baseType: !192, size: 64, offset: 384)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4558, file: !4508, line: 559, baseType: !4531, size: 128, offset: 448)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4558, file: !4508, line: 561, baseType: !634, size: 256, offset: 576)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4558, file: !4508, line: 563, baseType: !85, size: 32, offset: 832)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4558, file: !4508, line: 564, baseType: !4564, size: 64, offset: 896)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4558, file: !4508, line: 565, baseType: !4650, offset: 960)
!4650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1725, elements: !1785)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4507, file: !4508, line: 169, baseType: !4652, size: 64, offset: 2048)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4508, line: 24, flags: DIFlagFwdDecl)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4507, file: !4508, line: 171, baseType: !7, size: 32, offset: 2112)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4507, file: !4508, line: 172, baseType: !876, size: 320, offset: 2176)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4507, file: !4508, line: 174, baseType: !4657, size: 64, offset: 2496)
!4657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !753)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4507, file: !4508, line: 176, baseType: !4659, size: 64, offset: 2560)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4508, line: 176, flags: DIFlagFwdDecl)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4507, file: !4508, line: 178, baseType: !4662, size: 64, offset: 2624)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4515, line: 93, size: 192, elements: !4664)
!4664 = !{!4665, !4666, !4667, !4668, !4669, !4670}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4663, file: !4515, line: 94, baseType: !631, size: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4663, file: !4515, line: 95, baseType: !631, size: 32, offset: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4663, file: !4515, line: 96, baseType: !631, size: 32, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4663, file: !4515, line: 97, baseType: !631, size: 32, offset: 96)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4663, file: !4515, line: 98, baseType: !631, size: 32, offset: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4663, file: !4515, line: 99, baseType: !631, size: 32, offset: 160)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4507, file: !4508, line: 180, baseType: !4524, size: 768, offset: 2688)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4507, file: !4508, line: 181, baseType: !1649, size: 64, offset: 3456)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4507, file: !4508, line: 182, baseType: !1649, size: 64, offset: 3520)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4507, file: !4508, line: 183, baseType: !1649, size: 64, offset: 3584)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4507, file: !4508, line: 185, baseType: !4676, size: 64, offset: 3648)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!85, !4506}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4507, file: !4508, line: 186, baseType: !4680, size: 64, offset: 3712)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{null, !4506}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4507, file: !4508, line: 187, baseType: !4684, size: 64, offset: 3776)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!85, !4506, !1725}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4507, file: !4508, line: 188, baseType: !4688, size: 64, offset: 3840)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!85, !4506, !7, !7, !85}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4507, file: !4508, line: 190, baseType: !4692, size: 64, offset: 3904)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4508, line: 345, size: 576, elements: !4694)
!4694 = !{!4695, !4696, !4697, !4698, !4699, !4765, !4766}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4693, file: !4508, line: 347, baseType: !192, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4693, file: !4508, line: 349, baseType: !85, size: 32, offset: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4693, file: !4508, line: 350, baseType: !213, size: 64, offset: 128)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4693, file: !4508, line: 352, baseType: !4506, size: 64, offset: 192)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4693, file: !4508, line: 353, baseType: !4700, size: 64, offset: 256)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4508, line: 310, size: 960, elements: !4702)
!4702 = !{!4703, !4704, !4708, !4719, !4723, !4727, !4754, !4758, !4759, !4760, !4761, !4762, !4763, !4764}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4701, file: !4508, line: 312, baseType: !192, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4701, file: !4508, line: 314, baseType: !4705, size: 64, offset: 64)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{null, !4692, !7, !7, !85}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4701, file: !4508, line: 315, baseType: !4709, size: 64, offset: 128)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{null, !4692, !4712, !7}
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4714)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4508, line: 32, size: 64, elements: !4715)
!4715 = !{!4716, !4717, !4718}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4714, file: !4508, line: 33, baseType: !264, size: 16)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4714, file: !4508, line: 34, baseType: !264, size: 16, offset: 16)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4714, file: !4508, line: 35, baseType: !631, size: 32, offset: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4701, file: !4508, line: 317, baseType: !4720, size: 64, offset: 192)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!714, !4692, !7, !7, !85}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4701, file: !4508, line: 318, baseType: !4724, size: 64, offset: 256)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!714, !4700, !4506}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4701, file: !4508, line: 319, baseType: !4728, size: 64, offset: 320)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!85, !4700, !4506, !4731}
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4733)
!4733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4050, line: 362, size: 1600, elements: !4734)
!4734 = !{!4735, !4736, !4737, !4738, !4739, !4740, !4742, !4744, !4745, !4746, !4747, !4748, !4749, !4751, !4752, !4753}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4733, file: !4050, line: 364, baseType: !4066, size: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4733, file: !4050, line: 366, baseType: !264, size: 16, offset: 64)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4733, file: !4050, line: 367, baseType: !264, size: 16, offset: 80)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4733, file: !4050, line: 368, baseType: !264, size: 16, offset: 96)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4733, file: !4050, line: 369, baseType: !264, size: 16, offset: 112)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4733, file: !4050, line: 371, baseType: !4741, size: 64, offset: 128)
!4741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4066, size: 64, elements: !1650)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4733, file: !4050, line: 372, baseType: !4743, size: 768, offset: 192)
!4743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4066, size: 768, elements: !3189)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4733, file: !4050, line: 373, baseType: !4741, size: 64, offset: 960)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4733, file: !4050, line: 374, baseType: !4741, size: 64, offset: 1024)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4733, file: !4050, line: 375, baseType: !4741, size: 64, offset: 1088)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4733, file: !4050, line: 376, baseType: !4741, size: 64, offset: 1152)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4733, file: !4050, line: 377, baseType: !4741, size: 64, offset: 1216)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4733, file: !4050, line: 378, baseType: !4750, size: 128, offset: 1280)
!4750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4066, size: 128, elements: !753)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4733, file: !4050, line: 379, baseType: !4741, size: 64, offset: 1408)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4733, file: !4050, line: 380, baseType: !4741, size: 64, offset: 1472)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4733, file: !4050, line: 382, baseType: !4066, size: 64, offset: 1536)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4701, file: !4508, line: 320, baseType: !4755, size: 64, offset: 384)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{null, !4692}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4701, file: !4508, line: 321, baseType: !4755, size: 64, offset: 448)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4701, file: !4508, line: 323, baseType: !714, size: 8, offset: 512)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4701, file: !4508, line: 324, baseType: !85, size: 32, offset: 544)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4701, file: !4508, line: 325, baseType: !213, size: 64, offset: 576)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4701, file: !4508, line: 327, baseType: !4731, size: 64, offset: 640)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4701, file: !4508, line: 329, baseType: !217, size: 128, offset: 704)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4701, file: !4508, line: 330, baseType: !217, size: 128, offset: 832)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4693, file: !4508, line: 355, baseType: !217, size: 128, offset: 320)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4693, file: !4508, line: 356, baseType: !217, size: 128, offset: 448)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4507, file: !4508, line: 192, baseType: !230, size: 32, offset: 3968)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4507, file: !4508, line: 193, baseType: !634, size: 256, offset: 4032)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4507, file: !4508, line: 195, baseType: !7, size: 32, offset: 4288)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4507, file: !4508, line: 196, baseType: !714, size: 8, offset: 4320)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4507, file: !4508, line: 198, baseType: !206, size: 5824, offset: 4352)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4507, file: !4508, line: 200, baseType: !217, size: 128, offset: 10176)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4507, file: !4508, line: 201, baseType: !217, size: 128, offset: 10304)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4507, file: !4508, line: 203, baseType: !7, size: 32, offset: 10432)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4507, file: !4508, line: 204, baseType: !7, size: 32, offset: 10464)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4507, file: !4508, line: 205, baseType: !4777, size: 64, offset: 10496)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4507, file: !4508, line: 207, baseType: !714, size: 8, offset: 10560)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4507, file: !4508, line: 209, baseType: !4780, size: 192, offset: 10624)
!4780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1530, size: 192, elements: !296)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !4507, file: !4508, line: 211, baseType: !714, size: 8, offset: 10816)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "ps2dev", scope: !4502, file: !130, line: 92, baseType: !4783, size: 832, offset: 128)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !124, line: 48, size: 832, elements: !4784)
!4784 = !{!4785, !4786, !4787, !4788, !4789, !4791, !4792, !4793, !4799}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !4783, file: !124, line: 49, baseType: !4324, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !4783, file: !124, line: 50, baseType: !634, size: 256, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4783, file: !124, line: 51, baseType: !1388, size: 192, offset: 320)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4783, file: !124, line: 52, baseType: !191, size: 64, offset: 512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !4783, file: !124, line: 53, baseType: !4790, size: 64, offset: 576)
!4790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 64, elements: !1565)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !4783, file: !124, line: 54, baseType: !200, size: 8, offset: 640)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !4783, file: !124, line: 55, baseType: !200, size: 8, offset: 648)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "pre_receive_handler", scope: !4783, file: !124, line: 57, baseType: !4794, size: 64, offset: 704)
!4794 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_pre_receive_handler_t", file: !124, line: 30, baseType: !4795)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!123, !4798, !200, !7}
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "receive_handler", scope: !4783, file: !124, line: 58, baseType: !4800, size: 64, offset: 768)
!4800 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_receive_handler_t", file: !124, line: 32, baseType: !4801)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{null, !4798, !200}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "resync_work", scope: !4502, file: !130, line: 93, baseType: !951, size: 704, offset: 960)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4502, file: !130, line: 94, baseType: !213, size: 64, offset: 1664)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4502, file: !130, line: 95, baseType: !213, size: 64, offset: 1728)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4502, file: !130, line: 96, baseType: !4808, size: 64, offset: 1792)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4810)
!4810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_protocol", file: !130, line: 77, size: 320, elements: !4811)
!4811 = !{!4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4823}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4810, file: !130, line: 78, baseType: !129, size: 32)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "maxproto", scope: !4810, file: !130, line: 79, baseType: !714, size: 8, offset: 32)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parity", scope: !4810, file: !130, line: 80, baseType: !714, size: 8, offset: 40)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "try_passthru", scope: !4810, file: !130, line: 81, baseType: !714, size: 8, offset: 48)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_companion", scope: !4810, file: !130, line: 82, baseType: !714, size: 8, offset: 56)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4810, file: !130, line: 83, baseType: !213, size: 64, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !4810, file: !130, line: 84, baseType: !213, size: 64, offset: 128)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4810, file: !130, line: 85, baseType: !4820, size: 64, offset: 192)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!85, !4501, !714}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4810, file: !130, line: 86, baseType: !4824, size: 64, offset: 256)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!85, !4501}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !4502, file: !130, line: 97, baseType: !4828, size: 64, offset: 1856)
!4828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 64, elements: !1565)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "badbyte", scope: !4502, file: !130, line: 98, baseType: !204, size: 8, offset: 1920)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "pktcnt", scope: !4502, file: !130, line: 99, baseType: !204, size: 8, offset: 1928)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "pktsize", scope: !4502, file: !130, line: 100, baseType: !204, size: 8, offset: 1936)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "oob_data_type", scope: !4502, file: !130, line: 101, baseType: !204, size: 8, offset: 1944)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buttons", scope: !4502, file: !130, line: 102, baseType: !204, size: 8, offset: 1952)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "acks_disable_command", scope: !4502, file: !130, line: 103, baseType: !714, size: 8, offset: 1960)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4502, file: !130, line: 104, baseType: !7, size: 32, offset: 1984)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4502, file: !130, line: 105, baseType: !191, size: 64, offset: 2048)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_sync_cnt", scope: !4502, file: !130, line: 106, baseType: !191, size: 64, offset: 2112)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "num_resyncs", scope: !4502, file: !130, line: 107, baseType: !191, size: 64, offset: 2176)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4502, file: !130, line: 108, baseType: !156, size: 32, offset: 2240)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !4502, file: !130, line: 109, baseType: !4841, size: 512, offset: 2272)
!4841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 512, elements: !300)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4502, file: !130, line: 110, baseType: !3310, size: 256, offset: 2784)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !4502, file: !130, line: 112, baseType: !7, size: 32, offset: 3040)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4502, file: !130, line: 113, baseType: !7, size: 32, offset: 3072)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "resetafter", scope: !4502, file: !130, line: 114, baseType: !7, size: 32, offset: 3104)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "resync_time", scope: !4502, file: !130, line: 115, baseType: !7, size: 32, offset: 3136)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "smartscroll", scope: !4502, file: !130, line: 116, baseType: !714, size: 8, offset: 3168)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_handler", scope: !4502, file: !130, line: 118, baseType: !4849, size: 64, offset: 3200)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!4852, !4501}
!4852 = !DIDerivedType(tag: DW_TAG_typedef, name: "psmouse_ret_t", file: !130, line: 41, baseType: !163)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !4502, file: !130, line: 119, baseType: !4854, size: 64, offset: 3264)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{null, !4501, !7}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "set_resolution", scope: !4502, file: !130, line: 120, baseType: !4854, size: 64, offset: 3328)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "set_scale", scope: !4502, file: !130, line: 121, baseType: !4859, size: 64, offset: 3392)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{null, !4501, !168}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !4502, file: !130, line: 123, baseType: !4824, size: 64, offset: 3456)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !4502, file: !130, line: 124, baseType: !4824, size: 64, offset: 3520)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4502, file: !130, line: 125, baseType: !4865, size: 64, offset: 3584)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{null, !4501}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4502, file: !130, line: 126, baseType: !4865, size: 64, offset: 3648)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4502, file: !130, line: 127, baseType: !4824, size: 64, offset: 3712)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "pt_activate", scope: !4502, file: !130, line: 129, baseType: !4865, size: 64, offset: 3776)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "pt_deactivate", scope: !4502, file: !130, line: 130, baseType: !4865, size: 64, offset: 3840)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4481, file: !130, line: 153, baseType: !4873, size: 64, offset: 384)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!327, !4501, !192, !213, !341}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "protect", scope: !4481, file: !130, line: 155, baseType: !714, size: 8, offset: 448)
!4877 = !DIGlobalVariableExpression(var: !4878, expr: !DIExpression())
!4878 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !4456, isLocal: true, isDefinition: true)
!4879 = !DIGlobalVariableExpression(var: !4880, expr: !DIExpression())
!4880 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !2806, isLocal: true, isDefinition: true)
!4881 = !DIGlobalVariableExpression(var: !4882, expr: !DIExpression())
!4882 = distinct !DIGlobalVariable(name: "psmouse_attr_inertia", scope: !2, file: !3, line: 187, type: !4481, isLocal: true, isDefinition: true)
!4883 = !DIGlobalVariableExpression(var: !4884, expr: !DIExpression())
!4884 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !1867, isLocal: true, isDefinition: true)
!4885 = !DIGlobalVariableExpression(var: !4886, expr: !DIExpression())
!4886 = distinct !DIGlobalVariable(name: "psmouse_attr_speed", scope: !2, file: !3, line: 186, type: !4481, isLocal: true, isDefinition: true)
!4887 = !DIGlobalVariableExpression(var: !4888, expr: !DIExpression())
!4888 = distinct !DIGlobalVariable(scope: null, file: !3, line: 188, type: !1867, isLocal: true, isDefinition: true)
!4889 = !DIGlobalVariableExpression(var: !4890, expr: !DIExpression())
!4890 = distinct !DIGlobalVariable(name: "psmouse_attr_reach", scope: !2, file: !3, line: 188, type: !4481, isLocal: true, isDefinition: true)
!4891 = !DIGlobalVariableExpression(var: !4892, expr: !DIExpression())
!4892 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !2806, isLocal: true, isDefinition: true)
!4893 = !DIGlobalVariableExpression(var: !4894, expr: !DIExpression())
!4894 = distinct !DIGlobalVariable(name: "psmouse_attr_draghys", scope: !2, file: !3, line: 189, type: !4481, isLocal: true, isDefinition: true)
!4895 = !DIGlobalVariableExpression(var: !4896, expr: !DIExpression())
!4896 = distinct !DIGlobalVariable(scope: null, file: !3, line: 190, type: !2806, isLocal: true, isDefinition: true)
!4897 = !DIGlobalVariableExpression(var: !4898, expr: !DIExpression())
!4898 = distinct !DIGlobalVariable(name: "psmouse_attr_mindrag", scope: !2, file: !3, line: 190, type: !4481, isLocal: true, isDefinition: true)
!4899 = !DIGlobalVariableExpression(var: !4900, expr: !DIExpression())
!4900 = distinct !DIGlobalVariable(scope: null, file: !3, line: 191, type: !4901, isLocal: true, isDefinition: true)
!4901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 56, elements: !755)
!4902 = !DIGlobalVariableExpression(var: !4903, expr: !DIExpression())
!4903 = distinct !DIGlobalVariable(name: "psmouse_attr_thresh", scope: !2, file: !3, line: 191, type: !4481, isLocal: true, isDefinition: true)
!4904 = !DIGlobalVariableExpression(var: !4905, expr: !DIExpression())
!4905 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !4906, isLocal: true, isDefinition: true)
!4906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 72, elements: !4907)
!4907 = !{!4908}
!4908 = !DISubrange(count: 9)
!4909 = !DIGlobalVariableExpression(var: !4910, expr: !DIExpression())
!4910 = distinct !DIGlobalVariable(name: "psmouse_attr_upthresh", scope: !2, file: !3, line: 192, type: !4481, isLocal: true, isDefinition: true)
!4911 = !DIGlobalVariableExpression(var: !4912, expr: !DIExpression())
!4912 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !1867, isLocal: true, isDefinition: true)
!4913 = !DIGlobalVariableExpression(var: !4914, expr: !DIExpression())
!4914 = distinct !DIGlobalVariable(name: "psmouse_attr_ztime", scope: !2, file: !3, line: 193, type: !4481, isLocal: true, isDefinition: true)
!4915 = !DIGlobalVariableExpression(var: !4916, expr: !DIExpression())
!4916 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !1867, isLocal: true, isDefinition: true)
!4917 = !DIGlobalVariableExpression(var: !4918, expr: !DIExpression())
!4918 = distinct !DIGlobalVariable(name: "psmouse_attr_jenks", scope: !2, file: !3, line: 194, type: !4481, isLocal: true, isDefinition: true)
!4919 = !DIGlobalVariableExpression(var: !4920, expr: !DIExpression())
!4920 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !4391, isLocal: true, isDefinition: true)
!4921 = !DIGlobalVariableExpression(var: !4922, expr: !DIExpression())
!4922 = distinct !DIGlobalVariable(name: "psmouse_attr_drift_time", scope: !2, file: !3, line: 195, type: !4481, isLocal: true, isDefinition: true)
!4923 = !DIGlobalVariableExpression(var: !4924, expr: !DIExpression())
!4924 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !2484, isLocal: true, isDefinition: true)
!4925 = !DIGlobalVariableExpression(var: !4926, expr: !DIExpression())
!4926 = distinct !DIGlobalVariable(name: "psmouse_attr_press_to_select", scope: !2, file: !3, line: 197, type: !4481, isLocal: true, isDefinition: true)
!4927 = !DIGlobalVariableExpression(var: !4928, expr: !DIExpression())
!4928 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !4906, isLocal: true, isDefinition: true)
!4929 = !DIGlobalVariableExpression(var: !4930, expr: !DIExpression())
!4930 = distinct !DIGlobalVariable(name: "psmouse_attr_skipback", scope: !2, file: !3, line: 199, type: !4481, isLocal: true, isDefinition: true)
!4931 = !DIGlobalVariableExpression(var: !4932, expr: !DIExpression())
!4932 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !2806, isLocal: true, isDefinition: true)
!4933 = !DIGlobalVariableExpression(var: !4934, expr: !DIExpression())
!4934 = distinct !DIGlobalVariable(name: "psmouse_attr_ext_dev", scope: !2, file: !3, line: 201, type: !4481, isLocal: true, isDefinition: true)
!4935 = !DIGlobalVariableExpression(var: !4936, expr: !DIExpression())
!4936 = distinct !DIGlobalVariable(name: "trackpoint_attr_group", scope: !2, file: !3, line: 242, type: !348, isLocal: true, isDefinition: true)
!4937 = !DIGlobalVariableExpression(var: !4938, expr: !DIExpression())
!4938 = distinct !DIGlobalVariable(name: "trackpoint_attrs", scope: !2, file: !3, line: 224, type: !4939, isLocal: true, isDefinition: true)
!4939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 960, elements: !4940)
!4940 = !{!4941}
!4941 = !DISubrange(count: 15)
!4942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4943, size: 448, elements: !755)
!4943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!4944 = !{i32 7, !"Dwarf Version", i32 5}
!4945 = !{i32 2, !"Debug Info Version", i32 3}
!4946 = !{i32 1, !"wchar_size", i32 2}
!4947 = !{i32 8, !"cf-protection-branch", i32 1}
!4948 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4949 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4950 = !{i32 1, !"Code Model", i32 2}
!4951 = !{i32 1, !"override-stack-alignment", i32 8}
!4952 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4953 = distinct !DISubprogram(name: "trackpoint_detect", scope: !3, file: !3, line: 396, type: !4821, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4954)
!4954 = !{!4955, !4956, !4957, !4958, !4979, !4980, !4981, !4982}
!4955 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4953, file: !3, line: 396, type: !4501)
!4956 = !DILocalVariable(name: "set_properties", arg: 2, scope: !4953, file: !3, line: 396, type: !714)
!4957 = !DILocalVariable(name: "ps2dev", scope: !4953, file: !3, line: 398, type: !4798)
!4958 = !DILocalVariable(name: "tp", scope: !4953, file: !3, line: 399, type: !4959)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trackpoint_data", file: !4961, line: 144, size: 128, elements: !4962)
!4961 = !DIFile(filename: "drivers/input/mouse/trackpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b915d7b96991389625d2a026a88036c")
!4962 = !{!4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "variant_id", scope: !4960, file: !4961, line: 145, baseType: !200, size: 8)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !4960, file: !4961, line: 146, baseType: !200, size: 8, offset: 8)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "sensitivity", scope: !4960, file: !4961, line: 148, baseType: !200, size: 8, offset: 16)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4960, file: !4961, line: 148, baseType: !200, size: 8, offset: 24)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "inertia", scope: !4960, file: !4961, line: 148, baseType: !200, size: 8, offset: 32)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "reach", scope: !4960, file: !4961, line: 148, baseType: !200, size: 8, offset: 40)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "draghys", scope: !4960, file: !4961, line: 149, baseType: !200, size: 8, offset: 48)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "mindrag", scope: !4960, file: !4961, line: 149, baseType: !200, size: 8, offset: 56)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "thresh", scope: !4960, file: !4961, line: 150, baseType: !200, size: 8, offset: 64)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "upthresh", scope: !4960, file: !4961, line: 150, baseType: !200, size: 8, offset: 72)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "ztime", scope: !4960, file: !4961, line: 151, baseType: !200, size: 8, offset: 80)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "jenks", scope: !4960, file: !4961, line: 151, baseType: !200, size: 8, offset: 88)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "drift_time", scope: !4960, file: !4961, line: 152, baseType: !200, size: 8, offset: 96)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "press_to_select", scope: !4960, file: !4961, line: 155, baseType: !714, size: 8, offset: 104)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "skipback", scope: !4960, file: !4961, line: 156, baseType: !714, size: 8, offset: 112)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "ext_dev", scope: !4960, file: !4961, line: 157, baseType: !714, size: 8, offset: 120)
!4979 = !DILocalVariable(name: "variant_id", scope: !4953, file: !3, line: 400, type: !200)
!4980 = !DILocalVariable(name: "firmware_id", scope: !4953, file: !3, line: 401, type: !200)
!4981 = !DILocalVariable(name: "button_info", scope: !4953, file: !3, line: 402, type: !200)
!4982 = !DILocalVariable(name: "error", scope: !4953, file: !3, line: 403, type: !85)
!4983 = !DILocation(line: 396, column: 39, scope: !4953)
!4984 = !DILocation(line: 396, column: 53, scope: !4953)
!4985 = !DILocation(line: 398, column: 2, scope: !4953)
!4986 = !DILocation(line: 398, column: 17, scope: !4953)
!4987 = !DILocation(line: 398, column: 27, scope: !4953)
!4988 = !DILocation(line: 398, column: 36, scope: !4953)
!4989 = !DILocation(line: 399, column: 2, scope: !4953)
!4990 = !DILocation(line: 399, column: 26, scope: !4953)
!4991 = !DILocation(line: 400, column: 2, scope: !4953)
!4992 = !DILocation(line: 400, column: 5, scope: !4953)
!4993 = !DILocation(line: 401, column: 2, scope: !4953)
!4994 = !DILocation(line: 401, column: 5, scope: !4953)
!4995 = !DILocation(line: 402, column: 2, scope: !4953)
!4996 = !DILocation(line: 402, column: 5, scope: !4953)
!4997 = !DILocation(line: 403, column: 2, scope: !4953)
!4998 = !DILocation(line: 403, column: 6, scope: !4953)
!4999 = !DILocation(line: 405, column: 36, scope: !4953)
!5000 = !DILocation(line: 405, column: 10, scope: !4953)
!5001 = !DILocation(line: 405, column: 8, scope: !4953)
!5002 = !DILocation(line: 406, column: 6, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 406, column: 6)
!5004 = !DILocation(line: 406, column: 6, scope: !4953)
!5005 = !DILocation(line: 407, column: 10, scope: !5003)
!5006 = !DILocation(line: 407, column: 3, scope: !5003)
!5007 = !DILocation(line: 409, column: 7, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 409, column: 6)
!5009 = !{i8 0, i8 2}
!5010 = !DILocation(line: 409, column: 6, scope: !4953)
!5011 = !DILocation(line: 410, column: 3, scope: !5008)
!5012 = !DILocation(line: 412, column: 7, scope: !4953)
!5013 = !DILocation(line: 412, column: 5, scope: !4953)
!5014 = !DILocation(line: 413, column: 7, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 413, column: 6)
!5016 = !DILocation(line: 413, column: 6, scope: !4953)
!5017 = !DILocation(line: 414, column: 3, scope: !5015)
!5018 = !DILocation(line: 416, column: 22, scope: !4953)
!5019 = !DILocation(line: 416, column: 2, scope: !4953)
!5020 = !DILocation(line: 417, column: 19, scope: !4953)
!5021 = !DILocation(line: 417, column: 2, scope: !4953)
!5022 = !DILocation(line: 417, column: 6, scope: !4953)
!5023 = !DILocation(line: 417, column: 17, scope: !4953)
!5024 = !DILocation(line: 418, column: 20, scope: !4953)
!5025 = !DILocation(line: 418, column: 2, scope: !4953)
!5026 = !DILocation(line: 418, column: 6, scope: !4953)
!5027 = !DILocation(line: 418, column: 18, scope: !4953)
!5028 = !DILocation(line: 420, column: 21, scope: !4953)
!5029 = !DILocation(line: 420, column: 2, scope: !4953)
!5030 = !DILocation(line: 420, column: 11, scope: !4953)
!5031 = !DILocation(line: 420, column: 19, scope: !4953)
!5032 = !DILocation(line: 422, column: 40, scope: !4953)
!5033 = !DILocation(line: 422, column: 20, scope: !4953)
!5034 = !DILocation(line: 422, column: 2, scope: !4953)
!5035 = !DILocation(line: 422, column: 11, scope: !4953)
!5036 = !DILocation(line: 422, column: 18, scope: !4953)
!5037 = !DILocation(line: 423, column: 2, scope: !4953)
!5038 = !DILocation(line: 423, column: 11, scope: !4953)
!5039 = !DILocation(line: 423, column: 16, scope: !4953)
!5040 = !DILocation(line: 425, column: 2, scope: !4953)
!5041 = !DILocation(line: 425, column: 11, scope: !4953)
!5042 = !DILocation(line: 425, column: 21, scope: !4953)
!5043 = !DILocation(line: 426, column: 2, scope: !4953)
!5044 = !DILocation(line: 426, column: 11, scope: !4953)
!5045 = !DILocation(line: 426, column: 22, scope: !4953)
!5046 = !DILocation(line: 428, column: 6, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 428, column: 6)
!5048 = !DILocation(line: 428, column: 17, scope: !5047)
!5049 = !DILocation(line: 428, column: 6, scope: !4953)
!5050 = !DILocation(line: 430, column: 15, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 428, column: 36)
!5052 = !DILocation(line: 431, column: 2, scope: !5051)
!5053 = !DILocation(line: 432, column: 27, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 431, column: 9)
!5055 = !DILocation(line: 432, column: 11, scope: !5054)
!5056 = !DILocation(line: 432, column: 9, scope: !5054)
!5057 = !DILocation(line: 433, column: 7, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 433, column: 7)
!5059 = !DILocation(line: 433, column: 7, scope: !5054)
!5060 = !DILocation(line: 434, column: 4, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 434, column: 4)
!5062 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 433, column: 14)
!5063 = !DILocation(line: 434, column: 4, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 434, column: 4)
!5065 = !DILocation(line: 436, column: 16, scope: !5062)
!5066 = !DILocation(line: 437, column: 3, scope: !5062)
!5067 = !DILocation(line: 437, column: 15, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 437, column: 14)
!5069 = !DILocation(line: 437, column: 14, scope: !5058)
!5070 = !DILocation(line: 438, column: 4, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 438, column: 4)
!5072 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 437, column: 28)
!5073 = !DILocation(line: 438, column: 4, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 438, column: 4)
!5075 = !DILocation(line: 440, column: 16, scope: !5072)
!5076 = !DILocation(line: 441, column: 3, scope: !5072)
!5077 = !DILocation(line: 444, column: 7, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 444, column: 6)
!5079 = !DILocation(line: 444, column: 19, scope: !5078)
!5080 = !DILocation(line: 444, column: 27, scope: !5078)
!5081 = !DILocation(line: 444, column: 6, scope: !4953)
!5082 = !DILocation(line: 445, column: 24, scope: !5078)
!5083 = !DILocation(line: 445, column: 33, scope: !5078)
!5084 = !DILocation(line: 445, column: 3, scope: !5078)
!5085 = !DILocation(line: 447, column: 2, scope: !4953)
!5086 = !DILocation(line: 448, column: 2, scope: !4953)
!5087 = !DILocation(line: 450, column: 6, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 450, column: 6)
!5089 = !DILocation(line: 450, column: 17, scope: !5088)
!5090 = !DILocation(line: 450, column: 35, scope: !5088)
!5091 = !DILocation(line: 451, column: 32, scope: !5088)
!5092 = !DILocation(line: 451, column: 6, scope: !5088)
!5093 = !DILocation(line: 451, column: 40, scope: !5088)
!5094 = !DILocation(line: 450, column: 6, scope: !4953)
!5095 = !DILocation(line: 455, column: 19, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 451, column: 46)
!5097 = !DILocation(line: 455, column: 3, scope: !5096)
!5098 = !DILocation(line: 456, column: 2, scope: !5096)
!5099 = !DILocation(line: 458, column: 28, scope: !4953)
!5100 = !DILocation(line: 458, column: 36, scope: !4953)
!5101 = !DILocation(line: 458, column: 43, scope: !4953)
!5102 = !DILocation(line: 458, column: 10, scope: !4953)
!5103 = !DILocation(line: 458, column: 8, scope: !4953)
!5104 = !DILocation(line: 459, column: 6, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 459, column: 6)
!5106 = !DILocation(line: 459, column: 6, scope: !4953)
!5107 = !DILocation(line: 460, column: 3, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 460, column: 3)
!5109 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 459, column: 13)
!5110 = !DILocation(line: 460, column: 3, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 460, column: 3)
!5112 = !DILocation(line: 463, column: 9, scope: !5109)
!5113 = !DILocation(line: 463, column: 18, scope: !5109)
!5114 = !DILocation(line: 463, column: 3, scope: !5109)
!5115 = !DILocation(line: 464, column: 3, scope: !5109)
!5116 = !DILocation(line: 464, column: 12, scope: !5109)
!5117 = !DILocation(line: 464, column: 20, scope: !5109)
!5118 = !DILocation(line: 465, column: 3, scope: !5109)
!5119 = !DILocation(line: 468, column: 2, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 468, column: 2)
!5121 = !DILocation(line: 468, column: 2, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 468, column: 2)
!5123 = !DILocation(line: 473, column: 2, scope: !4953)
!5124 = !DILocation(line: 474, column: 1, scope: !4953)
!5125 = distinct !DISubprogram(name: "trackpoint_start_protocol", scope: !3, file: !3, line: 269, type: !5126, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5128)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{!85, !4501, !199, !199}
!5128 = !{!5129, !5130, !5131, !5132, !5134}
!5129 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5125, file: !3, line: 269, type: !4501)
!5130 = !DILocalVariable(name: "variant_id", arg: 2, scope: !5125, file: !3, line: 270, type: !199)
!5131 = !DILocalVariable(name: "firmware_id", arg: 3, scope: !5125, file: !3, line: 270, type: !199)
!5132 = !DILocalVariable(name: "param", scope: !5125, file: !3, line: 272, type: !5133)
!5133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 16, elements: !753)
!5134 = !DILocalVariable(name: "error", scope: !5125, file: !3, line: 273, type: !85)
!5135 = !DILocation(line: 269, column: 54, scope: !5125)
!5136 = !DILocation(line: 270, column: 14, scope: !5125)
!5137 = !DILocation(line: 270, column: 30, scope: !5125)
!5138 = !DILocation(line: 272, column: 2, scope: !5125)
!5139 = !DILocation(line: 272, column: 5, scope: !5125)
!5140 = !DILocation(line: 273, column: 2, scope: !5125)
!5141 = !DILocation(line: 273, column: 6, scope: !5125)
!5142 = !DILocation(line: 275, column: 23, scope: !5125)
!5143 = !DILocation(line: 275, column: 32, scope: !5125)
!5144 = !DILocation(line: 276, column: 8, scope: !5125)
!5145 = !DILocation(line: 275, column: 10, scope: !5125)
!5146 = !DILocation(line: 275, column: 8, scope: !5125)
!5147 = !DILocation(line: 277, column: 6, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 277, column: 6)
!5149 = !DILocation(line: 277, column: 6, scope: !5125)
!5150 = !DILocation(line: 278, column: 10, scope: !5148)
!5151 = !DILocation(line: 278, column: 3, scope: !5148)
!5152 = !DILocation(line: 280, column: 10, scope: !5125)
!5153 = !DILocation(line: 280, column: 2, scope: !5125)
!5154 = !DILocation(line: 287, column: 7, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 287, column: 7)
!5156 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 280, column: 20)
!5157 = !DILocation(line: 287, column: 7, scope: !5156)
!5158 = !DILocation(line: 288, column: 18, scope: !5155)
!5159 = !DILocation(line: 288, column: 5, scope: !5155)
!5160 = !DILocation(line: 288, column: 16, scope: !5155)
!5161 = !DILocation(line: 288, column: 4, scope: !5155)
!5162 = !DILocation(line: 289, column: 7, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 289, column: 7)
!5164 = !DILocation(line: 289, column: 7, scope: !5156)
!5165 = !DILocation(line: 290, column: 19, scope: !5163)
!5166 = !DILocation(line: 290, column: 5, scope: !5163)
!5167 = !DILocation(line: 290, column: 17, scope: !5163)
!5168 = !DILocation(line: 290, column: 4, scope: !5163)
!5169 = !DILocation(line: 291, column: 3, scope: !5156)
!5170 = !DILocation(line: 294, column: 2, scope: !5125)
!5171 = !DILocation(line: 295, column: 1, scope: !5125)
!5172 = distinct !DISubprogram(name: "kzalloc", scope: !178, file: !178, line: 719, type: !5173, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5175)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{!192, !341, !188}
!5175 = !{!5176, !5177}
!5176 = !DILocalVariable(name: "size", arg: 1, scope: !5172, file: !178, line: 719, type: !341)
!5177 = !DILocalVariable(name: "flags", arg: 2, scope: !5172, file: !178, line: 719, type: !188)
!5178 = !DILocation(line: 719, column: 52, scope: !5172)
!5179 = !DILocation(line: 719, column: 64, scope: !5172)
!5180 = !DILocation(line: 721, column: 17, scope: !5172)
!5181 = !DILocation(line: 721, column: 23, scope: !5172)
!5182 = !DILocation(line: 721, column: 29, scope: !5172)
!5183 = !DILocation(line: 721, column: 9, scope: !5172)
!5184 = !DILocation(line: 721, column: 2, scope: !5172)
!5185 = distinct !DISubprogram(name: "trackpoint_defaults", scope: !3, file: !3, line: 347, type: !5186, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5188)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{null, !4959}
!5188 = !{!5189}
!5189 = !DILocalVariable(name: "tp", arg: 1, scope: !5185, file: !3, line: 347, type: !4959)
!5190 = !DILocation(line: 347, column: 57, scope: !5185)
!5191 = !DILocation(line: 349, column: 2, scope: !5185)
!5192 = !DILocation(line: 349, column: 2, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 349, column: 2)
!5194 = !DILocation(line: 350, column: 2, scope: !5185)
!5195 = !DILocation(line: 350, column: 2, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 350, column: 2)
!5197 = !DILocation(line: 351, column: 2, scope: !5185)
!5198 = !DILocation(line: 351, column: 2, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 351, column: 2)
!5200 = !DILocation(line: 352, column: 2, scope: !5185)
!5201 = !DILocation(line: 352, column: 2, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 352, column: 2)
!5203 = !DILocation(line: 353, column: 2, scope: !5185)
!5204 = !DILocation(line: 353, column: 2, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 353, column: 2)
!5206 = !DILocation(line: 354, column: 2, scope: !5185)
!5207 = !DILocation(line: 354, column: 2, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 354, column: 2)
!5209 = !DILocation(line: 355, column: 2, scope: !5185)
!5210 = !DILocation(line: 355, column: 2, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 355, column: 2)
!5212 = !DILocation(line: 356, column: 2, scope: !5185)
!5213 = !DILocation(line: 356, column: 2, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 356, column: 2)
!5215 = !DILocation(line: 357, column: 2, scope: !5185)
!5216 = !DILocation(line: 357, column: 2, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 357, column: 2)
!5218 = !DILocation(line: 358, column: 2, scope: !5185)
!5219 = !DILocation(line: 358, column: 2, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 358, column: 2)
!5221 = !DILocation(line: 359, column: 2, scope: !5185)
!5222 = !DILocation(line: 359, column: 2, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 359, column: 2)
!5224 = !DILocation(line: 362, column: 2, scope: !5185)
!5225 = !DILocation(line: 362, column: 2, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 362, column: 2)
!5227 = !DILocation(line: 363, column: 2, scope: !5185)
!5228 = !DILocation(line: 363, column: 2, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 363, column: 2)
!5230 = !DILocation(line: 364, column: 2, scope: !5185)
!5231 = !DILocation(line: 364, column: 2, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 364, column: 2)
!5233 = !DILocation(line: 365, column: 1, scope: !5185)
!5234 = distinct !DISubprogram(name: "trackpoint_reconnect", scope: !3, file: !3, line: 376, type: !4825, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5235)
!5235 = !{!5236, !5237, !5238, !5239}
!5236 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5234, file: !3, line: 376, type: !4501)
!5237 = !DILocalVariable(name: "tp", scope: !5234, file: !3, line: 378, type: !4959)
!5238 = !DILocalVariable(name: "error", scope: !5234, file: !3, line: 379, type: !85)
!5239 = !DILocalVariable(name: "was_reset", scope: !5234, file: !3, line: 380, type: !714)
!5240 = !DILocation(line: 376, column: 49, scope: !5234)
!5241 = !DILocation(line: 378, column: 2, scope: !5234)
!5242 = !DILocation(line: 378, column: 26, scope: !5234)
!5243 = !DILocation(line: 378, column: 31, scope: !5234)
!5244 = !DILocation(line: 378, column: 40, scope: !5234)
!5245 = !DILocation(line: 379, column: 2, scope: !5234)
!5246 = !DILocation(line: 379, column: 6, scope: !5234)
!5247 = !DILocation(line: 380, column: 2, scope: !5234)
!5248 = !DILocation(line: 380, column: 7, scope: !5234)
!5249 = !DILocation(line: 382, column: 36, scope: !5234)
!5250 = !DILocation(line: 382, column: 10, scope: !5234)
!5251 = !DILocation(line: 382, column: 8, scope: !5234)
!5252 = !DILocation(line: 383, column: 6, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 383, column: 6)
!5254 = !DILocation(line: 383, column: 6, scope: !5234)
!5255 = !DILocation(line: 384, column: 10, scope: !5253)
!5256 = !DILocation(line: 384, column: 3, scope: !5253)
!5257 = !DILocation(line: 386, column: 14, scope: !5234)
!5258 = !DILocation(line: 386, column: 18, scope: !5234)
!5259 = !DILocation(line: 386, column: 29, scope: !5234)
!5260 = !DILocation(line: 386, column: 47, scope: !5234)
!5261 = !DILocation(line: 387, column: 34, scope: !5234)
!5262 = !DILocation(line: 387, column: 43, scope: !5234)
!5263 = !DILocation(line: 387, column: 7, scope: !5234)
!5264 = !DILocation(line: 387, column: 51, scope: !5234)
!5265 = !DILocation(line: 0, scope: !5234)
!5266 = !DILocation(line: 386, column: 12, scope: !5234)
!5267 = !DILocation(line: 389, column: 26, scope: !5234)
!5268 = !DILocation(line: 389, column: 35, scope: !5234)
!5269 = !DILocation(line: 389, column: 10, scope: !5234)
!5270 = !DILocation(line: 389, column: 8, scope: !5234)
!5271 = !DILocation(line: 390, column: 6, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 390, column: 6)
!5273 = !DILocation(line: 390, column: 6, scope: !5234)
!5274 = !DILocation(line: 391, column: 10, scope: !5272)
!5275 = !DILocation(line: 391, column: 3, scope: !5272)
!5276 = !DILocation(line: 393, column: 2, scope: !5234)
!5277 = !DILocation(line: 394, column: 1, scope: !5234)
!5278 = distinct !DISubprogram(name: "trackpoint_disconnect", scope: !3, file: !3, line: 367, type: !4866, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5279)
!5279 = !{!5280}
!5280 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5278, file: !3, line: 367, type: !4501)
!5281 = !DILocation(line: 367, column: 51, scope: !5278)
!5282 = !DILocation(line: 369, column: 23, scope: !5278)
!5283 = !DILocation(line: 369, column: 32, scope: !5278)
!5284 = !DILocation(line: 369, column: 39, scope: !5278)
!5285 = !DILocation(line: 369, column: 46, scope: !5278)
!5286 = !DILocation(line: 369, column: 2, scope: !5278)
!5287 = !DILocation(line: 372, column: 8, scope: !5278)
!5288 = !DILocation(line: 372, column: 17, scope: !5278)
!5289 = !DILocation(line: 372, column: 2, scope: !5278)
!5290 = !DILocation(line: 373, column: 2, scope: !5278)
!5291 = !DILocation(line: 373, column: 11, scope: !5278)
!5292 = !DILocation(line: 373, column: 19, scope: !5278)
!5293 = !DILocation(line: 374, column: 1, scope: !5278)
!5294 = distinct !DISubprogram(name: "trackpoint_read", scope: !3, file: !3, line: 52, type: !5295, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5297)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!85, !4798, !200, !199}
!5297 = !{!5298, !5299, !5300}
!5298 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5294, file: !3, line: 52, type: !4798)
!5299 = !DILocalVariable(name: "loc", arg: 2, scope: !5294, file: !3, line: 52, type: !200)
!5300 = !DILocalVariable(name: "results", arg: 3, scope: !5294, file: !3, line: 52, type: !199)
!5301 = !DILocation(line: 52, column: 43, scope: !5294)
!5302 = !DILocation(line: 52, column: 54, scope: !5294)
!5303 = !DILocation(line: 52, column: 63, scope: !5294)
!5304 = !DILocation(line: 54, column: 15, scope: !5294)
!5305 = !DILocation(line: 54, column: 2, scope: !5294)
!5306 = !DILocation(line: 54, column: 13, scope: !5294)
!5307 = !DILocation(line: 56, column: 21, scope: !5294)
!5308 = !DILocation(line: 56, column: 29, scope: !5294)
!5309 = !DILocation(line: 56, column: 9, scope: !5294)
!5310 = !DILocation(line: 56, column: 2, scope: !5294)
!5311 = !DISubprogram(name: "_dev_warn", scope: !5312, file: !5312, line: 52, type: !5313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5312 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5313 = !DISubroutineType(types: !5314)
!5314 = !{null, !3980, !213, null}
!5315 = !DISubprogram(name: "input_set_capability", scope: !4508, file: !4508, line: 458, type: !5316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{null, !4506, !7, !7}
!5318 = distinct !DISubprogram(name: "generic___set_bit", scope: !5319, file: !5319, line: 28, type: !5320, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5324)
!5319 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5320 = !DISubroutineType(types: !5321)
!5321 = !{null, !191, !5322}
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !191)
!5324 = !{!5325, !5326, !5327, !5328}
!5325 = !DILocalVariable(name: "nr", arg: 1, scope: !5318, file: !5319, line: 28, type: !191)
!5326 = !DILocalVariable(name: "addr", arg: 2, scope: !5318, file: !5319, line: 28, type: !5322)
!5327 = !DILocalVariable(name: "mask", scope: !5318, file: !5319, line: 30, type: !191)
!5328 = !DILocalVariable(name: "p", scope: !5318, file: !5319, line: 31, type: !195)
!5329 = !DILocation(line: 28, column: 33, scope: !5318)
!5330 = !DILocation(line: 28, column: 61, scope: !5318)
!5331 = !DILocation(line: 30, column: 2, scope: !5318)
!5332 = !DILocation(line: 30, column: 16, scope: !5318)
!5333 = !DILocation(line: 30, column: 23, scope: !5318)
!5334 = !DILocation(line: 31, column: 2, scope: !5318)
!5335 = !DILocation(line: 31, column: 17, scope: !5318)
!5336 = !DILocation(line: 31, column: 39, scope: !5318)
!5337 = !DILocation(line: 31, column: 47, scope: !5318)
!5338 = !DILocation(line: 31, column: 45, scope: !5318)
!5339 = !DILocation(line: 33, column: 9, scope: !5318)
!5340 = !DILocation(line: 33, column: 3, scope: !5318)
!5341 = !DILocation(line: 33, column: 6, scope: !5318)
!5342 = !DILocation(line: 34, column: 1, scope: !5318)
!5343 = distinct !DISubprogram(name: "___set_bit", scope: !5344, file: !5344, line: 26, type: !5320, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5345)
!5344 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5345 = !{!5346, !5347}
!5346 = !DILocalVariable(name: "nr", arg: 1, scope: !5343, file: !5344, line: 26, type: !191)
!5347 = !DILocalVariable(name: "addr", arg: 2, scope: !5343, file: !5344, line: 26, type: !5322)
!5348 = !DILocation(line: 26, column: 26, scope: !5343)
!5349 = !DILocation(line: 26, column: 54, scope: !5343)
!5350 = !DILocation(line: 28, column: 19, scope: !5343)
!5351 = !DILocation(line: 28, column: 26, scope: !5343)
!5352 = !DILocation(line: 28, column: 24, scope: !5343)
!5353 = !DILocation(line: 28, column: 2, scope: !5343)
!5354 = !DILocation(line: 29, column: 17, scope: !5343)
!5355 = !DILocation(line: 29, column: 21, scope: !5343)
!5356 = !DILocation(line: 29, column: 2, scope: !5343)
!5357 = !DILocation(line: 30, column: 1, scope: !5343)
!5358 = distinct !DISubprogram(name: "trackpoint_power_on_reset", scope: !3, file: !3, line: 33, type: !5359, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5361)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!85, !4798}
!5361 = !{!5362, !5363, !5364}
!5362 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5358, file: !3, line: 33, type: !4798)
!5363 = !DILocalVariable(name: "param", scope: !5358, file: !3, line: 35, type: !5133)
!5364 = !DILocalVariable(name: "err", scope: !5358, file: !3, line: 36, type: !85)
!5365 = !DILocation(line: 33, column: 53, scope: !5358)
!5366 = !DILocation(line: 35, column: 2, scope: !5358)
!5367 = !DILocation(line: 35, column: 5, scope: !5358)
!5368 = !DILocation(line: 36, column: 2, scope: !5358)
!5369 = !DILocation(line: 36, column: 6, scope: !5358)
!5370 = !DILocation(line: 38, column: 20, scope: !5358)
!5371 = !DILocation(line: 38, column: 28, scope: !5358)
!5372 = !DILocation(line: 38, column: 8, scope: !5358)
!5373 = !DILocation(line: 38, column: 6, scope: !5358)
!5374 = !DILocation(line: 39, column: 6, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 39, column: 6)
!5376 = !DILocation(line: 39, column: 6, scope: !5358)
!5377 = !DILocation(line: 40, column: 10, scope: !5375)
!5378 = !DILocation(line: 40, column: 3, scope: !5375)
!5379 = !DILocation(line: 43, column: 6, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 43, column: 6)
!5381 = !DILocation(line: 43, column: 15, scope: !5380)
!5382 = !DILocation(line: 43, column: 23, scope: !5380)
!5383 = !DILocation(line: 43, column: 26, scope: !5380)
!5384 = !DILocation(line: 43, column: 35, scope: !5380)
!5385 = !DILocation(line: 43, column: 6, scope: !5358)
!5386 = !DILocation(line: 44, column: 3, scope: !5380)
!5387 = !DILocation(line: 46, column: 2, scope: !5358)
!5388 = !DILocation(line: 47, column: 1, scope: !5358)
!5389 = distinct !DISubprogram(name: "trackpoint_sync", scope: !3, file: !3, line: 303, type: !4821, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5390)
!5390 = !{!5391, !5392, !5393, !5394, !5397, !5399, !5401, !5403, !5405, !5407, !5409, !5411, !5413, !5415, !5417, !5419, !5421}
!5391 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5389, file: !3, line: 303, type: !4501)
!5392 = !DILocalVariable(name: "in_power_on_state", arg: 2, scope: !5389, file: !3, line: 303, type: !714)
!5393 = !DILocalVariable(name: "tp", scope: !5389, file: !3, line: 305, type: !4959)
!5394 = !DILocalVariable(name: "_attr", scope: !5395, file: !3, line: 327, type: !5396)
!5395 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 327, column: 2)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!5397 = !DILocalVariable(name: "_attr", scope: !5398, file: !3, line: 328, type: !5396)
!5398 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 328, column: 2)
!5399 = !DILocalVariable(name: "_attr", scope: !5400, file: !3, line: 329, type: !5396)
!5400 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 329, column: 2)
!5401 = !DILocalVariable(name: "_attr", scope: !5402, file: !3, line: 330, type: !5396)
!5402 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 330, column: 2)
!5403 = !DILocalVariable(name: "_attr", scope: !5404, file: !3, line: 331, type: !5396)
!5404 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 331, column: 2)
!5405 = !DILocalVariable(name: "_attr", scope: !5406, file: !3, line: 332, type: !5396)
!5406 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 332, column: 2)
!5407 = !DILocalVariable(name: "_attr", scope: !5408, file: !3, line: 333, type: !5396)
!5408 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 333, column: 2)
!5409 = !DILocalVariable(name: "_attr", scope: !5410, file: !3, line: 334, type: !5396)
!5410 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 334, column: 2)
!5411 = !DILocalVariable(name: "_attr", scope: !5412, file: !3, line: 335, type: !5396)
!5412 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 335, column: 2)
!5413 = !DILocalVariable(name: "_attr", scope: !5414, file: !3, line: 336, type: !5396)
!5414 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 336, column: 2)
!5415 = !DILocalVariable(name: "_attr", scope: !5416, file: !3, line: 337, type: !5396)
!5416 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 337, column: 2)
!5417 = !DILocalVariable(name: "_attr", scope: !5418, file: !3, line: 340, type: !5396)
!5418 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 340, column: 2)
!5419 = !DILocalVariable(name: "_attr", scope: !5420, file: !3, line: 341, type: !5396)
!5420 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 341, column: 2)
!5421 = !DILocalVariable(name: "_attr", scope: !5422, file: !3, line: 342, type: !5396)
!5422 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 342, column: 2)
!5423 = !DILocation(line: 303, column: 44, scope: !5389)
!5424 = !DILocation(line: 303, column: 58, scope: !5389)
!5425 = !DILocation(line: 305, column: 2, scope: !5389)
!5426 = !DILocation(line: 305, column: 26, scope: !5389)
!5427 = !DILocation(line: 305, column: 31, scope: !5389)
!5428 = !DILocation(line: 305, column: 40, scope: !5389)
!5429 = !DILocation(line: 307, column: 7, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 307, column: 6)
!5431 = !DILocation(line: 307, column: 25, scope: !5430)
!5432 = !DILocation(line: 307, column: 28, scope: !5430)
!5433 = !DILocation(line: 307, column: 32, scope: !5430)
!5434 = !DILocation(line: 307, column: 43, scope: !5430)
!5435 = !DILocation(line: 307, column: 6, scope: !5389)
!5436 = !DILocation(line: 312, column: 26, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 307, column: 62)
!5438 = !DILocation(line: 312, column: 35, scope: !5437)
!5439 = !DILocation(line: 312, column: 3, scope: !5437)
!5440 = !DILocation(line: 315, column: 26, scope: !5437)
!5441 = !DILocation(line: 315, column: 35, scope: !5437)
!5442 = !DILocation(line: 315, column: 3, scope: !5437)
!5443 = !DILocation(line: 318, column: 26, scope: !5437)
!5444 = !DILocation(line: 318, column: 35, scope: !5437)
!5445 = !DILocation(line: 318, column: 3, scope: !5437)
!5446 = !DILocation(line: 320, column: 2, scope: !5437)
!5447 = !DILocation(line: 327, column: 2, scope: !5389)
!5448 = !DILocation(line: 327, column: 2, scope: !5395)
!5449 = !DILocation(line: 327, column: 2, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 327, column: 2)
!5451 = !DILocation(line: 327, column: 2, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 327, column: 2)
!5453 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 327, column: 2)
!5454 = !DILocation(line: 327, column: 2, scope: !5453)
!5455 = !DILocation(line: 328, column: 2, scope: !5389)
!5456 = !DILocation(line: 328, column: 2, scope: !5398)
!5457 = !DILocation(line: 328, column: 2, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 328, column: 2)
!5459 = !DILocation(line: 328, column: 2, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 328, column: 2)
!5461 = distinct !DILexicalBlock(scope: !5458, file: !3, line: 328, column: 2)
!5462 = !DILocation(line: 328, column: 2, scope: !5461)
!5463 = !DILocation(line: 329, column: 2, scope: !5389)
!5464 = !DILocation(line: 329, column: 2, scope: !5400)
!5465 = !DILocation(line: 329, column: 2, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 329, column: 2)
!5467 = !DILocation(line: 329, column: 2, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 329, column: 2)
!5469 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 329, column: 2)
!5470 = !DILocation(line: 329, column: 2, scope: !5469)
!5471 = !DILocation(line: 330, column: 2, scope: !5389)
!5472 = !DILocation(line: 330, column: 2, scope: !5402)
!5473 = !DILocation(line: 330, column: 2, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 330, column: 2)
!5475 = !DILocation(line: 330, column: 2, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 330, column: 2)
!5477 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 330, column: 2)
!5478 = !DILocation(line: 330, column: 2, scope: !5477)
!5479 = !DILocation(line: 331, column: 2, scope: !5389)
!5480 = !DILocation(line: 331, column: 2, scope: !5404)
!5481 = !DILocation(line: 331, column: 2, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 331, column: 2)
!5483 = !DILocation(line: 331, column: 2, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 331, column: 2)
!5485 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 331, column: 2)
!5486 = !DILocation(line: 331, column: 2, scope: !5485)
!5487 = !DILocation(line: 332, column: 2, scope: !5389)
!5488 = !DILocation(line: 332, column: 2, scope: !5406)
!5489 = !DILocation(line: 332, column: 2, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 332, column: 2)
!5491 = !DILocation(line: 332, column: 2, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 332, column: 2)
!5493 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 332, column: 2)
!5494 = !DILocation(line: 332, column: 2, scope: !5493)
!5495 = !DILocation(line: 333, column: 2, scope: !5389)
!5496 = !DILocation(line: 333, column: 2, scope: !5408)
!5497 = !DILocation(line: 333, column: 2, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 333, column: 2)
!5499 = !DILocation(line: 333, column: 2, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 333, column: 2)
!5501 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 333, column: 2)
!5502 = !DILocation(line: 333, column: 2, scope: !5501)
!5503 = !DILocation(line: 334, column: 2, scope: !5389)
!5504 = !DILocation(line: 334, column: 2, scope: !5410)
!5505 = !DILocation(line: 334, column: 2, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 334, column: 2)
!5507 = !DILocation(line: 334, column: 2, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 334, column: 2)
!5509 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 334, column: 2)
!5510 = !DILocation(line: 334, column: 2, scope: !5509)
!5511 = !DILocation(line: 335, column: 2, scope: !5389)
!5512 = !DILocation(line: 335, column: 2, scope: !5412)
!5513 = !DILocation(line: 335, column: 2, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5412, file: !3, line: 335, column: 2)
!5515 = !DILocation(line: 335, column: 2, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 335, column: 2)
!5517 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 335, column: 2)
!5518 = !DILocation(line: 335, column: 2, scope: !5517)
!5519 = !DILocation(line: 336, column: 2, scope: !5389)
!5520 = !DILocation(line: 336, column: 2, scope: !5414)
!5521 = !DILocation(line: 336, column: 2, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 336, column: 2)
!5523 = !DILocation(line: 336, column: 2, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 336, column: 2)
!5525 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 336, column: 2)
!5526 = !DILocation(line: 336, column: 2, scope: !5525)
!5527 = !DILocation(line: 337, column: 2, scope: !5389)
!5528 = !DILocation(line: 337, column: 2, scope: !5416)
!5529 = !DILocation(line: 337, column: 2, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 337, column: 2)
!5531 = !DILocation(line: 337, column: 2, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 337, column: 2)
!5533 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 337, column: 2)
!5534 = !DILocation(line: 337, column: 2, scope: !5533)
!5535 = !DILocation(line: 340, column: 2, scope: !5389)
!5536 = !DILocation(line: 340, column: 2, scope: !5418)
!5537 = !DILocation(line: 340, column: 2, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 340, column: 2)
!5539 = !DILocation(line: 340, column: 2, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 340, column: 2)
!5541 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 340, column: 2)
!5542 = !DILocation(line: 340, column: 2, scope: !5541)
!5543 = !DILocation(line: 341, column: 2, scope: !5389)
!5544 = !DILocation(line: 341, column: 2, scope: !5420)
!5545 = !DILocation(line: 341, column: 2, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5420, file: !3, line: 341, column: 2)
!5547 = !DILocation(line: 341, column: 2, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 341, column: 2)
!5549 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 341, column: 2)
!5550 = !DILocation(line: 341, column: 2, scope: !5549)
!5551 = !DILocation(line: 342, column: 2, scope: !5389)
!5552 = !DILocation(line: 342, column: 2, scope: !5422)
!5553 = !DILocation(line: 342, column: 2, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 342, column: 2)
!5555 = !DILocation(line: 342, column: 2, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 342, column: 2)
!5557 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 342, column: 2)
!5558 = !DILocation(line: 342, column: 2, scope: !5557)
!5559 = !DILocation(line: 345, column: 1, scope: !5389)
!5560 = !DILocation(line: 344, column: 2, scope: !5389)
!5561 = distinct !DISubprogram(name: "device_add_group", scope: !70, file: !70, line: 1194, type: !5562, scopeLine: 1196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5564)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!85, !205, !346}
!5564 = !{!5565, !5566, !5567}
!5565 = !DILocalVariable(name: "dev", arg: 1, scope: !5561, file: !70, line: 1194, type: !205)
!5566 = !DILocalVariable(name: "grp", arg: 2, scope: !5561, file: !70, line: 1195, type: !346)
!5567 = !DILocalVariable(name: "groups", scope: !5561, file: !70, line: 1197, type: !5568)
!5568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 128, elements: !753)
!5569 = !DILocation(line: 1194, column: 64, scope: !5561)
!5570 = !DILocation(line: 1195, column: 36, scope: !5561)
!5571 = !DILocation(line: 1197, column: 2, scope: !5561)
!5572 = !DILocation(line: 1197, column: 32, scope: !5561)
!5573 = !DILocation(line: 1197, column: 43, scope: !5561)
!5574 = !DILocation(line: 1197, column: 45, scope: !5561)
!5575 = !DILocation(line: 1199, column: 27, scope: !5561)
!5576 = !DILocation(line: 1199, column: 32, scope: !5561)
!5577 = !DILocation(line: 1199, column: 9, scope: !5561)
!5578 = !DILocation(line: 1200, column: 1, scope: !5561)
!5579 = !DILocation(line: 1199, column: 2, scope: !5561)
!5580 = !DISubprogram(name: "_dev_err", scope: !5312, file: !5312, line: 50, type: !5313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5581 = !DISubprogram(name: "kfree", scope: !178, file: !178, line: 227, type: !5582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{null, !2307}
!5584 = !DISubprogram(name: "_dev_info", scope: !5312, file: !5312, line: 56, type: !5313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5585 = !DISubprogram(name: "ps2_command", scope: !124, file: !124, line: 69, type: !5586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5586 = !DISubroutineType(types: !5587)
!5587 = !{!85, !4798, !199, !7}
!5588 = distinct !DISubprogram(name: "kmalloc", scope: !178, file: !178, line: 591, type: !5173, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5589)
!5589 = !{!5590, !5591, !5592}
!5590 = !DILocalVariable(name: "size", arg: 1, scope: !5588, file: !178, line: 591, type: !341)
!5591 = !DILocalVariable(name: "flags", arg: 2, scope: !5588, file: !178, line: 591, type: !188)
!5592 = !DILocalVariable(name: "index", scope: !5593, file: !178, line: 594, type: !7)
!5593 = distinct !DILexicalBlock(scope: !5594, file: !178, line: 593, column: 42)
!5594 = distinct !DILexicalBlock(scope: !5588, file: !178, line: 593, column: 6)
!5595 = !DILocation(line: 591, column: 61, scope: !5588)
!5596 = !DILocation(line: 591, column: 73, scope: !5588)
!5597 = !DILocation(line: 593, column: 27, scope: !5594)
!5598 = !DILocation(line: 593, column: 6, scope: !5594)
!5599 = !DILocation(line: 593, column: 33, scope: !5594)
!5600 = !DILocation(line: 593, column: 36, scope: !5594)
!5601 = !DILocation(line: 593, column: 6, scope: !5588)
!5602 = !DILocation(line: 594, column: 3, scope: !5593)
!5603 = !DILocation(line: 594, column: 16, scope: !5593)
!5604 = !DILocation(line: 596, column: 7, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5593, file: !178, line: 596, column: 7)
!5606 = !DILocation(line: 596, column: 12, scope: !5605)
!5607 = !DILocation(line: 596, column: 7, scope: !5593)
!5608 = !DILocation(line: 597, column: 25, scope: !5605)
!5609 = !DILocation(line: 597, column: 31, scope: !5605)
!5610 = !DILocation(line: 597, column: 11, scope: !5605)
!5611 = !DILocation(line: 597, column: 4, scope: !5605)
!5612 = !DILocation(line: 599, column: 11, scope: !5593)
!5613 = !DILocation(line: 599, column: 9, scope: !5593)
!5614 = !DILocation(line: 601, column: 33, scope: !5593)
!5615 = !DILocation(line: 601, column: 40, scope: !5593)
!5616 = !DILocation(line: 601, column: 20, scope: !5593)
!5617 = !DILocation(line: 601, column: 5, scope: !5593)
!5618 = !DILocation(line: 601, column: 51, scope: !5593)
!5619 = !DILocation(line: 602, column: 5, scope: !5593)
!5620 = !DILocation(line: 602, column: 12, scope: !5593)
!5621 = !DILocation(line: 600, column: 10, scope: !5593)
!5622 = !DILocation(line: 600, column: 3, scope: !5593)
!5623 = !DILocation(line: 603, column: 2, scope: !5594)
!5624 = !DILocation(line: 604, column: 19, scope: !5588)
!5625 = !DILocation(line: 604, column: 25, scope: !5588)
!5626 = !DILocation(line: 604, column: 9, scope: !5588)
!5627 = !DILocation(line: 604, column: 2, scope: !5588)
!5628 = !DILocation(line: 605, column: 1, scope: !5588)
!5629 = !DISubprogram(name: "kmalloc_large", scope: !178, file: !178, line: 531, type: !5173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5630 = distinct !DISubprogram(name: "__kmalloc_index", scope: !178, file: !178, line: 444, type: !5631, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5633)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{!7, !341, !714}
!5633 = !{!5634, !5635}
!5634 = !DILocalVariable(name: "size", arg: 1, scope: !5630, file: !178, line: 444, type: !341)
!5635 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5630, file: !178, line: 445, type: !714)
!5636 = !DILocation(line: 444, column: 60, scope: !5630)
!5637 = !DILocation(line: 445, column: 16, scope: !5630)
!5638 = !DILocation(line: 447, column: 7, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 447, column: 6)
!5640 = !DILocation(line: 447, column: 6, scope: !5630)
!5641 = !DILocation(line: 448, column: 3, scope: !5639)
!5642 = !DILocation(line: 450, column: 6, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 450, column: 6)
!5644 = !DILocation(line: 450, column: 11, scope: !5643)
!5645 = !DILocation(line: 450, column: 6, scope: !5630)
!5646 = !DILocation(line: 451, column: 3, scope: !5643)
!5647 = !DILocation(line: 453, column: 32, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 453, column: 6)
!5649 = !DILocation(line: 453, column: 37, scope: !5648)
!5650 = !DILocation(line: 453, column: 42, scope: !5648)
!5651 = !DILocation(line: 453, column: 45, scope: !5648)
!5652 = !DILocation(line: 453, column: 50, scope: !5648)
!5653 = !DILocation(line: 453, column: 6, scope: !5630)
!5654 = !DILocation(line: 454, column: 3, scope: !5648)
!5655 = !DILocation(line: 455, column: 32, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 455, column: 6)
!5657 = !DILocation(line: 455, column: 37, scope: !5656)
!5658 = !DILocation(line: 455, column: 43, scope: !5656)
!5659 = !DILocation(line: 455, column: 46, scope: !5656)
!5660 = !DILocation(line: 455, column: 51, scope: !5656)
!5661 = !DILocation(line: 455, column: 6, scope: !5630)
!5662 = !DILocation(line: 456, column: 3, scope: !5656)
!5663 = !DILocation(line: 457, column: 6, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 457, column: 6)
!5665 = !DILocation(line: 457, column: 11, scope: !5664)
!5666 = !DILocation(line: 457, column: 6, scope: !5630)
!5667 = !DILocation(line: 457, column: 26, scope: !5664)
!5668 = !DILocation(line: 458, column: 6, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 458, column: 6)
!5670 = !DILocation(line: 458, column: 11, scope: !5669)
!5671 = !DILocation(line: 458, column: 6, scope: !5630)
!5672 = !DILocation(line: 458, column: 26, scope: !5669)
!5673 = !DILocation(line: 459, column: 6, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 459, column: 6)
!5675 = !DILocation(line: 459, column: 11, scope: !5674)
!5676 = !DILocation(line: 459, column: 6, scope: !5630)
!5677 = !DILocation(line: 459, column: 26, scope: !5674)
!5678 = !DILocation(line: 460, column: 6, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 460, column: 6)
!5680 = !DILocation(line: 460, column: 11, scope: !5679)
!5681 = !DILocation(line: 460, column: 6, scope: !5630)
!5682 = !DILocation(line: 460, column: 26, scope: !5679)
!5683 = !DILocation(line: 461, column: 6, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 461, column: 6)
!5685 = !DILocation(line: 461, column: 11, scope: !5684)
!5686 = !DILocation(line: 461, column: 6, scope: !5630)
!5687 = !DILocation(line: 461, column: 26, scope: !5684)
!5688 = !DILocation(line: 462, column: 6, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 462, column: 6)
!5690 = !DILocation(line: 462, column: 11, scope: !5689)
!5691 = !DILocation(line: 462, column: 6, scope: !5630)
!5692 = !DILocation(line: 462, column: 26, scope: !5689)
!5693 = !DILocation(line: 463, column: 6, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 463, column: 6)
!5695 = !DILocation(line: 463, column: 11, scope: !5694)
!5696 = !DILocation(line: 463, column: 6, scope: !5630)
!5697 = !DILocation(line: 463, column: 26, scope: !5694)
!5698 = !DILocation(line: 464, column: 6, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 464, column: 6)
!5700 = !DILocation(line: 464, column: 11, scope: !5699)
!5701 = !DILocation(line: 464, column: 6, scope: !5630)
!5702 = !DILocation(line: 464, column: 26, scope: !5699)
!5703 = !DILocation(line: 465, column: 6, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 465, column: 6)
!5705 = !DILocation(line: 465, column: 11, scope: !5704)
!5706 = !DILocation(line: 465, column: 6, scope: !5630)
!5707 = !DILocation(line: 465, column: 26, scope: !5704)
!5708 = !DILocation(line: 466, column: 6, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 466, column: 6)
!5710 = !DILocation(line: 466, column: 11, scope: !5709)
!5711 = !DILocation(line: 466, column: 6, scope: !5630)
!5712 = !DILocation(line: 466, column: 26, scope: !5709)
!5713 = !DILocation(line: 467, column: 6, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 467, column: 6)
!5715 = !DILocation(line: 467, column: 11, scope: !5714)
!5716 = !DILocation(line: 467, column: 6, scope: !5630)
!5717 = !DILocation(line: 467, column: 26, scope: !5714)
!5718 = !DILocation(line: 468, column: 6, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 468, column: 6)
!5720 = !DILocation(line: 468, column: 11, scope: !5719)
!5721 = !DILocation(line: 468, column: 6, scope: !5630)
!5722 = !DILocation(line: 468, column: 26, scope: !5719)
!5723 = !DILocation(line: 469, column: 6, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 469, column: 6)
!5725 = !DILocation(line: 469, column: 11, scope: !5724)
!5726 = !DILocation(line: 469, column: 6, scope: !5630)
!5727 = !DILocation(line: 469, column: 26, scope: !5724)
!5728 = !DILocation(line: 470, column: 6, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 470, column: 6)
!5730 = !DILocation(line: 470, column: 11, scope: !5729)
!5731 = !DILocation(line: 470, column: 6, scope: !5630)
!5732 = !DILocation(line: 470, column: 26, scope: !5729)
!5733 = !DILocation(line: 471, column: 6, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 471, column: 6)
!5735 = !DILocation(line: 471, column: 11, scope: !5734)
!5736 = !DILocation(line: 471, column: 6, scope: !5630)
!5737 = !DILocation(line: 471, column: 26, scope: !5734)
!5738 = !DILocation(line: 472, column: 6, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 472, column: 6)
!5740 = !DILocation(line: 472, column: 11, scope: !5739)
!5741 = !DILocation(line: 472, column: 6, scope: !5630)
!5742 = !DILocation(line: 472, column: 26, scope: !5739)
!5743 = !DILocation(line: 473, column: 6, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 473, column: 6)
!5745 = !DILocation(line: 473, column: 11, scope: !5744)
!5746 = !DILocation(line: 473, column: 6, scope: !5630)
!5747 = !DILocation(line: 473, column: 26, scope: !5744)
!5748 = !DILocation(line: 474, column: 6, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 474, column: 6)
!5750 = !DILocation(line: 474, column: 11, scope: !5749)
!5751 = !DILocation(line: 474, column: 6, scope: !5630)
!5752 = !DILocation(line: 474, column: 27, scope: !5749)
!5753 = !DILocation(line: 475, column: 6, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 475, column: 6)
!5755 = !DILocation(line: 475, column: 11, scope: !5754)
!5756 = !DILocation(line: 475, column: 6, scope: !5630)
!5757 = !DILocation(line: 475, column: 32, scope: !5754)
!5758 = !DILocation(line: 477, column: 50, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5630, file: !178, line: 477, column: 6)
!5760 = !DILocation(line: 477, column: 6, scope: !5630)
!5761 = !DILocation(line: 478, column: 3, scope: !5759)
!5762 = !DILocation(line: 478, column: 3, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5764, file: !178, line: 478, column: 3)
!5764 = distinct !DILexicalBlock(scope: !5759, file: !178, line: 478, column: 3)
!5765 = !{i32 -2143550003}
!5766 = !DILocation(line: 478, column: 3, scope: !5764)
!5767 = !DILocation(line: 480, column: 3, scope: !5759)
!5768 = !DILocation(line: 480, column: 3, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5759, file: !178, line: 480, column: 3)
!5770 = !DILocation(line: 480, column: 3, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5769, file: !178, line: 480, column: 3)
!5772 = !DILocation(line: 480, column: 3, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5769, file: !178, line: 480, column: 3)
!5774 = !{i64 2151417496, i64 2151417525, i64 2151417571, i64 2151417629, i64 2151417683, i64 2151417737, i64 2151417792, i64 2151417823}
!5775 = !DILocation(line: 483, column: 2, scope: !5630)
!5776 = !DILocation(line: 484, column: 1, scope: !5630)
!5777 = !DISubprogram(name: "kmalloc_trace", scope: !178, file: !178, line: 525, type: !5778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5778 = !DISubroutineType(types: !5779)
!5779 = !{!192, !5780, !188, !341}
!5780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5781, size: 64)
!5781 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3061, line: 11, flags: DIFlagFwdDecl)
!5782 = distinct !DISubprogram(name: "kmalloc_type", scope: !178, file: !178, line: 401, type: !5783, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5785)
!5783 = !DISubroutineType(types: !5784)
!5784 = !{!177, !188, !191}
!5785 = !{!5786, !5787}
!5786 = !DILocalVariable(name: "flags", arg: 1, scope: !5782, file: !178, line: 401, type: !188)
!5787 = !DILocalVariable(name: "caller", arg: 2, scope: !5782, file: !178, line: 401, type: !191)
!5788 = !DILocation(line: 401, column: 67, scope: !5782)
!5789 = !DILocation(line: 401, column: 88, scope: !5782)
!5790 = !DILocation(line: 407, column: 6, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5782, file: !178, line: 407, column: 6)
!5792 = !DILocation(line: 407, column: 6, scope: !5782)
!5793 = !DILocation(line: 413, column: 3, scope: !5791)
!5794 = !DILocation(line: 423, column: 38, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5782, file: !178, line: 423, column: 6)
!5796 = !DILocation(line: 423, column: 44, scope: !5795)
!5797 = !DILocation(line: 423, column: 6, scope: !5782)
!5798 = !DILocation(line: 424, column: 3, scope: !5795)
!5799 = !DILocation(line: 426, column: 3, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5782, file: !178, line: 425, column: 6)
!5801 = !DILocation(line: 429, column: 1, scope: !5782)
!5802 = !DISubprogram(name: "__kmalloc", scope: !178, file: !178, line: 488, type: !5173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5803 = !DISubprogram(name: "__compiletime_assert_117", scope: !178, file: !178, line: 478, type: !998, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5804 = distinct !DISubprogram(name: "device_remove_group", scope: !70, file: !70, line: 1202, type: !5805, scopeLine: 1204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5807)
!5805 = !DISubroutineType(types: !5806)
!5806 = !{null, !205, !346}
!5807 = !{!5808, !5809, !5810}
!5808 = !DILocalVariable(name: "dev", arg: 1, scope: !5804, file: !70, line: 1202, type: !205)
!5809 = !DILocalVariable(name: "grp", arg: 2, scope: !5804, file: !70, line: 1203, type: !346)
!5810 = !DILocalVariable(name: "groups", scope: !5804, file: !70, line: 1205, type: !5568)
!5811 = !DILocation(line: 1202, column: 55, scope: !5804)
!5812 = !DILocation(line: 1203, column: 42, scope: !5804)
!5813 = !DILocation(line: 1205, column: 2, scope: !5804)
!5814 = !DILocation(line: 1205, column: 32, scope: !5804)
!5815 = !DILocation(line: 1205, column: 43, scope: !5804)
!5816 = !DILocation(line: 1205, column: 45, scope: !5804)
!5817 = !DILocation(line: 1207, column: 30, scope: !5804)
!5818 = !DILocation(line: 1207, column: 35, scope: !5804)
!5819 = !DILocation(line: 1207, column: 9, scope: !5804)
!5820 = !DILocation(line: 1208, column: 1, scope: !5804)
!5821 = !DISubprogram(name: "device_remove_groups", scope: !70, file: !70, line: 1191, type: !5822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5822 = !DISubroutineType(types: !5823)
!5823 = !{null, !205, !345}
!5824 = distinct !DISubprogram(name: "instrument_write", scope: !5825, file: !5825, line: 38, type: !5826, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5831)
!5825 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5826 = !DISubroutineType(types: !5827)
!5827 = !{null, !5828, !341}
!5828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5829, size: 64)
!5829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5830)
!5830 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5831 = !{!5832, !5833}
!5832 = !DILocalVariable(name: "v", arg: 1, scope: !5824, file: !5825, line: 38, type: !5828)
!5833 = !DILocalVariable(name: "size", arg: 2, scope: !5824, file: !5825, line: 38, type: !341)
!5834 = !DILocation(line: 38, column: 67, scope: !5824)
!5835 = !DILocation(line: 38, column: 77, scope: !5824)
!5836 = !DILocation(line: 40, column: 20, scope: !5824)
!5837 = !DILocation(line: 40, column: 23, scope: !5824)
!5838 = !DILocation(line: 40, column: 2, scope: !5824)
!5839 = !DILocation(line: 41, column: 2, scope: !5824)
!5840 = !DILocation(line: 42, column: 1, scope: !5824)
!5841 = distinct !DISubprogram(name: "arch___set_bit", scope: !5842, file: !5842, line: 66, type: !5320, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5843)
!5842 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5843 = !{!5844, !5845}
!5844 = !DILocalVariable(name: "nr", arg: 1, scope: !5841, file: !5842, line: 66, type: !191)
!5845 = !DILocalVariable(name: "addr", arg: 2, scope: !5841, file: !5842, line: 66, type: !5322)
!5846 = !DILocation(line: 66, column: 30, scope: !5841)
!5847 = !DILocation(line: 66, column: 58, scope: !5841)
!5848 = !DILocation(line: 68, column: 44, scope: !5841)
!5849 = !DILocation(line: 68, column: 56, scope: !5841)
!5850 = !DILocation(line: 68, column: 2, scope: !5841)
!5851 = !{i64 2148086875}
!5852 = !DILocation(line: 69, column: 1, scope: !5841)
!5853 = distinct !DISubprogram(name: "kasan_check_write", scope: !5854, file: !5854, line: 44, type: !5855, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5857)
!5854 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5855 = !DISubroutineType(types: !5856)
!5856 = !{!714, !5828, !7}
!5857 = !{!5858, !5859}
!5858 = !DILocalVariable(name: "p", arg: 1, scope: !5853, file: !5854, line: 44, type: !5828)
!5859 = !DILocalVariable(name: "size", arg: 2, scope: !5853, file: !5854, line: 44, type: !7)
!5860 = !DILocation(line: 44, column: 59, scope: !5853)
!5861 = !DILocation(line: 44, column: 75, scope: !5853)
!5862 = !DILocation(line: 46, column: 2, scope: !5853)
!5863 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5864, file: !5864, line: 229, type: !5865, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5867)
!5864 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5865 = !DISubroutineType(types: !5866)
!5866 = !{null, !5828, !341, !85}
!5867 = !{!5868, !5869, !5870}
!5868 = !DILocalVariable(name: "ptr", arg: 1, scope: !5863, file: !5864, line: 229, type: !5828)
!5869 = !DILocalVariable(name: "size", arg: 2, scope: !5863, file: !5864, line: 229, type: !341)
!5870 = !DILocalVariable(name: "type", arg: 3, scope: !5863, file: !5864, line: 230, type: !85)
!5871 = !DILocation(line: 229, column: 60, scope: !5863)
!5872 = !DILocation(line: 229, column: 72, scope: !5863)
!5873 = !DILocation(line: 230, column: 15, scope: !5863)
!5874 = !DILocation(line: 230, column: 23, scope: !5863)
!5875 = distinct !DISubprogram(name: "trackpoint_update_bit", scope: !3, file: !3, line: 77, type: !5876, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5878)
!5876 = !DISubroutineType(types: !5877)
!5877 = !{!85, !4798, !200, !200, !200}
!5878 = !{!5879, !5880, !5881, !5882, !5883, !5884}
!5879 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5875, file: !3, line: 77, type: !4798)
!5880 = !DILocalVariable(name: "loc", arg: 2, scope: !5875, file: !3, line: 78, type: !200)
!5881 = !DILocalVariable(name: "mask", arg: 3, scope: !5875, file: !3, line: 78, type: !200)
!5882 = !DILocalVariable(name: "value", arg: 4, scope: !5875, file: !3, line: 78, type: !200)
!5883 = !DILocalVariable(name: "retval", scope: !5875, file: !3, line: 80, type: !85)
!5884 = !DILocalVariable(name: "data", scope: !5875, file: !3, line: 81, type: !200)
!5885 = !DILocation(line: 77, column: 49, scope: !5875)
!5886 = !DILocation(line: 78, column: 9, scope: !5875)
!5887 = !DILocation(line: 78, column: 17, scope: !5875)
!5888 = !DILocation(line: 78, column: 26, scope: !5875)
!5889 = !DILocation(line: 80, column: 2, scope: !5875)
!5890 = !DILocation(line: 80, column: 6, scope: !5875)
!5891 = !DILocation(line: 81, column: 2, scope: !5875)
!5892 = !DILocation(line: 81, column: 5, scope: !5875)
!5893 = !DILocation(line: 83, column: 27, scope: !5875)
!5894 = !DILocation(line: 83, column: 35, scope: !5875)
!5895 = !DILocation(line: 83, column: 11, scope: !5875)
!5896 = !DILocation(line: 83, column: 9, scope: !5875)
!5897 = !DILocation(line: 84, column: 6, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 84, column: 6)
!5899 = !DILocation(line: 84, column: 6, scope: !5875)
!5900 = !DILocation(line: 85, column: 10, scope: !5898)
!5901 = !DILocation(line: 85, column: 3, scope: !5898)
!5902 = !DILocation(line: 87, column: 8, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 87, column: 6)
!5904 = !DILocation(line: 87, column: 15, scope: !5903)
!5905 = !DILocation(line: 87, column: 13, scope: !5903)
!5906 = !DILocation(line: 87, column: 24, scope: !5903)
!5907 = !DILocation(line: 87, column: 21, scope: !5903)
!5908 = !DILocation(line: 87, column: 35, scope: !5903)
!5909 = !DILocation(line: 87, column: 34, scope: !5903)
!5910 = !DILocation(line: 87, column: 33, scope: !5903)
!5911 = !DILocation(line: 87, column: 30, scope: !5903)
!5912 = !DILocation(line: 87, column: 6, scope: !5875)
!5913 = !DILocation(line: 88, column: 34, scope: !5903)
!5914 = !DILocation(line: 88, column: 42, scope: !5903)
!5915 = !DILocation(line: 88, column: 47, scope: !5903)
!5916 = !DILocation(line: 88, column: 12, scope: !5903)
!5917 = !DILocation(line: 88, column: 10, scope: !5903)
!5918 = !DILocation(line: 88, column: 3, scope: !5903)
!5919 = !DILocation(line: 90, column: 9, scope: !5875)
!5920 = !DILocation(line: 90, column: 2, scope: !5875)
!5921 = !DILocation(line: 91, column: 1, scope: !5875)
!5922 = distinct !DISubprogram(name: "trackpoint_is_attr_available", scope: !3, file: !3, line: 204, type: !5923, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5925)
!5923 = !DISubroutineType(types: !5924)
!5924 = !{!714, !4501, !331}
!5925 = !{!5926, !5927, !5928}
!5926 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5922, file: !3, line: 204, type: !4501)
!5927 = !DILocalVariable(name: "attr", arg: 2, scope: !5922, file: !3, line: 205, type: !331)
!5928 = !DILocalVariable(name: "tp", scope: !5922, file: !3, line: 207, type: !4959)
!5929 = !DILocation(line: 204, column: 58, scope: !5922)
!5930 = !DILocation(line: 205, column: 25, scope: !5922)
!5931 = !DILocation(line: 207, column: 2, scope: !5922)
!5932 = !DILocation(line: 207, column: 26, scope: !5922)
!5933 = !DILocation(line: 207, column: 31, scope: !5922)
!5934 = !DILocation(line: 207, column: 40, scope: !5922)
!5935 = !DILocation(line: 209, column: 9, scope: !5922)
!5936 = !DILocation(line: 209, column: 13, scope: !5922)
!5937 = !DILocation(line: 209, column: 24, scope: !5922)
!5938 = !DILocation(line: 209, column: 42, scope: !5922)
!5939 = !DILocation(line: 210, column: 3, scope: !5922)
!5940 = !DILocation(line: 210, column: 8, scope: !5922)
!5941 = !DILocation(line: 210, column: 48, scope: !5922)
!5942 = !DILocation(line: 211, column: 3, scope: !5922)
!5943 = !DILocation(line: 211, column: 8, scope: !5922)
!5944 = !DILocation(line: 212, column: 1, scope: !5922)
!5945 = !DILocation(line: 209, column: 2, scope: !5922)
!5946 = distinct !DISubprogram(name: "trackpoint_write", scope: !3, file: !3, line: 59, type: !5947, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5949)
!5947 = !DISubroutineType(types: !5948)
!5948 = !{!85, !4798, !200, !200}
!5949 = !{!5950, !5951, !5952, !5953}
!5950 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5946, file: !3, line: 59, type: !4798)
!5951 = !DILocalVariable(name: "loc", arg: 2, scope: !5946, file: !3, line: 59, type: !200)
!5952 = !DILocalVariable(name: "val", arg: 3, scope: !5946, file: !3, line: 59, type: !200)
!5953 = !DILocalVariable(name: "param", scope: !5946, file: !3, line: 61, type: !1763)
!5954 = !DILocation(line: 59, column: 44, scope: !5946)
!5955 = !DILocation(line: 59, column: 55, scope: !5946)
!5956 = !DILocation(line: 59, column: 63, scope: !5946)
!5957 = !DILocation(line: 61, column: 2, scope: !5946)
!5958 = !DILocation(line: 61, column: 5, scope: !5946)
!5959 = !DILocation(line: 61, column: 16, scope: !5946)
!5960 = !DILocation(line: 61, column: 32, scope: !5946)
!5961 = !DILocation(line: 61, column: 37, scope: !5946)
!5962 = !DILocation(line: 63, column: 21, scope: !5946)
!5963 = !DILocation(line: 63, column: 29, scope: !5946)
!5964 = !DILocation(line: 63, column: 9, scope: !5946)
!5965 = !DILocation(line: 64, column: 1, scope: !5946)
!5966 = !DILocation(line: 63, column: 2, scope: !5946)
!5967 = distinct !DISubprogram(name: "trackpoint_toggle_bit", scope: !3, file: !3, line: 66, type: !5947, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5968)
!5968 = !{!5969, !5970, !5971, !5972}
!5969 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !5967, file: !3, line: 66, type: !4798)
!5970 = !DILocalVariable(name: "loc", arg: 2, scope: !5967, file: !3, line: 66, type: !200)
!5971 = !DILocalVariable(name: "mask", arg: 3, scope: !5967, file: !3, line: 66, type: !200)
!5972 = !DILocalVariable(name: "param", scope: !5967, file: !3, line: 68, type: !1763)
!5973 = !DILocation(line: 66, column: 49, scope: !5967)
!5974 = !DILocation(line: 66, column: 60, scope: !5967)
!5975 = !DILocation(line: 66, column: 68, scope: !5967)
!5976 = !DILocation(line: 68, column: 2, scope: !5967)
!5977 = !DILocation(line: 68, column: 5, scope: !5967)
!5978 = !DILocation(line: 68, column: 16, scope: !5967)
!5979 = !DILocation(line: 68, column: 29, scope: !5967)
!5980 = !DILocation(line: 68, column: 34, scope: !5967)
!5981 = !DILocation(line: 71, column: 6, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 71, column: 6)
!5983 = !DILocation(line: 71, column: 10, scope: !5982)
!5984 = !DILocation(line: 71, column: 17, scope: !5982)
!5985 = !DILocation(line: 71, column: 20, scope: !5982)
!5986 = !DILocation(line: 71, column: 24, scope: !5982)
!5987 = !DILocation(line: 71, column: 6, scope: !5967)
!5988 = !DILocation(line: 72, column: 3, scope: !5982)
!5989 = !DILocation(line: 74, column: 21, scope: !5967)
!5990 = !DILocation(line: 74, column: 29, scope: !5967)
!5991 = !DILocation(line: 74, column: 9, scope: !5967)
!5992 = !DILocation(line: 74, column: 2, scope: !5967)
!5993 = !DILocation(line: 75, column: 1, scope: !5967)
!5994 = distinct !DISubprogram(name: "trackpoint_show_int_attr", scope: !3, file: !3, line: 104, type: !4499, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5995)
!5995 = !{!5996, !5997, !5998, !5999, !6000, !6001}
!5996 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5994, file: !3, line: 104, type: !4501)
!5997 = !DILocalVariable(name: "data", arg: 2, scope: !5994, file: !3, line: 105, type: !192)
!5998 = !DILocalVariable(name: "buf", arg: 3, scope: !5994, file: !3, line: 105, type: !295)
!5999 = !DILocalVariable(name: "tp", scope: !5994, file: !3, line: 107, type: !4959)
!6000 = !DILocalVariable(name: "attr", scope: !5994, file: !3, line: 108, type: !5396)
!6001 = !DILocalVariable(name: "value", scope: !5994, file: !3, line: 109, type: !200)
!6002 = !DILocation(line: 104, column: 57, scope: !5994)
!6003 = !DILocation(line: 105, column: 12, scope: !5994)
!6004 = !DILocation(line: 105, column: 24, scope: !5994)
!6005 = !DILocation(line: 107, column: 2, scope: !5994)
!6006 = !DILocation(line: 107, column: 26, scope: !5994)
!6007 = !DILocation(line: 107, column: 31, scope: !5994)
!6008 = !DILocation(line: 107, column: 40, scope: !5994)
!6009 = !DILocation(line: 108, column: 2, scope: !5994)
!6010 = !DILocation(line: 108, column: 31, scope: !5994)
!6011 = !DILocation(line: 108, column: 38, scope: !5994)
!6012 = !DILocation(line: 109, column: 2, scope: !5994)
!6013 = !DILocation(line: 109, column: 5, scope: !5994)
!6014 = !DILocation(line: 109, column: 29, scope: !5994)
!6015 = !DILocation(line: 109, column: 34, scope: !5994)
!6016 = !DILocation(line: 109, column: 40, scope: !5994)
!6017 = !DILocation(line: 109, column: 32, scope: !5994)
!6018 = !DILocation(line: 109, column: 13, scope: !5994)
!6019 = !DILocation(line: 111, column: 6, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 111, column: 6)
!6021 = !DILocation(line: 111, column: 12, scope: !6020)
!6022 = !DILocation(line: 111, column: 6, scope: !5994)
!6023 = !DILocation(line: 112, column: 12, scope: !6020)
!6024 = !DILocation(line: 112, column: 11, scope: !6020)
!6025 = !DILocation(line: 112, column: 9, scope: !6020)
!6026 = !DILocation(line: 112, column: 3, scope: !6020)
!6027 = !DILocation(line: 114, column: 17, scope: !5994)
!6028 = !DILocation(line: 114, column: 30, scope: !5994)
!6029 = !DILocation(line: 114, column: 9, scope: !5994)
!6030 = !DILocation(line: 115, column: 1, scope: !5994)
!6031 = !DILocation(line: 114, column: 2, scope: !5994)
!6032 = distinct !DISubprogram(name: "trackpoint_set_int_attr", scope: !3, file: !3, line: 117, type: !4874, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6033)
!6033 = !{!6034, !6035, !6036, !6037, !6038, !6039, !6040, !6041, !6042}
!6034 = !DILocalVariable(name: "psmouse", arg: 1, scope: !6032, file: !3, line: 117, type: !4501)
!6035 = !DILocalVariable(name: "data", arg: 2, scope: !6032, file: !3, line: 117, type: !192)
!6036 = !DILocalVariable(name: "buf", arg: 3, scope: !6032, file: !3, line: 118, type: !213)
!6037 = !DILocalVariable(name: "count", arg: 4, scope: !6032, file: !3, line: 118, type: !341)
!6038 = !DILocalVariable(name: "tp", scope: !6032, file: !3, line: 120, type: !4959)
!6039 = !DILocalVariable(name: "attr", scope: !6032, file: !3, line: 121, type: !5396)
!6040 = !DILocalVariable(name: "field", scope: !6032, file: !3, line: 122, type: !199)
!6041 = !DILocalVariable(name: "value", scope: !6032, file: !3, line: 123, type: !200)
!6042 = !DILocalVariable(name: "err", scope: !6032, file: !3, line: 124, type: !85)
!6043 = !DILocation(line: 117, column: 56, scope: !6032)
!6044 = !DILocation(line: 117, column: 71, scope: !6032)
!6045 = !DILocation(line: 118, column: 18, scope: !6032)
!6046 = !DILocation(line: 118, column: 30, scope: !6032)
!6047 = !DILocation(line: 120, column: 2, scope: !6032)
!6048 = !DILocation(line: 120, column: 26, scope: !6032)
!6049 = !DILocation(line: 120, column: 31, scope: !6032)
!6050 = !DILocation(line: 120, column: 40, scope: !6032)
!6051 = !DILocation(line: 121, column: 2, scope: !6032)
!6052 = !DILocation(line: 121, column: 31, scope: !6032)
!6053 = !DILocation(line: 121, column: 38, scope: !6032)
!6054 = !DILocation(line: 122, column: 2, scope: !6032)
!6055 = !DILocation(line: 122, column: 6, scope: !6032)
!6056 = !DILocation(line: 122, column: 22, scope: !6032)
!6057 = !DILocation(line: 122, column: 27, scope: !6032)
!6058 = !DILocation(line: 122, column: 33, scope: !6032)
!6059 = !DILocation(line: 122, column: 25, scope: !6032)
!6060 = !DILocation(line: 123, column: 2, scope: !6032)
!6061 = !DILocation(line: 123, column: 5, scope: !6032)
!6062 = !DILocation(line: 124, column: 2, scope: !6032)
!6063 = !DILocation(line: 124, column: 6, scope: !6032)
!6064 = !DILocation(line: 126, column: 17, scope: !6032)
!6065 = !DILocation(line: 126, column: 8, scope: !6032)
!6066 = !DILocation(line: 126, column: 6, scope: !6032)
!6067 = !DILocation(line: 127, column: 6, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 127, column: 6)
!6069 = !DILocation(line: 127, column: 6, scope: !6032)
!6070 = !DILocation(line: 128, column: 10, scope: !6068)
!6071 = !DILocation(line: 128, column: 3, scope: !6068)
!6072 = !DILocation(line: 130, column: 11, scope: !6032)
!6073 = !DILocation(line: 130, column: 3, scope: !6032)
!6074 = !DILocation(line: 130, column: 9, scope: !6032)
!6075 = !DILocation(line: 131, column: 26, scope: !6032)
!6076 = !DILocation(line: 131, column: 35, scope: !6032)
!6077 = !DILocation(line: 131, column: 43, scope: !6032)
!6078 = !DILocation(line: 131, column: 49, scope: !6032)
!6079 = !DILocation(line: 131, column: 58, scope: !6032)
!6080 = !DILocation(line: 131, column: 8, scope: !6032)
!6081 = !DILocation(line: 131, column: 6, scope: !6032)
!6082 = !DILocation(line: 133, column: 9, scope: !6032)
!6083 = !DILocation(line: 133, column: 16, scope: !6032)
!6084 = !DILocation(line: 133, column: 2, scope: !6032)
!6085 = !DILocation(line: 134, column: 1, scope: !6032)
!6086 = !DISubprogram(name: "sprintf", scope: !6087, file: !6087, line: 10, type: !6088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6087 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!85, !295, !213, null}
!6090 = !DISubprogram(name: "kstrtou8", scope: !6091, file: !6091, line: 96, type: !6092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6091 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6092 = !DISubroutineType(types: !6093)
!6093 = !{!85, !213, !7, !199}
!6094 = distinct !DISubprogram(name: "trackpoint_set_bit_attr", scope: !3, file: !3, line: 146, type: !4874, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6095)
!6095 = !{!6096, !6097, !6098, !6099, !6100, !6101, !6102, !6103, !6104}
!6096 = !DILocalVariable(name: "psmouse", arg: 1, scope: !6094, file: !3, line: 146, type: !4501)
!6097 = !DILocalVariable(name: "data", arg: 2, scope: !6094, file: !3, line: 146, type: !192)
!6098 = !DILocalVariable(name: "buf", arg: 3, scope: !6094, file: !3, line: 147, type: !213)
!6099 = !DILocalVariable(name: "count", arg: 4, scope: !6094, file: !3, line: 147, type: !341)
!6100 = !DILocalVariable(name: "tp", scope: !6094, file: !3, line: 149, type: !4959)
!6101 = !DILocalVariable(name: "attr", scope: !6094, file: !3, line: 150, type: !5396)
!6102 = !DILocalVariable(name: "field", scope: !6094, file: !3, line: 151, type: !3777)
!6103 = !DILocalVariable(name: "value", scope: !6094, file: !3, line: 152, type: !714)
!6104 = !DILocalVariable(name: "err", scope: !6094, file: !3, line: 153, type: !85)
!6105 = !DILocation(line: 146, column: 56, scope: !6094)
!6106 = !DILocation(line: 146, column: 71, scope: !6094)
!6107 = !DILocation(line: 147, column: 18, scope: !6094)
!6108 = !DILocation(line: 147, column: 30, scope: !6094)
!6109 = !DILocation(line: 149, column: 2, scope: !6094)
!6110 = !DILocation(line: 149, column: 26, scope: !6094)
!6111 = !DILocation(line: 149, column: 31, scope: !6094)
!6112 = !DILocation(line: 149, column: 40, scope: !6094)
!6113 = !DILocation(line: 150, column: 2, scope: !6094)
!6114 = !DILocation(line: 150, column: 31, scope: !6094)
!6115 = !DILocation(line: 150, column: 38, scope: !6094)
!6116 = !DILocation(line: 151, column: 2, scope: !6094)
!6117 = !DILocation(line: 151, column: 8, scope: !6094)
!6118 = !DILocation(line: 151, column: 24, scope: !6094)
!6119 = !DILocation(line: 151, column: 29, scope: !6094)
!6120 = !DILocation(line: 151, column: 35, scope: !6094)
!6121 = !DILocation(line: 151, column: 27, scope: !6094)
!6122 = !DILocation(line: 152, column: 2, scope: !6094)
!6123 = !DILocation(line: 152, column: 7, scope: !6094)
!6124 = !DILocation(line: 153, column: 2, scope: !6094)
!6125 = !DILocation(line: 153, column: 6, scope: !6094)
!6126 = !DILocation(line: 155, column: 19, scope: !6094)
!6127 = !DILocation(line: 155, column: 8, scope: !6094)
!6128 = !DILocation(line: 155, column: 6, scope: !6094)
!6129 = !DILocation(line: 156, column: 6, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 156, column: 6)
!6131 = !DILocation(line: 156, column: 6, scope: !6094)
!6132 = !DILocation(line: 157, column: 10, scope: !6130)
!6133 = !DILocation(line: 157, column: 3, scope: !6130)
!6134 = !DILocation(line: 159, column: 6, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 159, column: 6)
!6136 = !DILocation(line: 159, column: 12, scope: !6135)
!6137 = !DILocation(line: 159, column: 6, scope: !6094)
!6138 = !DILocation(line: 160, column: 12, scope: !6135)
!6139 = !DILocation(line: 160, column: 11, scope: !6135)
!6140 = !DILocation(line: 160, column: 9, scope: !6135)
!6141 = !DILocation(line: 160, column: 3, scope: !6135)
!6142 = !DILocation(line: 162, column: 7, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 162, column: 6)
!6144 = !DILocation(line: 162, column: 6, scope: !6143)
!6145 = !DILocation(line: 162, column: 16, scope: !6143)
!6146 = !DILocation(line: 162, column: 13, scope: !6143)
!6147 = !DILocation(line: 162, column: 6, scope: !6094)
!6148 = !DILocation(line: 163, column: 12, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6143, file: !3, line: 162, column: 23)
!6150 = !DILocation(line: 163, column: 4, scope: !6149)
!6151 = !DILocation(line: 163, column: 10, scope: !6149)
!6152 = !DILocation(line: 164, column: 32, scope: !6149)
!6153 = !DILocation(line: 164, column: 41, scope: !6149)
!6154 = !DILocation(line: 165, column: 10, scope: !6149)
!6155 = !DILocation(line: 165, column: 16, scope: !6149)
!6156 = !DILocation(line: 165, column: 25, scope: !6149)
!6157 = !DILocation(line: 165, column: 31, scope: !6149)
!6158 = !DILocation(line: 164, column: 9, scope: !6149)
!6159 = !DILocation(line: 164, column: 7, scope: !6149)
!6160 = !DILocation(line: 166, column: 2, scope: !6149)
!6161 = !DILocation(line: 168, column: 9, scope: !6094)
!6162 = !DILocation(line: 168, column: 16, scope: !6094)
!6163 = !DILocation(line: 168, column: 2, scope: !6094)
!6164 = !DILocation(line: 169, column: 1, scope: !6094)
!6165 = !DISubprogram(name: "kstrtobool", scope: !6091, file: !6091, line: 98, type: !6166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{!85, !213, !3777}
!6168 = !DISubprogram(name: "device_add_groups", scope: !70, file: !70, line: 1189, type: !6169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6169 = !DISubroutineType(types: !6170)
!6170 = !{!85, !205, !345}
!6171 = distinct !DISubprogram(name: "trackpoint_is_attr_visible", scope: !3, file: !3, line: 214, type: !353, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6172)
!6172 = !{!6173, !6174, !6175, !6176, !6177, !6179, !6180, !6182}
!6173 = !DILocalVariable(name: "kobj", arg: 1, scope: !6171, file: !3, line: 214, type: !223)
!6174 = !DILocalVariable(name: "attr", arg: 2, scope: !6171, file: !3, line: 215, type: !331)
!6175 = !DILocalVariable(name: "n", arg: 3, scope: !6171, file: !3, line: 215, type: !85)
!6176 = !DILocalVariable(name: "dev", scope: !6171, file: !3, line: 217, type: !205)
!6177 = !DILocalVariable(name: "__mptr", scope: !6178, file: !3, line: 217, type: !192)
!6178 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 217, column: 23)
!6179 = !DILocalVariable(name: "serio", scope: !6171, file: !3, line: 218, type: !4324)
!6180 = !DILocalVariable(name: "__mptr", scope: !6181, file: !3, line: 218, type: !192)
!6181 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 218, column: 24)
!6182 = !DILocalVariable(name: "psmouse", scope: !6171, file: !3, line: 219, type: !4501)
!6183 = !DILocation(line: 214, column: 59, scope: !6171)
!6184 = !DILocation(line: 215, column: 26, scope: !6171)
!6185 = !DILocation(line: 215, column: 36, scope: !6171)
!6186 = !DILocation(line: 217, column: 2, scope: !6171)
!6187 = !DILocation(line: 217, column: 17, scope: !6171)
!6188 = !DILocation(line: 217, column: 23, scope: !6178)
!6189 = !DILocation(line: 217, column: 23, scope: !6171)
!6190 = !DILocation(line: 218, column: 2, scope: !6171)
!6191 = !DILocation(line: 218, column: 16, scope: !6171)
!6192 = !DILocation(line: 218, column: 24, scope: !6181)
!6193 = !DILocation(line: 218, column: 24, scope: !6171)
!6194 = !DILocation(line: 219, column: 2, scope: !6171)
!6195 = !DILocation(line: 219, column: 18, scope: !6171)
!6196 = !DILocation(line: 219, column: 47, scope: !6171)
!6197 = !DILocation(line: 219, column: 28, scope: !6171)
!6198 = !DILocation(line: 221, column: 38, scope: !6171)
!6199 = !DILocation(line: 221, column: 47, scope: !6171)
!6200 = !DILocation(line: 221, column: 9, scope: !6171)
!6201 = !DILocation(line: 221, column: 55, scope: !6171)
!6202 = !DILocation(line: 221, column: 61, scope: !6171)
!6203 = !DILocation(line: 222, column: 1, scope: !6171)
!6204 = !DILocation(line: 221, column: 2, scope: !6171)
!6205 = !DISubprogram(name: "psmouse_from_serio", scope: !130, file: !130, line: 133, type: !6206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6206 = !DISubroutineType(types: !6207)
!6207 = !{!4501, !4324}
