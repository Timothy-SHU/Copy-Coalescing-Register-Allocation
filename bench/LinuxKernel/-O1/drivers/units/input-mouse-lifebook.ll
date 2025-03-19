; ModuleID = 'drivers/input/mouse/lifebook.c'
source_filename = "drivers/input/mouse/lifebook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.lifebook_data = type { ptr, [32 x i8] }

@lifebook_dmi_table = internal constant [13 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"FLORA-ie 55mi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"Lifebook B Series\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"LifeBook B Series\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"LIFEBOOK B Series\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"ZEPHYR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"LifeBook B2131/B2133/B2150\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"ZEPHYR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @lifebook_limit_serio3, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"CF-18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @lifebook_set_6byte_proto, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Matsushita\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"CF-28\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @lifebook_set_6byte_proto, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Matsushita\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"CF-29\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @lifebook_set_6byte_proto, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"CF-72\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"LifeBook B142\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !0
@lifebook_present = internal global i8 0, align 1, !dbg !204
@desired_serio_phys = internal global ptr null, align 8, !dbg !208
@.str = private unnamed_addr constant [8 x i8] c"Fujitsu\00", align 1, !dbg !193
@.str.1 = private unnamed_addr constant [21 x i8] c"Lifebook TouchScreen\00", align 1, !dbg !199
@lifebook_use_6byte_proto = internal global i8 0, align 1, !dbg !212
@.str.2 = private unnamed_addr constant [15 x i8] c"isa0060/serio3\00", align 1, !dbg !214
@.str.3 = private unnamed_addr constant [10 x i8] c"%s/input1\00", align 1, !dbg !219
@.str.4 = private unnamed_addr constant [33 x i8] c"LBPS/2 Fujitsu Lifebook Touchpad\00", align 1, !dbg !224
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !229
@.str.6 = private unnamed_addr constant [61 x i8] c"lifebook: got relative packet but no relative device set up\0A\00", align 1, !dbg !231
@lifebook_set_resolution.params = internal constant [5 x i8] c"\00\01\02\02\03", align 1, !dbg !236

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @lifebook_module_init() #0 section ".init.text" align 16 !dbg !4831 {
entry:
  %call = call i32 @dmi_check_system(ptr noundef @lifebook_dmi_table) #16, !dbg !4832
  %tobool = icmp ne i32 %call, 0, !dbg !4832
  %frombool = zext i1 %tobool to i8, !dbg !4833
  store i8 %frombool, ptr @lifebook_present, align 1, !dbg !4833
  ret void, !dbg !4834
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4835 dso_local i32 @dmi_check_system(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @lifebook_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) #2 align 16 !dbg !4837 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %set_properties.addr = alloca i8, align 1
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4839, metadata !DIExpression()), !dbg !4841
  %frombool = zext i1 %set_properties to i8
  store i8 %frombool, ptr %set_properties.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %set_properties.addr, metadata !4840, metadata !DIExpression()), !dbg !4842
  %0 = load i8, ptr @lifebook_present, align 1, !dbg !4843, !range !4845, !noundef !1543
  %tobool = trunc i8 %0 to i1, !dbg !4843
  br i1 %tobool, label %if.end, label %if.then, !dbg !4846

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !4847
  br label %return, !dbg !4847

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @desired_serio_phys, align 8, !dbg !4848
  %tobool1 = icmp ne ptr %1, null, !dbg !4848
  br i1 %tobool1, label %land.lhs.true, label %if.end4, !dbg !4850

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !4851
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %2, i32 0, i32 2, !dbg !4852
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !4853
  %3 = load ptr, ptr %serio, align 8, !dbg !4853
  %phys = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 2, !dbg !4854
  %arraydecay = getelementptr inbounds [32 x i8], ptr %phys, i64 0, i64 0, !dbg !4851
  %4 = load ptr, ptr @desired_serio_phys, align 8, !dbg !4855
  %call = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef %4) #16, !dbg !4856
  %tobool2 = icmp ne i32 %call, 0, !dbg !4856
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4857

if.then3:                                         ; preds = %land.lhs.true
  store i32 -6, ptr %retval, align 4, !dbg !4858
  br label %return, !dbg !4858

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %5 = load i8, ptr %set_properties.addr, align 1, !dbg !4859, !range !4845, !noundef !1543
  %tobool5 = trunc i8 %5 to i1, !dbg !4859
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4861

if.then6:                                         ; preds = %if.end4
  %6 = load ptr, ptr %psmouse.addr, align 8, !dbg !4862
  %vendor = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 4, !dbg !4864
  store ptr @.str, ptr %vendor, align 8, !dbg !4865
  %7 = load ptr, ptr %psmouse.addr, align 8, !dbg !4866
  %name = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 5, !dbg !4867
  store ptr @.str.1, ptr %name, align 8, !dbg !4868
  br label %if.end7, !dbg !4869

if.end7:                                          ; preds = %if.then6, %if.end4
  store i32 0, ptr %retval, align 4, !dbg !4870
  br label %return, !dbg !4870

return:                                           ; preds = %if.end7, %if.then3, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !4871
  ret i32 %8, !dbg !4871
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4872 dso_local i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @lifebook_init(ptr noundef %psmouse) #2 align 16 !dbg !4876 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %dev1 = alloca ptr, align 8
  %max_coord = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4878, metadata !DIExpression()), !dbg !4882
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev1) #17, !dbg !4883
  call void @llvm.dbg.declare(metadata ptr %dev1, metadata !4879, metadata !DIExpression()), !dbg !4884
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !4885
  %dev = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1, !dbg !4886
  %1 = load ptr, ptr %dev, align 8, !dbg !4886
  store ptr %1, ptr %dev1, align 8, !dbg !4884
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_coord) #17, !dbg !4887
  call void @llvm.dbg.declare(metadata ptr %max_coord, metadata !4880, metadata !DIExpression()), !dbg !4888
  %2 = load i8, ptr @lifebook_use_6byte_proto, align 1, !dbg !4889, !range !4845, !noundef !1543
  %tobool = trunc i8 %2 to i1, !dbg !4889
  %3 = zext i1 %tobool to i64, !dbg !4889
  %cond = select i1 %tobool, i32 4096, i32 1024, !dbg !4889
  store i32 %cond, ptr %max_coord, align 4, !dbg !4888
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !4890
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4881, metadata !DIExpression()), !dbg !4891
  %4 = load ptr, ptr %psmouse.addr, align 8, !dbg !4892
  %call = call i32 @lifebook_absolute_mode(ptr noundef %4) #16, !dbg !4893
  store i32 %call, ptr %error, align 4, !dbg !4894
  %5 = load i32, ptr %error, align 4, !dbg !4895
  %tobool1 = icmp ne i32 %5, 0, !dbg !4895
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4897

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %error, align 4, !dbg !4898
  store i32 %6, ptr %retval, align 4, !dbg !4899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4899

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %dev1, align 8, !dbg !4900
  %evbit = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5, !dbg !4901
  %arraydecay = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !4900
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 32) #16, !dbg !4902
  %8 = load ptr, ptr %dev1, align 8, !dbg !4903
  %relbit = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 7, !dbg !4904
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %relbit, i64 0, i64 0, !dbg !4903
  call void @bitmap_zero(ptr noundef %arraydecay2, i32 noundef 16) #16, !dbg !4905
  %9 = load ptr, ptr %dev1, align 8, !dbg !4906
  %keybit = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 6, !dbg !4907
  %arraydecay3 = getelementptr inbounds [12 x i64], ptr %keybit, i64 0, i64 0, !dbg !4906
  call void @bitmap_zero(ptr noundef %arraydecay3, i32 noundef 768) #16, !dbg !4908
  %10 = load ptr, ptr %dev1, align 8, !dbg !4909
  call void @input_set_capability(ptr noundef %10, i32 noundef 1, i32 noundef 330) #16, !dbg !4910
  %11 = load ptr, ptr %dev1, align 8, !dbg !4911
  %12 = load i32, ptr %max_coord, align 4, !dbg !4912
  call void @input_set_abs_params(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef %12, i32 noundef 0, i32 noundef 0) #16, !dbg !4913
  %13 = load ptr, ptr %dev1, align 8, !dbg !4914
  %14 = load i32, ptr %max_coord, align 4, !dbg !4915
  call void @input_set_abs_params(ptr noundef %13, i32 noundef 1, i32 noundef 0, i32 noundef %14, i32 noundef 0, i32 noundef 0) #16, !dbg !4916
  %15 = load ptr, ptr @desired_serio_phys, align 8, !dbg !4917
  %tobool4 = icmp ne ptr %15, null, !dbg !4917
  br i1 %tobool4, label %if.end10, label %if.then5, !dbg !4919

if.then5:                                         ; preds = %if.end
  %16 = load ptr, ptr %psmouse.addr, align 8, !dbg !4920
  %call6 = call i32 @lifebook_create_relative_device(ptr noundef %16) #16, !dbg !4922
  store i32 %call6, ptr %error, align 4, !dbg !4923
  %17 = load i32, ptr %error, align 4, !dbg !4924
  %tobool7 = icmp ne i32 %17, 0, !dbg !4924
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4926

if.then8:                                         ; preds = %if.then5
  %18 = load ptr, ptr %psmouse.addr, align 8, !dbg !4927
  call void @lifebook_relative_mode(ptr noundef %18) #16, !dbg !4929
  %19 = load i32, ptr %error, align 4, !dbg !4930
  store i32 %19, ptr %retval, align 4, !dbg !4931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4931

if.end9:                                          ; preds = %if.then5
  br label %if.end10, !dbg !4932

if.end10:                                         ; preds = %if.end9, %if.end
  %20 = load ptr, ptr %psmouse.addr, align 8, !dbg !4933
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %20, i32 0, i32 26, !dbg !4934
  store ptr @lifebook_process_byte, ptr %protocol_handler, align 8, !dbg !4935
  %21 = load ptr, ptr %psmouse.addr, align 8, !dbg !4936
  %set_resolution = getelementptr inbounds %struct.psmouse, ptr %21, i32 0, i32 28, !dbg !4937
  store ptr @lifebook_set_resolution, ptr %set_resolution, align 8, !dbg !4938
  %22 = load ptr, ptr %psmouse.addr, align 8, !dbg !4939
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %22, i32 0, i32 32, !dbg !4940
  store ptr @lifebook_disconnect, ptr %disconnect, align 8, !dbg !4941
  %23 = load ptr, ptr %psmouse.addr, align 8, !dbg !4942
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %23, i32 0, i32 30, !dbg !4943
  store ptr @lifebook_absolute_mode, ptr %reconnect, align 8, !dbg !4944
  %24 = load i8, ptr @lifebook_use_6byte_proto, align 1, !dbg !4945, !range !4845, !noundef !1543
  %tobool11 = trunc i8 %24 to i1, !dbg !4945
  %25 = zext i1 %tobool11 to i64, !dbg !4945
  %cond12 = select i1 %tobool11, i32 6, i32 3, !dbg !4945
  %26 = load ptr, ptr %psmouse.addr, align 8, !dbg !4946
  %model = getelementptr inbounds %struct.psmouse, ptr %26, i32 0, i32 14, !dbg !4947
  store i32 %cond12, ptr %model, align 8, !dbg !4948
  %27 = load ptr, ptr %psmouse.addr, align 8, !dbg !4949
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %27, i32 0, i32 10, !dbg !4950
  store i8 3, ptr %pktsize, align 2, !dbg !4951
  store i32 0, ptr %retval, align 4, !dbg !4952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4952

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !4953
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_coord) #17, !dbg !4953
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev1) #17, !dbg !4953
  %28 = load i32, ptr %retval, align 4, !dbg !4953
  ret i32 %28, !dbg !4953
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lifebook_absolute_mode(ptr noundef %psmouse) #2 align 16 !dbg !4954 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %ps2dev = alloca ptr, align 8
  %param = alloca i8, align 1
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4956, metadata !DIExpression()), !dbg !4960
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps2dev) #17, !dbg !4961
  call void @llvm.dbg.declare(metadata ptr %ps2dev, metadata !4957, metadata !DIExpression()), !dbg !4962
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !4963
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !4964
  store ptr %ps2dev1, ptr %ps2dev, align 8, !dbg !4962
  call void @llvm.lifetime.start.p0(i64 1, ptr %param) #17, !dbg !4965
  call void @llvm.dbg.declare(metadata ptr %param, metadata !4958, metadata !DIExpression()), !dbg !4966
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !4967
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4959, metadata !DIExpression()), !dbg !4968
  %1 = load ptr, ptr %psmouse.addr, align 8, !dbg !4969
  %call = call i32 @psmouse_reset(ptr noundef %1) #16, !dbg !4970
  store i32 %call, ptr %error, align 4, !dbg !4971
  %2 = load i32, ptr %error, align 4, !dbg !4972
  %tobool = icmp ne i32 %2, 0, !dbg !4972
  br i1 %tobool, label %if.then, label %if.end, !dbg !4974

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %error, align 4, !dbg !4975
  store i32 %3, ptr %retval, align 4, !dbg !4976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4976

if.end:                                           ; preds = %entry
  %4 = load i8, ptr @lifebook_use_6byte_proto, align 1, !dbg !4977, !range !4845, !noundef !1543
  %tobool2 = trunc i8 %4 to i1, !dbg !4977
  %5 = zext i1 %tobool2 to i64, !dbg !4977
  %cond = select i1 %tobool2, i32 8, i32 7, !dbg !4977
  %conv = trunc i32 %cond to i8, !dbg !4977
  store i8 %conv, ptr %param, align 1, !dbg !4978
  %6 = load ptr, ptr %ps2dev, align 8, !dbg !4979
  %call3 = call i32 @ps2_command(ptr noundef %6, ptr noundef %param, i32 noundef 4328) #16, !dbg !4980
  store i32 0, ptr %retval, align 4, !dbg !4981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4981

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !4982
  call void @llvm.lifetime.end.p0(i64 1, ptr %param) #17, !dbg !4982
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps2dev) #17, !dbg !4982
  %7 = load i32, ptr %retval, align 4, !dbg !4982
  ret i32 %7, !dbg !4982
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #5 align 16 !dbg !4983 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4988, metadata !DIExpression()), !dbg !4991
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !4989, metadata !DIExpression()), !dbg !4992
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #17, !dbg !4993
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4990, metadata !DIExpression()), !dbg !4994
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !4995
  %add = add i32 %0, 63, !dbg !4995
  %and = and i32 %add, -64, !dbg !4995
  %div = udiv i32 %and, 8, !dbg !4995
  store i32 %div, ptr %len, align 4, !dbg !4994
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !4996
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !4996
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !4996

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !4996
  %cmp = icmp ule i32 %3, 64, !dbg !4996
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !4996

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !4996
  %cmp2 = icmp ugt i32 %4, 0, !dbg !4996
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4998

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !4999
  store i64 0, ptr %5, align 8, !dbg !5000
  br label %if.end, !dbg !5001

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !5002
  %7 = load i32, ptr %len, align 4, !dbg !5003
  %conv = zext i32 %7 to i64, !dbg !5003
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !5004
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #17, !dbg !5005
  ret void, !dbg !5005
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5006 dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5009 dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lifebook_create_relative_device(ptr noundef %psmouse) #2 align 16 !dbg !5012 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %dev2 = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5014, metadata !DIExpression()), !dbg !5024
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev2) #17, !dbg !5025
  call void @llvm.dbg.declare(metadata ptr %dev2, metadata !5015, metadata !DIExpression()), !dbg !5026
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #17, !dbg !5027
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !5016, metadata !DIExpression()), !dbg !5028
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !5029
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5022, metadata !DIExpression()), !dbg !5030
  store i32 -12, ptr %error, align 4, !dbg !5030
  %call = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #18, !dbg !5031
  store ptr %call, ptr %priv, align 8, !dbg !5032
  %call1 = call ptr @input_allocate_device() #16, !dbg !5033
  store ptr %call1, ptr %dev2, align 8, !dbg !5034
  %0 = load ptr, ptr %priv, align 8, !dbg !5035
  %tobool = icmp ne ptr %0, null, !dbg !5035
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5037

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dev2, align 8, !dbg !5038
  %tobool2 = icmp ne ptr %1, null, !dbg !5038
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5039

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %err_out, !dbg !5040

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %dev2, align 8, !dbg !5041
  %3 = load ptr, ptr %priv, align 8, !dbg !5042
  %dev23 = getelementptr inbounds %struct.lifebook_data, ptr %3, i32 0, i32 0, !dbg !5043
  store ptr %2, ptr %dev23, align 8, !dbg !5044
  %4 = load ptr, ptr %priv, align 8, !dbg !5045
  %phys = getelementptr inbounds %struct.lifebook_data, ptr %4, i32 0, i32 1, !dbg !5046
  %arraydecay = getelementptr inbounds [32 x i8], ptr %phys, i64 0, i64 0, !dbg !5045
  %5 = load ptr, ptr %psmouse.addr, align 8, !dbg !5047
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2, !dbg !5048
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !5049
  %6 = load ptr, ptr %serio, align 8, !dbg !5049
  %phys4 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 2, !dbg !5050
  %arraydecay5 = getelementptr inbounds [32 x i8], ptr %phys4, i64 0, i64 0, !dbg !5047
  %call6 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 32, ptr noundef @.str.3, ptr noundef %arraydecay5) #16, !dbg !5051
  %7 = load ptr, ptr %priv, align 8, !dbg !5052
  %phys7 = getelementptr inbounds %struct.lifebook_data, ptr %7, i32 0, i32 1, !dbg !5053
  %arraydecay8 = getelementptr inbounds [32 x i8], ptr %phys7, i64 0, i64 0, !dbg !5052
  %8 = load ptr, ptr %dev2, align 8, !dbg !5054
  %phys9 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 1, !dbg !5055
  store ptr %arraydecay8, ptr %phys9, align 8, !dbg !5056
  %9 = load ptr, ptr %dev2, align 8, !dbg !5057
  %name = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 0, !dbg !5058
  store ptr @.str.4, ptr %name, align 8, !dbg !5059
  %10 = load ptr, ptr %dev2, align 8, !dbg !5060
  %id = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 3, !dbg !5061
  %bustype = getelementptr inbounds %struct.input_id, ptr %id, i32 0, i32 0, !dbg !5062
  store i16 17, ptr %bustype, align 8, !dbg !5063
  %11 = load ptr, ptr %dev2, align 8, !dbg !5064
  %id10 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 3, !dbg !5065
  %vendor = getelementptr inbounds %struct.input_id, ptr %id10, i32 0, i32 1, !dbg !5066
  store i16 2, ptr %vendor, align 2, !dbg !5067
  %12 = load ptr, ptr %dev2, align 8, !dbg !5068
  %id11 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 3, !dbg !5069
  %product = getelementptr inbounds %struct.input_id, ptr %id11, i32 0, i32 2, !dbg !5070
  store i16 9, ptr %product, align 4, !dbg !5071
  %13 = load ptr, ptr %dev2, align 8, !dbg !5072
  %id12 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 3, !dbg !5073
  %version = getelementptr inbounds %struct.input_id, ptr %id12, i32 0, i32 3, !dbg !5074
  store i16 0, ptr %version, align 2, !dbg !5075
  %14 = load ptr, ptr %psmouse.addr, align 8, !dbg !5076
  %ps2dev13 = getelementptr inbounds %struct.psmouse, ptr %14, i32 0, i32 2, !dbg !5077
  %serio14 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev13, i32 0, i32 0, !dbg !5078
  %15 = load ptr, ptr %serio14, align 8, !dbg !5078
  %dev = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18, !dbg !5079
  %16 = load ptr, ptr %dev2, align 8, !dbg !5080
  %dev15 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 40, !dbg !5081
  %parent = getelementptr inbounds %struct.device, ptr %dev15, i32 0, i32 1, !dbg !5082
  store ptr %dev, ptr %parent, align 8, !dbg !5083
  %17 = load ptr, ptr %dev2, align 8, !dbg !5084
  call void @input_set_capability(ptr noundef %17, i32 noundef 2, i32 noundef 0) #16, !dbg !5085
  %18 = load ptr, ptr %dev2, align 8, !dbg !5086
  call void @input_set_capability(ptr noundef %18, i32 noundef 2, i32 noundef 1) #16, !dbg !5087
  %19 = load ptr, ptr %dev2, align 8, !dbg !5088
  call void @input_set_capability(ptr noundef %19, i32 noundef 1, i32 noundef 272) #16, !dbg !5089
  %20 = load ptr, ptr %dev2, align 8, !dbg !5090
  call void @input_set_capability(ptr noundef %20, i32 noundef 1, i32 noundef 273) #16, !dbg !5091
  %21 = load ptr, ptr %priv, align 8, !dbg !5092
  %dev216 = getelementptr inbounds %struct.lifebook_data, ptr %21, i32 0, i32 0, !dbg !5093
  %22 = load ptr, ptr %dev216, align 8, !dbg !5093
  %call17 = call i32 @input_register_device(ptr noundef %22) #16, !dbg !5094
  store i32 %call17, ptr %error, align 4, !dbg !5095
  %23 = load i32, ptr %error, align 4, !dbg !5096
  %tobool18 = icmp ne i32 %23, 0, !dbg !5096
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5098

if.then19:                                        ; preds = %if.end
  br label %err_out, !dbg !5099

if.end20:                                         ; preds = %if.end
  %24 = load ptr, ptr %priv, align 8, !dbg !5100
  %25 = load ptr, ptr %psmouse.addr, align 8, !dbg !5101
  %private = getelementptr inbounds %struct.psmouse, ptr %25, i32 0, i32 0, !dbg !5102
  store ptr %24, ptr %private, align 8, !dbg !5103
  store i32 0, ptr %retval, align 4, !dbg !5104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5104

err_out:                                          ; preds = %if.then19, %if.then
  call void @llvm.dbg.label(metadata !5023), !dbg !5105
  %26 = load ptr, ptr %dev2, align 8, !dbg !5106
  call void @input_free_device(ptr noundef %26) #16, !dbg !5107
  %27 = load ptr, ptr %priv, align 8, !dbg !5108
  call void @kfree(ptr noundef %27) #16, !dbg !5109
  %28 = load i32, ptr %error, align 4, !dbg !5110
  store i32 %28, ptr %retval, align 4, !dbg !5111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5111

cleanup:                                          ; preds = %err_out, %if.end20
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !5112
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #17, !dbg !5112
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev2) #17, !dbg !5112
  %29 = load i32, ptr %retval, align 4, !dbg !5112
  ret i32 %29, !dbg !5112
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lifebook_relative_mode(ptr noundef %psmouse) #2 align 16 !dbg !5113 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %ps2dev = alloca ptr, align 8
  %param = alloca i8, align 1
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5115, metadata !DIExpression()), !dbg !5118
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps2dev) #17, !dbg !5119
  call void @llvm.dbg.declare(metadata ptr %ps2dev, metadata !5116, metadata !DIExpression()), !dbg !5120
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5121
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !5122
  store ptr %ps2dev1, ptr %ps2dev, align 8, !dbg !5120
  call void @llvm.lifetime.start.p0(i64 1, ptr %param) #17, !dbg !5123
  call void @llvm.dbg.declare(metadata ptr %param, metadata !5117, metadata !DIExpression()), !dbg !5124
  store i8 6, ptr %param, align 1, !dbg !5124
  %1 = load ptr, ptr %ps2dev, align 8, !dbg !5125
  %call = call i32 @ps2_command(ptr noundef %1, ptr noundef %param, i32 noundef 4328) #16, !dbg !5126
  call void @llvm.lifetime.end.p0(i64 1, ptr %param) #17, !dbg !5127
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps2dev) #17, !dbg !5127
  ret void, !dbg !5127
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lifebook_process_byte(ptr noundef %psmouse) #2 align 16 !dbg !5128 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %dev1 = alloca ptr, align 8
  %dev2 = alloca ptr, align 8
  %packet = alloca ptr, align 8
  %relative_packet = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5130, metadata !DIExpression()), !dbg !5137
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #17, !dbg !5138
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !5131, metadata !DIExpression()), !dbg !5139
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5140
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5141
  %1 = load ptr, ptr %private, align 8, !dbg !5141
  store ptr %1, ptr %priv, align 8, !dbg !5139
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev1) #17, !dbg !5142
  call void @llvm.dbg.declare(metadata ptr %dev1, metadata !5132, metadata !DIExpression()), !dbg !5143
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5144
  %dev = getelementptr inbounds %struct.psmouse, ptr %2, i32 0, i32 1, !dbg !5145
  %3 = load ptr, ptr %dev, align 8, !dbg !5145
  store ptr %3, ptr %dev1, align 8, !dbg !5143
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev2) #17, !dbg !5146
  call void @llvm.dbg.declare(metadata ptr %dev2, metadata !5133, metadata !DIExpression()), !dbg !5147
  %4 = load ptr, ptr %priv, align 8, !dbg !5148
  %tobool = icmp ne ptr %4, null, !dbg !5148
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5148

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %priv, align 8, !dbg !5149
  %dev21 = getelementptr inbounds %struct.lifebook_data, ptr %5, i32 0, i32 0, !dbg !5150
  %6 = load ptr, ptr %dev21, align 8, !dbg !5150
  br label %cond.end, !dbg !5148

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5148

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ null, %cond.false ], !dbg !5148
  store ptr %cond, ptr %dev2, align 8, !dbg !5147
  call void @llvm.lifetime.start.p0(i64 8, ptr %packet) #17, !dbg !5151
  call void @llvm.dbg.declare(metadata ptr %packet, metadata !5134, metadata !DIExpression()), !dbg !5152
  %7 = load ptr, ptr %psmouse.addr, align 8, !dbg !5153
  %packet2 = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 7, !dbg !5154
  %arraydecay = getelementptr inbounds [8 x i8], ptr %packet2, i64 0, i64 0, !dbg !5153
  store ptr %arraydecay, ptr %packet, align 8, !dbg !5152
  call void @llvm.lifetime.start.p0(i64 1, ptr %relative_packet) #17, !dbg !5155
  call void @llvm.dbg.declare(metadata ptr %relative_packet, metadata !5136, metadata !DIExpression()), !dbg !5156
  %8 = load ptr, ptr %packet, align 8, !dbg !5157
  %arrayidx = getelementptr i8, ptr %8, i64 0, !dbg !5157
  %9 = load i8, ptr %arrayidx, align 1, !dbg !5157
  %conv = zext i8 %9 to i32, !dbg !5157
  %and = and i32 %conv, 8, !dbg !5158
  %tobool3 = icmp ne i32 %and, 0, !dbg !5157
  %frombool = zext i1 %tobool3 to i8, !dbg !5156
  store i8 %frombool, ptr %relative_packet, align 1, !dbg !5156
  %10 = load i8, ptr %relative_packet, align 1, !dbg !5159, !range !4845, !noundef !1543
  %tobool4 = trunc i8 %10 to i1, !dbg !5159
  br i1 %tobool4, label %if.then, label %lor.lhs.false, !dbg !5161

lor.lhs.false:                                    ; preds = %cond.end
  %11 = load i8, ptr @lifebook_use_6byte_proto, align 1, !dbg !5162, !range !4845, !noundef !1543
  %tobool6 = trunc i8 %11 to i1, !dbg !5162
  br i1 %tobool6, label %if.else, label %if.then, !dbg !5163

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %12 = load ptr, ptr %psmouse.addr, align 8, !dbg !5164
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %12, i32 0, i32 9, !dbg !5167
  %13 = load i8, ptr %pktcnt, align 1, !dbg !5167
  %conv7 = zext i8 %13 to i32, !dbg !5164
  %cmp = icmp ne i32 %conv7, 3, !dbg !5168
  br i1 %cmp, label %if.then9, label %if.end, !dbg !5169

if.then9:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4, !dbg !5170
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5170

if.end:                                           ; preds = %if.then
  br label %if.end68, !dbg !5171

if.else:                                          ; preds = %lor.lhs.false
  %14 = load ptr, ptr %psmouse.addr, align 8, !dbg !5172
  %pktcnt10 = getelementptr inbounds %struct.psmouse, ptr %14, i32 0, i32 9, !dbg !5174
  %15 = load i8, ptr %pktcnt10, align 1, !dbg !5174
  %conv11 = zext i8 %15 to i32, !dbg !5172
  switch i32 %conv11, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb18
    i32 3, label %sw.bb19
    i32 4, label %sw.bb29
    i32 5, label %sw.bb36
    i32 6, label %sw.bb46
  ], !dbg !5175

sw.bb:                                            ; preds = %if.else
  %16 = load ptr, ptr %packet, align 8, !dbg !5176
  %arrayidx12 = getelementptr i8, ptr %16, i64 0, !dbg !5176
  %17 = load i8, ptr %arrayidx12, align 1, !dbg !5176
  %conv13 = zext i8 %17 to i32, !dbg !5176
  %and14 = and i32 %conv13, 248, !dbg !5178
  %cmp15 = icmp eq i32 %and14, 0, !dbg !5179
  %18 = zext i1 %cmp15 to i64, !dbg !5180
  %cond17 = select i1 %cmp15, i32 1, i32 0, !dbg !5180
  store i32 %cond17, ptr %retval, align 4, !dbg !5181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5181

sw.bb18:                                          ; preds = %if.else
  store i32 1, ptr %retval, align 4, !dbg !5182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5182

sw.bb19:                                          ; preds = %if.else
  %19 = load ptr, ptr %packet, align 8, !dbg !5183
  %arrayidx20 = getelementptr i8, ptr %19, i64 2, !dbg !5183
  %20 = load i8, ptr %arrayidx20, align 1, !dbg !5183
  %conv21 = zext i8 %20 to i32, !dbg !5183
  %and22 = and i32 %conv21, 48, !dbg !5184
  %shl = shl i32 %and22, 2, !dbg !5185
  %21 = load ptr, ptr %packet, align 8, !dbg !5186
  %arrayidx23 = getelementptr i8, ptr %21, i64 2, !dbg !5186
  %22 = load i8, ptr %arrayidx23, align 1, !dbg !5186
  %conv24 = zext i8 %22 to i32, !dbg !5186
  %and25 = and i32 %conv24, 192, !dbg !5187
  %cmp26 = icmp eq i32 %shl, %and25, !dbg !5188
  %23 = zext i1 %cmp26 to i64, !dbg !5189
  %cond28 = select i1 %cmp26, i32 1, i32 0, !dbg !5189
  store i32 %cond28, ptr %retval, align 4, !dbg !5190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5190

sw.bb29:                                          ; preds = %if.else
  %24 = load ptr, ptr %packet, align 8, !dbg !5191
  %arrayidx30 = getelementptr i8, ptr %24, i64 3, !dbg !5191
  %25 = load i8, ptr %arrayidx30, align 1, !dbg !5191
  %conv31 = zext i8 %25 to i32, !dbg !5191
  %and32 = and i32 %conv31, 248, !dbg !5192
  %cmp33 = icmp eq i32 %and32, 192, !dbg !5193
  %26 = zext i1 %cmp33 to i64, !dbg !5194
  %cond35 = select i1 %cmp33, i32 1, i32 0, !dbg !5194
  store i32 %cond35, ptr %retval, align 4, !dbg !5195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5195

sw.bb36:                                          ; preds = %if.else
  %27 = load ptr, ptr %packet, align 8, !dbg !5196
  %arrayidx37 = getelementptr i8, ptr %27, i64 4, !dbg !5196
  %28 = load i8, ptr %arrayidx37, align 1, !dbg !5196
  %conv38 = zext i8 %28 to i32, !dbg !5196
  %and39 = and i32 %conv38, 192, !dbg !5197
  %29 = load ptr, ptr %packet, align 8, !dbg !5198
  %arrayidx40 = getelementptr i8, ptr %29, i64 2, !dbg !5198
  %30 = load i8, ptr %arrayidx40, align 1, !dbg !5198
  %conv41 = zext i8 %30 to i32, !dbg !5198
  %and42 = and i32 %conv41, 192, !dbg !5199
  %cmp43 = icmp eq i32 %and39, %and42, !dbg !5200
  %31 = zext i1 %cmp43 to i64, !dbg !5201
  %cond45 = select i1 %cmp43, i32 1, i32 0, !dbg !5201
  store i32 %cond45, ptr %retval, align 4, !dbg !5202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5202

sw.bb46:                                          ; preds = %if.else
  %32 = load ptr, ptr %packet, align 8, !dbg !5203
  %arrayidx47 = getelementptr i8, ptr %32, i64 5, !dbg !5203
  %33 = load i8, ptr %arrayidx47, align 1, !dbg !5203
  %conv48 = zext i8 %33 to i32, !dbg !5203
  %and49 = and i32 %conv48, 48, !dbg !5205
  %shl50 = shl i32 %and49, 2, !dbg !5206
  %34 = load ptr, ptr %packet, align 8, !dbg !5207
  %arrayidx51 = getelementptr i8, ptr %34, i64 5, !dbg !5207
  %35 = load i8, ptr %arrayidx51, align 1, !dbg !5207
  %conv52 = zext i8 %35 to i32, !dbg !5207
  %and53 = and i32 %conv52, 192, !dbg !5208
  %cmp54 = icmp ne i32 %shl50, %and53, !dbg !5209
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !5210

if.then56:                                        ; preds = %sw.bb46
  store i32 0, ptr %retval, align 4, !dbg !5211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5211

if.end57:                                         ; preds = %sw.bb46
  %36 = load ptr, ptr %packet, align 8, !dbg !5212
  %arrayidx58 = getelementptr i8, ptr %36, i64 5, !dbg !5212
  %37 = load i8, ptr %arrayidx58, align 1, !dbg !5212
  %conv59 = zext i8 %37 to i32, !dbg !5212
  %and60 = and i32 %conv59, 192, !dbg !5214
  %38 = load ptr, ptr %packet, align 8, !dbg !5215
  %arrayidx61 = getelementptr i8, ptr %38, i64 1, !dbg !5215
  %39 = load i8, ptr %arrayidx61, align 1, !dbg !5215
  %conv62 = zext i8 %39 to i32, !dbg !5215
  %and63 = and i32 %conv62, 192, !dbg !5216
  %cmp64 = icmp ne i32 %and60, %and63, !dbg !5217
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !5218

if.then66:                                        ; preds = %if.end57
  store i32 0, ptr %retval, align 4, !dbg !5219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5219

if.end67:                                         ; preds = %if.end57
  br label %sw.epilog, !dbg !5220

sw.epilog:                                        ; preds = %if.else, %if.end67
  br label %if.end68

if.end68:                                         ; preds = %sw.epilog, %if.end
  %40 = load i8, ptr %relative_packet, align 1, !dbg !5221, !range !4845, !noundef !1543
  %tobool69 = trunc i8 %40 to i1, !dbg !5221
  br i1 %tobool69, label %if.then70, label %if.else75, !dbg !5223

if.then70:                                        ; preds = %if.end68
  %41 = load ptr, ptr %dev2, align 8, !dbg !5224
  %tobool71 = icmp ne ptr %41, null, !dbg !5224
  br i1 %tobool71, label %if.end74, label %if.then72, !dbg !5227

if.then72:                                        ; preds = %if.then70
  br label %do.body, !dbg !5228

do.body:                                          ; preds = %if.then72
  br label %do.cond, !dbg !5230

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5230

do.end:                                           ; preds = %do.cond
  %42 = load ptr, ptr %psmouse.addr, align 8, !dbg !5228
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %42, i32 0, i32 2, !dbg !5228
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !5228
  %43 = load ptr, ptr %serio, align 8, !dbg !5228
  %dev73 = getelementptr inbounds %struct.serio, ptr %43, i32 0, i32 18, !dbg !5228
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev73, ptr noundef @.str.6) #19, !dbg !5228
  br label %if.end74, !dbg !5232

if.end74:                                         ; preds = %do.end, %if.then70
  br label %if.end113, !dbg !5233

if.else75:                                        ; preds = %if.end68
  %44 = load i8, ptr @lifebook_use_6byte_proto, align 1, !dbg !5234, !range !4845, !noundef !1543
  %tobool76 = trunc i8 %44 to i1, !dbg !5234
  br i1 %tobool76, label %if.then77, label %if.else93, !dbg !5237

if.then77:                                        ; preds = %if.else75
  %45 = load ptr, ptr %dev1, align 8, !dbg !5238
  %46 = load ptr, ptr %packet, align 8, !dbg !5240
  %arrayidx78 = getelementptr i8, ptr %46, i64 1, !dbg !5240
  %47 = load i8, ptr %arrayidx78, align 1, !dbg !5240
  %conv79 = zext i8 %47 to i32, !dbg !5240
  %and80 = and i32 %conv79, 63, !dbg !5241
  %shl81 = shl i32 %and80, 6, !dbg !5242
  %48 = load ptr, ptr %packet, align 8, !dbg !5243
  %arrayidx82 = getelementptr i8, ptr %48, i64 2, !dbg !5243
  %49 = load i8, ptr %arrayidx82, align 1, !dbg !5243
  %conv83 = zext i8 %49 to i32, !dbg !5243
  %and84 = and i32 %conv83, 63, !dbg !5244
  %or = or i32 %shl81, %and84, !dbg !5245
  call void @input_report_abs(ptr noundef %45, i32 noundef 0, i32 noundef %or) #16, !dbg !5246
  %50 = load ptr, ptr %dev1, align 8, !dbg !5247
  %51 = load ptr, ptr %packet, align 8, !dbg !5248
  %arrayidx85 = getelementptr i8, ptr %51, i64 4, !dbg !5248
  %52 = load i8, ptr %arrayidx85, align 1, !dbg !5248
  %conv86 = zext i8 %52 to i32, !dbg !5248
  %and87 = and i32 %conv86, 63, !dbg !5249
  %shl88 = shl i32 %and87, 6, !dbg !5250
  %53 = load ptr, ptr %packet, align 8, !dbg !5251
  %arrayidx89 = getelementptr i8, ptr %53, i64 5, !dbg !5251
  %54 = load i8, ptr %arrayidx89, align 1, !dbg !5251
  %conv90 = zext i8 %54 to i32, !dbg !5251
  %and91 = and i32 %conv90, 63, !dbg !5252
  %or92 = or i32 %shl88, %and91, !dbg !5253
  %sub = sub i32 4096, %or92, !dbg !5254
  call void @input_report_abs(ptr noundef %50, i32 noundef 1, i32 noundef %sub) #16, !dbg !5255
  br label %if.end109, !dbg !5256

if.else93:                                        ; preds = %if.else75
  %55 = load ptr, ptr %dev1, align 8, !dbg !5257
  %56 = load ptr, ptr %packet, align 8, !dbg !5259
  %arrayidx94 = getelementptr i8, ptr %56, i64 1, !dbg !5259
  %57 = load i8, ptr %arrayidx94, align 1, !dbg !5259
  %conv95 = zext i8 %57 to i32, !dbg !5259
  %58 = load ptr, ptr %packet, align 8, !dbg !5260
  %arrayidx96 = getelementptr i8, ptr %58, i64 0, !dbg !5260
  %59 = load i8, ptr %arrayidx96, align 1, !dbg !5260
  %conv97 = zext i8 %59 to i32, !dbg !5260
  %and98 = and i32 %conv97, 48, !dbg !5261
  %shl99 = shl i32 %and98, 4, !dbg !5262
  %or100 = or i32 %conv95, %shl99, !dbg !5263
  call void @input_report_abs(ptr noundef %55, i32 noundef 0, i32 noundef %or100) #16, !dbg !5264
  %60 = load ptr, ptr %dev1, align 8, !dbg !5265
  %61 = load ptr, ptr %packet, align 8, !dbg !5266
  %arrayidx101 = getelementptr i8, ptr %61, i64 2, !dbg !5266
  %62 = load i8, ptr %arrayidx101, align 1, !dbg !5266
  %conv102 = zext i8 %62 to i32, !dbg !5266
  %63 = load ptr, ptr %packet, align 8, !dbg !5267
  %arrayidx103 = getelementptr i8, ptr %63, i64 0, !dbg !5267
  %64 = load i8, ptr %arrayidx103, align 1, !dbg !5267
  %conv104 = zext i8 %64 to i32, !dbg !5267
  %and105 = and i32 %conv104, 192, !dbg !5268
  %shl106 = shl i32 %and105, 2, !dbg !5269
  %or107 = or i32 %conv102, %shl106, !dbg !5270
  %sub108 = sub i32 1024, %or107, !dbg !5271
  call void @input_report_abs(ptr noundef %60, i32 noundef 1, i32 noundef %sub108) #16, !dbg !5272
  br label %if.end109

if.end109:                                        ; preds = %if.else93, %if.then77
  %65 = load ptr, ptr %dev1, align 8, !dbg !5273
  %66 = load ptr, ptr %packet, align 8, !dbg !5274
  %arrayidx110 = getelementptr i8, ptr %66, i64 0, !dbg !5274
  %67 = load i8, ptr %arrayidx110, align 1, !dbg !5274
  %conv111 = zext i8 %67 to i32, !dbg !5274
  %and112 = and i32 %conv111, 4, !dbg !5275
  call void @input_report_key(ptr noundef %65, i32 noundef 330, i32 noundef %and112) #16, !dbg !5276
  %68 = load ptr, ptr %dev1, align 8, !dbg !5277
  call void @input_sync(ptr noundef %68) #16, !dbg !5278
  br label %if.end113

if.end113:                                        ; preds = %if.end109, %if.end74
  %69 = load ptr, ptr %dev2, align 8, !dbg !5279
  %tobool114 = icmp ne ptr %69, null, !dbg !5279
  br i1 %tobool114, label %if.then115, label %if.end120, !dbg !5281

if.then115:                                       ; preds = %if.end113
  %70 = load i8, ptr %relative_packet, align 1, !dbg !5282, !range !4845, !noundef !1543
  %tobool116 = trunc i8 %70 to i1, !dbg !5282
  br i1 %tobool116, label %if.then117, label %if.end118, !dbg !5285

if.then117:                                       ; preds = %if.then115
  %71 = load ptr, ptr %dev2, align 8, !dbg !5286
  %72 = load ptr, ptr %packet, align 8, !dbg !5287
  call void @psmouse_report_standard_motion(ptr noundef %71, ptr noundef %72) #16, !dbg !5288
  br label %if.end118, !dbg !5288

if.end118:                                        ; preds = %if.then117, %if.then115
  %73 = load ptr, ptr %dev2, align 8, !dbg !5289
  %74 = load ptr, ptr %packet, align 8, !dbg !5290
  %arrayidx119 = getelementptr i8, ptr %74, i64 0, !dbg !5290
  %75 = load i8, ptr %arrayidx119, align 1, !dbg !5290
  call void @psmouse_report_standard_buttons(ptr noundef %73, i8 noundef zeroext %75) #16, !dbg !5291
  %76 = load ptr, ptr %dev2, align 8, !dbg !5292
  call void @input_sync(ptr noundef %76) #16, !dbg !5293
  br label %if.end120, !dbg !5294

if.end120:                                        ; preds = %if.end118, %if.end113
  store i32 2, ptr %retval, align 4, !dbg !5295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5295

cleanup:                                          ; preds = %if.end120, %if.then66, %if.then56, %sw.bb36, %sw.bb29, %sw.bb19, %sw.bb18, %sw.bb, %if.then9
  call void @llvm.lifetime.end.p0(i64 1, ptr %relative_packet) #17, !dbg !5296
  call void @llvm.lifetime.end.p0(i64 8, ptr %packet) #17, !dbg !5296
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev2) #17, !dbg !5296
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev1) #17, !dbg !5296
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #17, !dbg !5296
  %77 = load i32, ptr %retval, align 4, !dbg !5296
  ret i32 %77, !dbg !5296
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lifebook_set_resolution(ptr noundef %psmouse, i32 noundef %resolution) #2 align 16 !dbg !238 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %resolution.addr = alloca i32, align 4
  %p = alloca i8, align 1
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4792, metadata !DIExpression()), !dbg !5297
  store i32 %resolution, ptr %resolution.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resolution.addr, metadata !4793, metadata !DIExpression()), !dbg !5298
  call void @llvm.lifetime.start.p0(i64 1, ptr %p) #17, !dbg !5299
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4794, metadata !DIExpression()), !dbg !5300
  %0 = load i32, ptr %resolution.addr, align 4, !dbg !5301
  %cmp = icmp eq i32 %0, 0, !dbg !5303
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5304

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %resolution.addr, align 4, !dbg !5305
  %cmp1 = icmp ugt i32 %1, 400, !dbg !5306
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5307

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 400, ptr %resolution.addr, align 4, !dbg !5308
  br label %if.end, !dbg !5309

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i32, ptr %resolution.addr, align 4, !dbg !5310
  %div = udiv i32 %2, 100, !dbg !5311
  %idxprom = zext i32 %div to i64, !dbg !5312
  %arrayidx = getelementptr [5 x i8], ptr @lifebook_set_resolution.params, i64 0, i64 %idxprom, !dbg !5312
  %3 = load i8, ptr %arrayidx, align 1, !dbg !5312
  store i8 %3, ptr %p, align 1, !dbg !5313
  %4 = load ptr, ptr %psmouse.addr, align 8, !dbg !5314
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %4, i32 0, i32 2, !dbg !5315
  %call = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef %p, i32 noundef 4328) #16, !dbg !5316
  %5 = load i8, ptr %p, align 1, !dbg !5317
  %conv = zext i8 %5 to i32, !dbg !5317
  %shl = shl i32 50, %conv, !dbg !5318
  %6 = load ptr, ptr %psmouse.addr, align 8, !dbg !5319
  %resolution2 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 22, !dbg !5320
  store i32 %shl, ptr %resolution2, align 8, !dbg !5321
  call void @llvm.lifetime.end.p0(i64 1, ptr %p) #17, !dbg !5322
  ret void, !dbg !5322
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lifebook_disconnect(ptr noundef %psmouse) #2 align 16 !dbg !5323 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5325, metadata !DIExpression()), !dbg !5327
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #17, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !5326, metadata !DIExpression()), !dbg !5329
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5330
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5331
  %1 = load ptr, ptr %private, align 8, !dbg !5331
  store ptr %1, ptr %priv, align 8, !dbg !5329
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5332
  %call = call i32 @psmouse_reset(ptr noundef %2) #16, !dbg !5333
  %3 = load ptr, ptr %priv, align 8, !dbg !5334
  %tobool = icmp ne ptr %3, null, !dbg !5334
  br i1 %tobool, label %if.then, label %if.end, !dbg !5336

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %priv, align 8, !dbg !5337
  %dev2 = getelementptr inbounds %struct.lifebook_data, ptr %4, i32 0, i32 0, !dbg !5339
  %5 = load ptr, ptr %dev2, align 8, !dbg !5339
  call void @input_unregister_device(ptr noundef %5) #16, !dbg !5340
  %6 = load ptr, ptr %priv, align 8, !dbg !5341
  call void @kfree(ptr noundef %6) #16, !dbg !5342
  br label %if.end, !dbg !5343

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %psmouse.addr, align 8, !dbg !5344
  %private1 = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 0, !dbg !5345
  store ptr null, ptr %private1, align 8, !dbg !5346
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #17, !dbg !5347
  ret void, !dbg !5347
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lifebook_limit_serio3(ptr noundef %d) #2 align 16 !dbg !5348 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  store ptr @.str.2, ptr @desired_serio_phys, align 8, !dbg !5352
  ret i32 1, !dbg !5353
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lifebook_set_6byte_proto(ptr noundef %d) #2 align 16 !dbg !5354 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  store i8 1, ptr @lifebook_use_6byte_proto, align 1, !dbg !5358
  ret i32 1, !dbg !5359
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5360 dso_local i32 @psmouse_reset(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5361 dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5364 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5368, metadata !DIExpression()), !dbg !5370
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5369, metadata !DIExpression()), !dbg !5371
  %0 = load i64, ptr %size.addr, align 8, !dbg !5372
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5373
  %or = or i32 %1, 256, !dbg !5374
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5375
  ret ptr %call, !dbg !5376
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5377 dso_local ptr @input_allocate_device() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5380 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5384 dso_local i32 @input_register_device(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5385 dso_local void @input_free_device(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5386 dso_local void @kfree(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5389 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5391, metadata !DIExpression()), !dbg !5396
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5392, metadata !DIExpression()), !dbg !5397
  %0 = load i64, ptr %size.addr, align 8, !dbg !5398
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5399
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5400

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5401
  %tobool = icmp ne i64 %2, 0, !dbg !5401
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5402

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5393, metadata !DIExpression()), !dbg !5404
  %3 = load i64, ptr %size.addr, align 8, !dbg !5405
  %cmp = icmp ugt i64 %3, 8192, !dbg !5407
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5408

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5409
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5410
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5411
  store ptr %call, ptr %retval, align 8, !dbg !5412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5412

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5413
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5413
  store i32 %call2, ptr %index, align 4, !dbg !5414
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5415
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5416
  %9 = ptrtoint ptr %8 to i64, !dbg !5416
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5417
  %idxprom = zext i32 %call3 to i64, !dbg !5418
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5418
  %10 = load i32, ptr %index, align 4, !dbg !5419
  %idxprom4 = zext i32 %10 to i64, !dbg !5418
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5418
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5418
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5420
  %13 = load i64, ptr %size.addr, align 8, !dbg !5421
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5422
  store ptr %call6, ptr %retval, align 8, !dbg !5423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5423

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5424
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5425
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5426
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5427
  store ptr %call8, ptr %retval, align 8, !dbg !5428
  br label %return, !dbg !5428

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5429
  ret ptr %16, !dbg !5429
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5430 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !5431 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5435, metadata !DIExpression()), !dbg !5437
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5436, metadata !DIExpression()), !dbg !5438
  %0 = load i64, ptr %size.addr, align 8, !dbg !5439
  %tobool = icmp ne i64 %0, 0, !dbg !5439
  br i1 %tobool, label %if.end, label %if.then, !dbg !5441

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5442
  br label %return, !dbg !5442

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5443
  %cmp = icmp ule i64 %1, 8, !dbg !5445
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5446

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5447
  br label %return, !dbg !5447

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5448
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5450
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5451

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5452
  %cmp4 = icmp ule i64 %3, 96, !dbg !5453
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5454

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5455
  br label %return, !dbg !5455

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5456
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5458
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5459

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5460
  %cmp9 = icmp ule i64 %5, 192, !dbg !5461
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5462

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5463
  br label %return, !dbg !5463

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5464
  %cmp12 = icmp ule i64 %6, 8, !dbg !5466
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5467

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5468
  br label %return, !dbg !5468

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5469
  %cmp15 = icmp ule i64 %7, 16, !dbg !5471
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5472

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5473
  br label %return, !dbg !5473

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5474
  %cmp18 = icmp ule i64 %8, 32, !dbg !5476
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5477

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5478
  br label %return, !dbg !5478

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5479
  %cmp21 = icmp ule i64 %9, 64, !dbg !5481
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5482

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5483
  br label %return, !dbg !5483

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5484
  %cmp24 = icmp ule i64 %10, 128, !dbg !5486
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5487

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5488
  br label %return, !dbg !5488

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5489
  %cmp27 = icmp ule i64 %11, 256, !dbg !5491
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5492

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5493
  br label %return, !dbg !5493

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5494
  %cmp30 = icmp ule i64 %12, 512, !dbg !5496
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5497

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5498
  br label %return, !dbg !5498

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5499
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5501
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5502

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5503
  br label %return, !dbg !5503

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5504
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5506
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5507

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5508
  br label %return, !dbg !5508

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5509
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5511
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5512

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5513
  br label %return, !dbg !5513

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5514
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5516
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5517

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5518
  br label %return, !dbg !5518

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5519
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5521
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5522

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5523
  br label %return, !dbg !5523

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5524
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5526
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5527

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5528
  br label %return, !dbg !5528

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5529
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5531
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5532

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5533
  br label %return, !dbg !5533

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5534
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5536
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5537

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5538
  br label %return, !dbg !5538

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5539
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5541
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5542

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5543
  br label %return, !dbg !5543

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5544
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5546
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5547

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5548
  br label %return, !dbg !5548

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5549
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5551
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5552

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5553
  br label %return, !dbg !5553

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5554
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5556
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5557

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5558
  br label %return, !dbg !5558

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5559, !range !4845, !noundef !1543
  %tobool69 = trunc i8 %25 to i1, !dbg !5559
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5561

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5562

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #21, !dbg !5563, !srcloc !5566
  unreachable, !dbg !5563

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5567

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5568

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5569

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5571

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5569

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #17, !dbg !5573, !srcloc !5575
  br label %do.end75, !dbg !5573

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5569

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5576
  br label %return, !dbg !5576

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5577
  ret i32 %26, !dbg !5577
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5578 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !5584 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5588, metadata !DIExpression()), !dbg !5590
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5589, metadata !DIExpression()), !dbg !5591
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5592
  %and = and i32 %0, 17, !dbg !5592
  %cmp = icmp eq i32 %and, 0, !dbg !5592
  %lnot = xor i1 %cmp, true, !dbg !5592
  %lnot1 = xor i1 %lnot, true, !dbg !5592
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5592
  %conv = sext i32 %lnot.ext to i64, !dbg !5592
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5592
  %tobool = icmp ne i64 %expval, 0, !dbg !5592
  br i1 %tobool, label %if.then, label %if.end, !dbg !5594

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5595
  br label %return, !dbg !5595

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5596
  %and2 = and i32 %1, 1, !dbg !5598
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5598
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5599

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5600
  br label %return, !dbg !5600

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5601
  br label %return, !dbg !5601

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5603
  ret i32 %2, !dbg !5603
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5604 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5605 dso_local void @__compiletime_assert_263() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5606 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_abs(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #5 align 16 !dbg !5610 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5614, metadata !DIExpression()), !dbg !5617
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5615, metadata !DIExpression()), !dbg !5618
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5616, metadata !DIExpression()), !dbg !5619
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5620
  %1 = load i32, ptr %code.addr, align 4, !dbg !5621
  %2 = load i32, ptr %value.addr, align 4, !dbg !5622
  call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef %1, i32 noundef %2) #16, !dbg !5623
  ret void, !dbg !5624
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_key(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #5 align 16 !dbg !5625 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5627, metadata !DIExpression()), !dbg !5630
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5628, metadata !DIExpression()), !dbg !5631
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5629, metadata !DIExpression()), !dbg !5632
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5633
  %1 = load i32, ptr %code.addr, align 4, !dbg !5634
  %2 = load i32, ptr %value.addr, align 4, !dbg !5635
  %tobool = icmp ne i32 %2, 0, !dbg !5636
  %lnot = xor i1 %tobool, true, !dbg !5636
  %lnot1 = xor i1 %lnot, true, !dbg !5637
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5637
  call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %lnot.ext) #16, !dbg !5638
  ret void, !dbg !5639
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_sync(ptr noundef %dev) #5 align 16 !dbg !5640 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5642, metadata !DIExpression()), !dbg !5643
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5644
  call void @input_event(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16, !dbg !5645
  ret void, !dbg !5646
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5647 dso_local void @psmouse_report_standard_motion(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5650 dso_local void @psmouse_report_standard_buttons(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5653 dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5656 dso_local void @input_unregister_device(ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829}
!llvm.ident = !{!4830}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lifebook_dmi_table", scope: !2, file: !3, line: 45, type: !4799, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/mouse/.lifebook.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/mouse/psmouse\22 -D KBUILD_BASENAME=\22lifebook\22 -D KBUILD_MODNAME=\22psmouse\22 -D __KBUILD_MODNAME=kmod_psmouse -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/mouse/lifebook.ll drivers/input/mouse/lifebook.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !187, globals: !192, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/mouse/lifebook.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08ddc8de3aea29dd6fefcfe0c602c493")
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
!187 = !{!7, !188, !190, !191}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !189, line: 154, baseType: !7)
!189 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!190 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!192 = !{!193, !199, !204, !208, !212, !0, !214, !219, !224, !229, !231, !236}
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 263, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 64, elements: !197)
!196 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!197 = !{!198}
!198 = !DISubrange(count: 8)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !3, line: 264, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 168, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 21)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "lifebook_present", scope: !2, file: !3, line: 27, type: !206, isLocal: true, isDefinition: true)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !189, line: 35, baseType: !207)
!207 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "desired_serio_phys", scope: !2, file: !3, line: 29, type: !210, isLocal: true, isDefinition: true)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "lifebook_use_6byte_proto", scope: !2, file: !3, line: 37, type: !206, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !3, line: 33, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 120, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 15)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !3, line: 283, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 80, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 10)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 264, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 33)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !178, line: 480, type: !201, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 488, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 61)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "params", scope: !238, file: !3, line: 230, type: !4795, isLocal: true, isDefinition: true)
!238 = distinct !DISubprogram(name: "lifebook_set_resolution", scope: !3, file: !3, line: 228, type: !239, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4791)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !241, !7}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse", file: !130, line: 89, size: 3904, elements: !243)
!243 = !{!244, !245, !4639, !4725, !4726, !4727, !4728, !4748, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4774, !4776, !4777, !4781, !4782, !4783, !4787, !4788, !4789, !4790}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !242, file: !130, line: 90, baseType: !191, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !242, file: !130, line: 91, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !248, line: 137, size: 10880, elements: !249)
!248 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!249 = !{!250, !251, !252, !253, !264, !268, !269, !273, !274, !275, !276, !277, !278, !282, !283, !284, !285, !286, !287, !307, !312, !4144, !4147, !4148, !4149, !4151, !4154, !4164, !4165, !4166, !4167, !4168, !4172, !4176, !4180, !4184, !4262, !4263, !4264, !4265, !4266, !4629, !4630, !4631, !4632, !4633, !4635, !4636, !4638}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !248, line: 138, baseType: !210, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !247, file: !248, line: 139, baseType: !210, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !247, file: !248, line: 140, baseType: !210, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !247, file: !248, line: 141, baseType: !254, size: 64, offset: 192)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !255, line: 59, size: 64, elements: !256)
!255 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!256 = !{!257, !261, !262, !263}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !254, file: !255, line: 60, baseType: !258, size: 16)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !259, line: 24, baseType: !260)
!259 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!260 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !254, file: !255, line: 61, baseType: !258, size: 16, offset: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !254, file: !255, line: 62, baseType: !258, size: 16, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !254, file: !255, line: 63, baseType: !258, size: 16, offset: 48)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !247, file: !248, line: 143, baseType: !265, size: 64, offset: 256)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 64, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 1)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !247, file: !248, line: 145, baseType: !265, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !247, file: !248, line: 146, baseType: !270, size: 768, offset: 384)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 768, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 12)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !247, file: !248, line: 147, baseType: !265, size: 64, offset: 1152)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !247, file: !248, line: 148, baseType: !265, size: 64, offset: 1216)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !247, file: !248, line: 149, baseType: !265, size: 64, offset: 1280)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !247, file: !248, line: 150, baseType: !265, size: 64, offset: 1344)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !247, file: !248, line: 151, baseType: !265, size: 64, offset: 1408)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !247, file: !248, line: 152, baseType: !279, size: 128, offset: 1472)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 128, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 2)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !247, file: !248, line: 153, baseType: !265, size: 64, offset: 1600)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !247, file: !248, line: 155, baseType: !7, size: 32, offset: 1664)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !247, file: !248, line: 157, baseType: !7, size: 32, offset: 1696)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !247, file: !248, line: 158, baseType: !7, size: 32, offset: 1728)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !247, file: !248, line: 159, baseType: !191, size: 64, offset: 1792)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !247, file: !248, line: 161, baseType: !288, size: 64, offset: 1856)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!85, !246, !291, !306}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !255, line: 117, size: 320, elements: !294)
!294 = !{!295, !298, !299, !300, !302}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !293, file: !255, line: 119, baseType: !296, size: 8)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !259, line: 21, baseType: !297)
!297 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !293, file: !255, line: 120, baseType: !296, size: 8, offset: 8)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !293, file: !255, line: 121, baseType: !258, size: 16, offset: 16)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !293, file: !255, line: 122, baseType: !301, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !259, line: 27, baseType: !7)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !293, file: !255, line: 123, baseType: !303, size: 256, offset: 64)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 256, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 32)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !247, file: !248, line: 164, baseType: !308, size: 64, offset: 1920)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!85, !246, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !247, file: !248, line: 167, baseType: !313, size: 64, offset: 1984)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !248, line: 546, size: 960, elements: !315)
!315 = !{!316, !385, !389, !393, !399, !400, !404, !405, !406, !460, !461, !462}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !314, file: !248, line: 547, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!85, !246, !320, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !255, line: 454, size: 384, elements: !322)
!322 = !{!323, !324, !327, !328, !333, !338}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !321, file: !255, line: 455, baseType: !258, size: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !321, file: !255, line: 456, baseType: !325, size: 16, offset: 16)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !259, line: 23, baseType: !326)
!326 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !321, file: !255, line: 457, baseType: !258, size: 16, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !321, file: !255, line: 458, baseType: !329, size: 32, offset: 48)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !255, line: 320, size: 32, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !329, file: !255, line: 321, baseType: !258, size: 16)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !329, file: !255, line: 322, baseType: !258, size: 16, offset: 16)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !321, file: !255, line: 459, baseType: !334, size: 32, offset: 80)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !255, line: 310, size: 32, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !334, file: !255, line: 311, baseType: !258, size: 16)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !334, file: !255, line: 312, baseType: !258, size: 16, offset: 16)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !321, file: !255, line: 467, baseType: !339, size: 256, offset: 128)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !255, line: 461, size: 256, elements: !340)
!340 = !{!341, !352, !358, !370, !380}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !339, file: !255, line: 462, baseType: !342, size: 80)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !255, line: 349, size: 80, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !342, file: !255, line: 350, baseType: !325, size: 16)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !342, file: !255, line: 351, baseType: !346, size: 64, offset: 16)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !255, line: 337, size: 64, elements: !347)
!347 = !{!348, !349, !350, !351}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !346, file: !255, line: 338, baseType: !258, size: 16)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !346, file: !255, line: 339, baseType: !258, size: 16, offset: 16)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !346, file: !255, line: 340, baseType: !258, size: 16, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !346, file: !255, line: 341, baseType: !258, size: 16, offset: 48)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !339, file: !255, line: 463, baseType: !353, size: 96)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !255, line: 360, size: 96, elements: !354)
!354 = !{!355, !356, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !353, file: !255, line: 361, baseType: !325, size: 16)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !353, file: !255, line: 362, baseType: !325, size: 16, offset: 16)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !353, file: !255, line: 363, baseType: !346, size: 64, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !339, file: !255, line: 464, baseType: !359, size: 256)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !255, line: 405, size: 256, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !359, file: !255, line: 406, baseType: !258, size: 16)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !359, file: !255, line: 407, baseType: !258, size: 16, offset: 16)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !359, file: !255, line: 408, baseType: !325, size: 16, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !359, file: !255, line: 409, baseType: !325, size: 16, offset: 48)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !359, file: !255, line: 410, baseType: !258, size: 16, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !359, file: !255, line: 412, baseType: !346, size: 64, offset: 80)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !359, file: !255, line: 414, baseType: !301, size: 32, offset: 160)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !359, file: !255, line: 415, baseType: !369, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !339, file: !255, line: 465, baseType: !371, size: 192)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 192, elements: !280)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !255, line: 376, size: 96, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !372, file: !255, line: 377, baseType: !258, size: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !372, file: !255, line: 378, baseType: !258, size: 16, offset: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !372, file: !255, line: 380, baseType: !325, size: 16, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !372, file: !255, line: 381, baseType: !325, size: 16, offset: 48)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !372, file: !255, line: 383, baseType: !258, size: 16, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !372, file: !255, line: 384, baseType: !325, size: 16, offset: 80)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !339, file: !255, line: 466, baseType: !381, size: 32)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !255, line: 426, size: 32, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !381, file: !255, line: 427, baseType: !258, size: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !381, file: !255, line: 428, baseType: !258, size: 16, offset: 16)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !314, file: !248, line: 549, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!85, !246, !85}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !314, file: !248, line: 551, baseType: !390, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!85, !246, !85, !85}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !314, file: !248, line: 552, baseType: !394, size: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !246, !397}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !398, line: 19, baseType: !258)
!398 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!399 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !314, file: !248, line: 553, baseType: !394, size: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !314, file: !248, line: 555, baseType: !401, size: 64, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !313}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !314, file: !248, line: 557, baseType: !191, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !314, file: !248, line: 559, baseType: !279, size: 128, offset: 448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !314, file: !248, line: 561, baseType: !407, size: 256, offset: 576)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !408, line: 66, size: 256, elements: !409)
!408 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!409 = !{!410, !420, !449, !454}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !407, file: !408, line: 67, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !412, line: 13, baseType: !413)
!412 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !189, line: 181, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 179, size: 64, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !414, file: !189, line: 180, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !398, line: 22, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !259, line: 30, baseType: !419)
!419 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !407, file: !408, line: 68, baseType: !421, size: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !422, line: 23, baseType: !423)
!422 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !422, line: 14, size: 32, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !423, file: !422, line: 15, baseType: !426, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !427, line: 44, baseType: !428)
!427 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !427, line: 14, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !427, line: 15, baseType: !431, size: 32)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !427, line: 15, size: 32, elements: !432)
!432 = !{!433, !438, !444}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !431, file: !427, line: 16, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !189, line: 174, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 172, size: 32, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !435, file: !189, line: 173, baseType: !85, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !427, line: 24, baseType: !439, size: 16)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !427, line: 24, size: 16, elements: !440)
!440 = !{!441, !443}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !439, file: !427, line: 25, baseType: !442, size: 8)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !398, line: 17, baseType: !296)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !439, file: !427, line: 26, baseType: !442, size: 8, offset: 8)
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !427, line: 28, baseType: !445, size: 32)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !427, line: 28, size: 32, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !445, file: !427, line: 29, baseType: !397, size: 16)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !445, file: !427, line: 30, baseType: !397, size: 16, offset: 16)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !407, file: !408, line: 70, baseType: !450, size: 32, offset: 96)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !451, line: 15, size: 32, elements: !452)
!451 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !450, file: !451, line: 20, baseType: !434, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !407, file: !408, line: 72, baseType: !455, size: 128, offset: 128)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !189, line: 190, size: 128, elements: !456)
!456 = !{!457, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !189, line: 191, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !455, file: !189, line: 191, baseType: !458, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !314, file: !248, line: 563, baseType: !85, size: 32, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !314, file: !248, line: 564, baseType: !320, size: 64, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !314, file: !248, line: 565, baseType: !463, offset: 960)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, elements: !572)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !466)
!466 = !{!467, !486, !495, !497, !498, !499, !503, !504, !585, !805, !814, !4134, !4135, !4136, !4137, !4138, !4139, !4141, !4142, !4143}
!467 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !35, line: 995, baseType: !468, size: 128)
!468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !35, line: 995, size: 128, elements: !469)
!469 = !{!470, !476, !485}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !468, file: !35, line: 996, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !472, line: 60, size: 64, elements: !473)
!472 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !472, line: 61, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !468, file: !35, line: 997, baseType: !477, size: 128, align: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !189, line: 232, size: 128, align: 64, elements: !478)
!478 = !{!479, !481}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !189, line: 233, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !477, file: !189, line: 234, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !480}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !468, file: !35, line: 998, baseType: !7, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !465, file: !35, line: 1005, baseType: !487, size: 32, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !488, line: 29, baseType: !489)
!488 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !488, line: 17, size: 32, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !488, line: 18, baseType: !492, size: 32)
!492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !488, line: 18, size: 32, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !492, file: !488, line: 19, baseType: !423, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !465, file: !35, line: 1006, baseType: !496, size: 32, offset: 160)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !189, line: 156, baseType: !7)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !465, file: !35, line: 1007, baseType: !411, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !465, file: !35, line: 1008, baseType: !407, size: 256, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !465, file: !35, line: 1009, baseType: !500, size: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !189, line: 52, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !502, line: 88, baseType: !419)
!502 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!503 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !465, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !465, file: !35, line: 1011, baseType: !505, size: 256, offset: 640)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !506)
!506 = !{!507, !530, !574, !575, !583, !584}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !505, file: !35, line: 949, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !509, line: 34, baseType: !510)
!509 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 25, size: 64, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !510, file: !509, line: 26, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !514, line: 27, baseType: !515)
!514 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !514, line: 13, size: 64, elements: !516)
!516 = !{!517, !529}
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !514, line: 14, baseType: !518, size: 32)
!518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !514, line: 14, size: 32, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !518, file: !514, line: 15, baseType: !434, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !514, line: 16, baseType: !522, size: 32)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !518, file: !514, line: 16, size: 32, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !522, file: !514, line: 18, baseType: !442, size: 8)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !522, file: !514, line: 19, baseType: !526, size: 24, offset: 8)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 24, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 3)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !515, file: !514, line: 26, baseType: !426, size: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !505, file: !35, line: 950, baseType: !531, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !533)
!533 = !{!534, !540, !541, !542, !555, !556, !563, !564}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !532, file: !6, line: 61, baseType: !535, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !536, line: 113, baseType: !537)
!536 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !536, line: 111, size: 32, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !537, file: !536, line: 112, baseType: !434, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !532, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !532, file: !6, line: 63, baseType: !487, size: 32, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !532, file: !6, line: 65, baseType: !543, size: 256, offset: 128)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 256, elements: !553)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !189, line: 194, size: 64, elements: !545)
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !544, file: !189, line: 195, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !189, line: 198, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !189, line: 199, baseType: !547, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !548, file: !189, line: 199, baseType: !552, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!553 = !{!554}
!554 = !DISubrange(count: 4)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !532, file: !6, line: 66, baseType: !544, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !532, file: !6, line: 68, baseType: !557, size: 192, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !558, line: 41, baseType: !559)
!558 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !558, line: 37, size: 192, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !559, file: !558, line: 38, baseType: !487, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !559, file: !558, line: 39, baseType: !455, size: 128, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !532, file: !6, line: 69, baseType: !477, size: 128, align: 64, offset: 640)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !532, file: !6, line: 70, baseType: !565, offset: 768)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, elements: !572)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !566, file: !6, line: 55, baseType: !85, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !566, file: !6, line: 56, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!572 = !{!573}
!573 = !DISubrange(count: -1)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !505, file: !35, line: 951, baseType: !5, size: 32, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !505, file: !35, line: 952, baseType: !576, size: 32, offset: 160)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !577, line: 23, baseType: !578)
!577 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !577, line: 21, size: 32, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !578, file: !577, line: 22, baseType: !581, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !189, line: 37, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !502, line: 49, baseType: !7)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !505, file: !35, line: 952, baseType: !576, size: 32, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !505, file: !35, line: 953, baseType: !85, size: 32, offset: 224)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !465, file: !35, line: 1012, baseType: !586, size: 64, offset: 896)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !589, line: 110, size: 1472, elements: !590)
!589 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!590 = !{!591, !592, !593, !600, !601, !602, !603, !604, !605, !606, !607, !616, !617, !618, !619, !620, !621, !750, !751, !752, !753, !754, !785, !788, !792, !800}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !588, file: !589, line: 111, baseType: !411, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !588, file: !589, line: 112, baseType: !576, size: 32, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !588, file: !589, line: 113, baseType: !594, size: 32, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !577, line: 28, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !577, line: 26, size: 32, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !595, file: !577, line: 27, baseType: !598, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !189, line: 38, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !502, line: 50, baseType: !7)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !588, file: !589, line: 114, baseType: !576, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !588, file: !589, line: 115, baseType: !594, size: 32, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !588, file: !589, line: 116, baseType: !576, size: 32, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !588, file: !589, line: 117, baseType: !594, size: 32, offset: 224)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !588, file: !589, line: 118, baseType: !576, size: 32, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !588, file: !589, line: 119, baseType: !594, size: 32, offset: 288)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !588, file: !589, line: 120, baseType: !7, size: 32, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !588, file: !589, line: 121, baseType: !608, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !609, line: 24, baseType: !610)
!609 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !609, line: 24, size: 64, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !610, file: !609, line: 24, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !398, line: 23, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !259, line: 31, baseType: !615)
!615 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !588, file: !589, line: 122, baseType: !608, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !588, file: !589, line: 123, baseType: !608, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !588, file: !589, line: 124, baseType: !608, size: 64, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !588, file: !589, line: 125, baseType: !608, size: 64, offset: 640)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !588, file: !589, line: 127, baseType: !297, size: 8, offset: 704)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !588, file: !589, line: 129, baseType: !622, size: 64, offset: 768)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !624, line: 195, size: 1728, elements: !625)
!624 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!625 = !{!626, !627, !632, !644, !653, !656, !657, !664, !665, !666, !667, !671, !672, !673, !674, !675, !714, !735}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !623, file: !624, line: 196, baseType: !535, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !623, file: !624, line: 197, baseType: !628, size: 32, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !624, line: 28, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !189, line: 104, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !398, line: 20, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !259, line: 26, baseType: !85)
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 198, baseType: !633, size: 192, offset: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 198, size: 192, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !633, file: !624, line: 199, baseType: !455, size: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !633, file: !624, line: 200, baseType: !637, size: 192, align: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !638, line: 5, size: 192, align: 64, elements: !639)
!638 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!639 = !{!640, !641, !643}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !637, file: !638, line: 6, baseType: !190, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !637, file: !638, line: 7, baseType: !642, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !637, file: !638, line: 8, baseType: !642, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !623, file: !624, line: 205, baseType: !645, size: 320, offset: 256)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !646, line: 48, size: 320, elements: !647)
!646 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!647 = !{!648, !649, !650, !651, !652}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !645, file: !646, line: 49, baseType: !411, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !645, file: !646, line: 55, baseType: !411, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !645, file: !646, line: 57, baseType: !450, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !645, file: !646, line: 59, baseType: !421, size: 32, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !645, file: !646, line: 60, baseType: !455, size: 128, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !623, file: !624, line: 206, baseType: !654, size: 64, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !624, line: 206, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !623, file: !624, line: 207, baseType: !191, size: 64, offset: 640)
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 208, baseType: !658, size: 64, offset: 704)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 208, size: 64, elements: !659)
!659 = !{!660, !663}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !658, file: !624, line: 209, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !662, line: 8, baseType: !418)
!662 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!663 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !658, file: !624, line: 210, baseType: !661, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !623, file: !624, line: 212, baseType: !661, size: 64, offset: 768)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !623, file: !624, line: 213, baseType: !576, size: 32, offset: 832)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !623, file: !624, line: 214, baseType: !594, size: 32, offset: 864)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !623, file: !624, line: 215, baseType: !668, size: 32, offset: 896)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !624, line: 31, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !189, line: 110, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !398, line: 21, baseType: !301)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !623, file: !624, line: 216, baseType: !260, size: 16, offset: 928)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !623, file: !624, line: 217, baseType: !260, size: 16, offset: 944)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !623, file: !624, line: 221, baseType: !326, size: 16, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !624, line: 228, baseType: !190, size: 64, offset: 1024)
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 245, baseType: !676, size: 320, offset: 1088)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 245, size: 320, elements: !677)
!677 = !{!678, !705}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !676, file: !624, line: 246, baseType: !679, size: 320)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !624, line: 114, size: 320, elements: !680)
!680 = !{!681, !682, !694, !697, !704}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !679, file: !624, line: 116, baseType: !190, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !624, line: 117, baseType: !683, size: 64, offset: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !679, file: !624, line: 117, size: 64, elements: !684)
!684 = !{!685, !693}
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !624, line: 118, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !683, file: !624, line: 118, size: 64, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !686, file: !624, line: 120, baseType: !397, size: 16)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !686, file: !624, line: 121, baseType: !690, size: 48, offset: 16)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 48, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 6)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !683, file: !624, line: 127, baseType: !190, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !679, file: !624, line: 129, baseType: !695, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !624, line: 102, flags: DIFlagFwdDecl)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !679, file: !624, line: 130, baseType: !698, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !624, line: 108, size: 192, elements: !700)
!700 = !{!701, !702, !703}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !699, file: !624, line: 109, baseType: !477, size: 128, align: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !699, file: !624, line: 110, baseType: !535, size: 32, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !699, file: !624, line: 111, baseType: !206, size: 8, offset: 160)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !679, file: !624, line: 131, baseType: !210, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !624, line: 247, baseType: !706, size: 320)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !676, file: !624, line: 247, size: 320, elements: !707)
!707 = !{!708, !709, !710, !711, !712}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !706, file: !624, line: 248, baseType: !190, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !706, file: !624, line: 249, baseType: !190, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !624, line: 250, baseType: !695, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !706, file: !624, line: 251, baseType: !698, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !706, file: !624, line: 252, baseType: !713, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 260, baseType: !715, size: 256, offset: 1408)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 260, size: 256, elements: !716)
!716 = !{!717, !723}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !715, file: !624, line: 261, baseType: !718, size: 256)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !624, line: 134, size: 256, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !718, file: !624, line: 135, baseType: !191, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !718, file: !624, line: 136, baseType: !722, size: 256)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !553)
!723 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !624, line: 262, baseType: !724, size: 256)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !715, file: !624, line: 262, size: 256, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !724, file: !624, line: 264, baseType: !455, size: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !724, file: !624, line: 265, baseType: !728, size: 128, offset: 128)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !729, line: 22, size: 128, elements: !730)
!729 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!730 = !{!731, !734}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !728, file: !729, line: 23, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !729, line: 23, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !728, file: !729, line: 24, baseType: !190, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !623, file: !624, line: 280, baseType: !736, size: 64, offset: 1664)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !624, line: 176, size: 192, elements: !738)
!738 = !{!739, !748, !749}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !737, file: !624, line: 177, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !624, line: 171, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!85, !622, !744, !746, !622}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !696)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !737, file: !624, line: 178, baseType: !622, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !737, file: !624, line: 179, baseType: !695, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !588, file: !589, line: 130, baseType: !622, size: 64, offset: 832)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !588, file: !589, line: 131, baseType: !622, size: 64, offset: 896)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !588, file: !589, line: 132, baseType: !622, size: 64, offset: 960)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !588, file: !589, line: 135, baseType: !191, size: 64, offset: 1024)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !588, file: !589, line: 137, baseType: !755, size: 64, offset: 1088)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !757, line: 14, size: 1088, elements: !758)
!757 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!758 = !{!759, !760, !769, !770, !771, !772, !773, !774}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !756, file: !757, line: 15, baseType: !535, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !756, file: !757, line: 17, baseType: !761, size: 320, offset: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !762, line: 22, size: 320, elements: !763)
!762 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!763 = !{!764, !765, !766, !767}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !761, file: !762, line: 23, baseType: !421, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !761, file: !762, line: 24, baseType: !417, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !761, file: !762, line: 26, baseType: !455, size: 128, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !761, file: !762, line: 28, baseType: !768, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !756, file: !757, line: 19, baseType: !190, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !756, file: !757, line: 20, baseType: !411, size: 64, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !756, file: !757, line: 23, baseType: !548, size: 128, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !756, file: !757, line: 24, baseType: !576, size: 32, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !756, file: !757, line: 29, baseType: !411, size: 64, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !756, file: !757, line: 36, baseType: !775, size: 320, offset: 768)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !776, line: 15, size: 320, elements: !777)
!776 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!777 = !{!778, !779, !780, !781, !782, !783, !784}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !775, file: !776, line: 16, baseType: !421, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !775, file: !776, line: 18, baseType: !85, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !775, file: !776, line: 19, baseType: !85, size: 32, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !775, file: !776, line: 20, baseType: !85, size: 32, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !775, file: !776, line: 21, baseType: !85, size: 32, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !775, file: !776, line: 22, baseType: !190, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !776, line: 23, baseType: !190, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !588, file: !589, line: 138, baseType: !786, size: 64, offset: 1152)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !577, line: 18, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !588, file: !589, line: 139, baseType: !789, size: 64, offset: 1216)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !791, line: 16, flags: DIFlagFwdDecl)
!791 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!792 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !588, file: !589, line: 140, baseType: !793, size: 64, offset: 1280)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !589, line: 25, size: 64, elements: !795)
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !794, file: !589, line: 26, baseType: !434, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !794, file: !589, line: 27, baseType: !85, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !794, file: !589, line: 28, baseType: !799, offset: 64)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, elements: !572)
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !588, file: !589, line: 142, baseType: !801, size: 128, offset: 1344)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !588, file: !589, line: 142, size: 128, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !801, file: !589, line: 143, baseType: !85, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !801, file: !589, line: 144, baseType: !477, size: 128, align: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !465, file: !35, line: 1013, baseType: !806, size: 256, offset: 960)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !806, file: !35, line: 971, baseType: !190, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !806, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !806, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !806, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !806, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !806, file: !35, line: 976, baseType: !500, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !465, file: !35, line: 1014, baseType: !815, size: 128, offset: 1216)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !816, line: 8, size: 128, elements: !817)
!816 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!817 = !{!818, !4133}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !815, file: !816, line: 9, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !821, line: 70, size: 256, elements: !822)
!821 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!822 = !{!823, !4130, !4131, !4132}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !820, file: !821, line: 71, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !826, line: 82, size: 1536, elements: !827)
!826 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!827 = !{!828, !829, !839, !847, !848, !863, !4097, !4099, !4112, !4113, !4114, !4115, !4116, !4122, !4123, !4124}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !825, file: !826, line: 84, baseType: !7, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !825, file: !826, line: 85, baseType: !830, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !831, line: 275, baseType: !832)
!831 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !831, line: 275, size: 32, elements: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !832, file: !831, line: 275, baseType: !835, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !831, line: 69, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !831, line: 64, size: 32, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !836, file: !831, line: 65, baseType: !7, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !825, file: !826, line: 86, baseType: !840, size: 128, offset: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !841, line: 38, size: 128, elements: !842)
!841 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!842 = !{!843, !845}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !840, file: !841, line: 39, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !840, file: !841, line: 39, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !825, file: !826, line: 87, baseType: !824, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !825, file: !826, line: 88, baseType: !849, size: 128, offset: 256)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !826, line: 49, size: 128, elements: !850)
!850 = !{!851, !860}
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !826, line: 50, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !849, file: !826, line: 50, size: 64, elements: !853)
!853 = !{!854, !859}
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !826, line: 51, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !852, file: !826, line: 51, size: 64, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !855, file: !826, line: 52, baseType: !670, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !855, file: !826, line: 52, baseType: !670, size: 32, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !852, file: !826, line: 54, baseType: !613, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !849, file: !826, line: 56, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !825, file: !826, line: 89, baseType: !864, size: 64, offset: 384)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !866)
!866 = !{!867, !869, !870, !871, !872, !873, !874, !877, !878, !1075, !3913, !3914, !3915, !3916, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !4079, !4082, !4083, !4084, !4093, !4094, !4095, !4096}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !865, file: !35, line: 642, baseType: !868, size: 16)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !189, line: 24, baseType: !260)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !865, file: !35, line: 643, baseType: !260, size: 16, offset: 16)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !865, file: !35, line: 644, baseType: !576, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !865, file: !35, line: 645, baseType: !455, size: 128, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !865, file: !35, line: 646, baseType: !594, size: 32, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !865, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !865, file: !35, line: 650, baseType: !875, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !865, file: !35, line: 651, baseType: !875, size: 64, offset: 320)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !865, file: !35, line: 654, baseType: !879, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !882)
!882 = !{!883, !887, !900, !906, !910, !914, !918, !922, !926, !930, !934, !935, !941, !945, !983, !1014, !1024, !1030, !1034, !1038, !1042, !1046, !1050, !1056, !1060}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !881, file: !35, line: 1967, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!824, !864, !824, !7}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !881, file: !35, line: 1968, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!210, !824, !864, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !893, line: 10, size: 128, elements: !894)
!893 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!894 = !{!895, !899}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !892, file: !893, line: 11, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !191}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !892, file: !893, line: 12, baseType: !191, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !881, file: !35, line: 1969, baseType: !901, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!85, !904, !864, !85}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !609, line: 42, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !881, file: !35, line: 1970, baseType: !907, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!875, !864, !85, !206}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !881, file: !35, line: 1972, baseType: !911, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!85, !824, !713, !85}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !881, file: !35, line: 1974, baseType: !915, size: 64, offset: 320)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!85, !904, !864, !824, !868, !206}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !881, file: !35, line: 1976, baseType: !919, size: 64, offset: 384)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!85, !824, !864, !824}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !881, file: !35, line: 1977, baseType: !923, size: 64, offset: 448)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!85, !864, !824}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !881, file: !35, line: 1978, baseType: !927, size: 64, offset: 512)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!85, !904, !864, !824, !210}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !881, file: !35, line: 1980, baseType: !931, size: 64, offset: 576)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!85, !904, !864, !824, !868}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !881, file: !35, line: 1982, baseType: !923, size: 64, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !881, file: !35, line: 1983, baseType: !936, size: 64, offset: 704)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!85, !904, !864, !824, !868, !939}
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !189, line: 21, baseType: !940)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !189, line: 18, baseType: !670)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !881, file: !35, line: 1985, baseType: !942, size: 64, offset: 768)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!85, !904, !864, !824, !864, !824, !7}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !881, file: !35, line: 1987, baseType: !946, size: 64, offset: 832)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!85, !904, !824, !949}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !951)
!951 = !{!952, !953, !954, !964, !973, !974, !980, !981, !982}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !950, file: !35, line: 227, baseType: !7, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !950, file: !35, line: 228, baseType: !868, size: 16, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !35, line: 241, baseType: !955, size: 32, offset: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !35, line: 241, size: 32, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !955, file: !35, line: 242, baseType: !576, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !955, file: !35, line: 243, baseType: !959, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !960, line: 16, baseType: !961)
!960 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !960, line: 14, size: 32, elements: !962)
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !961, file: !960, line: 15, baseType: !581, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !35, line: 245, baseType: !965, size: 32, offset: 96)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !35, line: 245, size: 32, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !965, file: !35, line: 246, baseType: !594, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !965, file: !35, line: 247, baseType: !969, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !960, line: 20, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !960, line: 18, size: 32, elements: !971)
!971 = !{!972}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !970, file: !960, line: 19, baseType: !598, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !950, file: !35, line: 249, baseType: !500, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !950, file: !35, line: 250, baseType: !975, size: 128, offset: 192)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !662, line: 13, size: 128, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !975, file: !662, line: 14, baseType: !661, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !975, file: !662, line: 15, baseType: !979, size: 64, offset: 64)
!979 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !950, file: !35, line: 251, baseType: !975, size: 128, offset: 320)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !950, file: !35, line: 252, baseType: !975, size: 128, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !950, file: !35, line: 259, baseType: !464, size: 64, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !881, file: !35, line: 1988, baseType: !984, size: 64, offset: 896)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!85, !904, !987, !989, !670, !7}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !991, line: 22, size: 1280, elements: !992)
!991 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!992 = !{!993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !990, file: !991, line: 23, baseType: !670, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !990, file: !991, line: 24, baseType: !868, size: 16, offset: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !990, file: !991, line: 25, baseType: !7, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !990, file: !991, line: 26, baseType: !669, size: 32, offset: 96)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !990, file: !991, line: 27, baseType: !613, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !990, file: !991, line: 28, baseType: !613, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !990, file: !991, line: 41, baseType: !613, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !990, file: !991, line: 42, baseType: !939, size: 32, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !990, file: !991, line: 43, baseType: !939, size: 32, offset: 352)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !990, file: !991, line: 44, baseType: !576, size: 32, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !990, file: !991, line: 45, baseType: !594, size: 32, offset: 416)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !990, file: !991, line: 46, baseType: !500, size: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !990, file: !991, line: 47, baseType: !975, size: 128, offset: 512)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !990, file: !991, line: 48, baseType: !975, size: 128, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !990, file: !991, line: 49, baseType: !975, size: 128, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !990, file: !991, line: 50, baseType: !975, size: 128, offset: 896)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !990, file: !991, line: 51, baseType: !613, size: 64, offset: 1024)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !990, file: !991, line: 52, baseType: !613, size: 64, offset: 1088)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !990, file: !991, line: 53, baseType: !670, size: 32, offset: 1152)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !990, file: !991, line: 54, baseType: !670, size: 32, offset: 1184)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !990, file: !991, line: 55, baseType: !613, size: 64, offset: 1216)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !881, file: !35, line: 1990, baseType: !1015, size: 64, offset: 960)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!1018, !824, !713, !1021}
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !189, line: 66, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !502, line: 73, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !502, line: 15, baseType: !979)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 61, baseType: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !502, line: 72, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !502, line: 16, baseType: !190)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !881, file: !35, line: 1991, baseType: !1025, size: 64, offset: 1024)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!85, !864, !1028, !613, !613}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !881, file: !35, line: 1993, baseType: !1031, size: 64, offset: 1088)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!85, !864, !85}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !881, file: !35, line: 1994, baseType: !1035, size: 64, offset: 1152)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!85, !864, !824, !464, !7, !868}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !881, file: !35, line: 1997, baseType: !1039, size: 64, offset: 1216)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!85, !904, !864, !464, !868}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !881, file: !35, line: 1999, baseType: !1043, size: 64, offset: 1280)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!875, !904, !824, !85}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !881, file: !35, line: 2001, baseType: !1047, size: 64, offset: 1344)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!85, !904, !824, !875, !85}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !881, file: !35, line: 2003, baseType: !1051, size: 64, offset: 1408)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!85, !904, !824, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !881, file: !35, line: 2005, baseType: !1057, size: 64, offset: 1472)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!85, !824, !1054}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !881, file: !35, line: 2006, baseType: !1061, size: 64, offset: 1536)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!1064, !864}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !1066)
!1066 = !{!1067, !1074}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1065, file: !35, line: 3193, baseType: !1068, size: 128)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1069, line: 296, size: 128, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1070 = !{!1071, !1072, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1068, file: !1069, line: 297, baseType: !487, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1068, file: !1069, line: 299, baseType: !188, size: 32, offset: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1068, file: !1069, line: 300, baseType: !191, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1065, file: !35, line: 3194, baseType: !670, size: 32, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !865, file: !35, line: 655, baseType: !1076, size: 64, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !2264, !2396, !2436, !2519, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2536, !2540, !2541, !2544, !2547, !2550, !2553, !2554, !2555, !2596, !3788, !3789, !3790, !3791, !3792, !3793, !3796, !3798, !3805, !3806, !3807, !3808, !3867, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1077, file: !35, line: 1191, baseType: !455, size: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1077, file: !35, line: 1192, baseType: !939, size: 32, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1077, file: !35, line: 1193, baseType: !297, size: 8, offset: 160)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1077, file: !35, line: 1194, baseType: !190, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1077, file: !35, line: 1195, baseType: !500, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1077, file: !35, line: 1196, baseType: !1085, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1097, !1101, !1105, !1109, !2252, !2253, !2254, !2256, !2257, !2258, !2260, !2261, !2262, !2263}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1086, file: !35, line: 2367, baseType: !210, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1086, file: !35, line: 2368, baseType: !85, size: 32, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1086, file: !35, line: 2376, baseType: !1091, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!85, !1094}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1096, line: 32, flags: DIFlagFwdDecl)
!1096 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1086, file: !35, line: 2377, baseType: !1098, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1100)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1086, file: !35, line: 2378, baseType: !1102, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!824, !1085, !85, !210, !191}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1086, file: !35, line: 2380, baseType: !1106, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !1076}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1086, file: !35, line: 2381, baseType: !1110, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !1112)
!1112 = !{!1113, !1114, !1115, !1119, !1911, !1937, !1938, !1939, !1940, !1944, !1947, !1948, !1949, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2016, !2020, !2038, !2056, !2057, !2058, !2059, !2068, !2091, !2092, !2095, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2109, !2110, !2210, !2218, !2219, !2220, !2222, !2226, !2227, !2231, !2232, !2233, !2234, !2236, !2237, !2238, !2245, !2246, !2247, !2251}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1111, file: !15, line: 403, baseType: !14, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1111, file: !15, line: 406, baseType: !455, size: 128, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1111, file: !15, line: 409, baseType: !1116, size: 448, offset: 192)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 448, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 56)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1111, file: !15, line: 417, baseType: !1120, size: 768, offset: 640)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !1121)
!1121 = !{!1122, !1894, !1895, !1896, !1899}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1120, file: !15, line: 46, baseType: !1123, size: 512)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1124, line: 64, size: 512, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1125 = !{!1126, !1127, !1128, !1130, !1174, !1774, !1884, !1889, !1890, !1891, !1892, !1893}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1123, file: !1124, line: 65, baseType: !210, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1123, file: !1124, line: 66, baseType: !455, size: 128, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1123, file: !1124, line: 67, baseType: !1129, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1123, file: !1124, line: 68, baseType: !1131, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1124, line: 168, size: 768, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1132, file: !1124, line: 169, baseType: !455, size: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1132, file: !1124, line: 170, baseType: !487, size: 32, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1132, file: !1124, line: 171, baseType: !1123, size: 512, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1132, file: !1124, line: 172, baseType: !1138, size: 64, offset: 704)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1124, line: 133, size: 192, elements: !1141)
!1141 = !{!1142, !1149, !1154}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1140, file: !1124, line: 134, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!85, !1147}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1123)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1140, file: !1124, line: 135, baseType: !1150, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1151)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!210, !1147}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1140, file: !1124, line: 136, baseType: !1155, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!85, !1147, !1159}
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1124, line: 125, size: 20736, elements: !1161)
!1161 = !{!1162, !1164, !1168, !1169, !1173}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1160, file: !1124, line: 126, baseType: !1163, size: 192)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 192, elements: !527)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1160, file: !1124, line: 127, baseType: !1165, size: 4096, offset: 192)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 4096, elements: !1166)
!1166 = !{!1167}
!1167 = !DISubrange(count: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1160, file: !1124, line: 128, baseType: !85, size: 32, offset: 4288)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1160, file: !1124, line: 129, baseType: !1170, size: 16384, offset: 4320)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 16384, elements: !1171)
!1171 = !{!1172}
!1172 = !DISubrange(count: 2048)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1160, file: !1124, line: 130, baseType: !85, size: 32, offset: 20704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1123, file: !1124, line: 69, baseType: !1175, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1124, line: 116, size: 384, elements: !1178)
!1178 = !{!1179, !1183, !1202, !1736, !1764, !1768}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1177, file: !1124, line: 117, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !1129}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1177, file: !1124, line: 118, baseType: !1184, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1187, line: 254, size: 128, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1188 = !{!1189, !1198}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1186, file: !1187, line: 255, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1018, !1129, !1193, !713}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1187, line: 30, size: 128, elements: !1195)
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1194, file: !1187, line: 31, baseType: !210, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1194, file: !1187, line: 32, baseType: !868, size: 16, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1186, file: !1187, line: 256, baseType: !1199, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!1018, !1129, !1193, !210, !1021}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1177, file: !1124, line: 119, baseType: !1203, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1187, line: 84, size: 320, elements: !1207)
!1207 = !{!1208, !1209, !1213, !1732, !1734}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1206, file: !1187, line: 85, baseType: !210, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1206, file: !1187, line: 86, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!868, !1129, !1193, !85}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1206, file: !1187, line: 88, baseType: !1214, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!868, !1129, !1217, !85}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1187, line: 175, size: 512, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1500, !1504, !1505}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1218, file: !1187, line: 176, baseType: !1194, size: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1218, file: !1187, line: 177, baseType: !1021, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1218, file: !1187, line: 178, baseType: !191, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1218, file: !1187, line: 179, baseType: !1224, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!1227}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1243, !1244, !1245, !1492, !1493, !1494, !1497, !1498, !1499}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1228, file: !35, line: 473, baseType: !864, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1228, file: !35, line: 474, baseType: !1068, size: 128, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1228, file: !35, line: 475, baseType: !645, size: 320, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1228, file: !35, line: 476, baseType: !188, size: 32, offset: 512)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1228, file: !35, line: 477, baseType: !434, size: 32, offset: 544)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1228, file: !35, line: 482, baseType: !1236, size: 128, offset: 576)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !638, line: 26, size: 128, elements: !1237)
!1237 = !{!1238, !1242}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1236, file: !638, line: 27, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !638, line: 12, size: 64, elements: !1240)
!1240 = !{!1241}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1239, file: !638, line: 13, baseType: !642, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1236, file: !638, line: 28, baseType: !642, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1228, file: !35, line: 483, baseType: !190, size: 64, offset: 704)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1228, file: !35, line: 484, baseType: !190, size: 64, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1228, file: !35, line: 485, baseType: !1246, size: 64, offset: 832)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1248)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !1249)
!1249 = !{!1250, !1317, !1387, !1391, !1395, !1401, !1407, !1411, !1416, !1420, !1424, !1428, !1456, !1460, !1464, !1468, !1473, !1477, !1484, !1488}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1248, file: !35, line: 405, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!85, !1254, !1315}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1256, line: 74, size: 512, align: 128, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1257 = !{!1258, !1259, !1309, !1314}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1255, file: !1256, line: 75, baseType: !190, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !1256, line: 83, baseType: !1260, size: 320, offset: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !1256, line: 83, size: 320, elements: !1261)
!1261 = !{!1262, !1283, !1297, !1301, !1308}
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1256, line: 84, baseType: !1263, size: 320)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !1256, line: 84, size: 320, elements: !1264)
!1264 = !{!1265, !1276, !1277, !1282}
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !1256, line: 90, baseType: !1266, size: 128)
!1266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !1256, line: 90, size: 128, elements: !1267)
!1267 = !{!1268, !1269, !1274, !1275}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1266, file: !1256, line: 91, baseType: !455, size: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !1256, line: 94, baseType: !1270, size: 128)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1266, file: !1256, line: 94, size: 128, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1270, file: !1256, line: 96, baseType: !191, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1270, file: !1256, line: 98, baseType: !7, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1266, file: !1256, line: 102, baseType: !455, size: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1266, file: !1256, line: 103, baseType: !455, size: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1263, file: !1256, line: 106, baseType: !1227, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !1256, line: 107, baseType: !1278, size: 64, offset: 192)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !1256, line: 107, size: 64, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1278, file: !1256, line: 108, baseType: !190, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1278, file: !1256, line: 109, baseType: !190, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1263, file: !1256, line: 117, baseType: !190, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1256, line: 119, baseType: !1284, size: 320)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !1256, line: 119, size: 320, elements: !1285)
!1285 = !{!1286, !1287, !1290, !1291, !1292}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1284, file: !1256, line: 124, baseType: !190, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1284, file: !1256, line: 125, baseType: !1288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1256, line: 125, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1284, file: !1256, line: 126, baseType: !190, size: 64, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1284, file: !1256, line: 127, baseType: !190, size: 64, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1256, line: 128, baseType: !1293, size: 64, offset: 256)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1284, file: !1256, line: 128, size: 64, elements: !1294)
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1293, file: !1256, line: 133, baseType: !190, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1293, file: !1256, line: 138, baseType: !411, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1256, line: 141, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !1256, line: 141, size: 64, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1298, file: !1256, line: 142, baseType: !190, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1256, line: 144, baseType: !1302, size: 128)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !1256, line: 144, size: 128, elements: !1303)
!1303 = !{!1304, !1307}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1302, file: !1256, line: 146, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1256, line: 146, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1302, file: !1256, line: 147, baseType: !191, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1260, file: !1256, line: 161, baseType: !477, size: 128, align: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !1256, line: 164, baseType: !1310, size: 32, offset: 384)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !1256, line: 164, size: 32, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1310, file: !1256, line: 169, baseType: !434, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1310, file: !1256, line: 177, baseType: !7, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1255, file: !1256, line: 181, baseType: !434, size: 32, offset: 416)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1248, file: !35, line: 406, baseType: !1318, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!85, !464, !1321}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1256, line: 293, size: 1536, elements: !1323)
!1323 = !{!1324, !1354, !1368}
!1324 = !DIDerivedType(tag: DW_TAG_member, scope: !1322, file: !1256, line: 295, baseType: !1325, size: 512)
!1325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1322, file: !1256, line: 295, size: 512, elements: !1326)
!1326 = !{!1327, !1353}
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !1256, line: 296, baseType: !1328, size: 448)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1325, file: !1256, line: 296, size: 448, elements: !1329)
!1329 = !{!1330, !1331, !1340, !1341, !1342, !1351, !1352}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1328, file: !1256, line: 298, baseType: !190, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !1256, line: 299, baseType: !1332, size: 128, offset: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !1256, line: 299, size: 128, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1332, file: !1256, line: 300, baseType: !455, size: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !1256, line: 302, baseType: !1336, size: 128)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1256, line: 302, size: 128, elements: !1337)
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1336, file: !1256, line: 303, baseType: !191, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1336, file: !1256, line: 305, baseType: !7, size: 32, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1328, file: !1256, line: 310, baseType: !1227, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1328, file: !1256, line: 311, baseType: !190, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !1256, line: 312, baseType: !1343, size: 64, offset: 320)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !1256, line: 312, size: 64, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1343, file: !1256, line: 313, baseType: !191, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1343, file: !1256, line: 314, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1256, line: 257, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1256, line: 255, size: 64, elements: !1349)
!1349 = !{!1350}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1348, file: !1256, line: 256, baseType: !190, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1328, file: !1256, line: 316, baseType: !434, size: 32, offset: 384)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1328, file: !1256, line: 317, baseType: !434, size: 32, offset: 416)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1325, file: !1256, line: 323, baseType: !1255, size: 512, align: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, scope: !1322, file: !1256, line: 325, baseType: !1355, size: 512, offset: 512)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1322, file: !1256, line: 325, size: 512, elements: !1356)
!1356 = !{!1357, !1367}
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1355, file: !1256, line: 326, baseType: !1358, size: 320)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1355, file: !1256, line: 326, size: 320, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1358, file: !1256, line: 327, baseType: !190, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1358, file: !1256, line: 328, baseType: !190, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1358, file: !1256, line: 329, baseType: !190, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1358, file: !1256, line: 331, baseType: !434, size: 32, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1358, file: !1256, line: 332, baseType: !434, size: 32, offset: 224)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1358, file: !1256, line: 333, baseType: !434, size: 32, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1358, file: !1256, line: 335, baseType: !7, size: 32, offset: 288)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1355, file: !1256, line: 339, baseType: !1255, size: 512, align: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1322, file: !1256, line: 341, baseType: !1369, size: 512, offset: 1024)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1322, file: !1256, line: 341, size: 512, elements: !1370)
!1370 = !{!1371, !1380, !1386}
!1371 = !DIDerivedType(tag: DW_TAG_member, scope: !1369, file: !1256, line: 342, baseType: !1372, size: 384)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1369, file: !1256, line: 342, size: 384, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1372, file: !1256, line: 343, baseType: !190, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1372, file: !1256, line: 344, baseType: !190, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1372, file: !1256, line: 346, baseType: !191, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1372, file: !1256, line: 347, baseType: !191, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1372, file: !1256, line: 348, baseType: !191, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1372, file: !1256, line: 349, baseType: !191, size: 64, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1369, file: !1256, line: 352, baseType: !1381, size: 256)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1369, file: !1256, line: 352, size: 256, elements: !1382)
!1382 = !{!1383, !1384, !1385}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1381, file: !1256, line: 353, baseType: !190, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1381, file: !1256, line: 354, baseType: !190, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1381, file: !1256, line: 356, baseType: !455, size: 128, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1369, file: !1256, line: 359, baseType: !1255, size: 512, align: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1248, file: !35, line: 409, baseType: !1388, size: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!85, !1227, !1315}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1248, file: !35, line: 412, baseType: !1392, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!206, !1227, !1321}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1248, file: !35, line: 414, baseType: !1396, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !1399}
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1248, file: !35, line: 416, baseType: !1402, size: 64, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!85, !464, !1227, !500, !7, !1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1248, file: !35, line: 419, baseType: !1408, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!85, !464, !1227, !500, !7, !7, !1254, !191}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1248, file: !35, line: 424, baseType: !1412, size: 64, offset: 448)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!1415, !1227, !1415}
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !189, line: 131, baseType: !613)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1248, file: !35, line: 425, baseType: !1417, size: 64, offset: 512)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !1321, !1021, !1021}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1248, file: !35, line: 426, baseType: !1421, size: 64, offset: 576)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!206, !1321, !188}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1248, file: !35, line: 427, baseType: !1425, size: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !1321}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1248, file: !35, line: 428, baseType: !1429, size: 64, offset: 704)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1018, !1432, !1454}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1441, !1442, !1443, !1444}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1433, file: !35, line: 374, baseType: !464, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1433, file: !35, line: 375, baseType: !500, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1433, file: !35, line: 376, baseType: !1438, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1432, !979}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1433, file: !35, line: 377, baseType: !191, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1433, file: !35, line: 378, baseType: !85, size: 32, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1433, file: !35, line: 379, baseType: !397, size: 16, offset: 288)
!1444 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !35, line: 380, baseType: !1445, size: 64, offset: 320)
!1445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !35, line: 380, size: 64, elements: !1446)
!1446 = !{!1447, !1450}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1445, file: !35, line: 386, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1445, file: !35, line: 395, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1018, !191}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1248, file: !35, line: 433, baseType: !1457, size: 64, offset: 768)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!85, !1227, !1321, !1321, !21}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1248, file: !35, line: 435, baseType: !1461, size: 64, offset: 832)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!85, !1321}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1248, file: !35, line: 436, baseType: !1465, size: 64, offset: 896)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!206, !1321, !1021, !1021}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1248, file: !35, line: 438, baseType: !1469, size: 64, offset: 960)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !1321, !1472, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1248, file: !35, line: 439, baseType: !1474, size: 64, offset: 1024)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!85, !1227, !1254}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1248, file: !35, line: 442, baseType: !1478, size: 64, offset: 1088)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!85, !1481, !464, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1248, file: !35, line: 444, baseType: !1485, size: 64, offset: 1152)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !464}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1248, file: !35, line: 445, baseType: !1489, size: 64, offset: 1216)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!85, !1432, !1454}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1228, file: !35, line: 486, baseType: !190, size: 64, offset: 896)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1228, file: !35, line: 487, baseType: !645, size: 320, offset: 960)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1228, file: !35, line: 488, baseType: !1495, size: 32, offset: 1280)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1496, line: 8, baseType: !670)
!1496 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1228, file: !35, line: 489, baseType: !487, size: 32, offset: 1312)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1228, file: !35, line: 490, baseType: !455, size: 128, offset: 1344)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1228, file: !35, line: 491, baseType: !191, size: 64, offset: 1472)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1218, file: !1187, line: 180, baseType: !1501, size: 64, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1018, !464, !1129, !1217, !713, !500, !1021}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1218, file: !1187, line: 182, baseType: !1501, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1218, file: !1187, line: 184, baseType: !1506, size: 64, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!85, !464, !1129, !1217, !1509}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1256, line: 625, size: 1344, elements: !1511)
!1511 = !{!1512, !1521, !1689, !1695, !1702, !1703, !1708, !1709, !1714, !1715, !1718, !1722, !1723, !1724, !1725, !1726, !1730}
!1512 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !1256, line: 628, baseType: !1513, size: 128)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1510, file: !1256, line: 628, size: 128, elements: !1514)
!1514 = !{!1515, !1520}
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1513, file: !1256, line: 629, baseType: !1516, size: 128)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1513, file: !1256, line: 629, size: 128, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1516, file: !1256, line: 631, baseType: !190, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1516, file: !1256, line: 632, baseType: !190, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1513, file: !1256, line: 635, baseType: !477, size: 128, align: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1510, file: !1256, line: 639, baseType: !1522, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1256, line: 733, size: 10240, elements: !1524)
!1524 = !{!1525, !1687}
!1525 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !1256, line: 734, baseType: !1526, size: 10240)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1523, file: !1256, line: 734, size: 10240, elements: !1527)
!1527 = !{!1528, !1532, !1546, !1550, !1551, !1552, !1553, !1554, !1555, !1564, !1565, !1566, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1605, !1607, !1610, !1656, !1657, !1658, !1661, !1662, !1663, !1666, !1667, !1668, !1674, !1675}
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !1256, line: 739, baseType: !1529, size: 512, align: 512)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1526, file: !1256, line: 739, size: 512, align: 512, elements: !1530)
!1530 = !{!1531}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1529, file: !1256, line: 747, baseType: !434, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1526, file: !1256, line: 750, baseType: !1533, size: 128, offset: 512)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1534, line: 218, size: 128, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1535 = !{!1536, !1544, !1545}
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !1534, line: 219, baseType: !1537, size: 32)
!1537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1533, file: !1534, line: 219, size: 32, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1537, file: !1534, line: 220, baseType: !487, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1537, file: !1534, line: 221, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1534, line: 197, baseType: !1542)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1534, line: 197, elements: !1543)
!1543 = !{}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1533, file: !1534, line: 223, baseType: !7, size: 32, offset: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1533, file: !1534, line: 224, baseType: !191, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1526, file: !1256, line: 752, baseType: !1547, size: 64, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!190, !464, !190, !190, !190, !190}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1526, file: !1256, line: 756, baseType: !190, size: 64, offset: 704)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1526, file: !1256, line: 757, baseType: !190, size: 64, offset: 768)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1526, file: !1256, line: 760, baseType: !190, size: 64, offset: 832)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1526, file: !1256, line: 761, baseType: !190, size: 64, offset: 896)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1526, file: !1256, line: 763, baseType: !190, size: 64, offset: 960)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1526, file: !1256, line: 764, baseType: !1556, size: 64, offset: 1024)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1558, line: 299, baseType: !1559)
!1558 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1558, line: 299, size: 64, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1559, file: !1558, line: 299, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1563, line: 18, baseType: !190)
!1563 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1526, file: !1256, line: 773, baseType: !434, size: 32, offset: 1088)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1526, file: !1256, line: 785, baseType: !434, size: 32, offset: 1120)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1526, file: !1256, line: 795, baseType: !1567, size: 64, offset: 1152)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1256, line: 726, size: 128, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1568, file: !1256, line: 727, baseType: !613, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1568, file: !1256, line: 728, baseType: !85, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1526, file: !1256, line: 801, baseType: !190, size: 64, offset: 1216)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1526, file: !1256, line: 804, baseType: !411, size: 64, offset: 1280)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1526, file: !1256, line: 806, baseType: !85, size: 32, offset: 1344)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1526, file: !1256, line: 808, baseType: !487, size: 32, offset: 1376)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1526, file: !1256, line: 823, baseType: !645, size: 320, offset: 1408)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1526, file: !1256, line: 825, baseType: !455, size: 128, offset: 1728)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1526, file: !1256, line: 845, baseType: !85, size: 32, offset: 1856)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1526, file: !1256, line: 849, baseType: !190, size: 64, offset: 1920)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1526, file: !1256, line: 850, baseType: !190, size: 64, offset: 1984)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1526, file: !1256, line: 852, baseType: !190, size: 64, offset: 2048)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1526, file: !1256, line: 853, baseType: !190, size: 64, offset: 2112)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1526, file: !1256, line: 854, baseType: !413, size: 64, offset: 2176)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1526, file: !1256, line: 855, baseType: !190, size: 64, offset: 2240)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1526, file: !1256, line: 856, baseType: !190, size: 64, offset: 2304)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1526, file: !1256, line: 857, baseType: !190, size: 64, offset: 2368)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1526, file: !1256, line: 858, baseType: !190, size: 64, offset: 2432)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1526, file: !1256, line: 865, baseType: !835, size: 32, offset: 2496)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1526, file: !1256, line: 867, baseType: !487, size: 32, offset: 2528)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1526, file: !1256, line: 869, baseType: !190, size: 64, offset: 2560)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1526, file: !1256, line: 869, baseType: !190, size: 64, offset: 2624)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1526, file: !1256, line: 869, baseType: !190, size: 64, offset: 2688)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1526, file: !1256, line: 869, baseType: !190, size: 64, offset: 2752)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1526, file: !1256, line: 870, baseType: !190, size: 64, offset: 2816)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1526, file: !1256, line: 870, baseType: !190, size: 64, offset: 2880)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1526, file: !1256, line: 870, baseType: !190, size: 64, offset: 2944)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1526, file: !1256, line: 871, baseType: !190, size: 64, offset: 3008)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1526, file: !1256, line: 871, baseType: !190, size: 64, offset: 3072)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1526, file: !1256, line: 871, baseType: !190, size: 64, offset: 3136)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1526, file: !1256, line: 871, baseType: !190, size: 64, offset: 3200)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1526, file: !1256, line: 873, baseType: !1602, size: 3328, offset: 3264)
!1602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 3328, elements: !1603)
!1603 = !{!1604}
!1604 = !DISubrange(count: 52)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1526, file: !1256, line: 875, baseType: !1606, size: 1280, offset: 6592)
!1606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 1280, elements: !553)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1526, file: !1256, line: 877, baseType: !1608, size: 64, offset: 7872)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1256, line: 877, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1526, file: !1256, line: 880, baseType: !1611, size: 1088, offset: 7936)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1612, line: 72, baseType: !1613)
!1612 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1612, line: 23, size: 1088, elements: !1614)
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1622, !1623, !1624, !1625, !1652, !1653, !1654}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1613, file: !1612, line: 28, baseType: !613, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1613, file: !1612, line: 38, baseType: !413, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1613, file: !1612, line: 40, baseType: !190, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1613, file: !1612, line: 43, baseType: !645, size: 320, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1613, file: !1612, line: 44, baseType: !1620, size: 64, offset: 512)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1612, line: 44, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1613, file: !1612, line: 48, baseType: !190, size: 64, offset: 576)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1613, file: !1612, line: 59, baseType: !407, size: 256, offset: 640)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1613, file: !1612, line: 60, baseType: !191, size: 64, offset: 896)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1613, file: !1612, line: 61, baseType: !1626, size: 64, offset: 960)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1629, line: 13, size: 1216, elements: !1630)
!1629 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1628, file: !1629, line: 14, baseType: !191, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1628, file: !1629, line: 15, baseType: !190, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1628, file: !1629, line: 17, baseType: !190, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1628, file: !1629, line: 17, baseType: !190, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1628, file: !1629, line: 18, baseType: !190, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1628, file: !1629, line: 18, baseType: !190, size: 64, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1628, file: !1629, line: 19, baseType: !1638, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1628, file: !1629, line: 21, baseType: !979, size: 64, offset: 448)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1628, file: !1629, line: 23, baseType: !979, size: 64, offset: 512)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1628, file: !1629, line: 24, baseType: !979, size: 64, offset: 576)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1628, file: !1629, line: 25, baseType: !979, size: 64, offset: 640)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1628, file: !1629, line: 26, baseType: !979, size: 64, offset: 704)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1628, file: !1629, line: 27, baseType: !979, size: 64, offset: 768)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1628, file: !1629, line: 28, baseType: !979, size: 64, offset: 832)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1628, file: !1629, line: 29, baseType: !979, size: 64, offset: 896)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1628, file: !1629, line: 30, baseType: !979, size: 64, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1628, file: !1629, line: 31, baseType: !979, size: 64, offset: 1024)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1628, file: !1629, line: 32, baseType: !979, size: 64, offset: 1088)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1628, file: !1629, line: 33, baseType: !979, size: 64, offset: 1152)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1613, file: !1612, line: 63, baseType: !434, size: 32, offset: 1024)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1613, file: !1612, line: 69, baseType: !397, size: 16, offset: 1056)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1613, file: !1612, line: 70, baseType: !1655, size: 16, offset: 1072)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !398, line: 18, baseType: !325)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1526, file: !1256, line: 882, baseType: !190, size: 64, offset: 9024)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1526, file: !1256, line: 885, baseType: !487, size: 32, offset: 9088)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1526, file: !1256, line: 886, baseType: !1659, size: 64, offset: 9152)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1256, line: 732, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1526, file: !1256, line: 901, baseType: !786, size: 64, offset: 9216)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1526, file: !1256, line: 904, baseType: !464, size: 64, offset: 9280)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1526, file: !1256, line: 906, baseType: !1664, size: 64, offset: 9344)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1256, line: 906, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1526, file: !1256, line: 930, baseType: !434, size: 32, offset: 9408)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1526, file: !1256, line: 933, baseType: !434, size: 32, offset: 9440)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1526, file: !1256, line: 935, baseType: !1669, size: 64, offset: 9472)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1670)
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1669, file: !57, line: 104, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1526, file: !1256, line: 940, baseType: !411, size: 64, offset: 9536)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1526, file: !1256, line: 942, baseType: !1676, size: 256, offset: 9600)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1677, line: 98, size: 256, elements: !1678)
!1677 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1678 = !{!1679, !1680, !1681}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1676, file: !1677, line: 99, baseType: !411, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1676, file: !1677, line: 100, baseType: !455, size: 128, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1676, file: !1677, line: 101, baseType: !1682, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1677, line: 21, baseType: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !1686}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1523, file: !1256, line: 986, baseType: !1688, offset: 10240)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, elements: !572)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1510, file: !1256, line: 640, baseType: !1690, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1558, line: 297, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1558, line: 297, size: 64, elements: !1692)
!1692 = !{!1693}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1691, file: !1558, line: 297, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1563, line: 19, baseType: !190)
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !1256, line: 646, baseType: !1696, size: 64, offset: 256)
!1696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1510, file: !1256, line: 646, size: 64, elements: !1697)
!1697 = !{!1698, !1701}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1696, file: !1256, line: 647, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1700)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1256, line: 542, baseType: !190)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1696, file: !1256, line: 648, baseType: !1700, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1510, file: !1256, line: 666, baseType: !85, size: 32, offset: 320)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1510, file: !1256, line: 667, baseType: !1704, size: 64, offset: 384)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1256, line: 579, size: 320, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1705, file: !1256, line: 580, baseType: !645, size: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1510, file: !1256, line: 670, baseType: !206, size: 8, offset: 448)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1510, file: !1256, line: 681, baseType: !1710, size: 256, offset: 512)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1510, file: !1256, line: 678, size: 256, elements: !1711)
!1711 = !{!1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1710, file: !1256, line: 679, baseType: !637, size: 192, align: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1710, file: !1256, line: 680, baseType: !190, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1510, file: !1256, line: 689, baseType: !455, size: 128, offset: 768)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1510, file: !1256, line: 691, baseType: !1716, size: 64, offset: 896)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1256, line: 691, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1510, file: !1256, line: 694, baseType: !1719, size: 64, offset: 960)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1721)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1256, line: 694, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1510, file: !1256, line: 697, baseType: !190, size: 64, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1510, file: !1256, line: 699, baseType: !464, size: 64, offset: 1088)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1510, file: !1256, line: 700, baseType: !191, size: 64, offset: 1152)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1510, file: !1256, line: 711, baseType: !411, size: 64, offset: 1216)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1510, file: !1256, line: 717, baseType: !1727, size: 64, offset: 1280)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1729, line: 54, flags: DIFlagFwdDecl)
!1729 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1510, file: !1256, line: 722, baseType: !1731, offset: 1344)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1256, line: 570, elements: !1543)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1206, file: !1187, line: 90, baseType: !1733, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1206, file: !1187, line: 91, baseType: !1735, size: 64, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1177, file: !1124, line: 120, baseType: !1737, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!1740, !1147}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !1743)
!1743 = !{!1744, !1745, !1749, !1753, !1759, !1763}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1742, file: !29, line: 40, baseType: !28, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1742, file: !29, line: 41, baseType: !1746, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!206}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1742, file: !29, line: 42, baseType: !1750, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!191}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1742, file: !29, line: 43, baseType: !1754, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!1638, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1742, file: !29, line: 44, baseType: !1760, size: 64, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!1638}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1742, file: !29, line: 45, baseType: !896, size: 64, offset: 320)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1177, file: !1124, line: 121, baseType: !1765, size: 64, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!1638, !1147}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1177, file: !1124, line: 122, baseType: !1769, size: 64, offset: 320)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !1147, !1772, !1773}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1123, file: !1124, line: 70, baseType: !1775, size: 64, offset: 384)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1096, line: 190, size: 1152, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1876, !1877, !1878, !1879, !1880, !1883}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1776, file: !1096, line: 191, baseType: !434, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1776, file: !1096, line: 192, baseType: !434, size: 32, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1776, file: !1096, line: 202, baseType: !1775, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1776, file: !1096, line: 203, baseType: !210, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1776, file: !1096, line: 205, baseType: !637, size: 192, align: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1776, file: !1096, line: 207, baseType: !1638, size: 64, offset: 384)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1776, file: !1096, line: 208, baseType: !7, size: 32, offset: 448)
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !1096, line: 209, baseType: !1786, size: 256, offset: 512)
!1786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !1096, line: 209, size: 256, elements: !1787)
!1787 = !{!1788, !1797, !1801}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1786, file: !1096, line: 210, baseType: !1789, size: 256)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1096, line: 153, size: 256, elements: !1790)
!1790 = !{!1791, !1792, !1793, !1796}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1789, file: !1096, line: 154, baseType: !190, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1789, file: !1096, line: 156, baseType: !1239, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1789, file: !1096, line: 162, baseType: !1794, size: 64, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1096, line: 162, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1789, file: !1096, line: 167, baseType: !190, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1786, file: !1096, line: 211, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1096, line: 170, size: 64, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1798, file: !1096, line: 171, baseType: !1775, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1786, file: !1096, line: 212, baseType: !1802, size: 256)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1096, line: 174, size: 256, elements: !1803)
!1803 = !{!1804, !1871, !1874, !1875}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1802, file: !1096, line: 175, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1096, line: 271, size: 768, elements: !1808)
!1808 = !{!1809, !1831, !1835, !1839, !1844, !1848, !1852, !1856, !1857, !1858, !1859, !1867}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1807, file: !1096, line: 276, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!85, !1813}
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1096, line: 251, size: 1216, elements: !1815)
!1815 = !{!1816, !1817, !1818, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1814, file: !1096, line: 253, baseType: !1775, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1814, file: !1096, line: 254, baseType: !464, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1814, file: !1096, line: 255, baseType: !1819, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1729, line: 66, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1814, file: !1096, line: 256, baseType: !191, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1814, file: !1096, line: 259, baseType: !407, size: 256, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1814, file: !1096, line: 260, baseType: !407, size: 256, offset: 512)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1814, file: !1096, line: 261, baseType: !85, size: 32, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1814, file: !1096, line: 262, baseType: !455, size: 128, offset: 832)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1814, file: !1096, line: 263, baseType: !713, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1814, file: !1096, line: 265, baseType: !1021, size: 64, offset: 1024)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1814, file: !1096, line: 266, baseType: !206, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1814, file: !1096, line: 267, baseType: !206, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1814, file: !1096, line: 268, baseType: !1719, size: 64, offset: 1152)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1807, file: !1096, line: 277, baseType: !1832, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1813}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1807, file: !1096, line: 290, baseType: !1836, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!85, !1819, !191}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1807, file: !1096, line: 292, baseType: !1840, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!191, !1819, !1843}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1807, file: !1096, line: 293, baseType: !1845, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!191, !1819, !191, !1843}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1807, file: !1096, line: 294, baseType: !1849, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !1819, !191}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1807, file: !1096, line: 296, baseType: !1853, size: 64, offset: 384)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!1018, !1813, !713, !1021, !500}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1807, file: !1096, line: 306, baseType: !1021, size: 64, offset: 448)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1807, file: !1096, line: 313, baseType: !206, size: 8, offset: 512)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1807, file: !1096, line: 314, baseType: !1853, size: 64, offset: 576)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1807, file: !1096, line: 317, baseType: !1860, size: 64, offset: 640)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1863, !1813, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1864, line: 59, baseType: !7)
!1864 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1096, line: 31, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1807, file: !1096, line: 320, baseType: !1868, size: 64, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!85, !1813, !1509}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1802, file: !1096, line: 176, baseType: !1872, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1096, line: 35, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1802, file: !1096, line: 177, baseType: !500, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1802, file: !1096, line: 178, baseType: !1775, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1776, file: !1096, line: 215, baseType: !191, size: 64, offset: 768)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1776, file: !1096, line: 221, baseType: !613, size: 64, offset: 832)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1776, file: !1096, line: 223, baseType: !260, size: 16, offset: 896)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1776, file: !1096, line: 224, baseType: !868, size: 16, offset: 912)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1776, file: !1096, line: 225, baseType: !1881, size: 64, offset: 960)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1096, line: 36, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1776, file: !1096, line: 227, baseType: !477, size: 128, align: 64, offset: 1024)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1123, file: !1124, line: 71, baseType: !1885, size: 32, offset: 448)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1886, line: 19, size: 32, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1887 = !{!1888}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1885, file: !1886, line: 20, baseType: !535, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1123, file: !1124, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1123, file: !1124, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1123, file: !1124, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1123, file: !1124, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1123, file: !1124, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1120, file: !15, line: 47, baseType: !1110, size: 64, offset: 512)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1120, file: !15, line: 48, baseType: !1129, size: 64, offset: 576)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1120, file: !15, line: 49, baseType: !1897, size: 64, offset: 640)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1120, file: !15, line: 50, baseType: !1900, size: 64, offset: 704)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1902, line: 26, size: 256, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1903 = !{!1904, !1905}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1901, file: !1902, line: 27, baseType: !7, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1901, file: !1902, line: 28, baseType: !1906, size: 192, offset: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1907, line: 43, size: 192, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1906, file: !1907, line: 44, baseType: !421, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1906, file: !1907, line: 45, baseType: !455, size: 128, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1111, file: !15, line: 418, baseType: !1912, size: 64, offset: 1408)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1914)
!1914 = !{!1915, !1916, !1921, !1925, !1929, !1933}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1913, file: !15, line: 54, baseType: !1194, size: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1913, file: !15, line: 55, baseType: !1917, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!1018, !1912, !1920, !713}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1913, file: !15, line: 57, baseType: !1922, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!1018, !1912, !1920, !210, !1021}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1913, file: !15, line: 59, baseType: !1926, size: 64, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{null, !1110, !210}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1913, file: !15, line: 60, baseType: !1930, size: 64, offset: 320)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!85, !1110}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1913, file: !15, line: 61, baseType: !1934, size: 64, offset: 384)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !1110}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1111, file: !15, line: 419, baseType: !210, size: 64, offset: 1472)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1111, file: !15, line: 420, baseType: !210, size: 64, offset: 1536)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1111, file: !15, line: 421, baseType: !1129, size: 64, offset: 1600)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1111, file: !15, line: 424, baseType: !1941, size: 64, offset: 1664)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1943)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1111, file: !15, line: 425, baseType: !1945, size: 64, offset: 1728)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1111, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1111, file: !15, line: 435, baseType: !407, size: 256, offset: 1856)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1111, file: !15, line: 437, baseType: !1950, size: 64, offset: 2112)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1952, line: 69, size: 320, elements: !1953)
!1952 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1953 = !{!1954, !1955, !1956, !1973, !1975, !1979, !1980}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1951, file: !1952, line: 70, baseType: !210, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1951, file: !1952, line: 71, baseType: !1110, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1951, file: !1952, line: 72, baseType: !1957, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1959)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1952, line: 47, size: 256, elements: !1960)
!1960 = !{!1961, !1962, !1968, !1972}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1959, file: !1952, line: 49, baseType: !7, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1959, file: !1952, line: 51, baseType: !1963, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!85, !210, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1951)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1959, file: !1952, line: 53, baseType: !1969, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!85, !713, !1966}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1959, file: !1952, line: 55, baseType: !896, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1951, file: !1952, line: 73, baseType: !1974, size: 16, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1951, file: !1952, line: 74, baseType: !1976, size: 8, offset: 208)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !398, line: 16, baseType: !1977)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !259, line: 20, baseType: !1978)
!1978 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1951, file: !1952, line: 75, baseType: !442, size: 8, offset: 216)
!1980 = !DIDerivedType(tag: DW_TAG_member, scope: !1951, file: !1952, line: 76, baseType: !1981, size: 64, offset: 256)
!1981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1951, file: !1952, line: 76, size: 64, elements: !1982)
!1982 = !{!1983, !1984, !1991}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1981, file: !1952, line: 77, baseType: !191, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1981, file: !1952, line: 78, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1987)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1952, line: 86, size: 128, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1987, file: !1952, line: 87, baseType: !7, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1987, file: !1952, line: 88, baseType: !713, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1981, file: !1952, line: 79, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1994)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1952, line: 92, size: 256, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1994, file: !1952, line: 94, baseType: !7, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1994, file: !1952, line: 95, baseType: !7, size: 32, offset: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1994, file: !1952, line: 96, baseType: !306, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1994, file: !1952, line: 97, baseType: !1957, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1994, file: !1952, line: 98, baseType: !191, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1111, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1111, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1111, file: !15, line: 442, baseType: !1941, size: 64, offset: 2240)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1111, file: !15, line: 443, baseType: !1945, size: 64, offset: 2304)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1111, file: !15, line: 444, baseType: !206, size: 8, offset: 2368)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1111, file: !15, line: 451, baseType: !206, size: 8, offset: 2376)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1111, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1111, file: !15, line: 455, baseType: !2009, size: 64, offset: 2432)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2011, line: 23, size: 96, elements: !2012)
!2011 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2012 = !{!2013, !2014, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2010, file: !2011, line: 24, baseType: !85, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2010, file: !2011, line: 24, baseType: !85, size: 32, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2010, file: !2011, line: 24, baseType: !85, size: 32, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1111, file: !15, line: 458, baseType: !2017, size: 64, offset: 2496)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!85}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1111, file: !15, line: 460, baseType: !2021, size: 4032, align: 512, offset: 2560)
!2021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2022, size: 4032, elements: !2036)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !2023)
!2023 = !{!2024, !2025, !2026}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2022, file: !15, line: 363, baseType: !191, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2022, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2022, file: !15, line: 367, baseType: !2027, size: 448, offset: 128)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2027, file: !15, line: 320, baseType: !1110, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2027, file: !15, line: 321, baseType: !2031, size: 384, offset: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2032, line: 40, size: 384, elements: !2033)
!2032 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2033 = !{!2034}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2031, file: !2032, line: 41, baseType: !2035, size: 384, align: 64)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 384, align: 64, elements: !280)
!2036 = !{!2037}
!2037 = !DISubrange(count: 7)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1111, file: !15, line: 463, baseType: !2039, size: 192, offset: 6592)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2040, line: 8, size: 192, elements: !2041)
!2040 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2041 = !{!2042, !2043, !2045}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2039, file: !2040, line: 10, baseType: !7, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2039, file: !2040, line: 11, baseType: !2044, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2039, file: !2040, line: 12, baseType: !2046, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2048, line: 59, size: 48, elements: !2049)
!2048 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2047, file: !2048, line: 60, baseType: !1655, size: 16)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2047, file: !2048, line: 61, baseType: !1655, size: 16, offset: 16)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2047, file: !2048, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2047, file: !2048, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2047, file: !2048, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2047, file: !2048, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1111, file: !15, line: 465, baseType: !190, size: 64, offset: 6784)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1111, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1111, file: !15, line: 470, baseType: !455, size: 128, offset: 6912)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1111, file: !15, line: 471, baseType: !2060, size: 64, offset: 7040)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2062, line: 33, size: 96, elements: !2063)
!2062 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2063 = !{!2064, !2065, !2066, !2067}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2061, file: !2062, line: 37, baseType: !85, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2061, file: !2062, line: 43, baseType: !85, size: 32, offset: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2061, file: !2062, line: 45, baseType: !260, size: 16, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2061, file: !2062, line: 47, baseType: !260, size: 16, offset: 80)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1111, file: !15, line: 476, baseType: !2069, size: 64, offset: 7104)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !2071)
!2071 = !{!2072, !2088, !2089, !2090}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2070, file: !15, line: 379, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2075, line: 204, baseType: !2076)
!2075 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2075, line: 197, size: 192, elements: !2077)
!2077 = !{!2078, !2080, !2081, !2082, !2084, !2086}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2076, file: !2075, line: 198, baseType: !2079, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2075, line: 21, baseType: !301)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2076, file: !2075, line: 199, baseType: !297, size: 8, offset: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2076, file: !2075, line: 200, baseType: !297, size: 8, offset: 40)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2076, file: !2075, line: 201, baseType: !2083, size: 16, offset: 48)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2075, line: 17, baseType: !258)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2076, file: !2075, line: 202, baseType: !2085, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2075, line: 16, baseType: !614)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2076, file: !2075, line: 203, baseType: !2087, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2075, line: 22, baseType: !614)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2070, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2070, file: !15, line: 381, baseType: !713, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2070, file: !15, line: 382, baseType: !713, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1111, file: !15, line: 477, baseType: !2070, size: 256, offset: 7168)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1111, file: !15, line: 480, baseType: !2093, size: 64, offset: 7424)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1111, file: !15, line: 483, baseType: !2096, size: 64, offset: 7488)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1111, file: !15, line: 488, baseType: !713, size: 64, offset: 7552)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1111, file: !15, line: 492, baseType: !191, size: 64, offset: 7616)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1111, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1111, file: !15, line: 495, baseType: !191, size: 64, offset: 7744)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1111, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1111, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1111, file: !15, line: 500, baseType: !2105, size: 64, offset: 7872)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2107, line: 45, baseType: !2108)
!2107 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1111, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1111, file: !15, line: 504, baseType: !2111, size: 64, offset: 8000)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2114, line: 96, size: 192, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2115 = !{!2116, !2117, !2171, !2174}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2113, file: !2114, line: 97, baseType: !7, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2113, file: !2114, line: 98, baseType: !2118, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2114, line: 24, size: 3072, elements: !2120)
!2120 = !{!2121, !2123, !2124, !2125, !2126, !2140, !2141, !2142, !2143, !2155, !2156, !2157, !2168, !2169, !2170}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2119, file: !2114, line: 26, baseType: !2122, size: 128)
!2122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 128, elements: !280)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2119, file: !2114, line: 27, baseType: !2122, size: 128, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2119, file: !2114, line: 28, baseType: !85, size: 32, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2119, file: !2114, line: 31, baseType: !487, size: 32, align: 512, offset: 512)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2119, file: !2114, line: 32, baseType: !2127, size: 960, offset: 576)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2128, line: 206, size: 960, elements: !2129)
!2128 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2129 = !{!2130, !2131, !2134, !2136, !2137, !2139}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2127, file: !2128, line: 207, baseType: !480, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2127, file: !2128, line: 208, baseType: !2132, size: 256, offset: 64)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2133, size: 256, elements: !553)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2127, file: !2128, line: 209, baseType: !2135, size: 256, offset: 320)
!2135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 256, elements: !553)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2127, file: !2128, line: 213, baseType: !979, size: 64, offset: 576)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2127, file: !2128, line: 215, baseType: !2138, size: 256, offset: 640)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 256, elements: !553)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2127, file: !2128, line: 216, baseType: !442, size: 8, offset: 896)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2119, file: !2114, line: 33, baseType: !190, size: 64, offset: 1536)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2119, file: !2114, line: 34, baseType: !190, size: 64, offset: 1600)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2119, file: !2114, line: 35, baseType: !206, size: 8, offset: 1664)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2119, file: !2114, line: 36, baseType: !2144, size: 320, offset: 1728)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2145, line: 11, size: 320, elements: !2146)
!2145 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2146 = !{!2147, !2148, !2149, !2154}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2144, file: !2145, line: 16, baseType: !548, size: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2144, file: !2145, line: 17, baseType: !190, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2144, file: !2145, line: 18, baseType: !2150, size: 64, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{null, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2144, file: !2145, line: 19, baseType: !670, size: 32, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2119, file: !2114, line: 37, baseType: !1676, size: 256, offset: 2048)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2119, file: !2114, line: 38, baseType: !477, size: 128, align: 64, offset: 2304)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2119, file: !2114, line: 39, baseType: !2158, size: 64, offset: 2432)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2114, line: 49, size: 768, elements: !2160)
!2160 = !{!2161, !2162, !2163, !2164, !2165, !2166, !2167}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2159, file: !2114, line: 50, baseType: !487, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2159, file: !2114, line: 51, baseType: !2135, size: 256, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2159, file: !2114, line: 53, baseType: !2135, size: 256, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2159, file: !2114, line: 54, baseType: !190, size: 64, offset: 576)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2159, file: !2114, line: 55, baseType: !2158, size: 64, offset: 640)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2159, file: !2114, line: 56, baseType: !85, size: 32, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2159, file: !2114, line: 57, baseType: !85, size: 32, offset: 736)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2119, file: !2114, line: 40, baseType: !190, size: 64, offset: 2496)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2119, file: !2114, line: 42, baseType: !85, size: 32, offset: 2560)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2119, file: !2114, line: 43, baseType: !2112, size: 64, offset: 2624)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2113, file: !2114, line: 99, baseType: !2172, offset: 128)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2173, line: 211, elements: !1543)
!2173 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2113, file: !2114, line: 100, baseType: !2175, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2114, line: 63, size: 3008, elements: !2177)
!2177 = !{!2178, !2179, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2209}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2176, file: !2114, line: 64, baseType: !2158, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2176, file: !2114, line: 65, baseType: !2180, size: 192, offset: 64)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2158, size: 192, elements: !527)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2176, file: !2114, line: 67, baseType: !85, size: 32, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2176, file: !2114, line: 68, baseType: !407, size: 256, offset: 320)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2176, file: !2114, line: 69, baseType: !487, size: 32, offset: 576)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2176, file: !2114, line: 70, baseType: !407, size: 256, offset: 640)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2176, file: !2114, line: 71, baseType: !190, size: 64, offset: 896)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2176, file: !2114, line: 72, baseType: !190, size: 64, offset: 960)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2176, file: !2114, line: 73, baseType: !190, size: 64, offset: 1024)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2176, file: !2114, line: 74, baseType: !190, size: 64, offset: 1088)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2176, file: !2114, line: 75, baseType: !190, size: 64, offset: 1152)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2176, file: !2114, line: 76, baseType: !190, size: 64, offset: 1216)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2176, file: !2114, line: 77, baseType: !190, size: 64, offset: 1280)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2176, file: !2114, line: 78, baseType: !190, size: 64, offset: 1344)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2176, file: !2114, line: 79, baseType: !206, size: 8, offset: 1408)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2176, file: !2114, line: 80, baseType: !190, size: 64, offset: 1472)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2176, file: !2114, line: 81, baseType: !407, size: 256, offset: 1536)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2176, file: !2114, line: 82, baseType: !1901, size: 256, offset: 1792)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2176, file: !2114, line: 84, baseType: !434, size: 32, offset: 2048)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2176, file: !2114, line: 87, baseType: !190, size: 64, offset: 2112)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2176, file: !2114, line: 88, baseType: !190, size: 64, offset: 2176)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2176, file: !2114, line: 89, baseType: !2201, size: 704, offset: 2240)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1677, line: 111, size: 704, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2208}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2201, file: !1677, line: 112, baseType: !1676, size: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2201, file: !1677, line: 113, baseType: !2144, size: 320, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2201, file: !1677, line: 116, baseType: !2206, size: 64, offset: 576)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1677, line: 18, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2201, file: !1677, line: 117, baseType: !85, size: 32, offset: 640)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2176, file: !2114, line: 90, baseType: !2112, size: 64, offset: 2944)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1111, file: !15, line: 515, baseType: !2211, size: 64, offset: 8064)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2213, line: 117, size: 128, elements: !2214)
!2213 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2214 = !{!2215, !2216, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2212, file: !2213, line: 118, baseType: !630, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2212, file: !2213, line: 119, baseType: !630, size: 32, offset: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2212, file: !2213, line: 120, baseType: !979, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1111, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1111, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1111, file: !15, line: 520, baseType: !2221, size: 64, offset: 8192)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1111, file: !15, line: 523, baseType: !2223, size: 64, offset: 8256)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1111, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1111, file: !15, line: 525, baseType: !2228, size: 64, offset: 8384)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1111, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1111, file: !15, line: 533, baseType: !191, size: 64, offset: 8512)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1111, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1111, file: !15, line: 535, baseType: !2235, size: 64, offset: 8640)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1111, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1111, file: !15, line: 539, baseType: !85, size: 32, offset: 8736)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1111, file: !15, line: 540, baseType: !2239, size: 64, offset: 8768)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2241, line: 32, size: 64, elements: !2242)
!2241 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2242 = !{!2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2240, file: !2241, line: 33, baseType: !630, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2240, file: !2241, line: 34, baseType: !630, size: 32, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1111, file: !15, line: 563, baseType: !455, size: 128, offset: 8832)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1111, file: !15, line: 565, baseType: !455, size: 128, offset: 8960)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1111, file: !15, line: 568, baseType: !2248, size: 64, offset: 9088)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1111, file: !15, line: 570, baseType: !434, size: 32, offset: 9152)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1086, file: !35, line: 2382, baseType: !1085, size: 64, offset: 448)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1086, file: !35, line: 2383, baseType: !544, size: 64, offset: 512)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1086, file: !35, line: 2385, baseType: !2255, offset: 576)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2173, line: 206, elements: !1543)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1086, file: !35, line: 2386, baseType: !2255, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1086, file: !35, line: 2387, baseType: !2255, offset: 576)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1086, file: !35, line: 2388, baseType: !2259, offset: 576)
!2259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2255, elements: !527)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1086, file: !35, line: 2390, baseType: !2255, offset: 576)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1086, file: !35, line: 2391, baseType: !2255, offset: 576)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1086, file: !35, line: 2392, baseType: !2255, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1086, file: !35, line: 2393, baseType: !2255, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1077, file: !35, line: 1197, baseType: !2265, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2267)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !2268)
!2268 = !{!2269, !2273, !2277, !2278, !2282, !2286, !2290, !2291, !2292, !2296, !2300, !2304, !2305, !2306, !2312, !2316, !2317, !2321, !2322, !2323, !2324, !2328, !2332, !2379, !2394, !2395}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2267, file: !35, line: 2058, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!864, !1076}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2267, file: !35, line: 2059, baseType: !2274, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !864}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2267, file: !35, line: 2060, baseType: !2274, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2267, file: !35, line: 2062, baseType: !2279, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{null, !864, !85}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2267, file: !35, line: 2063, baseType: !2283, size: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!85, !864, !1315}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2267, file: !35, line: 2064, baseType: !2287, size: 64, offset: 320)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!85, !864}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2267, file: !35, line: 2065, baseType: !2274, size: 64, offset: 384)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2267, file: !35, line: 2066, baseType: !1106, size: 64, offset: 448)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2267, file: !35, line: 2067, baseType: !2293, size: 64, offset: 512)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!85, !1076, !85}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2267, file: !35, line: 2068, baseType: !2297, size: 64, offset: 576)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!85, !1076, !34}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2267, file: !35, line: 2069, baseType: !2301, size: 64, offset: 640)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!85, !1076}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2267, file: !35, line: 2070, baseType: !2297, size: 64, offset: 704)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2267, file: !35, line: 2071, baseType: !2301, size: 64, offset: 768)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2267, file: !35, line: 2072, baseType: !2307, size: 64, offset: 832)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!85, !824, !2310}
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2267, file: !35, line: 2073, baseType: !2313, size: 64, offset: 896)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!85, !1076, !2044, !713}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2267, file: !35, line: 2074, baseType: !1106, size: 64, offset: 960)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2267, file: !35, line: 2076, baseType: !2318, size: 64, offset: 1024)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!85, !1819, !824}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2267, file: !35, line: 2077, baseType: !2318, size: 64, offset: 1088)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2267, file: !35, line: 2078, baseType: !2318, size: 64, offset: 1152)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2267, file: !35, line: 2079, baseType: !2318, size: 64, offset: 1216)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2267, file: !35, line: 2081, baseType: !2325, size: 64, offset: 1280)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!1018, !1076, !85, !713, !1021, !500}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2267, file: !35, line: 2082, baseType: !2329, size: 64, offset: 1344)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!1018, !1076, !85, !210, !1021, !500}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2267, file: !35, line: 2083, baseType: !2333, size: 64, offset: 1408)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!2336, !864}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2364, !2365, !2366}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2338, file: !40, line: 297, baseType: !548, size: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2338, file: !40, line: 298, baseType: !455, size: 128, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2338, file: !40, line: 299, baseType: !455, size: 128, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2338, file: !40, line: 300, baseType: !455, size: 128, offset: 384)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2338, file: !40, line: 301, baseType: !407, size: 256, offset: 512)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2338, file: !40, line: 302, baseType: !487, size: 32, offset: 768)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2338, file: !40, line: 303, baseType: !434, size: 32, offset: 800)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2338, file: !40, line: 304, baseType: !1076, size: 64, offset: 832)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2338, file: !40, line: 305, baseType: !2349, size: 64, offset: 896)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !2350)
!2350 = !{!2351, !2363}
!2351 = !DIDerivedType(tag: DW_TAG_member, scope: !2349, file: !40, line: 69, baseType: !2352, size: 32)
!2352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2349, file: !40, line: 69, size: 32, elements: !2353)
!2353 = !{!2354, !2355, !2356}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2352, file: !40, line: 70, baseType: !576, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2352, file: !40, line: 71, baseType: !594, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2352, file: !40, line: 72, baseType: !2357, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2358, line: 24, baseType: !2359)
!2358 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2358, line: 22, size: 32, elements: !2360)
!2360 = !{!2361}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2359, file: !2358, line: 23, baseType: !2362, size: 32)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2358, line: 20, baseType: !582)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2349, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2338, file: !40, line: 306, baseType: !500, size: 64, offset: 960)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2338, file: !40, line: 307, baseType: !190, size: 64, offset: 1024)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2338, file: !40, line: 308, baseType: !2367, size: 576, offset: 1088)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !2368)
!2368 = !{!2369, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2367, file: !40, line: 206, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !419)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2367, file: !40, line: 207, baseType: !2370, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2367, file: !40, line: 208, baseType: !2370, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2367, file: !40, line: 209, baseType: !2370, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2367, file: !40, line: 210, baseType: !2370, size: 64, offset: 256)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2367, file: !40, line: 211, baseType: !2370, size: 64, offset: 320)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2367, file: !40, line: 212, baseType: !2370, size: 64, offset: 384)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2367, file: !40, line: 213, baseType: !661, size: 64, offset: 448)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2367, file: !40, line: 214, baseType: !661, size: 64, offset: 512)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2267, file: !35, line: 2085, baseType: !2380, size: 64, offset: 1472)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!979, !1076, !2383}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2385, line: 15, size: 256, elements: !2386)
!2385 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2386 = !{!2387, !2388, !2389, !2390, !2391}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2384, file: !2385, line: 16, baseType: !188, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2384, file: !2385, line: 19, baseType: !85, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2384, file: !2385, line: 26, baseType: !190, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2384, file: !2385, line: 33, baseType: !190, size: 64, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2384, file: !2385, line: 36, baseType: !2392, size: 64, offset: 192)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1256, line: 33, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2267, file: !35, line: 2087, baseType: !2380, size: 64, offset: 1536)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2267, file: !35, line: 2089, baseType: !1106, size: 64, offset: 1600)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1077, file: !35, line: 1198, baseType: !2397, size: 64, offset: 448)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !2400)
!2400 = !{!2401, !2405, !2409, !2413, !2414, !2415, !2416, !2417, !2422, !2427, !2431}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2399, file: !40, line: 325, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!85, !2337}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2399, file: !40, line: 326, baseType: !2406, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!2337, !1076, !85}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2399, file: !40, line: 327, baseType: !2410, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !2337}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2399, file: !40, line: 328, baseType: !2402, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2399, file: !40, line: 329, baseType: !2402, size: 64, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2399, file: !40, line: 330, baseType: !2402, size: 64, offset: 320)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2399, file: !40, line: 331, baseType: !2293, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2399, file: !40, line: 334, baseType: !2418, size: 64, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!2421, !864}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2399, file: !40, line: 335, baseType: !2423, size: 64, offset: 512)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!85, !864, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2399, file: !40, line: 337, baseType: !2428, size: 64, offset: 576)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!85, !864, !2421}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2399, file: !40, line: 339, baseType: !2432, size: 64, offset: 640)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!85, !1076, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1077, file: !35, line: 1199, baseType: !2437, size: 64, offset: 512)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2439)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !2440)
!2440 = !{!2441, !2445, !2446, !2450, !2451, !2452, !2467, !2490, !2494, !2495, !2518}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2439, file: !40, line: 431, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!85, !1076, !85, !85, !987}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2439, file: !40, line: 432, baseType: !2293, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2439, file: !40, line: 433, baseType: !2447, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!85, !1076, !7}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2439, file: !40, line: 434, baseType: !2447, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2439, file: !40, line: 435, baseType: !2293, size: 64, offset: 256)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2439, file: !40, line: 436, baseType: !2453, size: 64, offset: 320)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!85, !1076, !85, !2456}
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !2458)
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2457, file: !40, line: 418, baseType: !85, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2457, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2457, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2457, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2457, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2457, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2457, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2457, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2439, file: !40, line: 437, baseType: !2468, size: 64, offset: 384)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!85, !1076, !2349, !2471}
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2472, file: !40, line: 346, baseType: !85, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2472, file: !40, line: 347, baseType: !613, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2472, file: !40, line: 348, baseType: !613, size: 64, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2472, file: !40, line: 349, baseType: !613, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2472, file: !40, line: 350, baseType: !613, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2472, file: !40, line: 351, baseType: !613, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2472, file: !40, line: 352, baseType: !613, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2472, file: !40, line: 353, baseType: !417, size: 64, offset: 448)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2472, file: !40, line: 355, baseType: !417, size: 64, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2472, file: !40, line: 356, baseType: !85, size: 32, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2472, file: !40, line: 357, baseType: !85, size: 32, offset: 608)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2472, file: !40, line: 358, baseType: !613, size: 64, offset: 640)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2472, file: !40, line: 359, baseType: !613, size: 64, offset: 704)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2472, file: !40, line: 360, baseType: !613, size: 64, offset: 768)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2472, file: !40, line: 361, baseType: !417, size: 64, offset: 832)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2472, file: !40, line: 362, baseType: !85, size: 32, offset: 896)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2439, file: !40, line: 438, baseType: !2491, size: 64, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!85, !1076, !2435, !2471}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2439, file: !40, line: 440, baseType: !2468, size: 64, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2439, file: !40, line: 441, baseType: !2496, size: 64, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!85, !1076, !2499}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !2501)
!2501 = !{!2502, !2503}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2500, file: !40, line: 412, baseType: !7, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2500, file: !40, line: 413, baseType: !2504, size: 1344, offset: 64)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2505, size: 1344, elements: !527)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2517}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2505, file: !40, line: 398, baseType: !7, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2505, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2505, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2505, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2505, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2505, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2505, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2505, file: !40, line: 406, baseType: !615, size: 64, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2505, file: !40, line: 407, baseType: !2516, size: 64, offset: 320)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !189, line: 132, baseType: !613)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2505, file: !40, line: 408, baseType: !2516, size: 64, offset: 384)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2439, file: !40, line: 442, baseType: !2447, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1077, file: !35, line: 1200, baseType: !2520, size: 64, offset: 576)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2522)
!2522 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1077, file: !35, line: 1201, baseType: !190, size: 64, offset: 640)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1077, file: !35, line: 1202, baseType: !190, size: 64, offset: 704)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1077, file: !35, line: 1203, baseType: !190, size: 64, offset: 768)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1077, file: !35, line: 1204, baseType: !824, size: 64, offset: 832)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1077, file: !35, line: 1205, baseType: !645, size: 320, offset: 896)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1077, file: !35, line: 1206, baseType: !85, size: 32, offset: 1216)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1077, file: !35, line: 1207, baseType: !434, size: 32, offset: 1248)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1077, file: !35, line: 1209, baseType: !191, size: 64, offset: 1280)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1077, file: !35, line: 1211, baseType: !2532, size: 64, offset: 1344)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2535)
!2535 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1077, file: !35, line: 1223, baseType: !2537, size: 64, offset: 1408)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !841, line: 34, size: 64, elements: !2538)
!2538 = !{!2539}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2537, file: !841, line: 35, baseType: !844, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1077, file: !35, line: 1224, baseType: !455, size: 128, offset: 1472)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1077, file: !35, line: 1225, baseType: !2542, size: 64, offset: 1600)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1077, file: !35, line: 1226, baseType: !2545, size: 64, offset: 1664)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1077, file: !35, line: 1227, baseType: !2548, size: 64, offset: 1728)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1077, file: !35, line: 1228, baseType: !2551, size: 64, offset: 1792)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1077, file: !35, line: 1229, baseType: !548, size: 128, offset: 1856)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1077, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1077, file: !35, line: 1231, baseType: !2556, size: 2496, offset: 2048)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !2557)
!2557 = !{!2558, !2559, !2560, !2562, !2594}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2556, file: !40, line: 522, baseType: !7, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2556, file: !40, line: 523, baseType: !645, size: 320, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2556, file: !40, line: 524, baseType: !2561, size: 192, offset: 384)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 192, elements: !527)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2556, file: !40, line: 525, baseType: !2563, size: 1728, offset: 576)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2564, size: 1728, elements: !527)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !2565)
!2565 = !{!2566, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2564, file: !40, line: 223, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !2569)
!2569 = !{!2570, !2571, !2584, !2585}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2568, file: !40, line: 446, baseType: !85, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2568, file: !40, line: 447, baseType: !2572, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2574)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2574, file: !40, line: 313, baseType: !2293, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2574, file: !40, line: 314, baseType: !2293, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2574, file: !40, line: 315, baseType: !2293, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2574, file: !40, line: 316, baseType: !2293, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2574, file: !40, line: 317, baseType: !2402, size: 64, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2574, file: !40, line: 318, baseType: !2402, size: 64, offset: 320)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2574, file: !40, line: 319, baseType: !2402, size: 64, offset: 384)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2574, file: !40, line: 320, baseType: !2432, size: 64, offset: 448)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2568, file: !40, line: 448, baseType: !1110, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2568, file: !40, line: 449, baseType: !2567, size: 64, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2564, file: !40, line: 224, baseType: !85, size: 32, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2564, file: !40, line: 226, baseType: !455, size: 128, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2564, file: !40, line: 227, baseType: !190, size: 64, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2564, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2564, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2564, file: !40, line: 230, baseType: !2370, size: 64, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2564, file: !40, line: 231, baseType: !2370, size: 64, offset: 448)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2564, file: !40, line: 232, baseType: !191, size: 64, offset: 512)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2556, file: !40, line: 526, baseType: !2595, size: 192, offset: 2304)
!2595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2572, size: 192, elements: !527)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1077, file: !35, line: 1233, baseType: !2597, size: 2368, offset: 4544)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !2598)
!2598 = !{!2599, !2600, !2601}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2597, file: !35, line: 1185, baseType: !260, size: 16)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2597, file: !35, line: 1186, baseType: !260, size: 16, offset: 16)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2597, file: !35, line: 1187, baseType: !2602, size: 2304, offset: 64)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2603, size: 2304, elements: !527)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2604, line: 12, size: 768, elements: !2605)
!2604 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2605 = !{!2606, !2614, !2615, !3786, !3787}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2603, file: !2604, line: 13, baseType: !2607, size: 384)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2608, line: 17, size: 384, elements: !2609)
!2608 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2609 = !{!2610, !2611, !2612, !2613}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2607, file: !2608, line: 18, baseType: !85, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2607, file: !2608, line: 19, baseType: !85, size: 32, offset: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2607, file: !2608, line: 20, baseType: !557, size: 192, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2607, file: !2608, line: 22, baseType: !477, size: 128, align: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2603, file: !2604, line: 14, baseType: !306, size: 64, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2603, file: !2604, line: 15, baseType: !2616, size: 64, offset: 448)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2617, line: 16, size: 64, elements: !2618)
!2617 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2618 = !{!2619}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2616, file: !2617, line: 17, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1729, line: 746, size: 58368, elements: !2622)
!2622 = !{!2623, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2703, !2714, !2800, !2804, !2807, !2838, !2839, !2840, !2841, !2849, !2851, !2852, !2853, !2854, !2855, !2856, !2867, !2868, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2885, !2886, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2974, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3022, !3028, !3029, !3030, !3031, !3032, !3036, !3039, !3046, !3051, !3054, !3057, !3060, !3063, !3201, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3239, !3240, !3241, !3250, !3258, !3259, !3260, !3261, !3262, !3267, !3268, !3269, !3272, !3273, !3276, !3279, !3282, !3290, !3293, !3294, !3379, !3380, !3381, !3382, !3383, !3389, !3390, !3391, !3392, !3395, !3396, !3399, !3402, !3403, !3406, !3407, !3408, !3411, !3412, !3413, !3414, !3415, !3416, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3448, !3451, !3457, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3469, !3541, !3543, !3544, !3545, !3546, !3547, !3548, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3565, !3566, !3567}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2621, file: !1729, line: 752, baseType: !2624, size: 192)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2625, line: 56, size: 192, elements: !2626)
!2625 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2626 = !{!2627, !2628, !2629, !2630}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2624, file: !2625, line: 57, baseType: !190, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2624, file: !2625, line: 58, baseType: !190, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2624, file: !2625, line: 59, baseType: !670, size: 32, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2624, file: !2625, line: 61, baseType: !670, size: 32, offset: 160)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2621, file: !1729, line: 754, baseType: !7, size: 32, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2621, file: !1729, line: 767, baseType: !191, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2621, file: !1729, line: 768, baseType: !535, size: 32, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2621, file: !1729, line: 770, baseType: !7, size: 32, offset: 352)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2621, file: !1729, line: 771, baseType: !7, size: 32, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2621, file: !1729, line: 774, baseType: !85, size: 32, offset: 416)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2621, file: !1729, line: 775, baseType: !2638, size: 128, offset: 448)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2639, line: 58, size: 128, elements: !2640)
!2639 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2640 = !{!2641, !2642, !2647, !2648}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2638, file: !2639, line: 59, baseType: !471, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, scope: !2638, file: !2639, line: 60, baseType: !2643, size: 32, offset: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2638, file: !2639, line: 60, size: 32, elements: !2644)
!2644 = !{!2645, !2646}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2643, file: !2639, line: 61, baseType: !7, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2643, file: !2639, line: 62, baseType: !434, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2638, file: !2639, line: 65, baseType: !397, size: 16, offset: 96)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2638, file: !2639, line: 65, baseType: !397, size: 16, offset: 112)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2621, file: !1729, line: 776, baseType: !7, size: 32, offset: 576)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2621, file: !1729, line: 777, baseType: !190, size: 64, offset: 640)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2621, file: !1729, line: 778, baseType: !2620, size: 64, offset: 704)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2621, file: !1729, line: 787, baseType: !85, size: 32, offset: 768)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2621, file: !1729, line: 788, baseType: !85, size: 32, offset: 800)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2621, file: !1729, line: 790, baseType: !85, size: 32, offset: 832)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2621, file: !1729, line: 792, baseType: !85, size: 32, offset: 864)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2621, file: !1729, line: 793, baseType: !85, size: 32, offset: 896)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2621, file: !1729, line: 794, baseType: !85, size: 32, offset: 928)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2621, file: !1729, line: 795, baseType: !7, size: 32, offset: 960)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2621, file: !1729, line: 797, baseType: !2660, size: 2048, offset: 1024)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1729, line: 551, size: 2048, elements: !2661)
!2661 = !{!2662, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2682, !2685, !2686, !2687}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2660, file: !1729, line: 553, baseType: !2663, size: 128)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1729, line: 411, size: 128, elements: !2664)
!2664 = !{!2665, !2666}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2663, file: !1729, line: 412, baseType: !190, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2663, file: !1729, line: 413, baseType: !670, size: 32, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2660, file: !1729, line: 554, baseType: !637, size: 192, align: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2660, file: !1729, line: 555, baseType: !613, size: 64, offset: 320)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2660, file: !1729, line: 556, baseType: !613, size: 64, offset: 384)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2660, file: !1729, line: 558, baseType: !455, size: 128, offset: 448)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2660, file: !1729, line: 559, baseType: !7, size: 32, offset: 576)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2660, file: !1729, line: 561, baseType: !613, size: 64, offset: 640)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2660, file: !1729, line: 562, baseType: !613, size: 64, offset: 704)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2660, file: !1729, line: 563, baseType: !613, size: 64, offset: 768)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2660, file: !1729, line: 564, baseType: !613, size: 64, offset: 832)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2660, file: !1729, line: 565, baseType: !417, size: 64, offset: 896)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2660, file: !1729, line: 566, baseType: !613, size: 64, offset: 960)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2660, file: !1729, line: 568, baseType: !613, size: 64, offset: 1024)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2660, file: !1729, line: 571, baseType: !85, size: 32, offset: 1088)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2660, file: !1729, line: 572, baseType: !2681, size: 64, offset: 1152)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2660, file: !1729, line: 574, baseType: !2683, size: 64, offset: 1216)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1729, line: 49, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2660, file: !1729, line: 576, baseType: !2683, size: 64, offset: 1280)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2660, file: !1729, line: 578, baseType: !190, size: 64, offset: 1344)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2660, file: !1729, line: 588, baseType: !2688, size: 512, align: 512, offset: 1536)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1729, line: 497, size: 512, align: 512, elements: !2689)
!2689 = !{!2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2688, file: !1729, line: 498, baseType: !613, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2688, file: !1729, line: 499, baseType: !613, size: 64, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2688, file: !1729, line: 500, baseType: !613, size: 64, offset: 128)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2688, file: !1729, line: 501, baseType: !670, size: 32, offset: 192)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2688, file: !1729, line: 502, baseType: !670, size: 32, offset: 224)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2688, file: !1729, line: 503, baseType: !190, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2688, file: !1729, line: 504, baseType: !190, size: 64, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2688, file: !1729, line: 505, baseType: !190, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2688, file: !1729, line: 506, baseType: !2699, size: 64, align: 64, offset: 448)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1729, line: 445, size: 64, align: 64, elements: !2700)
!2700 = !{!2701, !2702}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2699, file: !1729, line: 446, baseType: !7, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2699, file: !1729, line: 447, baseType: !7, size: 32, offset: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2621, file: !1729, line: 798, baseType: !2704, size: 384, offset: 3072)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1729, line: 592, size: 384, elements: !2705)
!2705 = !{!2706, !2707, !2708, !2709, !2710, !2711, !2712}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2704, file: !1729, line: 593, baseType: !455, size: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2704, file: !1729, line: 594, baseType: !190, size: 64, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2704, file: !1729, line: 595, baseType: !190, size: 64, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2704, file: !1729, line: 596, baseType: !7, size: 32, offset: 256)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2704, file: !1729, line: 597, baseType: !260, size: 16, offset: 288)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2704, file: !1729, line: 598, baseType: !260, size: 16, offset: 304)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2704, file: !1729, line: 600, baseType: !2713, size: 64, offset: 320)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2621, file: !1729, line: 799, baseType: !2715, size: 1792, offset: 3456)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1729, line: 610, size: 1792, elements: !2716)
!2716 = !{!2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2797, !2798}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2715, file: !1729, line: 611, baseType: !637, size: 192, align: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2715, file: !1729, line: 618, baseType: !613, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2715, file: !1729, line: 619, baseType: !613, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2715, file: !1729, line: 620, baseType: !613, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2715, file: !1729, line: 621, baseType: !613, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2715, file: !1729, line: 622, baseType: !613, size: 64, offset: 448)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2715, file: !1729, line: 629, baseType: !417, size: 64, offset: 512)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2715, file: !1729, line: 630, baseType: !613, size: 64, offset: 576)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2715, file: !1729, line: 631, baseType: !7, size: 32, offset: 640)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2715, file: !1729, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2715, file: !1729, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2715, file: !1729, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2715, file: !1729, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2715, file: !1729, line: 662, baseType: !2731, size: 512, offset: 704)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !2732)
!2732 = !{!2733, !2741, !2742, !2747, !2793, !2794, !2795, !2796}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2731, file: !46, line: 119, baseType: !2734, size: 256)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2735, line: 9, size: 256, elements: !2736)
!2735 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2736 = !{!2737, !2738}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2734, file: !2735, line: 10, baseType: !637, size: 192, align: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2734, file: !2735, line: 11, baseType: !2739, size: 64, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2740, line: 29, baseType: !417)
!2740 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2731, file: !46, line: 120, baseType: !2739, size: 64, offset: 256)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2731, file: !46, line: 121, baseType: !2743, size: 64, offset: 320)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!45, !2746}
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2731, file: !46, line: 122, baseType: !2748, size: 64, offset: 384)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !2750)
!2750 = !{!2751, !2774, !2775, !2778, !2783, !2784, !2788, !2792}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2749, file: !46, line: 160, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !2754)
!2754 = !{!2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2753, file: !46, line: 216, baseType: !421, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2753, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2753, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2753, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2753, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2753, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2753, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2753, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2753, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2753, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2753, file: !46, line: 227, baseType: !260, size: 16, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2753, file: !46, line: 228, baseType: !260, size: 16, offset: 208)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2753, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2753, file: !46, line: 235, baseType: !2739, size: 64, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2753, file: !46, line: 236, baseType: !2746, size: 64, offset: 320)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2753, file: !46, line: 237, baseType: !2739, size: 64, offset: 384)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2753, file: !46, line: 238, baseType: !2746, size: 64, offset: 448)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2753, file: !46, line: 239, baseType: !2773, size: 4096, align: 512, offset: 512)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2749, size: 4096, align: 512, elements: !197)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2749, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2749, file: !46, line: 162, baseType: !2776, size: 32, offset: 96)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !189, line: 32, baseType: !2777)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !502, line: 96, baseType: !85)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2749, file: !46, line: 163, baseType: !2779, size: 32, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !831, line: 274, baseType: !2780)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !831, line: 274, size: 32, elements: !2781)
!2781 = !{!2782}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2780, file: !831, line: 274, baseType: !835, size: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2749, file: !46, line: 164, baseType: !2746, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2749, file: !46, line: 165, baseType: !2785, size: 128, offset: 256)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2735, line: 14, size: 128, elements: !2786)
!2786 = !{!2787}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2785, file: !2735, line: 15, baseType: !1236, size: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2749, file: !46, line: 166, baseType: !2789, size: 64, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!2739}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2749, file: !46, line: 167, baseType: !2739, size: 64, offset: 448)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2731, file: !46, line: 123, baseType: !442, size: 8, offset: 448)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2731, file: !46, line: 124, baseType: !442, size: 8, offset: 456)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2731, file: !46, line: 125, baseType: !442, size: 8, offset: 464)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2731, file: !46, line: 126, baseType: !442, size: 8, offset: 472)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2715, file: !1729, line: 671, baseType: !2731, size: 512, offset: 1216)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2715, file: !1729, line: 679, baseType: !2799, size: 64, offset: 1728)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2621, file: !1729, line: 800, baseType: !2801, size: 64, offset: 5248)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2803)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1729, line: 800, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2621, file: !1729, line: 809, baseType: !2805, size: 64, offset: 5312)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1729, line: 70, flags: DIFlagFwdDecl)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2621, file: !1729, line: 825, baseType: !2808, size: 2048, align: 512, offset: 5632)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1729, line: 509, size: 2048, align: 512, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2808, file: !1729, line: 511, baseType: !613, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2808, file: !1729, line: 512, baseType: !613, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2808, file: !1729, line: 513, baseType: !613, size: 64, offset: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2808, file: !1729, line: 514, baseType: !613, size: 64, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2808, file: !1729, line: 515, baseType: !613, size: 64, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2808, file: !1729, line: 516, baseType: !613, size: 64, offset: 320)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2808, file: !1729, line: 518, baseType: !613, size: 64, offset: 384)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2808, file: !1729, line: 519, baseType: !613, size: 64, offset: 448)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2808, file: !1729, line: 520, baseType: !417, size: 64, offset: 512)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2808, file: !1729, line: 522, baseType: !613, size: 64, offset: 576)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2808, file: !1729, line: 523, baseType: !613, size: 64, offset: 640)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2808, file: !1729, line: 524, baseType: !417, size: 64, offset: 704)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2808, file: !1729, line: 526, baseType: !417, size: 64, offset: 768)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2808, file: !1729, line: 527, baseType: !613, size: 64, offset: 832)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2808, file: !1729, line: 529, baseType: !613, size: 64, offset: 896)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2808, file: !1729, line: 530, baseType: !613, size: 64, offset: 960)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2808, file: !1729, line: 531, baseType: !613, size: 64, offset: 1024)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2808, file: !1729, line: 532, baseType: !613, size: 64, offset: 1088)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2808, file: !1729, line: 533, baseType: !613, size: 64, offset: 1152)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2808, file: !1729, line: 535, baseType: !613, size: 64, offset: 1216)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2808, file: !1729, line: 536, baseType: !613, size: 64, offset: 1280)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2808, file: !1729, line: 537, baseType: !613, size: 64, offset: 1344)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2808, file: !1729, line: 538, baseType: !613, size: 64, offset: 1408)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2808, file: !1729, line: 539, baseType: !613, size: 64, offset: 1472)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2808, file: !1729, line: 540, baseType: !613, size: 64, offset: 1536)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2808, file: !1729, line: 541, baseType: !613, size: 64, offset: 1600)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2808, file: !1729, line: 542, baseType: !613, size: 64, offset: 1664)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2808, file: !1729, line: 543, baseType: !613, size: 64, offset: 1728)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2621, file: !1729, line: 833, baseType: !7, size: 32, offset: 7680)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2621, file: !1729, line: 836, baseType: !7, size: 32, offset: 7712)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2621, file: !1729, line: 837, baseType: !85, size: 32, offset: 7744)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2621, file: !1729, line: 838, baseType: !2842, size: 64, offset: 7808)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2844)
!2844 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2845, line: 19, baseType: !2846)
!2845 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2845, line: 19, size: 64, elements: !2847)
!2847 = !{!2848}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2846, file: !2845, line: 19, baseType: !265, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2621, file: !1729, line: 839, baseType: !2850, size: 64, offset: 7872)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2621, file: !1729, line: 840, baseType: !2844, size: 64, offset: 7936)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2621, file: !1729, line: 841, baseType: !191, size: 64, offset: 8000)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2621, file: !1729, line: 843, baseType: !260, size: 16, offset: 8064)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2621, file: !1729, line: 845, baseType: !260, size: 16, offset: 8080)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2621, file: !1729, line: 848, baseType: !85, size: 32, offset: 8096)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2621, file: !1729, line: 849, baseType: !2857, size: 32, offset: 8128)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1729, line: 718, size: 32, elements: !2858)
!2858 = !{!2859, !2866}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2857, file: !1729, line: 724, baseType: !2860, size: 32)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !1729, line: 719, size: 32, elements: !2861)
!2861 = !{!2862, !2863, !2864, !2865}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2860, file: !1729, line: 720, baseType: !442, size: 8)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2860, file: !1729, line: 721, baseType: !442, size: 8, offset: 8)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2860, file: !1729, line: 722, baseType: !442, size: 8, offset: 16)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2860, file: !1729, line: 723, baseType: !442, size: 8, offset: 24)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2857, file: !1729, line: 725, baseType: !670, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2621, file: !1729, line: 850, baseType: !455, size: 128, offset: 8192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2621, file: !1729, line: 851, baseType: !2869, size: 64, offset: 8320)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1729, line: 60, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2621, file: !1729, line: 855, baseType: !190, size: 64, offset: 8384)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2621, file: !1729, line: 856, baseType: !442, size: 8, offset: 8448)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2621, file: !1729, line: 857, baseType: !442, size: 8, offset: 8456)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2621, file: !1729, line: 858, baseType: !85, size: 32, offset: 8480)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2621, file: !1729, line: 859, baseType: !455, size: 128, offset: 8512)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2621, file: !1729, line: 860, baseType: !85, size: 32, offset: 8640)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2621, file: !1729, line: 861, baseType: !455, size: 128, offset: 8704)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2621, file: !1729, line: 873, baseType: !2879, size: 256, offset: 8832)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1729, line: 376, size: 256, elements: !2880)
!2880 = !{!2881, !2882, !2883, !2884}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2879, file: !1729, line: 381, baseType: !190, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2879, file: !1729, line: 384, baseType: !615, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2879, file: !1729, line: 389, baseType: !615, size: 64, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2879, file: !1729, line: 392, baseType: !615, size: 64, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2621, file: !1729, line: 875, baseType: !455, size: 128, offset: 9088)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2621, file: !1729, line: 877, baseType: !2887, size: 320, offset: 9216)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2888, line: 86, size: 320, elements: !2889)
!2888 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2889 = !{!2890, !2891, !2892}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2887, file: !2888, line: 87, baseType: !85, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2887, file: !2888, line: 88, baseType: !455, size: 128, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2887, file: !2888, line: 89, baseType: !455, size: 128, offset: 192)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2621, file: !1729, line: 878, baseType: !637, size: 192, align: 64, offset: 9536)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2621, file: !1729, line: 881, baseType: !1522, size: 64, offset: 9728)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2621, file: !1729, line: 882, baseType: !1522, size: 64, offset: 9792)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2621, file: !1729, line: 884, baseType: !85, size: 32, offset: 9856)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2621, file: !1729, line: 885, baseType: !85, size: 32, offset: 9888)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2621, file: !1729, line: 886, baseType: !85, size: 32, offset: 9920)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2621, file: !1729, line: 888, baseType: !85, size: 32, offset: 9952)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2621, file: !1729, line: 890, baseType: !190, size: 64, offset: 9984)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2621, file: !1729, line: 893, baseType: !7, size: 32, offset: 10048)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2621, file: !1729, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2621, file: !1729, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2621, file: !1729, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2621, file: !1729, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2621, file: !1729, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2621, file: !1729, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2621, file: !1729, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2621, file: !1729, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2621, file: !1729, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2621, file: !1729, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2621, file: !1729, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2621, file: !1729, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2621, file: !1729, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2621, file: !1729, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2621, file: !1729, line: 969, baseType: !190, size: 64, offset: 10176)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2621, file: !1729, line: 971, baseType: !2918, size: 448, offset: 10240)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !2919)
!2919 = !{!2920, !2921, !2926}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2918, file: !51, line: 26, baseType: !190, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2918, file: !51, line: 27, baseType: !2922, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!979, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, scope: !2918, file: !51, line: 28, baseType: !2927, size: 320, offset: 128)
!2927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2918, file: !51, line: 28, size: 320, elements: !2928)
!2928 = !{!2929, !2939, !2964}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2927, file: !51, line: 37, baseType: !2930, size: 320)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2927, file: !51, line: 30, size: 320, elements: !2931)
!2931 = !{!2932, !2934, !2935, !2936, !2937, !2938}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2930, file: !51, line: 31, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2930, file: !51, line: 32, baseType: !670, size: 32, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2930, file: !51, line: 33, baseType: !670, size: 32, offset: 96)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2930, file: !51, line: 34, baseType: !670, size: 32, offset: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2930, file: !51, line: 35, baseType: !613, size: 64, offset: 192)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2930, file: !51, line: 36, baseType: !2933, size: 64, offset: 256)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2927, file: !51, line: 47, baseType: !2940, size: 192)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2927, file: !51, line: 39, size: 192, elements: !2941)
!2941 = !{!2942, !2943, !2944, !2963}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2940, file: !51, line: 40, baseType: !2776, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2940, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, scope: !2940, file: !51, line: 42, baseType: !2945, size: 64, offset: 64)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2940, file: !51, line: 42, size: 64, elements: !2946)
!2946 = !{!2947, !2955}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2945, file: !51, line: 43, baseType: !2948, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2950, line: 7, size: 128, elements: !2951)
!2950 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2951 = !{!2952, !2954}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2949, file: !2950, line: 8, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !502, line: 93, baseType: !419)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2949, file: !2950, line: 9, baseType: !419, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2945, file: !51, line: 44, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2958, line: 7, size: 64, elements: !2959)
!2958 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2959 = !{!2960, !2962}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2957, file: !2958, line: 8, baseType: !2961, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2958, line: 5, baseType: !630)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2957, file: !2958, line: 9, baseType: !630, size: 32, offset: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2940, file: !51, line: 46, baseType: !613, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2927, file: !51, line: 55, baseType: !2965, size: 256)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2927, file: !51, line: 49, size: 256, elements: !2966)
!2966 = !{!2967, !2970, !2971, !2972, !2973}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2965, file: !51, line: 50, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2965, file: !51, line: 51, baseType: !85, size: 32, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2965, file: !51, line: 52, baseType: !85, size: 32, offset: 96)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2965, file: !51, line: 53, baseType: !190, size: 64, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2965, file: !51, line: 54, baseType: !190, size: 64, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2621, file: !1729, line: 973, baseType: !2975, size: 32, offset: 10688)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !189, line: 27, baseType: !2976)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !502, line: 28, baseType: !85)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2621, file: !1729, line: 974, baseType: !2975, size: 32, offset: 10720)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2621, file: !1729, line: 978, baseType: !190, size: 64, offset: 10752)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2621, file: !1729, line: 987, baseType: !2620, size: 64, offset: 10816)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2621, file: !1729, line: 990, baseType: !2620, size: 64, offset: 10880)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2621, file: !1729, line: 995, baseType: !455, size: 128, offset: 10944)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2621, file: !1729, line: 996, baseType: !455, size: 128, offset: 11072)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2621, file: !1729, line: 997, baseType: !2620, size: 64, offset: 11200)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2621, file: !1729, line: 1005, baseType: !455, size: 128, offset: 11264)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2621, file: !1729, line: 1006, baseType: !455, size: 128, offset: 11392)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2621, file: !1729, line: 1009, baseType: !531, size: 64, offset: 11520)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2621, file: !1729, line: 1010, baseType: !2988, size: 512, offset: 11584)
!2988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 512, elements: !553)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2621, file: !1729, line: 1011, baseType: !455, size: 128, offset: 12096)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2621, file: !1729, line: 1012, baseType: !455, size: 128, offset: 12224)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2621, file: !1729, line: 1014, baseType: !1900, size: 64, offset: 12352)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2621, file: !1729, line: 1017, baseType: !2044, size: 64, offset: 12416)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2621, file: !1729, line: 1020, baseType: !2044, size: 64, offset: 12480)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2621, file: !1729, line: 1023, baseType: !191, size: 64, offset: 12544)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2621, file: !1729, line: 1025, baseType: !613, size: 64, offset: 12608)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2621, file: !1729, line: 1026, baseType: !613, size: 64, offset: 12672)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2621, file: !1729, line: 1031, baseType: !613, size: 64, offset: 12736)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2621, file: !1729, line: 1032, baseType: !2999, size: 192, offset: 12800)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1729, line: 324, size: 192, elements: !3000)
!3000 = !{!3001, !3002, !3003}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2999, file: !1729, line: 326, baseType: !613, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2999, file: !1729, line: 327, baseType: !613, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2999, file: !1729, line: 328, baseType: !421, size: 32, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2621, file: !1729, line: 1041, baseType: !190, size: 64, offset: 12992)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2621, file: !1729, line: 1042, baseType: !190, size: 64, offset: 13056)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2621, file: !1729, line: 1045, baseType: !613, size: 64, offset: 13120)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2621, file: !1729, line: 1048, baseType: !613, size: 64, offset: 13184)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2621, file: !1729, line: 1051, baseType: !190, size: 64, offset: 13248)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2621, file: !1729, line: 1052, baseType: !190, size: 64, offset: 13312)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2621, file: !1729, line: 1055, baseType: !3011, size: 640, offset: 13376)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3012, line: 132, size: 640, elements: !3013)
!3012 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3013 = !{!3014, !3020, !3021}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3011, file: !3012, line: 133, baseType: !3015, size: 576)
!3015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3016, size: 576, elements: !527)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3012, line: 117, size: 192, elements: !3017)
!3017 = !{!3018, !3019}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3016, file: !3012, line: 118, baseType: !613, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3016, file: !3012, line: 119, baseType: !2785, size: 128, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3011, file: !3012, line: 134, baseType: !7, size: 32, offset: 576)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3011, file: !3012, line: 135, baseType: !7, size: 32, offset: 608)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2621, file: !1729, line: 1058, baseType: !3023, size: 448, offset: 14016)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3012, line: 144, size: 448, elements: !3024)
!3024 = !{!3025, !3026, !3027}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3023, file: !3012, line: 145, baseType: !477, size: 128, align: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3023, file: !3012, line: 146, baseType: !407, size: 256, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3023, file: !3012, line: 147, baseType: !7, size: 32, offset: 384)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2621, file: !1729, line: 1064, baseType: !586, size: 64, offset: 14464)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2621, file: !1729, line: 1067, baseType: !586, size: 64, offset: 14528)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2621, file: !1729, line: 1070, baseType: !586, size: 64, offset: 14592)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2621, file: !1729, line: 1074, baseType: !622, size: 64, offset: 14656)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2621, file: !1729, line: 1084, baseType: !3033, size: 128, offset: 14720)
!3033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 128, elements: !3034)
!3034 = !{!3035}
!3035 = !DISubrange(count: 16)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2621, file: !1729, line: 1086, baseType: !3037, size: 64, offset: 14848)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1729, line: 55, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2621, file: !1729, line: 1089, baseType: !3040, size: 64, offset: 14912)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3041, line: 12, size: 64, elements: !3042)
!3041 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3040, file: !3041, line: 13, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3041, line: 8, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2621, file: !1729, line: 1090, baseType: !3047, size: 128, offset: 14976)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3048, line: 13, size: 128, elements: !3049)
!3048 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3049 = !{!3050}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3047, file: !3048, line: 14, baseType: !455, size: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2621, file: !1729, line: 1097, baseType: !3052, size: 64, offset: 15104)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1729, line: 50, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2621, file: !1729, line: 1100, baseType: !3055, size: 64, offset: 15168)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1729, line: 1100, flags: DIFlagFwdDecl)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2621, file: !1729, line: 1103, baseType: !3058, size: 64, offset: 15232)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1729, line: 53, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2621, file: !1729, line: 1107, baseType: !3061, size: 64, offset: 15296)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1729, line: 56, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2621, file: !1729, line: 1110, baseType: !3064, size: 64, offset: 15360)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3066, line: 93, size: 8768, elements: !3067)
!3066 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3115, !3124, !3125, !3127, !3128, !3129, !3132, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3170, !3171, !3178, !3188, !3191, !3192, !3195, !3196, !3197, !3198, !3199, !3200}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3065, file: !3066, line: 94, baseType: !535, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3065, file: !3066, line: 95, baseType: !434, size: 32, offset: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3065, file: !3066, line: 96, baseType: !85, size: 32, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3065, file: !3066, line: 97, baseType: !85, size: 32, offset: 96)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3065, file: !3066, line: 98, baseType: !455, size: 128, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3065, file: !3066, line: 100, baseType: !557, size: 192, offset: 256)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3065, file: !3066, line: 103, baseType: !2620, size: 64, offset: 448)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3065, file: !3066, line: 106, baseType: !3076, size: 192, offset: 512)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !791, line: 32, size: 192, elements: !3077)
!3077 = !{!3078, !3079}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3076, file: !791, line: 33, baseType: !455, size: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3076, file: !791, line: 34, baseType: !3080, size: 64, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3081, line: 25, baseType: !3082)
!3081 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3081, line: 23, size: 64, elements: !3083)
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3082, file: !3081, line: 24, baseType: !265, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3065, file: !3066, line: 109, baseType: !544, size: 64, offset: 704)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3065, file: !3066, line: 112, baseType: !85, size: 32, offset: 768)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3065, file: !3066, line: 114, baseType: !85, size: 32, offset: 800)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3065, file: !3066, line: 115, baseType: !2620, size: 64, offset: 832)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3065, file: !3066, line: 118, baseType: !85, size: 32, offset: 896)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3065, file: !3066, line: 119, baseType: !7, size: 32, offset: 928)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3065, file: !3066, line: 121, baseType: !3092, size: 64, offset: 960)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3066, line: 80, size: 448, elements: !3094)
!3094 = !{!3095, !3096, !3102}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3093, file: !3066, line: 81, baseType: !434, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3093, file: !3066, line: 82, baseType: !3097, size: 128, offset: 64)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3066, line: 75, size: 128, elements: !3098)
!3098 = !{!3099, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3097, file: !3066, line: 76, baseType: !2620, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3097, file: !3066, line: 77, baseType: !3101, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3093, file: !3066, line: 83, baseType: !1901, size: 256, offset: 192)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3065, file: !3066, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3065, file: !3066, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3065, file: !3066, line: 138, baseType: !7, size: 32, offset: 1056)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3065, file: !3066, line: 139, baseType: !455, size: 128, offset: 1088)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3065, file: !3066, line: 142, baseType: !2731, size: 512, offset: 1216)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3065, file: !3066, line: 143, baseType: !2739, size: 64, offset: 1728)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3065, file: !3066, line: 150, baseType: !3110, size: 256, offset: 1792)
!3110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3111, size: 256, elements: !280)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3066, line: 38, size: 128, elements: !3112)
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3111, file: !3066, line: 39, baseType: !613, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3111, file: !3066, line: 40, baseType: !613, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3065, file: !3066, line: 156, baseType: !3116, size: 192, offset: 2048)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3066, line: 66, size: 192, elements: !3117)
!3117 = !{!3118}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3116, file: !3066, line: 67, baseType: !3119, size: 192)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3066, line: 47, size: 192, elements: !3120)
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3119, file: !3066, line: 48, baseType: !413, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3119, file: !3066, line: 49, baseType: !413, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3119, file: !3066, line: 50, baseType: !413, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3065, file: !3066, line: 160, baseType: !3011, size: 640, offset: 2240)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3065, file: !3066, line: 163, baseType: !3126, size: 256, offset: 2880)
!3126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 256, elements: !553)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3065, file: !3066, line: 169, baseType: !531, size: 64, offset: 3136)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3065, file: !3066, line: 172, baseType: !85, size: 32, offset: 3200)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3065, file: !3066, line: 174, baseType: !3130, size: 64, offset: 3264)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3066, line: 174, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3065, file: !3066, line: 185, baseType: !3133, size: 64, offset: 3328)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !831, line: 860, baseType: !3134)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !831, line: 853, size: 64, elements: !3135)
!3135 = !{!3136, !3137}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3134, file: !831, line: 858, baseType: !830, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3134, file: !831, line: 859, baseType: !487, size: 32, offset: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3065, file: !3066, line: 186, baseType: !613, size: 64, offset: 3392)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3065, file: !3066, line: 186, baseType: !613, size: 64, offset: 3456)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3065, file: !3066, line: 186, baseType: !613, size: 64, offset: 3520)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3065, file: !3066, line: 186, baseType: !613, size: 64, offset: 3584)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3065, file: !3066, line: 187, baseType: !613, size: 64, offset: 3648)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3065, file: !3066, line: 188, baseType: !613, size: 64, offset: 3712)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3065, file: !3066, line: 189, baseType: !2999, size: 192, offset: 3776)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3065, file: !3066, line: 190, baseType: !190, size: 64, offset: 3968)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3065, file: !3066, line: 190, baseType: !190, size: 64, offset: 4032)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3065, file: !3066, line: 190, baseType: !190, size: 64, offset: 4096)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3065, file: !3066, line: 190, baseType: !190, size: 64, offset: 4160)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3065, file: !3066, line: 191, baseType: !190, size: 64, offset: 4224)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3065, file: !3066, line: 191, baseType: !190, size: 64, offset: 4288)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3065, file: !3066, line: 191, baseType: !190, size: 64, offset: 4352)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3065, file: !3066, line: 191, baseType: !190, size: 64, offset: 4416)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3065, file: !3066, line: 192, baseType: !190, size: 64, offset: 4480)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3065, file: !3066, line: 192, baseType: !190, size: 64, offset: 4544)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3065, file: !3066, line: 192, baseType: !190, size: 64, offset: 4608)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3065, file: !3066, line: 192, baseType: !190, size: 64, offset: 4672)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3065, file: !3066, line: 193, baseType: !190, size: 64, offset: 4736)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3065, file: !3066, line: 193, baseType: !190, size: 64, offset: 4800)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3065, file: !3066, line: 194, baseType: !3160, size: 448, offset: 4864)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3161, line: 12, size: 448, elements: !3162)
!3161 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3162 = !{!3163, !3164, !3165, !3166, !3167, !3168, !3169}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3160, file: !3161, line: 15, baseType: !613, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3160, file: !3161, line: 17, baseType: !613, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3160, file: !3161, line: 19, baseType: !613, size: 64, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3160, file: !3161, line: 21, baseType: !613, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3160, file: !3161, line: 29, baseType: !613, size: 64, offset: 256)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3160, file: !3161, line: 35, baseType: !613, size: 64, offset: 320)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3160, file: !3161, line: 44, baseType: !613, size: 64, offset: 384)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3065, file: !3066, line: 202, baseType: !615, size: 64, offset: 5312)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3065, file: !3066, line: 213, baseType: !3172, size: 2048, offset: 5376)
!3172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3173, size: 2048, elements: !3034)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3174, line: 43, size: 128, elements: !3175)
!3174 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3175 = !{!3176, !3177}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3173, file: !3174, line: 44, baseType: !1023, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3173, file: !3174, line: 45, baseType: !1023, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3065, file: !3066, line: 216, baseType: !3179, size: 448, offset: 7424)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3066, line: 30, size: 448, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3184, !3185, !3186, !3187}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3179, file: !3066, line: 31, baseType: !85, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3179, file: !3066, line: 32, baseType: !979, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3179, file: !3066, line: 33, baseType: !190, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3179, file: !3066, line: 34, baseType: !613, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3179, file: !3066, line: 34, baseType: !613, size: 64, offset: 256)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3179, file: !3066, line: 35, baseType: !190, size: 64, offset: 320)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3179, file: !3066, line: 35, baseType: !190, size: 64, offset: 384)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3065, file: !3066, line: 219, baseType: !3189, size: 64, offset: 7872)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3066, line: 219, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3065, file: !3066, line: 222, baseType: !7, size: 32, offset: 7936)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3065, file: !3066, line: 223, baseType: !3193, size: 64, offset: 8000)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3066, line: 223, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3065, file: !3066, line: 230, baseType: !206, size: 8, offset: 8064)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3065, file: !3066, line: 231, baseType: !326, size: 16, offset: 8080)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3065, file: !3066, line: 232, baseType: !326, size: 16, offset: 8096)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3065, file: !3066, line: 234, baseType: !1522, size: 64, offset: 8128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3065, file: !3066, line: 237, baseType: !407, size: 256, offset: 8192)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3065, file: !3066, line: 243, baseType: !645, size: 320, offset: 8448)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2621, file: !1729, line: 1111, baseType: !3202, size: 64, offset: 15424)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3066, line: 20, size: 16640, elements: !3204)
!3204 = !{!3205, !3206, !3207, !3208}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3203, file: !3066, line: 21, baseType: !487, size: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3203, file: !3066, line: 22, baseType: !535, size: 32, offset: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3203, file: !3066, line: 23, baseType: !557, size: 192, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3203, file: !3066, line: 24, baseType: !3209, size: 16384, offset: 256)
!3209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3210, size: 16384, elements: !1166)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !791, line: 51, size: 256, elements: !3211)
!3211 = !{!3212}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3210, file: !791, line: 52, baseType: !3213, size: 256)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !791, line: 37, size: 256, elements: !3214)
!3214 = !{!3215, !3222, !3223, !3227}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3213, file: !791, line: 39, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3217, line: 83, baseType: !3218)
!3217 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3217, line: 82, baseType: !3220)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{null, !85}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3213, file: !791, line: 40, baseType: !190, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3213, file: !791, line: 46, baseType: !3224, size: 64, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3217, line: 86, baseType: !3225)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3217, line: 85, baseType: !2249)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3213, file: !791, line: 48, baseType: !3080, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2621, file: !1729, line: 1112, baseType: !3080, size: 64, offset: 15488)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2621, file: !1729, line: 1113, baseType: !3080, size: 64, offset: 15552)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2621, file: !1729, line: 1115, baseType: !3080, size: 64, offset: 15616)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2621, file: !1729, line: 1116, baseType: !3076, size: 192, offset: 15680)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2621, file: !1729, line: 1117, baseType: !190, size: 64, offset: 15872)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2621, file: !1729, line: 1118, baseType: !1021, size: 64, offset: 15936)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2621, file: !1729, line: 1119, baseType: !7, size: 32, offset: 16000)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2621, file: !1729, line: 1121, baseType: !480, size: 64, offset: 16064)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2621, file: !1729, line: 1125, baseType: !3237, size: 64, offset: 16128)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1729, line: 43, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2621, file: !1729, line: 1127, baseType: !576, size: 32, offset: 16192)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2621, file: !1729, line: 1128, baseType: !7, size: 32, offset: 16224)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2621, file: !1729, line: 1130, baseType: !3242, size: 128, offset: 16256)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3243, line: 37, size: 128, elements: !3244)
!3243 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3244 = !{!3245, !3246, !3247}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3242, file: !3243, line: 38, baseType: !85, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3242, file: !3243, line: 39, baseType: !434, size: 32, offset: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3242, file: !3243, line: 40, baseType: !3248, size: 64, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3243, line: 24, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2621, file: !1729, line: 1131, baseType: !3251, size: 256, offset: 16384)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3252, line: 12, size: 256, elements: !3253)
!3252 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3253 = !{!3254, !3255, !3256, !3257}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3251, file: !3252, line: 13, baseType: !713, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3251, file: !3252, line: 14, baseType: !190, size: 64, offset: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3251, file: !3252, line: 15, baseType: !190, size: 64, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3251, file: !3252, line: 16, baseType: !206, size: 8, offset: 192)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2621, file: !1729, line: 1134, baseType: !613, size: 64, offset: 16640)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2621, file: !1729, line: 1135, baseType: !613, size: 64, offset: 16704)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2621, file: !1729, line: 1138, baseType: !487, size: 32, offset: 16768)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2621, file: !1729, line: 1141, baseType: !421, size: 32, offset: 16800)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2621, file: !1729, line: 1143, baseType: !3263, size: 64, offset: 16832)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1729, line: 735, size: 64, elements: !3264)
!3264 = !{!3265}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3263, file: !1729, line: 736, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2621, file: !1729, line: 1147, baseType: !1236, size: 128, offset: 16896)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2621, file: !1729, line: 1149, baseType: !2620, size: 64, offset: 17024)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2621, file: !1729, line: 1151, baseType: !3270, size: 64, offset: 17088)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1729, line: 1151, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2621, file: !1729, line: 1188, baseType: !191, size: 64, offset: 17152)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2621, file: !1729, line: 1191, baseType: !3274, size: 64, offset: 17216)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1729, line: 44, flags: DIFlagFwdDecl)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2621, file: !1729, line: 1194, baseType: !3277, size: 64, offset: 17280)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1729, line: 45, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2621, file: !1729, line: 1197, baseType: !3280, size: 64, offset: 17344)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1729, line: 61, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2621, file: !1729, line: 1199, baseType: !3283, size: 64, offset: 17408)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3285, line: 99, size: 128, elements: !3286)
!3285 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3286 = !{!3287, !3288, !3289}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3284, file: !3285, line: 100, baseType: !411, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3284, file: !3285, line: 101, baseType: !434, size: 32, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3284, file: !3285, line: 103, baseType: !260, size: 16, offset: 96)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2621, file: !1729, line: 1202, baseType: !3291, size: 64, offset: 17472)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1729, line: 48, flags: DIFlagFwdDecl)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2621, file: !1729, line: 1205, baseType: !190, size: 64, offset: 17536)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2621, file: !1729, line: 1206, baseType: !3295, size: 64, offset: 17600)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !791, line: 14, baseType: !3297)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !791, line: 12, size: 384, elements: !3298)
!3298 = !{!3299}
!3299 = !DIDerivedType(tag: DW_TAG_member, scope: !3297, file: !791, line: 13, baseType: !3300, size: 384)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3297, file: !791, line: 13, size: 384, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3300, file: !791, line: 13, baseType: !85, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3300, file: !791, line: 13, baseType: !85, size: 32, offset: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3300, file: !791, line: 13, baseType: !85, size: 32, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3300, file: !791, line: 13, baseType: !3306, size: 256, offset: 128)
!3306 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3307, line: 37, size: 256, elements: !3308)
!3307 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3308 = !{!3309, !3314, !3327, !3333, !3342, !3368, !3373}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3306, file: !3307, line: 42, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3306, file: !3307, line: 39, size: 64, elements: !3311)
!3311 = !{!3312, !3313}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3310, file: !3307, line: 40, baseType: !2976, size: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3310, file: !3307, line: 41, baseType: !582, size: 32, offset: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3306, file: !3307, line: 50, baseType: !3315, size: 192)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3306, file: !3307, line: 45, size: 192, elements: !3316)
!3316 = !{!3317, !3319, !3320, !3326}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3315, file: !3307, line: 46, baseType: !3318, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !502, line: 95, baseType: !85)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3315, file: !3307, line: 47, baseType: !85, size: 32, offset: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3315, file: !3307, line: 48, baseType: !3321, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3307, line: 11, baseType: !3322)
!3322 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3307, line: 8, size: 64, elements: !3323)
!3323 = !{!3324, !3325}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3322, file: !3307, line: 9, baseType: !85, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3322, file: !3307, line: 10, baseType: !191, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3315, file: !3307, line: 49, baseType: !85, size: 32, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3306, file: !3307, line: 57, baseType: !3328, size: 128)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3306, file: !3307, line: 53, size: 128, elements: !3329)
!3329 = !{!3330, !3331, !3332}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3328, file: !3307, line: 54, baseType: !2976, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3328, file: !3307, line: 55, baseType: !582, size: 32, offset: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3328, file: !3307, line: 56, baseType: !3321, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3306, file: !3307, line: 66, baseType: !3334, size: 256)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3306, file: !3307, line: 60, size: 256, elements: !3335)
!3335 = !{!3336, !3337, !3338, !3339, !3341}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3334, file: !3307, line: 61, baseType: !2976, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3334, file: !3307, line: 62, baseType: !582, size: 32, offset: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3334, file: !3307, line: 63, baseType: !85, size: 32, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3334, file: !3307, line: 64, baseType: !3340, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !502, line: 94, baseType: !1020)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3334, file: !3307, line: 65, baseType: !3340, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3306, file: !3307, line: 105, baseType: !3343, size: 256)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3306, file: !3307, line: 69, size: 256, elements: !3344)
!3344 = !{!3345, !3346}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3343, file: !3307, line: 70, baseType: !191, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, scope: !3343, file: !3307, line: 79, baseType: !3347, size: 192, offset: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3343, file: !3307, line: 79, size: 192, elements: !3348)
!3348 = !{!3349, !3350, !3351, !3357, !3362}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3347, file: !3307, line: 81, baseType: !85, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3347, file: !3307, line: 86, baseType: !326, size: 16)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3347, file: !3307, line: 92, baseType: !3352, size: 192)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3347, file: !3307, line: 88, size: 192, elements: !3353)
!3353 = !{!3354, !3355, !3356}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3352, file: !3307, line: 89, baseType: !195, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3352, file: !3307, line: 90, baseType: !191, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3352, file: !3307, line: 91, baseType: !191, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3347, file: !3307, line: 97, baseType: !3358, size: 96)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3347, file: !3307, line: 94, size: 96, elements: !3359)
!3359 = !{!3360, !3361}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3358, file: !3307, line: 95, baseType: !195, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3358, file: !3307, line: 96, baseType: !301, size: 32, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3347, file: !3307, line: 103, baseType: !3363, size: 128)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3347, file: !3307, line: 99, size: 128, elements: !3364)
!3364 = !{!3365, !3366, !3367}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3363, file: !3307, line: 100, baseType: !190, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3363, file: !3307, line: 101, baseType: !301, size: 32, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3363, file: !3307, line: 102, baseType: !301, size: 32, offset: 96)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3306, file: !3307, line: 111, baseType: !3369, size: 128)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3306, file: !3307, line: 108, size: 128, elements: !3370)
!3370 = !{!3371, !3372}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3369, file: !3307, line: 109, baseType: !979, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3369, file: !3307, line: 110, baseType: !85, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3306, file: !3307, line: 118, baseType: !3374, size: 128)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3306, file: !3307, line: 114, size: 128, elements: !3375)
!3375 = !{!3376, !3377, !3378}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3374, file: !3307, line: 115, baseType: !191, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3374, file: !3307, line: 116, baseType: !85, size: 32, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3374, file: !3307, line: 117, baseType: !7, size: 32, offset: 96)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2621, file: !1729, line: 1208, baseType: !3160, size: 448, offset: 17664)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2621, file: !1729, line: 1215, baseType: !613, size: 64, offset: 18112)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2621, file: !1729, line: 1217, baseType: !613, size: 64, offset: 18176)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2621, file: !1729, line: 1219, baseType: !613, size: 64, offset: 18240)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2621, file: !1729, line: 1223, baseType: !3384, size: 64, offset: 18304)
!3384 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3385, line: 99, baseType: !3386)
!3385 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3385, line: 99, size: 64, elements: !3387)
!3387 = !{!3388}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3386, file: !3385, line: 99, baseType: !265, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2621, file: !1729, line: 1225, baseType: !830, size: 32, offset: 18368)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2621, file: !1729, line: 1226, baseType: !85, size: 32, offset: 18400)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2621, file: !1729, line: 1227, baseType: !85, size: 32, offset: 18432)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2621, file: !1729, line: 1231, baseType: !3393, size: 64, offset: 18496)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1729, line: 1231, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2621, file: !1729, line: 1233, baseType: !455, size: 128, offset: 18560)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2621, file: !1729, line: 1240, baseType: !3397, size: 64, offset: 18688)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1729, line: 62, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2621, file: !1729, line: 1242, baseType: !3400, size: 64, offset: 18752)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1729, line: 1242, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2621, file: !1729, line: 1244, baseType: !455, size: 128, offset: 18816)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2621, file: !1729, line: 1245, baseType: !3404, size: 64, offset: 18944)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1729, line: 51, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2621, file: !1729, line: 1246, baseType: !407, size: 256, offset: 19008)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2621, file: !1729, line: 1247, baseType: !7, size: 32, offset: 19264)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2621, file: !1729, line: 1250, baseType: !3409, size: 64, offset: 19328)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1729, line: 57, flags: DIFlagFwdDecl)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2621, file: !1729, line: 1251, baseType: !407, size: 256, offset: 19392)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2621, file: !1729, line: 1252, baseType: !455, size: 128, offset: 19648)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2621, file: !1729, line: 1259, baseType: !1727, size: 64, offset: 19776)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2621, file: !1729, line: 1260, baseType: !326, size: 16, offset: 19840)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2621, file: !1729, line: 1261, baseType: !326, size: 16, offset: 19856)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2621, file: !1729, line: 1314, baseType: !3417, size: 64, offset: 19904)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3419, line: 62, size: 256, align: 256, elements: !3420)
!3419 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426, !3427}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3418, file: !3419, line: 75, baseType: !301, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3418, file: !3419, line: 90, baseType: !301, size: 32, offset: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3418, file: !3419, line: 112, baseType: !614, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3418, file: !3419, line: 132, baseType: !301, size: 32, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3418, file: !3419, line: 140, baseType: !301, size: 32, offset: 160)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3418, file: !3419, line: 149, baseType: !301, size: 32, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3418, file: !3419, line: 154, baseType: !3428, offset: 224)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, elements: !572)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2621, file: !1729, line: 1315, baseType: !670, size: 32, offset: 19968)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2621, file: !1729, line: 1316, baseType: !670, size: 32, offset: 20000)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2621, file: !1729, line: 1321, baseType: !190, size: 64, offset: 20032)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2621, file: !1729, line: 1325, baseType: !85, size: 32, offset: 20096)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2621, file: !1729, line: 1326, baseType: !85, size: 32, offset: 20128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2621, file: !1729, line: 1327, baseType: !85, size: 32, offset: 20160)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2621, file: !1729, line: 1328, baseType: !85, size: 32, offset: 20192)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2621, file: !1729, line: 1329, baseType: !477, size: 128, align: 64, offset: 20224)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2621, file: !1729, line: 1332, baseType: !3438, size: 128, offset: 20352)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3439, line: 51, size: 128, elements: !3440)
!3439 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3440 = !{!3441, !3446, !3447}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3438, file: !3439, line: 60, baseType: !3442, size: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3443, line: 7, size: 64, elements: !3444)
!3443 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3444 = !{!3445}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3442, file: !3443, line: 12, baseType: !2846, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3438, file: !3439, line: 63, baseType: !206, size: 8, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3438, file: !3439, line: 70, baseType: !206, size: 8, offset: 72)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2621, file: !1729, line: 1335, baseType: !3449, size: 64, offset: 20480)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1729, line: 59, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2621, file: !1729, line: 1337, baseType: !3452, size: 128, offset: 20544)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3439, line: 39, size: 128, elements: !3453)
!3453 = !{!3454, !3455, !3456}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3452, file: !3439, line: 40, baseType: !1254, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3452, file: !3439, line: 42, baseType: !301, size: 32, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3452, file: !3439, line: 43, baseType: !301, size: 32, offset: 96)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2621, file: !1729, line: 1340, baseType: !3458, size: 64, offset: 20672)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1729, line: 69, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2621, file: !1729, line: 1351, baseType: !85, size: 32, offset: 20736)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2621, file: !1729, line: 1352, baseType: !85, size: 32, offset: 20768)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2621, file: !1729, line: 1354, baseType: !190, size: 64, offset: 20800)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2621, file: !1729, line: 1364, baseType: !613, size: 64, offset: 20864)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2621, file: !1729, line: 1365, baseType: !613, size: 64, offset: 20928)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2621, file: !1729, line: 1412, baseType: !190, size: 64, offset: 20992)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2621, file: !1729, line: 1453, baseType: !3467, size: 64, offset: 21056)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1729, line: 1453, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2621, file: !1729, line: 1457, baseType: !3470, size: 64, offset: 21120)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !3472)
!3472 = !{!3473, !3474, !3493, !3496, !3497, !3530, !3540}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3471, file: !57, line: 62, baseType: !56, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, scope: !3471, file: !57, line: 64, baseType: !3475, size: 192, offset: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3471, file: !57, line: 64, size: 192, elements: !3476)
!3476 = !{!3477, !3488}
!3477 = !DIDerivedType(tag: DW_TAG_member, scope: !3475, file: !57, line: 65, baseType: !3478, size: 192)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3475, file: !57, line: 65, size: 192, elements: !3479)
!3479 = !{!3480, !3487}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3478, file: !57, line: 66, baseType: !3481, size: 128)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3482, line: 50, size: 128, elements: !3483)
!3482 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3483 = !{!3484, !3485, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3481, file: !3482, line: 52, baseType: !190, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3481, file: !3482, line: 54, baseType: !7, size: 32, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3481, file: !3482, line: 55, baseType: !7, size: 32, offset: 96)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3478, file: !57, line: 67, baseType: !190, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, scope: !3475, file: !57, line: 70, baseType: !3489, size: 192)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3475, file: !57, line: 70, size: 192, elements: !3490)
!3490 = !{!3491, !3492}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3489, file: !57, line: 71, baseType: !477, size: 128, align: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3489, file: !57, line: 72, baseType: !190, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3471, file: !57, line: 76, baseType: !3494, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3471, file: !57, line: 77, baseType: !190, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3471, file: !57, line: 79, baseType: !3498, size: 64, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3482, line: 25, size: 256, elements: !3500)
!3500 = !{!3501, !3507, !3511}
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3499, file: !3482, line: 26, baseType: !3502, size: 128)
!3502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3499, file: !3482, line: 26, size: 128, elements: !3503)
!3503 = !{!3504, !3506}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3502, file: !3482, line: 27, baseType: !3505, size: 128)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 128, elements: !3034)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3502, file: !3482, line: 28, baseType: !3505, size: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3499, file: !3482, line: 31, baseType: !3508, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3510)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3482, line: 23, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, scope: !3499, file: !3482, line: 33, baseType: !3512, size: 64, offset: 192)
!3512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3499, file: !3482, line: 33, size: 64, elements: !3513)
!3513 = !{!3514, !3520, !3525}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3512, file: !3482, line: 38, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3512, file: !3482, line: 34, size: 64, elements: !3516)
!3516 = !{!3517, !3518, !3519}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3515, file: !3482, line: 35, baseType: !630, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3515, file: !3482, line: 36, baseType: !442, size: 8, offset: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3515, file: !3482, line: 37, baseType: !442, size: 8, offset: 40)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3512, file: !3482, line: 42, baseType: !3521, size: 16)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3512, file: !3482, line: 39, size: 16, elements: !3522)
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3521, file: !3482, line: 40, baseType: !442, size: 8)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3521, file: !3482, line: 41, baseType: !442, size: 8, offset: 8)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3512, file: !3482, line: 46, baseType: !3526, size: 16)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3512, file: !3482, line: 43, size: 16, elements: !3527)
!3527 = !{!3528, !3529}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3526, file: !3482, line: 44, baseType: !442, size: 8)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3526, file: !3482, line: 45, baseType: !442, size: 8, offset: 8)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3471, file: !57, line: 81, baseType: !3531, size: 64, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3532, file: !57, line: 86, baseType: !3494, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3532, file: !57, line: 87, baseType: !190, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3532, file: !57, line: 88, baseType: !190, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3532, file: !57, line: 89, baseType: !190, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3532, file: !57, line: 90, baseType: !206, size: 8, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3532, file: !57, line: 92, baseType: !3531, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3471, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2621, file: !1729, line: 1463, baseType: !3542, offset: 21184)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1729, line: 739, elements: !1543)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2621, file: !1729, line: 1470, baseType: !477, size: 128, align: 64, offset: 21184)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2621, file: !1729, line: 1471, baseType: !535, size: 32, offset: 21312)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2621, file: !1729, line: 1472, baseType: !85, size: 32, offset: 21344)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2621, file: !1729, line: 1474, baseType: !2620, size: 64, offset: 21376)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2621, file: !1729, line: 1475, baseType: !2144, size: 320, offset: 21440)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2621, file: !1729, line: 1478, baseType: !3549, size: 64, offset: 21760)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1729, line: 1478, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2621, file: !1729, line: 1482, baseType: !535, size: 32, offset: 21824)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2621, file: !1729, line: 1489, baseType: !191, size: 64, offset: 21888)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2621, file: !1729, line: 1504, baseType: !191, size: 64, offset: 21952)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2621, file: !1729, line: 1505, baseType: !614, size: 64, offset: 22016)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2621, file: !1729, line: 1506, baseType: !613, size: 64, offset: 22080)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2621, file: !1729, line: 1507, baseType: !614, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2621, file: !1729, line: 1508, baseType: !614, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2621, file: !1729, line: 1509, baseType: !614, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2621, file: !1729, line: 1510, baseType: !477, size: 128, align: 64, offset: 22208)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2621, file: !1729, line: 1511, baseType: !85, size: 32, offset: 22336)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2621, file: !1729, line: 1515, baseType: !3562, size: 64, offset: 22400)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !472, line: 56, size: 64, elements: !3563)
!3563 = !{!3564}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3562, file: !472, line: 57, baseType: !475, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2621, file: !1729, line: 1518, baseType: !3562, size: 64, offset: 22464)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2621, file: !1729, line: 1528, baseType: !477, size: 128, align: 64, offset: 22528)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2621, file: !1729, line: 1552, baseType: !3568, size: 35328, offset: 23040)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3569, line: 430, size: 35328, elements: !3570)
!3569 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3570 = !{!3571, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3600, !3601, !3602, !3603, !3604, !3605, !3608, !3609, !3610, !3611}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3568, file: !3569, line: 432, baseType: !3572, size: 192)
!3572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3573, size: 192, elements: !527)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3574, line: 16, size: 64, elements: !3575)
!3574 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3575 = !{!3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3573, file: !3574, line: 17, baseType: !397, size: 16)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3573, file: !3574, line: 18, baseType: !397, size: 16, offset: 16)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3573, file: !3574, line: 19, baseType: !397, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3573, file: !3574, line: 19, baseType: !397, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3573, file: !3574, line: 19, baseType: !397, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3573, file: !3574, line: 19, baseType: !397, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3573, file: !3574, line: 19, baseType: !397, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3573, file: !3574, line: 20, baseType: !397, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3573, file: !3574, line: 20, baseType: !397, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3573, file: !3574, line: 20, baseType: !397, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3573, file: !3574, line: 20, baseType: !397, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3573, file: !3574, line: 20, baseType: !397, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3573, file: !3574, line: 20, baseType: !397, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3568, file: !3569, line: 436, baseType: !190, size: 64, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3568, file: !3569, line: 440, baseType: !260, size: 16, offset: 256)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3568, file: !3569, line: 441, baseType: !260, size: 16, offset: 272)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3568, file: !3569, line: 442, baseType: !260, size: 16, offset: 288)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3568, file: !3569, line: 443, baseType: !260, size: 16, offset: 304)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3568, file: !3569, line: 447, baseType: !190, size: 64, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3568, file: !3569, line: 448, baseType: !190, size: 64, offset: 384)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3568, file: !3569, line: 459, baseType: !3597, size: 256, offset: 448)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3598, size: 256, elements: !553)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3569, line: 428, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3568, file: !3569, line: 461, baseType: !190, size: 64, offset: 704)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3568, file: !3569, line: 463, baseType: !190, size: 64, offset: 768)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3568, file: !3569, line: 465, baseType: !190, size: 64, offset: 832)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3568, file: !3569, line: 466, baseType: !190, size: 64, offset: 896)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3568, file: !3569, line: 467, baseType: !190, size: 64, offset: 960)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3568, file: !3569, line: 473, baseType: !3606, size: 64, offset: 1024)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3569, line: 10, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3568, file: !3569, line: 480, baseType: !190, size: 64, offset: 1088)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3568, file: !3569, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3568, file: !3569, line: 491, baseType: !670, size: 32, offset: 1184)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3568, file: !3569, line: 501, baseType: !3612, size: 33792, offset: 1536)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3613, line: 448, size: 33792, elements: !3614)
!3613 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3614 = !{!3615, !3616, !3617, !3777, !3778, !3784, !3785}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3612, file: !3613, line: 461, baseType: !7, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3612, file: !3613, line: 468, baseType: !190, size: 64, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3612, file: !3613, line: 476, baseType: !3618, size: 64, offset: 128)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3613, line: 356, size: 33280, align: 512, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3619, file: !3613, line: 358, baseType: !7, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3619, file: !3613, line: 361, baseType: !7, size: 32, offset: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3619, file: !3613, line: 364, baseType: !613, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3619, file: !3613, line: 367, baseType: !613, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3619, file: !3613, line: 370, baseType: !613, size: 64, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3619, file: !3613, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3619, file: !3613, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3619, file: !3613, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3619, file: !3613, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3619, file: !3613, line: 397, baseType: !3631, size: 32768, offset: 512)
!3631 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3613, line: 348, size: 32768, elements: !3632)
!3632 = !{!3633, !3648, !3683, !3760, !3773}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3631, file: !3613, line: 349, baseType: !3634, size: 896)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3613, line: 12, size: 896, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3647}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3634, file: !3613, line: 13, baseType: !670, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3634, file: !3613, line: 14, baseType: !670, size: 32, offset: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3634, file: !3613, line: 15, baseType: !670, size: 32, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3634, file: !3613, line: 16, baseType: !670, size: 32, offset: 96)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3634, file: !3613, line: 17, baseType: !670, size: 32, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3634, file: !3613, line: 18, baseType: !670, size: 32, offset: 160)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3634, file: !3613, line: 19, baseType: !670, size: 32, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3634, file: !3613, line: 22, baseType: !3644, size: 640, offset: 224)
!3644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 640, elements: !3645)
!3645 = !{!3646}
!3646 = !DISubrange(count: 20)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3634, file: !3613, line: 25, baseType: !670, size: 32, offset: 864)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3631, file: !3613, line: 350, baseType: !3649, size: 4096, align: 128)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3613, line: 34, size: 4096, align: 128, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3670, !3671, !3672, !3674, !3676, !3678}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3649, file: !3613, line: 35, baseType: !397, size: 16)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3649, file: !3613, line: 36, baseType: !397, size: 16, offset: 16)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3649, file: !3613, line: 37, baseType: !397, size: 16, offset: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3649, file: !3613, line: 38, baseType: !397, size: 16, offset: 48)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !3649, file: !3613, line: 39, baseType: !3656, size: 128, offset: 64)
!3656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3649, file: !3613, line: 39, size: 128, elements: !3657)
!3657 = !{!3658, !3663}
!3658 = !DIDerivedType(tag: DW_TAG_member, scope: !3656, file: !3613, line: 40, baseType: !3659, size: 128)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3656, file: !3613, line: 40, size: 128, elements: !3660)
!3660 = !{!3661, !3662}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3659, file: !3613, line: 41, baseType: !613, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3659, file: !3613, line: 42, baseType: !613, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, scope: !3656, file: !3613, line: 44, baseType: !3664, size: 128)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3656, file: !3613, line: 44, size: 128, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3669}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3664, file: !3613, line: 45, baseType: !670, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3664, file: !3613, line: 46, baseType: !670, size: 32, offset: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3664, file: !3613, line: 47, baseType: !670, size: 32, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3664, file: !3613, line: 48, baseType: !670, size: 32, offset: 96)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3649, file: !3613, line: 51, baseType: !670, size: 32, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3649, file: !3613, line: 52, baseType: !670, size: 32, offset: 224)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3649, file: !3613, line: 55, baseType: !3673, size: 1024, offset: 256)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 1024, elements: !304)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3649, file: !3613, line: 58, baseType: !3675, size: 2048, offset: 1280)
!3675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 2048, elements: !1166)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3649, file: !3613, line: 60, baseType: !3677, size: 384, offset: 3328)
!3677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 384, elements: !271)
!3678 = !DIDerivedType(tag: DW_TAG_member, scope: !3649, file: !3613, line: 62, baseType: !3679, size: 384, offset: 3712)
!3679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3649, file: !3613, line: 62, size: 384, elements: !3680)
!3680 = !{!3681, !3682}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3679, file: !3613, line: 63, baseType: !3677, size: 384)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3679, file: !3613, line: 64, baseType: !3677, size: 384)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3631, file: !3613, line: 351, baseType: !3684, size: 1088)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3613, line: 79, size: 1088, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3759}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3684, file: !3613, line: 80, baseType: !670, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3684, file: !3613, line: 81, baseType: !670, size: 32, offset: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3684, file: !3613, line: 82, baseType: !670, size: 32, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3684, file: !3613, line: 83, baseType: !670, size: 32, offset: 96)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3684, file: !3613, line: 84, baseType: !670, size: 32, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3684, file: !3613, line: 85, baseType: !670, size: 32, offset: 160)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3684, file: !3613, line: 86, baseType: !670, size: 32, offset: 192)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3684, file: !3613, line: 88, baseType: !3644, size: 640, offset: 224)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3684, file: !3613, line: 89, baseType: !442, size: 8, offset: 864)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3684, file: !3613, line: 90, baseType: !442, size: 8, offset: 872)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3684, file: !3613, line: 91, baseType: !442, size: 8, offset: 880)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3684, file: !3613, line: 92, baseType: !442, size: 8, offset: 888)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3684, file: !3613, line: 93, baseType: !442, size: 8, offset: 896)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3684, file: !3613, line: 94, baseType: !442, size: 8, offset: 904)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3684, file: !3613, line: 95, baseType: !3701, size: 64, offset: 960)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3703, line: 11, size: 128, elements: !3704)
!3703 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3704 = !{!3705, !3706}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3702, file: !3703, line: 12, baseType: !979, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3702, file: !3703, line: 13, baseType: !3707, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3709, line: 103, size: 1344, elements: !3710)
!3709 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3710 = !{!3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3739, !3740, !3741}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3708, file: !3709, line: 109, baseType: !190, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3708, file: !3709, line: 110, baseType: !190, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3708, file: !3709, line: 111, baseType: !190, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3708, file: !3709, line: 112, baseType: !190, size: 64, offset: 192)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3708, file: !3709, line: 113, baseType: !190, size: 64, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3708, file: !3709, line: 114, baseType: !190, size: 64, offset: 320)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3708, file: !3709, line: 117, baseType: !190, size: 64, offset: 384)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3708, file: !3709, line: 118, baseType: !190, size: 64, offset: 448)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3708, file: !3709, line: 119, baseType: !190, size: 64, offset: 512)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3708, file: !3709, line: 120, baseType: !190, size: 64, offset: 576)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3708, file: !3709, line: 121, baseType: !190, size: 64, offset: 640)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3708, file: !3709, line: 122, baseType: !190, size: 64, offset: 704)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3708, file: !3709, line: 123, baseType: !190, size: 64, offset: 768)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3708, file: !3709, line: 124, baseType: !190, size: 64, offset: 832)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3708, file: !3709, line: 125, baseType: !190, size: 64, offset: 896)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3708, file: !3709, line: 139, baseType: !190, size: 64, offset: 960)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3708, file: !3709, line: 142, baseType: !190, size: 64, offset: 1024)
!3728 = !DIDerivedType(tag: DW_TAG_member, scope: !3708, file: !3709, line: 144, baseType: !3729, size: 64, offset: 1088)
!3729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3708, file: !3709, line: 144, size: 64, elements: !3730)
!3730 = !{!3731, !3732, !3733}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3729, file: !3709, line: 146, baseType: !397, size: 16)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3729, file: !3709, line: 148, baseType: !613, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3729, file: !3709, line: 150, baseType: !3734, size: 64)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3709, line: 59, size: 64, elements: !3735)
!3735 = !{!3736, !3737, !3738}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3734, file: !3709, line: 61, baseType: !613, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3734, file: !3709, line: 63, baseType: !613, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3734, file: !3709, line: 65, baseType: !613, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3708, file: !3709, line: 153, baseType: !190, size: 64, offset: 1152)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3708, file: !3709, line: 154, baseType: !190, size: 64, offset: 1216)
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !3708, file: !3709, line: 156, baseType: !3742, size: 64, offset: 1280)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3708, file: !3709, line: 156, size: 64, elements: !3743)
!3743 = !{!3744, !3745, !3746}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3742, file: !3709, line: 158, baseType: !397, size: 16)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3742, file: !3709, line: 160, baseType: !613, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3742, file: !3709, line: 162, baseType: !3747, size: 64)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3709, line: 69, size: 64, elements: !3748)
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3747, file: !3709, line: 71, baseType: !613, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3747, file: !3709, line: 73, baseType: !613, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3747, file: !3709, line: 75, baseType: !613, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3747, file: !3709, line: 77, baseType: !613, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3747, file: !3709, line: 80, baseType: !613, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3747, file: !3709, line: 83, baseType: !613, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3747, file: !3709, line: 86, baseType: !613, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3747, file: !3709, line: 88, baseType: !613, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3747, file: !3709, line: 93, baseType: !613, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3747, file: !3709, line: 100, baseType: !613, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3684, file: !3613, line: 96, baseType: !670, size: 32, offset: 1024)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3631, file: !3613, line: 352, baseType: !3761, size: 4608, align: 512)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3613, line: 333, size: 4608, align: 512, elements: !3762)
!3762 = !{!3763, !3764, !3771}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3761, file: !3613, line: 334, baseType: !3649, size: 4096, align: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3761, file: !3613, line: 335, baseType: !3765, size: 512, offset: 4096)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3613, line: 312, size: 512, elements: !3766)
!3766 = !{!3767, !3768, !3769}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3765, file: !3613, line: 313, baseType: !613, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3765, file: !3613, line: 314, baseType: !613, size: 64, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3765, file: !3613, line: 315, baseType: !3770, size: 384, offset: 128)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 384, elements: !691)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3761, file: !3613, line: 336, baseType: !3772, offset: 4608)
!3772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, elements: !572)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3631, file: !3613, line: 353, baseType: !3774, size: 32768)
!3774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 32768, elements: !3775)
!3775 = !{!3776}
!3776 = !DISubrange(count: 4096)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3612, file: !3613, line: 484, baseType: !3618, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3612, file: !3613, line: 491, baseType: !3779, size: 128, offset: 256)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3613, line: 404, size: 128, elements: !3780)
!3780 = !{!3781, !3782, !3783}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3779, file: !3613, line: 424, baseType: !613, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3779, file: !3613, line: 432, baseType: !7, size: 32, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3779, file: !3613, line: 440, baseType: !7, size: 32, offset: 96)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3612, file: !3613, line: 498, baseType: !3779, size: 128, offset: 384)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3612, file: !3613, line: 508, baseType: !3619, size: 33280, align: 512, offset: 512)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2603, file: !2604, line: 16, baseType: !557, size: 192, offset: 512)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2603, file: !2604, line: 17, baseType: !434, size: 32, offset: 704)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1077, file: !35, line: 1240, baseType: !191, size: 64, offset: 6912)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1077, file: !35, line: 1243, baseType: !670, size: 32, offset: 6976)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1077, file: !35, line: 1245, baseType: !661, size: 64, offset: 7040)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1077, file: !35, line: 1246, baseType: !661, size: 64, offset: 7104)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1077, file: !35, line: 1248, baseType: !301, size: 32, offset: 7168)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1077, file: !35, line: 1249, baseType: !3794, size: 64, offset: 7232)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1077, file: !35, line: 1252, baseType: !3797, size: 256, offset: 7296)
!3797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 256, elements: !304)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1077, file: !35, line: 1253, baseType: !3799, size: 128, offset: 7552)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3800, line: 21, baseType: !3801)
!3800 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3800, line: 19, size: 128, elements: !3802)
!3802 = !{!3803}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3801, file: !3800, line: 20, baseType: !3804, size: 128)
!3804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, elements: !3034)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1077, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1077, file: !35, line: 1261, baseType: !407, size: 256, offset: 7744)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1077, file: !35, line: 1267, baseType: !210, size: 64, offset: 8000)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1077, file: !35, line: 1269, baseType: !3809, size: 64, offset: 8064)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3811)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !826, line: 128, size: 1024, align: 512, elements: !3812)
!3812 = !{!3813, !3817, !3818, !3825, !3831, !3835, !3839, !3843, !3844, !3848, !3852, !3857, !3861}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3811, file: !826, line: 129, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!85, !824, !7}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3811, file: !826, line: 130, baseType: !3814, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3811, file: !826, line: 131, baseType: !3819, size: 64, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!85, !3822, !3824}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3811, file: !826, line: 132, baseType: !3826, size: 64, offset: 192)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!85, !3822, !7, !210, !3829}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3811, file: !826, line: 134, baseType: !3832, size: 64, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!85, !3822}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3811, file: !826, line: 135, baseType: !3836, size: 64, offset: 320)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!85, !824}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3811, file: !826, line: 136, baseType: !3840, size: 64, offset: 384)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{null, !824}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3811, file: !826, line: 137, baseType: !3840, size: 64, offset: 448)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3811, file: !826, line: 138, baseType: !3845, size: 64, offset: 512)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{null, !824, !864}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3811, file: !826, line: 139, baseType: !3849, size: 64, offset: 576)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!713, !824, !713, !85}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3811, file: !826, line: 140, baseType: !3853, size: 64, offset: 640)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!819, !3856}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3811, file: !826, line: 141, baseType: !3858, size: 64, offset: 704)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!85, !987, !206}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3811, file: !826, line: 142, baseType: !3862, size: 64, offset: 768)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!824, !824, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !865)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1077, file: !35, line: 1271, baseType: !3868, size: 448, offset: 8128)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2385, line: 63, size: 448, elements: !3869)
!3869 = !{!3870, !3875, !3876, !3877, !3878, !3879, !3880}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3868, file: !2385, line: 64, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!190, !3874, !2383}
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3868, file: !2385, line: 66, baseType: !3871, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3868, file: !2385, line: 69, baseType: !979, size: 64, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3868, file: !2385, line: 70, baseType: !85, size: 32, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3868, file: !2385, line: 71, baseType: !7, size: 32, offset: 224)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3868, file: !2385, line: 74, baseType: !455, size: 128, offset: 256)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3868, file: !2385, line: 85, baseType: !3881, size: 64, offset: 384)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1077, file: !35, line: 1274, baseType: !411, size: 64, offset: 8576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1077, file: !35, line: 1280, baseType: !411, size: 64, offset: 8640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1077, file: !35, line: 1283, baseType: !85, size: 32, offset: 8704)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1077, file: !35, line: 1286, baseType: !1495, size: 32, offset: 8736)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1077, file: !35, line: 1289, baseType: !2206, size: 64, offset: 8768)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1077, file: !35, line: 1290, baseType: !544, size: 64, offset: 8832)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1077, file: !35, line: 1297, baseType: !786, size: 64, offset: 8896)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1077, file: !35, line: 1304, baseType: !3890, size: 64, offset: 8960)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3891, line: 49, size: 64, elements: !3892)
!3891 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3892 = !{!3893}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3890, file: !3891, line: 50, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3891, line: 41, size: 512, align: 512, elements: !3896)
!3896 = !{!3897, !3898, !3903}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3895, file: !3891, line: 43, baseType: !487, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3895, file: !3891, line: 45, baseType: !3899, size: 192, offset: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3891, line: 29, size: 192, elements: !3900)
!3900 = !{!3901, !3902}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3899, file: !3891, line: 30, baseType: !455, size: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3899, file: !3891, line: 32, baseType: !979, size: 64, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3895, file: !3891, line: 46, baseType: !979, size: 64, offset: 256)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1077, file: !35, line: 1305, baseType: !3890, size: 64, offset: 9024)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1077, file: !35, line: 1306, baseType: !477, size: 128, align: 64, offset: 9088)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1077, file: !35, line: 1307, baseType: !1676, size: 256, offset: 9216)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1077, file: !35, line: 1309, baseType: !407, size: 256, offset: 9472)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1077, file: !35, line: 1314, baseType: !85, size: 32, offset: 9728)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1077, file: !35, line: 1317, baseType: !487, size: 32, align: 512, offset: 10240)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1077, file: !35, line: 1318, baseType: !455, size: 128, offset: 10304)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1077, file: !35, line: 1320, baseType: !487, size: 32, offset: 10432)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1077, file: !35, line: 1321, baseType: !455, size: 128, offset: 10496)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !865, file: !35, line: 656, baseType: !1227, size: 64, offset: 512)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !865, file: !35, line: 659, baseType: !191, size: 64, offset: 576)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !865, file: !35, line: 663, baseType: !190, size: 64, offset: 640)
!3916 = !DIDerivedType(tag: DW_TAG_member, scope: !865, file: !35, line: 671, baseType: !3917, size: 32, offset: 704)
!3917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !865, file: !35, line: 671, size: 32, elements: !3918)
!3918 = !{!3919, !3921}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3917, file: !35, line: 672, baseType: !3920, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3917, file: !35, line: 673, baseType: !7, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !865, file: !35, line: 675, baseType: !939, size: 32, offset: 736)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !865, file: !35, line: 676, baseType: !500, size: 64, offset: 768)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !865, file: !35, line: 677, baseType: !975, size: 128, offset: 832)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !865, file: !35, line: 678, baseType: !975, size: 128, offset: 960)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !865, file: !35, line: 679, baseType: !975, size: 128, offset: 1088)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !865, file: !35, line: 680, baseType: !487, size: 32, offset: 1216)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !865, file: !35, line: 681, baseType: !260, size: 16, offset: 1248)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !865, file: !35, line: 682, baseType: !442, size: 8, offset: 1264)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !865, file: !35, line: 683, baseType: !442, size: 8, offset: 1272)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !865, file: !35, line: 684, baseType: !2516, size: 64, offset: 1280)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !865, file: !35, line: 691, baseType: !190, size: 64, offset: 1344)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !865, file: !35, line: 692, baseType: !645, size: 320, offset: 1408)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !865, file: !35, line: 694, baseType: !190, size: 64, offset: 1728)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !865, file: !35, line: 695, baseType: !190, size: 64, offset: 1792)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !865, file: !35, line: 697, baseType: !548, size: 128, offset: 1856)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !865, file: !35, line: 698, baseType: !455, size: 128, offset: 1984)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !865, file: !35, line: 707, baseType: !455, size: 128, offset: 2112)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !865, file: !35, line: 708, baseType: !455, size: 128, offset: 2240)
!3940 = !DIDerivedType(tag: DW_TAG_member, scope: !865, file: !35, line: 709, baseType: !3941, size: 128, offset: 2368)
!3941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !865, file: !35, line: 709, size: 128, elements: !3942)
!3942 = !{!3943, !3944}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3941, file: !35, line: 710, baseType: !544, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3941, file: !35, line: 711, baseType: !477, size: 128, align: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !865, file: !35, line: 713, baseType: !413, size: 64, offset: 2496)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !865, file: !35, line: 714, baseType: !413, size: 64, offset: 2560)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !865, file: !35, line: 715, baseType: !434, size: 32, offset: 2624)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !865, file: !35, line: 716, baseType: !434, size: 32, offset: 2656)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !865, file: !35, line: 717, baseType: !434, size: 32, offset: 2688)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !865, file: !35, line: 719, baseType: !434, size: 32, offset: 2720)
!3951 = !DIDerivedType(tag: DW_TAG_member, scope: !865, file: !35, line: 721, baseType: !3952, size: 64, offset: 2752)
!3952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !865, file: !35, line: 721, size: 64, elements: !3953)
!3953 = !{!3954, !4078}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3952, file: !35, line: 722, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3957)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !3958)
!3958 = !{!3959, !3960, !3964, !3968, !3972, !3973, !3974, !3980, !3993, !3997, !4001, !4002, !4006, !4007, !4011, !4016, !4017, !4021, !4025, !4031, !4032, !4036, !4037, !4041, !4045, !4046, !4051, !4055, !4059, !4063, !4067, !4068, !4074}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3957, file: !35, line: 1915, baseType: !1110, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3957, file: !35, line: 1916, baseType: !3961, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!500, !464, !500, !85}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3957, file: !35, line: 1917, baseType: !3965, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!1018, !464, !713, !1021, !1843}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3957, file: !35, line: 1918, baseType: !3969, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!1018, !464, !210, !1021, !1843}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3957, file: !35, line: 1919, baseType: !1429, size: 64, offset: 256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3957, file: !35, line: 1920, baseType: !1429, size: 64, offset: 320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3957, file: !35, line: 1921, baseType: !3975, size: 64, offset: 384)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!85, !1432, !3978, !7}
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3957, file: !35, line: 1923, baseType: !3981, size: 64, offset: 448)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!85, !464, !3984}
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !3986)
!3986 = !{!3987, !3992}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3985, file: !35, line: 1859, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !3989)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!206, !3984, !210, !85, !500, !613, !7}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3985, file: !35, line: 1860, baseType: !500, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3957, file: !35, line: 1924, baseType: !3994, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!1863, !464, !1865}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3957, file: !35, line: 1925, baseType: !3998, size: 64, offset: 576)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!979, !464, !7, !190}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3957, file: !35, line: 1926, baseType: !3998, size: 64, offset: 640)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3957, file: !35, line: 1927, baseType: !4003, size: 64, offset: 704)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!85, !464, !1509}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3957, file: !35, line: 1928, baseType: !190, size: 64, offset: 768)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3957, file: !35, line: 1929, baseType: !4008, size: 64, offset: 832)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!85, !864, !464}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3957, file: !35, line: 1930, baseType: !4012, size: 64, offset: 896)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!85, !464, !4015}
!4015 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !191)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3957, file: !35, line: 1931, baseType: !4008, size: 64, offset: 960)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3957, file: !35, line: 1932, baseType: !4018, size: 64, offset: 1024)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!85, !464, !500, !500, !85}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3957, file: !35, line: 1933, baseType: !4022, size: 64, offset: 1088)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!85, !85, !464, !85}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3957, file: !35, line: 1934, baseType: !4026, size: 64, offset: 1152)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!85, !464, !85, !4029}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3957, file: !35, line: 1935, baseType: !1547, size: 64, offset: 1216)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3957, file: !35, line: 1936, baseType: !4033, size: 64, offset: 1280)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!85, !85}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3957, file: !35, line: 1937, baseType: !4026, size: 64, offset: 1344)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3957, file: !35, line: 1938, baseType: !4038, size: 64, offset: 1408)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!1018, !3449, !464, !1843, !1021, !7}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3957, file: !35, line: 1939, baseType: !4042, size: 64, offset: 1472)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!1018, !464, !1843, !3449, !1021, !7}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3957, file: !35, line: 1940, baseType: !1485, size: 64, offset: 1536)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3957, file: !35, line: 1941, baseType: !4047, size: 64, offset: 1600)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!85, !464, !85, !4050, !1406}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3957, file: !35, line: 1942, baseType: !4052, size: 64, offset: 1664)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!979, !464, !85, !500, !500}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3957, file: !35, line: 1944, baseType: !4056, size: 64, offset: 1728)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{null, !1819, !464}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3957, file: !35, line: 1948, baseType: !4060, size: 64, offset: 1792)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!1018, !464, !500, !464, !500, !1021, !7}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3957, file: !35, line: 1950, baseType: !4064, size: 64, offset: 1856)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!500, !464, !500, !464, !500, !500, !7}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3957, file: !35, line: 1953, baseType: !4018, size: 64, offset: 1920)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3957, file: !35, line: 1954, baseType: !4069, size: 64, offset: 1984)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!85, !4072, !7}
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3957, file: !35, line: 1955, baseType: !4075, size: 64, offset: 2048)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!85, !4072, !3978, !7}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3952, file: !35, line: 723, baseType: !2274, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !865, file: !35, line: 725, baseType: !4080, size: 64, offset: 2816)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !865, file: !35, line: 726, baseType: !1228, size: 1536, align: 64, offset: 2880)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !865, file: !35, line: 727, baseType: !455, size: 128, offset: 4416)
!4084 = !DIDerivedType(tag: DW_TAG_member, scope: !865, file: !35, line: 728, baseType: !4085, size: 64, offset: 4544)
!4085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !865, file: !35, line: 728, size: 64, elements: !4086)
!4086 = !{!4087, !4088, !4091, !4092}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4085, file: !35, line: 729, baseType: !3449, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4085, file: !35, line: 730, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4085, file: !35, line: 731, baseType: !713, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4085, file: !35, line: 732, baseType: !7, size: 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !865, file: !35, line: 735, baseType: !301, size: 32, offset: 4608)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !865, file: !35, line: 738, baseType: !301, size: 32, offset: 4640)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !865, file: !35, line: 739, baseType: !3794, size: 64, offset: 4672)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !865, file: !35, line: 750, baseType: !191, size: 64, offset: 4736)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !825, file: !826, line: 91, baseType: !4098, size: 256, offset: 448)
!4098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !304)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !825, file: !826, line: 94, baseType: !4100, size: 64, offset: 704)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4101, line: 25, size: 64, elements: !4102)
!4101 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4102 = !{!4103}
!4103 = !DIDerivedType(tag: DW_TAG_member, scope: !4100, file: !4101, line: 26, baseType: !4104, size: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4100, file: !4101, line: 26, size: 64, elements: !4105)
!4105 = !{!4106, !4107}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4104, file: !4101, line: 28, baseType: !614, size: 64, align: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, scope: !4104, file: !4101, line: 30, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4104, file: !4101, line: 30, size: 64, elements: !4109)
!4109 = !{!4110, !4111}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4108, file: !4101, line: 31, baseType: !487, size: 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4108, file: !4101, line: 32, baseType: !85, size: 32, offset: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !825, file: !826, line: 95, baseType: !3809, size: 64, offset: 768)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !825, file: !826, line: 96, baseType: !1076, size: 64, offset: 832)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !825, file: !826, line: 97, baseType: !190, size: 64, offset: 896)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !825, file: !826, line: 98, baseType: !191, size: 64, offset: 960)
!4116 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !826, line: 100, baseType: !4117, size: 128, offset: 1024)
!4117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !826, line: 100, size: 128, elements: !4118)
!4118 = !{!4119, !4120}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4117, file: !826, line: 101, baseType: !455, size: 128)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4117, file: !826, line: 102, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !825, file: !826, line: 104, baseType: !455, size: 128, offset: 1152)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !825, file: !826, line: 105, baseType: !455, size: 128, offset: 1280)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !825, file: !826, line: 113, baseType: !4125, size: 128, offset: 1408)
!4125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !826, line: 109, size: 128, elements: !4126)
!4126 = !{!4127, !4128, !4129}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4125, file: !826, line: 110, baseType: !548, size: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4125, file: !826, line: 111, baseType: !840, size: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4125, file: !826, line: 112, baseType: !477, size: 128, align: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !820, file: !821, line: 72, baseType: !1076, size: 64, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !820, file: !821, line: 73, baseType: !85, size: 32, offset: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !820, file: !821, line: 74, baseType: !904, size: 64, offset: 192)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !815, file: !816, line: 10, baseType: !824, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !465, file: !35, line: 1015, baseType: !864, size: 64, offset: 1344)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !465, file: !35, line: 1016, baseType: !3955, size: 64, offset: 1408)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !465, file: !35, line: 1018, baseType: !613, size: 64, offset: 1472)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !465, file: !35, line: 1020, baseType: !191, size: 64, offset: 1536)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !465, file: !35, line: 1023, baseType: !191, size: 64, offset: 1600)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !465, file: !35, line: 1027, baseType: !4140, size: 64, offset: 1664)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !465, file: !35, line: 1029, baseType: !1227, size: 64, offset: 1728)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !465, file: !35, line: 1030, baseType: !1495, size: 32, offset: 1792)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !465, file: !35, line: 1031, baseType: !1495, size: 32, offset: 1824)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !247, file: !248, line: 169, baseType: !4145, size: 64, offset: 2048)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !248, line: 24, flags: DIFlagFwdDecl)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !247, file: !248, line: 171, baseType: !7, size: 32, offset: 2112)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !247, file: !248, line: 172, baseType: !2144, size: 320, offset: 2176)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !247, file: !248, line: 174, baseType: !4150, size: 64, offset: 2496)
!4150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !280)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !247, file: !248, line: 176, baseType: !4152, size: 64, offset: 2560)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !248, line: 176, flags: DIFlagFwdDecl)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !247, file: !248, line: 178, baseType: !4155, size: 64, offset: 2624)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !255, line: 93, size: 192, elements: !4157)
!4157 = !{!4158, !4159, !4160, !4161, !4162, !4163}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4156, file: !255, line: 94, baseType: !631, size: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4156, file: !255, line: 95, baseType: !631, size: 32, offset: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4156, file: !255, line: 96, baseType: !631, size: 32, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4156, file: !255, line: 97, baseType: !631, size: 32, offset: 96)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4156, file: !255, line: 98, baseType: !631, size: 32, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4156, file: !255, line: 99, baseType: !631, size: 32, offset: 160)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !247, file: !248, line: 180, baseType: !270, size: 768, offset: 2688)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !247, file: !248, line: 181, baseType: !265, size: 64, offset: 3456)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !247, file: !248, line: 182, baseType: !265, size: 64, offset: 3520)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !247, file: !248, line: 183, baseType: !265, size: 64, offset: 3584)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !247, file: !248, line: 185, baseType: !4169, size: 64, offset: 3648)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!85, !246}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !247, file: !248, line: 186, baseType: !4173, size: 64, offset: 3712)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{null, !246}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !247, file: !248, line: 187, baseType: !4177, size: 64, offset: 3776)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!85, !246, !464}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !247, file: !248, line: 188, baseType: !4181, size: 64, offset: 3840)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!85, !246, !7, !7, !85}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !247, file: !248, line: 190, baseType: !4185, size: 64, offset: 3904)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !248, line: 345, size: 576, elements: !4187)
!4187 = !{!4188, !4189, !4190, !4191, !4192, !4260, !4261}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4186, file: !248, line: 347, baseType: !191, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4186, file: !248, line: 349, baseType: !85, size: 32, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4186, file: !248, line: 350, baseType: !210, size: 64, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4186, file: !248, line: 352, baseType: !246, size: 64, offset: 192)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4186, file: !248, line: 353, baseType: !4193, size: 64, offset: 256)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !248, line: 310, size: 960, elements: !4195)
!4195 = !{!4196, !4197, !4201, !4212, !4216, !4220, !4249, !4253, !4254, !4255, !4256, !4257, !4258, !4259}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4194, file: !248, line: 312, baseType: !191, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4194, file: !248, line: 314, baseType: !4198, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{null, !4185, !7, !7, !85}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4194, file: !248, line: 315, baseType: !4202, size: 64, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{null, !4185, !4205, !7}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4207)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !248, line: 32, size: 64, elements: !4208)
!4208 = !{!4209, !4210, !4211}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4207, file: !248, line: 33, baseType: !258, size: 16)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4207, file: !248, line: 34, baseType: !258, size: 16, offset: 16)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4207, file: !248, line: 35, baseType: !631, size: 32, offset: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4194, file: !248, line: 317, baseType: !4213, size: 64, offset: 192)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!206, !4185, !7, !7, !85}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4194, file: !248, line: 318, baseType: !4217, size: 64, offset: 256)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!206, !4193, !246}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4194, file: !248, line: 319, baseType: !4221, size: 64, offset: 320)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!85, !4193, !246, !4224}
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4226)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4227, line: 362, size: 1600, elements: !4228)
!4227 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4228 = !{!4229, !4231, !4232, !4233, !4234, !4235, !4237, !4239, !4240, !4241, !4242, !4243, !4244, !4246, !4247, !4248}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4226, file: !4227, line: 364, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4227, line: 15, baseType: !190)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4226, file: !4227, line: 366, baseType: !258, size: 16, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4226, file: !4227, line: 367, baseType: !258, size: 16, offset: 80)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4226, file: !4227, line: 368, baseType: !258, size: 16, offset: 96)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4226, file: !4227, line: 369, baseType: !258, size: 16, offset: 112)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4226, file: !4227, line: 371, baseType: !4236, size: 64, offset: 128)
!4236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4230, size: 64, elements: !266)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4226, file: !4227, line: 372, baseType: !4238, size: 768, offset: 192)
!4238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4230, size: 768, elements: !271)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4226, file: !4227, line: 373, baseType: !4236, size: 64, offset: 960)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4226, file: !4227, line: 374, baseType: !4236, size: 64, offset: 1024)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4226, file: !4227, line: 375, baseType: !4236, size: 64, offset: 1088)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4226, file: !4227, line: 376, baseType: !4236, size: 64, offset: 1152)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4226, file: !4227, line: 377, baseType: !4236, size: 64, offset: 1216)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4226, file: !4227, line: 378, baseType: !4245, size: 128, offset: 1280)
!4245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4230, size: 128, elements: !280)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4226, file: !4227, line: 379, baseType: !4236, size: 64, offset: 1408)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4226, file: !4227, line: 380, baseType: !4236, size: 64, offset: 1472)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4226, file: !4227, line: 382, baseType: !4230, size: 64, offset: 1536)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4194, file: !248, line: 320, baseType: !4250, size: 64, offset: 384)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{null, !4185}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4194, file: !248, line: 321, baseType: !4250, size: 64, offset: 448)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4194, file: !248, line: 323, baseType: !206, size: 8, offset: 512)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4194, file: !248, line: 324, baseType: !85, size: 32, offset: 544)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4194, file: !248, line: 325, baseType: !210, size: 64, offset: 576)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4194, file: !248, line: 327, baseType: !4224, size: 64, offset: 640)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4194, file: !248, line: 329, baseType: !455, size: 128, offset: 704)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4194, file: !248, line: 330, baseType: !455, size: 128, offset: 832)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4186, file: !248, line: 355, baseType: !455, size: 128, offset: 320)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4186, file: !248, line: 356, baseType: !455, size: 128, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !247, file: !248, line: 192, baseType: !487, size: 32, offset: 3968)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !247, file: !248, line: 193, baseType: !407, size: 256, offset: 4032)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !247, file: !248, line: 195, baseType: !7, size: 32, offset: 4288)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !247, file: !248, line: 196, baseType: !206, size: 8, offset: 4320)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !247, file: !248, line: 198, baseType: !4267, size: 5824, offset: 4352)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4268)
!4268 = !{!4269, !4270, !4272, !4275, !4276, !4329, !4412, !4413, !4414, !4415, !4416, !4423, !4515, !4528, !4538, !4542, !4544, !4545, !4546, !4550, !4557, !4558, !4561, !4564, !4568, !4571, !4572, !4573, !4574, !4575, !4576, !4606, !4607, !4608, !4611, !4614, !4623, !4624, !4625, !4626, !4627, !4628}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4267, file: !70, line: 706, baseType: !1123, size: 512)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4267, file: !70, line: 707, baseType: !4271, size: 64, offset: 512)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4267, file: !70, line: 709, baseType: !4273, size: 64, offset: 576)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4267, file: !70, line: 711, baseType: !210, size: 64, offset: 640)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4267, file: !70, line: 712, baseType: !4277, size: 64, offset: 704)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4279)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4280)
!4280 = !{!4281, !4282, !4283, !4289, !4294, !4298}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4279, file: !70, line: 90, baseType: !210, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4279, file: !70, line: 91, baseType: !1203, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4279, file: !70, line: 92, baseType: !4284, size: 64, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!85, !4287, !1159}
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4267)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4279, file: !70, line: 93, baseType: !4290, size: 64, offset: 192)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!713, !4287, !4293, !1772, !1773}
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4279, file: !70, line: 95, baseType: !4295, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{null, !4271}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4279, file: !70, line: 97, baseType: !4299, size: 64, offset: 320)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4301)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4302)
!4302 = !{!4303, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4301, file: !77, line: 287, baseType: !4304, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!85, !4271}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4301, file: !77, line: 288, baseType: !4295, size: 64, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4301, file: !77, line: 289, baseType: !4304, size: 64, offset: 128)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4301, file: !77, line: 290, baseType: !4304, size: 64, offset: 192)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4301, file: !77, line: 291, baseType: !4304, size: 64, offset: 256)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4301, file: !77, line: 292, baseType: !4304, size: 64, offset: 320)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4301, file: !77, line: 293, baseType: !4304, size: 64, offset: 384)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4301, file: !77, line: 294, baseType: !4304, size: 64, offset: 448)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4301, file: !77, line: 295, baseType: !4304, size: 64, offset: 512)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4301, file: !77, line: 296, baseType: !4304, size: 64, offset: 576)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4301, file: !77, line: 297, baseType: !4304, size: 64, offset: 640)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4301, file: !77, line: 298, baseType: !4304, size: 64, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4301, file: !77, line: 299, baseType: !4304, size: 64, offset: 768)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4301, file: !77, line: 300, baseType: !4304, size: 64, offset: 832)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4301, file: !77, line: 301, baseType: !4304, size: 64, offset: 896)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4301, file: !77, line: 302, baseType: !4304, size: 64, offset: 960)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4301, file: !77, line: 303, baseType: !4304, size: 64, offset: 1024)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4301, file: !77, line: 304, baseType: !4304, size: 64, offset: 1088)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4301, file: !77, line: 305, baseType: !4304, size: 64, offset: 1152)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4301, file: !77, line: 306, baseType: !4304, size: 64, offset: 1216)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4301, file: !77, line: 307, baseType: !4304, size: 64, offset: 1280)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4301, file: !77, line: 308, baseType: !4304, size: 64, offset: 1344)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4301, file: !77, line: 309, baseType: !4304, size: 64, offset: 1408)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4267, file: !70, line: 714, baseType: !4330, size: 64, offset: 768)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4332)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4333, line: 80, size: 1344, elements: !4334)
!4333 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4334 = !{!4335, !4336, !4337, !4338, !4339, !4340, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4411}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4332, file: !4333, line: 81, baseType: !210, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4332, file: !4333, line: 82, baseType: !210, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4332, file: !4333, line: 83, baseType: !1203, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4332, file: !4333, line: 84, baseType: !1203, size: 64, offset: 192)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4332, file: !4333, line: 85, baseType: !1203, size: 64, offset: 256)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4332, file: !4333, line: 87, baseType: !4341, size: 64, offset: 320)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!85, !4271, !4344}
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4350, !4351, !4352, !4353, !4365, !4374, !4375, !4376, !4377, !4378, !4386, !4387, !4388, !4389, !4390, !4391}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4345, file: !64, line: 97, baseType: !210, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4345, file: !64, line: 98, baseType: !4330, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4345, file: !64, line: 100, baseType: !1110, size: 64, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4345, file: !64, line: 101, baseType: !210, size: 64, offset: 192)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4345, file: !64, line: 103, baseType: !206, size: 8, offset: 256)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4345, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4345, file: !64, line: 106, baseType: !4354, size: 64, offset: 320)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4356)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4227, line: 282, size: 1600, elements: !4357)
!4357 = !{!4358, !4359, !4360, !4364}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4356, file: !4227, line: 283, baseType: !3797, size: 256)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4356, file: !4227, line: 284, baseType: !3797, size: 256, offset: 256)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4356, file: !4227, line: 285, baseType: !4361, size: 1024, offset: 512)
!4361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 1024, elements: !4362)
!4362 = !{!4363}
!4363 = !DISubrange(count: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4356, file: !4227, line: 286, baseType: !1638, size: 64, offset: 1536)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4345, file: !64, line: 107, baseType: !4366, size: 64, offset: 384)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4368)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4227, line: 217, size: 256, elements: !4369)
!4369 = !{!4370, !4371, !4372, !4373}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4368, file: !4227, line: 218, baseType: !3804, size: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4368, file: !4227, line: 219, baseType: !4230, size: 64, offset: 128)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4368, file: !4227, line: 220, baseType: !301, size: 32, offset: 192)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4368, file: !4227, line: 221, baseType: !301, size: 32, offset: 224)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4345, file: !64, line: 109, baseType: !4304, size: 64, offset: 448)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4345, file: !64, line: 110, baseType: !4295, size: 64, offset: 512)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4345, file: !64, line: 111, baseType: !4304, size: 64, offset: 576)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4345, file: !64, line: 112, baseType: !4295, size: 64, offset: 640)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4345, file: !64, line: 113, baseType: !4379, size: 64, offset: 704)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!85, !4271, !4382}
!4382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4383)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4384)
!4384 = !{!4385}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4383, file: !77, line: 59, baseType: !85, size: 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4345, file: !64, line: 114, baseType: !4304, size: 64, offset: 768)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4345, file: !64, line: 115, baseType: !1203, size: 64, offset: 832)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4345, file: !64, line: 116, baseType: !1203, size: 64, offset: 896)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4345, file: !64, line: 118, baseType: !4299, size: 64, offset: 960)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4345, file: !64, line: 119, baseType: !4295, size: 64, offset: 1024)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4345, file: !64, line: 121, baseType: !4392, size: 64, offset: 1088)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4332, file: !4333, line: 88, baseType: !4284, size: 64, offset: 384)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4332, file: !4333, line: 89, baseType: !4304, size: 64, offset: 448)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4332, file: !4333, line: 90, baseType: !4295, size: 64, offset: 512)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4332, file: !4333, line: 91, baseType: !4295, size: 64, offset: 576)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4332, file: !4333, line: 92, baseType: !4295, size: 64, offset: 640)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4332, file: !4333, line: 94, baseType: !4304, size: 64, offset: 704)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4332, file: !4333, line: 95, baseType: !4304, size: 64, offset: 768)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4332, file: !4333, line: 97, baseType: !4379, size: 64, offset: 832)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4332, file: !4333, line: 98, baseType: !4304, size: 64, offset: 896)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4332, file: !4333, line: 100, baseType: !4304, size: 64, offset: 960)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4332, file: !4333, line: 102, baseType: !4304, size: 64, offset: 1024)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4332, file: !4333, line: 103, baseType: !4295, size: 64, offset: 1088)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4332, file: !4333, line: 105, baseType: !4299, size: 64, offset: 1152)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4332, file: !4333, line: 107, baseType: !4408, size: 64, offset: 1216)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4410)
!4410 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4333, line: 107, flags: DIFlagFwdDecl)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4332, file: !4333, line: 109, baseType: !206, size: 8, offset: 1280)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4267, file: !70, line: 715, baseType: !4344, size: 64, offset: 832)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4267, file: !70, line: 717, baseType: !191, size: 64, offset: 896)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4267, file: !70, line: 719, baseType: !191, size: 64, offset: 960)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4267, file: !70, line: 721, baseType: !407, size: 256, offset: 1024)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4267, file: !70, line: 725, baseType: !4417, size: 448, offset: 1280)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4418)
!4418 = !{!4419, !4420, !4421, !4422}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4417, file: !70, line: 518, baseType: !455, size: 128)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4417, file: !70, line: 519, baseType: !455, size: 128, offset: 128)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4417, file: !70, line: 520, baseType: !455, size: 128, offset: 256)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4417, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4267, file: !70, line: 726, baseType: !4424, size: 2496, offset: 1728)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4425)
!4425 = !{!4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4508, !4512}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4424, file: !77, line: 664, baseType: !4382, size: 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4424, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4424, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4424, file: !77, line: 667, baseType: !206, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4424, file: !77, line: 668, baseType: !206, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4424, file: !77, line: 669, baseType: !206, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4424, file: !77, line: 670, baseType: !206, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4424, file: !77, line: 671, baseType: !206, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4424, file: !77, line: 672, baseType: !206, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4424, file: !77, line: 673, baseType: !206, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4424, file: !77, line: 674, baseType: !206, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4424, file: !77, line: 675, baseType: !670, size: 32, offset: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4424, file: !77, line: 676, baseType: !487, size: 32, offset: 96)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4424, file: !77, line: 678, baseType: !455, size: 128, offset: 128)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4424, file: !77, line: 679, baseType: !1901, size: 256, offset: 256)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4424, file: !77, line: 680, baseType: !4442, size: 64, offset: 512)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4444, line: 43, size: 1536, elements: !4445)
!4444 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4445 = !{!4446, !4447, !4448, !4449, !4450, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4443, file: !4444, line: 44, baseType: !210, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4443, file: !4444, line: 45, baseType: !85, size: 32, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4443, file: !4444, line: 46, baseType: !455, size: 128, offset: 128)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4443, file: !4444, line: 47, baseType: !487, size: 32, offset: 256)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4443, file: !4444, line: 48, baseType: !4451, size: 64, offset: 320)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4443, file: !4444, line: 49, baseType: !2144, size: 320, offset: 384)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4443, file: !4444, line: 50, baseType: !190, size: 64, offset: 704)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4443, file: !4444, line: 51, baseType: !2739, size: 64, offset: 768)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4443, file: !4444, line: 52, baseType: !2739, size: 64, offset: 832)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4443, file: !4444, line: 53, baseType: !2739, size: 64, offset: 896)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4443, file: !4444, line: 54, baseType: !2739, size: 64, offset: 960)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4443, file: !4444, line: 55, baseType: !2739, size: 64, offset: 1024)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4443, file: !4444, line: 56, baseType: !190, size: 64, offset: 1088)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4443, file: !4444, line: 57, baseType: !190, size: 64, offset: 1152)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4443, file: !4444, line: 58, baseType: !190, size: 64, offset: 1216)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4443, file: !4444, line: 59, baseType: !190, size: 64, offset: 1280)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4443, file: !4444, line: 60, baseType: !190, size: 64, offset: 1344)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4443, file: !4444, line: 61, baseType: !4271, size: 64, offset: 1408)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4443, file: !4444, line: 62, baseType: !206, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4443, file: !4444, line: 63, baseType: !206, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4424, file: !77, line: 681, baseType: !206, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4424, file: !77, line: 682, baseType: !206, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4424, file: !77, line: 683, baseType: !206, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4424, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4424, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4424, file: !77, line: 690, baseType: !2731, size: 512, offset: 640)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4424, file: !77, line: 691, baseType: !613, size: 64, offset: 1152)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4424, file: !77, line: 692, baseType: !1676, size: 256, offset: 1216)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4424, file: !77, line: 693, baseType: !557, size: 192, offset: 1472)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4424, file: !77, line: 694, baseType: !4451, size: 64, offset: 1664)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4424, file: !77, line: 695, baseType: !434, size: 32, offset: 1728)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4424, file: !77, line: 696, baseType: !434, size: 32, offset: 1760)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4424, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4424, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4424, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4424, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4424, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4424, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4424, file: !77, line: 703, baseType: !206, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4424, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4424, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4424, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4424, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4424, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4424, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4424, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4424, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4424, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4424, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4424, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4424, file: !77, line: 715, baseType: !613, size: 64, offset: 2048)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4424, file: !77, line: 716, baseType: !613, size: 64, offset: 2112)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4424, file: !77, line: 717, baseType: !613, size: 64, offset: 2176)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4424, file: !77, line: 718, baseType: !613, size: 64, offset: 2240)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4424, file: !77, line: 720, baseType: !4503, size: 64, offset: 2304)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4505)
!4505 = !{!4506, !4507}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4504, file: !77, line: 633, baseType: !487, size: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4504, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4424, file: !77, line: 721, baseType: !4509, size: 64, offset: 2368)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{null, !4271, !630}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4424, file: !77, line: 722, baseType: !4513, size: 64, offset: 2432)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4267, file: !70, line: 727, baseType: !4516, size: 64, offset: 4224)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4518)
!4518 = !{!4519, !4520, !4521, !4525, !4526, !4527}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4517, file: !77, line: 743, baseType: !4301, size: 1472)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4517, file: !77, line: 744, baseType: !4304, size: 64, offset: 1472)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4517, file: !77, line: 745, baseType: !4522, size: 64, offset: 1536)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{null, !4271, !206}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4517, file: !77, line: 746, baseType: !4304, size: 64, offset: 1600)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4517, file: !77, line: 747, baseType: !4295, size: 64, offset: 1664)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4517, file: !77, line: 748, baseType: !4295, size: 64, offset: 1728)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4267, file: !70, line: 736, baseType: !4529, size: 128, offset: 4288)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4530)
!4530 = !{!4531, !4535}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4529, file: !70, line: 531, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4534, line: 13, flags: DIFlagFwdDecl)
!4534 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4529, file: !70, line: 532, baseType: !4536, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4267, file: !70, line: 738, baseType: !4539, size: 64, offset: 4416)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4541)
!4541 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4267, file: !70, line: 740, baseType: !4543, size: 64, offset: 4480)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4267, file: !70, line: 741, baseType: !613, size: 64, offset: 4544)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4267, file: !70, line: 746, baseType: !613, size: 64, offset: 4608)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4267, file: !70, line: 747, baseType: !4547, size: 64, offset: 4672)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4549)
!4549 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4267, file: !70, line: 749, baseType: !4551, size: 64, offset: 4736)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4553)
!4553 = !{!4554, !4555, !4556}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4552, file: !70, line: 433, baseType: !7, size: 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4552, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4552, file: !70, line: 435, baseType: !190, size: 64, offset: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4267, file: !70, line: 751, baseType: !455, size: 128, offset: 4800)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4267, file: !70, line: 762, baseType: !4559, size: 64, offset: 4928)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4267, file: !70, line: 770, baseType: !4562, offset: 4992)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4563, line: 5, elements: !1543)
!4563 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4267, file: !70, line: 772, baseType: !4565, size: 64, offset: 4992)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4567, line: 18, flags: DIFlagFwdDecl)
!4567 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4267, file: !70, line: 773, baseType: !4569, size: 64, offset: 5056)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4333, line: 22, flags: DIFlagFwdDecl)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4267, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4267, file: !70, line: 778, baseType: !939, size: 32, offset: 5152)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4267, file: !70, line: 779, baseType: !670, size: 32, offset: 5184)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4267, file: !70, line: 781, baseType: !487, size: 32, offset: 5216)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4267, file: !70, line: 782, baseType: !455, size: 128, offset: 5248)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4267, file: !70, line: 784, baseType: !4577, size: 64, offset: 5376)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4579)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4580, line: 52, size: 768, elements: !4581)
!4580 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4581 = !{!4582, !4583, !4584, !4585, !4586, !4590, !4594, !4595, !4596, !4597, !4601, !4605}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4579, file: !4580, line: 53, baseType: !210, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4579, file: !4580, line: 55, baseType: !1203, size: 64, offset: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4579, file: !4580, line: 56, baseType: !1203, size: 64, offset: 128)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4579, file: !4580, line: 58, baseType: !4284, size: 64, offset: 192)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4579, file: !4580, line: 59, baseType: !4587, size: 64, offset: 256)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!713, !4287, !4293}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4579, file: !4580, line: 61, baseType: !4591, size: 64, offset: 320)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{null, !4577}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4579, file: !4580, line: 62, baseType: !4295, size: 64, offset: 384)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4579, file: !4580, line: 64, baseType: !4304, size: 64, offset: 448)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4579, file: !4580, line: 66, baseType: !1740, size: 64, offset: 512)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4579, file: !4580, line: 67, baseType: !4598, size: 64, offset: 576)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!1638, !4287}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4579, file: !4580, line: 69, baseType: !4602, size: 64, offset: 640)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{null, !4287, !1772, !1773}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4579, file: !4580, line: 71, baseType: !4299, size: 64, offset: 704)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4267, file: !70, line: 785, baseType: !1203, size: 64, offset: 5440)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4267, file: !70, line: 787, baseType: !4295, size: 64, offset: 5504)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4267, file: !70, line: 788, baseType: !4609, size: 64, offset: 5568)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4267, file: !70, line: 789, baseType: !4612, size: 64, offset: 5632)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4267, file: !70, line: 791, baseType: !4615, size: 64, offset: 5696)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4617)
!4617 = !{!4618, !4619, !4620, !4621, !4622}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4616, file: !70, line: 598, baseType: !92, size: 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4616, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4616, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4616, file: !70, line: 601, baseType: !206, size: 8, offset: 96)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4616, file: !70, line: 602, baseType: !206, size: 8, offset: 104)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4267, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4267, file: !70, line: 795, baseType: !206, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4267, file: !70, line: 796, baseType: !206, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4267, file: !70, line: 797, baseType: !206, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4267, file: !70, line: 798, baseType: !206, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4267, file: !70, line: 799, baseType: !206, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !247, file: !248, line: 200, baseType: !455, size: 128, offset: 10176)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !247, file: !248, line: 201, baseType: !455, size: 128, offset: 10304)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !247, file: !248, line: 203, baseType: !7, size: 32, offset: 10432)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !247, file: !248, line: 204, baseType: !7, size: 32, offset: 10464)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !247, file: !248, line: 205, baseType: !4634, size: 64, offset: 10496)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !247, file: !248, line: 207, baseType: !206, size: 8, offset: 10560)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !247, file: !248, line: 209, baseType: !4637, size: 192, offset: 10624)
!4637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2739, size: 192, elements: !527)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !247, file: !248, line: 211, baseType: !206, size: 8, offset: 10816)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "ps2dev", scope: !242, file: !130, line: 92, baseType: !4640, size: 832, offset: 128)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !124, line: 48, size: 832, elements: !4641)
!4641 = !{!4642, !4707, !4708, !4709, !4710, !4712, !4713, !4714, !4720}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !4640, file: !124, line: 49, baseType: !4643, size: 64)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !4645, line: 21, size: 8768, elements: !4646)
!4645 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a9b334022147244b132d6aa1a8399b7")
!4646 = !{!4647, !4648, !4649, !4650, !4651, !4652, !4659, !4660, !4664, !4668, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4702, !4703, !4704, !4705}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !4644, file: !4645, line: 22, baseType: !191, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4644, file: !4645, line: 24, baseType: !3797, size: 256, offset: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4644, file: !4645, line: 25, baseType: !3797, size: 256, offset: 320)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !4644, file: !4645, line: 26, baseType: !4361, size: 1024, offset: 576)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !4644, file: !4645, line: 28, baseType: !206, size: 8, offset: 1600)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4644, file: !4645, line: 30, baseType: !4653, size: 32, offset: 1608)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !4227, line: 256, size: 32, elements: !4654)
!4654 = !{!4655, !4656, !4657, !4658}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4653, file: !4227, line: 257, baseType: !296, size: 8)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4653, file: !4227, line: 258, baseType: !296, size: 8, offset: 8)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4653, file: !4227, line: 259, baseType: !296, size: 8, offset: 16)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !4653, file: !4227, line: 260, baseType: !296, size: 8, offset: 24)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4644, file: !4645, line: 33, baseType: !487, size: 32, offset: 1664)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4644, file: !4645, line: 35, baseType: !4661, size: 64, offset: 1728)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!85, !4643, !297}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4644, file: !4645, line: 36, baseType: !4665, size: 64, offset: 1792)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!85, !4643}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4644, file: !4645, line: 37, baseType: !4669, size: 64, offset: 1856)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{null, !4643}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4644, file: !4645, line: 38, baseType: !4665, size: 64, offset: 1920)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4644, file: !4645, line: 39, baseType: !4669, size: 64, offset: 1984)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4644, file: !4645, line: 41, baseType: !4643, size: 64, offset: 2048)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !4644, file: !4645, line: 43, baseType: !455, size: 128, offset: 2112)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4644, file: !4645, line: 44, baseType: !455, size: 128, offset: 2240)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4644, file: !4645, line: 46, baseType: !7, size: 32, offset: 2368)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4644, file: !4645, line: 52, baseType: !4679, size: 64, offset: 2432)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !4645, line: 68, size: 1792, elements: !4681)
!4681 = !{!4682, !4683, !4686, !4687, !4688, !4693, !4697, !4698, !4699, !4700, !4701}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4680, file: !4645, line: 69, baseType: !210, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4680, file: !4645, line: 71, baseType: !4684, size: 64, offset: 64)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4653)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !4680, file: !4645, line: 72, baseType: !206, size: 8, offset: 128)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4680, file: !4645, line: 74, baseType: !4669, size: 64, offset: 192)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !4680, file: !4645, line: 75, baseType: !4689, size: 64, offset: 256)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!4692, !4643, !297, !7}
!4692 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !118, line: 17, baseType: !117)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4680, file: !4645, line: 76, baseType: !4694, size: 64, offset: 320)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!85, !4643, !4679}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !4680, file: !4645, line: 77, baseType: !4665, size: 64, offset: 384)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !4680, file: !4645, line: 78, baseType: !4665, size: 64, offset: 448)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4680, file: !4645, line: 79, baseType: !4669, size: 64, offset: 512)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4680, file: !4645, line: 80, baseType: !4669, size: 64, offset: 576)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4680, file: !4645, line: 82, baseType: !4345, size: 1152, offset: 640)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !4644, file: !4645, line: 54, baseType: !407, size: 256, offset: 2496)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4644, file: !4645, line: 56, baseType: !4267, size: 5824, offset: 2752)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4644, file: !4645, line: 58, baseType: !455, size: 128, offset: 8576)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !4644, file: !4645, line: 64, baseType: !4706, size: 64, offset: 8704)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !4640, file: !124, line: 50, baseType: !407, size: 256, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4640, file: !124, line: 51, baseType: !557, size: 192, offset: 320)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4640, file: !124, line: 52, baseType: !190, size: 64, offset: 512)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !4640, file: !124, line: 53, baseType: !4711, size: 64, offset: 576)
!4711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 64, elements: !197)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !4640, file: !124, line: 54, baseType: !442, size: 8, offset: 640)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !4640, file: !124, line: 55, baseType: !442, size: 8, offset: 648)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "pre_receive_handler", scope: !4640, file: !124, line: 57, baseType: !4715, size: 64, offset: 704)
!4715 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_pre_receive_handler_t", file: !124, line: 30, baseType: !4716)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!123, !4719, !442, !7}
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "receive_handler", scope: !4640, file: !124, line: 58, baseType: !4721, size: 64, offset: 768)
!4721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_receive_handler_t", file: !124, line: 32, baseType: !4722)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{null, !4719, !442}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "resync_work", scope: !242, file: !130, line: 93, baseType: !2201, size: 704, offset: 960)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !242, file: !130, line: 94, baseType: !210, size: 64, offset: 1664)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !130, line: 95, baseType: !210, size: 64, offset: 1728)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !242, file: !130, line: 96, baseType: !4729, size: 64, offset: 1792)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4731)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_protocol", file: !130, line: 77, size: 320, elements: !4732)
!4732 = !{!4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4744}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4731, file: !130, line: 78, baseType: !129, size: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "maxproto", scope: !4731, file: !130, line: 79, baseType: !206, size: 8, offset: 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parity", scope: !4731, file: !130, line: 80, baseType: !206, size: 8, offset: 40)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "try_passthru", scope: !4731, file: !130, line: 81, baseType: !206, size: 8, offset: 48)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_companion", scope: !4731, file: !130, line: 82, baseType: !206, size: 8, offset: 56)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4731, file: !130, line: 83, baseType: !210, size: 64, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !4731, file: !130, line: 84, baseType: !210, size: 64, offset: 128)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4731, file: !130, line: 85, baseType: !4741, size: 64, offset: 192)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!85, !241, !206}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4731, file: !130, line: 86, baseType: !4745, size: 64, offset: 256)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!85, !241}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !242, file: !130, line: 97, baseType: !4749, size: 64, offset: 1856)
!4749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 64, elements: !197)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "badbyte", scope: !242, file: !130, line: 98, baseType: !297, size: 8, offset: 1920)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "pktcnt", scope: !242, file: !130, line: 99, baseType: !297, size: 8, offset: 1928)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "pktsize", scope: !242, file: !130, line: 100, baseType: !297, size: 8, offset: 1936)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "oob_data_type", scope: !242, file: !130, line: 101, baseType: !297, size: 8, offset: 1944)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buttons", scope: !242, file: !130, line: 102, baseType: !297, size: 8, offset: 1952)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "acks_disable_command", scope: !242, file: !130, line: 103, baseType: !206, size: 8, offset: 1960)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !242, file: !130, line: 104, baseType: !7, size: 32, offset: 1984)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !242, file: !130, line: 105, baseType: !190, size: 64, offset: 2048)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_sync_cnt", scope: !242, file: !130, line: 106, baseType: !190, size: 64, offset: 2112)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "num_resyncs", scope: !242, file: !130, line: 107, baseType: !190, size: 64, offset: 2176)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !242, file: !130, line: 108, baseType: !156, size: 32, offset: 2240)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !242, file: !130, line: 109, baseType: !4762, size: 512, offset: 2272)
!4762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 512, elements: !1166)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !242, file: !130, line: 110, baseType: !3797, size: 256, offset: 2784)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !242, file: !130, line: 112, baseType: !7, size: 32, offset: 3040)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !242, file: !130, line: 113, baseType: !7, size: 32, offset: 3072)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "resetafter", scope: !242, file: !130, line: 114, baseType: !7, size: 32, offset: 3104)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "resync_time", scope: !242, file: !130, line: 115, baseType: !7, size: 32, offset: 3136)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "smartscroll", scope: !242, file: !130, line: 116, baseType: !206, size: 8, offset: 3168)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_handler", scope: !242, file: !130, line: 118, baseType: !4770, size: 64, offset: 3200)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!4773, !241}
!4773 = !DIDerivedType(tag: DW_TAG_typedef, name: "psmouse_ret_t", file: !130, line: 41, baseType: !163)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !242, file: !130, line: 119, baseType: !4775, size: 64, offset: 3264)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "set_resolution", scope: !242, file: !130, line: 120, baseType: !4775, size: 64, offset: 3328)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "set_scale", scope: !242, file: !130, line: 121, baseType: !4778, size: 64, offset: 3392)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{null, !241, !168}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !242, file: !130, line: 123, baseType: !4745, size: 64, offset: 3456)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !242, file: !130, line: 124, baseType: !4745, size: 64, offset: 3520)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !242, file: !130, line: 125, baseType: !4784, size: 64, offset: 3584)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{null, !241}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !242, file: !130, line: 126, baseType: !4784, size: 64, offset: 3648)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !242, file: !130, line: 127, baseType: !4745, size: 64, offset: 3712)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "pt_activate", scope: !242, file: !130, line: 129, baseType: !4784, size: 64, offset: 3776)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "pt_deactivate", scope: !242, file: !130, line: 130, baseType: !4784, size: 64, offset: 3840)
!4791 = !{!4792, !4793, !4794}
!4792 = !DILocalVariable(name: "psmouse", arg: 1, scope: !238, file: !3, line: 228, type: !241)
!4793 = !DILocalVariable(name: "resolution", arg: 2, scope: !238, file: !3, line: 228, type: !7)
!4794 = !DILocalVariable(name: "p", scope: !238, file: !3, line: 231, type: !442)
!4795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4796, size: 40, elements: !4797)
!4796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!4797 = !{!4798}
!4798 = !DISubrange(count: 5)
!4799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4800, size: 35776, elements: !4820)
!4800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4801)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !4227, line: 587, size: 2752, elements: !4802)
!4802 = !{!4803, !4808, !4809, !4819}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4801, file: !4227, line: 588, baseType: !4804, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!85, !4807}
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !4801, file: !4227, line: 589, baseType: !210, size: 64, offset: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !4801, file: !4227, line: 590, baseType: !4810, size: 2560, offset: 128)
!4810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4811, size: 2560, elements: !553)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !4227, line: 581, size: 640, elements: !4812)
!4812 = !{!4813, !4814, !4815}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4811, file: !4227, line: 582, baseType: !297, size: 7, flags: DIFlagBitField, extraData: i64 0)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !4811, file: !4227, line: 583, baseType: !297, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !4811, file: !4227, line: 584, baseType: !4816, size: 632, offset: 8)
!4816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 632, elements: !4817)
!4817 = !{!4818}
!4818 = !DISubrange(count: 79)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4801, file: !4227, line: 591, baseType: !191, size: 64, offset: 2688)
!4820 = !{!4821}
!4821 = !DISubrange(count: 13)
!4822 = !{i32 7, !"Dwarf Version", i32 5}
!4823 = !{i32 2, !"Debug Info Version", i32 3}
!4824 = !{i32 1, !"wchar_size", i32 2}
!4825 = !{i32 8, !"cf-protection-branch", i32 1}
!4826 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4827 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4828 = !{i32 1, !"Code Model", i32 2}
!4829 = !{i32 1, !"override-stack-alignment", i32 8}
!4830 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4831 = distinct !DISubprogram(name: "lifebook_module_init", scope: !3, file: !3, line: 127, type: !2249, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4832 = !DILocation(line: 129, column: 21, scope: !4831)
!4833 = !DILocation(line: 129, column: 19, scope: !4831)
!4834 = !DILocation(line: 130, column: 1, scope: !4831)
!4835 = !DISubprogram(name: "dmi_check_system", scope: !4836, file: !4836, line: 100, type: !4805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4836 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!4837 = distinct !DISubprogram(name: "lifebook_detect", scope: !3, file: !3, line: 253, type: !4742, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4838)
!4838 = !{!4839, !4840}
!4839 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4837, file: !3, line: 253, type: !241)
!4840 = !DILocalVariable(name: "set_properties", arg: 2, scope: !4837, file: !3, line: 253, type: !206)
!4841 = !DILocation(line: 253, column: 37, scope: !4837)
!4842 = !DILocation(line: 253, column: 51, scope: !4837)
!4843 = !DILocation(line: 255, column: 7, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 255, column: 6)
!4845 = !{i8 0, i8 2}
!4846 = !DILocation(line: 255, column: 6, scope: !4837)
!4847 = !DILocation(line: 256, column: 3, scope: !4844)
!4848 = !DILocation(line: 258, column: 6, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 258, column: 6)
!4850 = !DILocation(line: 258, column: 25, scope: !4849)
!4851 = !DILocation(line: 259, column: 13, scope: !4849)
!4852 = !DILocation(line: 259, column: 22, scope: !4849)
!4853 = !DILocation(line: 259, column: 29, scope: !4849)
!4854 = !DILocation(line: 259, column: 36, scope: !4849)
!4855 = !DILocation(line: 259, column: 42, scope: !4849)
!4856 = !DILocation(line: 259, column: 6, scope: !4849)
!4857 = !DILocation(line: 258, column: 6, scope: !4837)
!4858 = !DILocation(line: 260, column: 3, scope: !4849)
!4859 = !DILocation(line: 262, column: 6, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 262, column: 6)
!4861 = !DILocation(line: 262, column: 6, scope: !4837)
!4862 = !DILocation(line: 263, column: 3, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 262, column: 22)
!4864 = !DILocation(line: 263, column: 12, scope: !4863)
!4865 = !DILocation(line: 263, column: 19, scope: !4863)
!4866 = !DILocation(line: 264, column: 3, scope: !4863)
!4867 = !DILocation(line: 264, column: 12, scope: !4863)
!4868 = !DILocation(line: 264, column: 17, scope: !4863)
!4869 = !DILocation(line: 265, column: 2, scope: !4863)
!4870 = !DILocation(line: 267, column: 2, scope: !4837)
!4871 = !DILocation(line: 268, column: 1, scope: !4837)
!4872 = !DISubprogram(name: "strcmp", scope: !4873, file: !4873, line: 88, type: !4874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4873 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!85, !210, !210}
!4876 = distinct !DISubprogram(name: "lifebook_init", scope: !3, file: !3, line: 311, type: !4746, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4877)
!4877 = !{!4878, !4879, !4880, !4881}
!4878 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4876, file: !3, line: 311, type: !241)
!4879 = !DILocalVariable(name: "dev1", scope: !4876, file: !3, line: 313, type: !246)
!4880 = !DILocalVariable(name: "max_coord", scope: !4876, file: !3, line: 314, type: !85)
!4881 = !DILocalVariable(name: "error", scope: !4876, file: !3, line: 315, type: !85)
!4882 = !DILocation(line: 311, column: 35, scope: !4876)
!4883 = !DILocation(line: 313, column: 2, scope: !4876)
!4884 = !DILocation(line: 313, column: 20, scope: !4876)
!4885 = !DILocation(line: 313, column: 27, scope: !4876)
!4886 = !DILocation(line: 313, column: 36, scope: !4876)
!4887 = !DILocation(line: 314, column: 2, scope: !4876)
!4888 = !DILocation(line: 314, column: 6, scope: !4876)
!4889 = !DILocation(line: 314, column: 18, scope: !4876)
!4890 = !DILocation(line: 315, column: 2, scope: !4876)
!4891 = !DILocation(line: 315, column: 6, scope: !4876)
!4892 = !DILocation(line: 317, column: 33, scope: !4876)
!4893 = !DILocation(line: 317, column: 10, scope: !4876)
!4894 = !DILocation(line: 317, column: 8, scope: !4876)
!4895 = !DILocation(line: 318, column: 6, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 318, column: 6)
!4897 = !DILocation(line: 318, column: 6, scope: !4876)
!4898 = !DILocation(line: 319, column: 10, scope: !4896)
!4899 = !DILocation(line: 319, column: 3, scope: !4896)
!4900 = !DILocation(line: 322, column: 14, scope: !4876)
!4901 = !DILocation(line: 322, column: 20, scope: !4876)
!4902 = !DILocation(line: 322, column: 2, scope: !4876)
!4903 = !DILocation(line: 323, column: 14, scope: !4876)
!4904 = !DILocation(line: 323, column: 20, scope: !4876)
!4905 = !DILocation(line: 323, column: 2, scope: !4876)
!4906 = !DILocation(line: 324, column: 14, scope: !4876)
!4907 = !DILocation(line: 324, column: 20, scope: !4876)
!4908 = !DILocation(line: 324, column: 2, scope: !4876)
!4909 = !DILocation(line: 326, column: 23, scope: !4876)
!4910 = !DILocation(line: 326, column: 2, scope: !4876)
!4911 = !DILocation(line: 327, column: 23, scope: !4876)
!4912 = !DILocation(line: 327, column: 39, scope: !4876)
!4913 = !DILocation(line: 327, column: 2, scope: !4876)
!4914 = !DILocation(line: 328, column: 23, scope: !4876)
!4915 = !DILocation(line: 328, column: 39, scope: !4876)
!4916 = !DILocation(line: 328, column: 2, scope: !4876)
!4917 = !DILocation(line: 330, column: 7, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 330, column: 6)
!4919 = !DILocation(line: 330, column: 6, scope: !4876)
!4920 = !DILocation(line: 331, column: 43, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 330, column: 27)
!4922 = !DILocation(line: 331, column: 11, scope: !4921)
!4923 = !DILocation(line: 331, column: 9, scope: !4921)
!4924 = !DILocation(line: 332, column: 7, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 332, column: 7)
!4926 = !DILocation(line: 332, column: 7, scope: !4921)
!4927 = !DILocation(line: 333, column: 27, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 332, column: 14)
!4929 = !DILocation(line: 333, column: 4, scope: !4928)
!4930 = !DILocation(line: 334, column: 11, scope: !4928)
!4931 = !DILocation(line: 334, column: 4, scope: !4928)
!4932 = !DILocation(line: 336, column: 2, scope: !4921)
!4933 = !DILocation(line: 338, column: 2, scope: !4876)
!4934 = !DILocation(line: 338, column: 11, scope: !4876)
!4935 = !DILocation(line: 338, column: 28, scope: !4876)
!4936 = !DILocation(line: 339, column: 2, scope: !4876)
!4937 = !DILocation(line: 339, column: 11, scope: !4876)
!4938 = !DILocation(line: 339, column: 26, scope: !4876)
!4939 = !DILocation(line: 340, column: 2, scope: !4876)
!4940 = !DILocation(line: 340, column: 11, scope: !4876)
!4941 = !DILocation(line: 340, column: 22, scope: !4876)
!4942 = !DILocation(line: 341, column: 2, scope: !4876)
!4943 = !DILocation(line: 341, column: 11, scope: !4876)
!4944 = !DILocation(line: 341, column: 22, scope: !4876)
!4945 = !DILocation(line: 343, column: 19, scope: !4876)
!4946 = !DILocation(line: 343, column: 2, scope: !4876)
!4947 = !DILocation(line: 343, column: 11, scope: !4876)
!4948 = !DILocation(line: 343, column: 17, scope: !4876)
!4949 = !DILocation(line: 349, column: 2, scope: !4876)
!4950 = !DILocation(line: 349, column: 11, scope: !4876)
!4951 = !DILocation(line: 349, column: 19, scope: !4876)
!4952 = !DILocation(line: 351, column: 2, scope: !4876)
!4953 = !DILocation(line: 352, column: 1, scope: !4876)
!4954 = distinct !DISubprogram(name: "lifebook_absolute_mode", scope: !3, file: !3, line: 199, type: !4746, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4955)
!4955 = !{!4956, !4957, !4958, !4959}
!4956 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4954, file: !3, line: 199, type: !241)
!4957 = !DILocalVariable(name: "ps2dev", scope: !4954, file: !3, line: 201, type: !4719)
!4958 = !DILocalVariable(name: "param", scope: !4954, file: !3, line: 202, type: !442)
!4959 = !DILocalVariable(name: "error", scope: !4954, file: !3, line: 203, type: !85)
!4960 = !DILocation(line: 199, column: 51, scope: !4954)
!4961 = !DILocation(line: 201, column: 2, scope: !4954)
!4962 = !DILocation(line: 201, column: 17, scope: !4954)
!4963 = !DILocation(line: 201, column: 27, scope: !4954)
!4964 = !DILocation(line: 201, column: 36, scope: !4954)
!4965 = !DILocation(line: 202, column: 2, scope: !4954)
!4966 = !DILocation(line: 202, column: 5, scope: !4954)
!4967 = !DILocation(line: 203, column: 2, scope: !4954)
!4968 = !DILocation(line: 203, column: 6, scope: !4954)
!4969 = !DILocation(line: 205, column: 24, scope: !4954)
!4970 = !DILocation(line: 205, column: 10, scope: !4954)
!4971 = !DILocation(line: 205, column: 8, scope: !4954)
!4972 = !DILocation(line: 206, column: 6, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 206, column: 6)
!4974 = !DILocation(line: 206, column: 6, scope: !4954)
!4975 = !DILocation(line: 207, column: 10, scope: !4973)
!4976 = !DILocation(line: 207, column: 3, scope: !4973)
!4977 = !DILocation(line: 214, column: 10, scope: !4954)
!4978 = !DILocation(line: 214, column: 8, scope: !4954)
!4979 = !DILocation(line: 215, column: 14, scope: !4954)
!4980 = !DILocation(line: 215, column: 2, scope: !4954)
!4981 = !DILocation(line: 217, column: 2, scope: !4954)
!4982 = !DILocation(line: 218, column: 1, scope: !4954)
!4983 = distinct !DISubprogram(name: "bitmap_zero", scope: !4984, file: !4984, line: 246, type: !4985, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4987)
!4984 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!4985 = !DISubroutineType(types: !4986)
!4986 = !{null, !2235, !7}
!4987 = !{!4988, !4989, !4990}
!4988 = !DILocalVariable(name: "dst", arg: 1, scope: !4983, file: !4984, line: 246, type: !2235)
!4989 = !DILocalVariable(name: "nbits", arg: 2, scope: !4983, file: !4984, line: 246, type: !7)
!4990 = !DILocalVariable(name: "len", scope: !4983, file: !4984, line: 248, type: !7)
!4991 = !DILocation(line: 246, column: 47, scope: !4983)
!4992 = !DILocation(line: 246, column: 65, scope: !4983)
!4993 = !DILocation(line: 248, column: 2, scope: !4983)
!4994 = !DILocation(line: 248, column: 15, scope: !4983)
!4995 = !DILocation(line: 248, column: 21, scope: !4983)
!4996 = !DILocation(line: 250, column: 6, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4983, file: !4984, line: 250, column: 6)
!4998 = !DILocation(line: 250, column: 6, scope: !4983)
!4999 = !DILocation(line: 251, column: 4, scope: !4997)
!5000 = !DILocation(line: 251, column: 8, scope: !4997)
!5001 = !DILocation(line: 251, column: 3, scope: !4997)
!5002 = !DILocation(line: 253, column: 10, scope: !4997)
!5003 = !DILocation(line: 253, column: 18, scope: !4997)
!5004 = !DILocation(line: 253, column: 3, scope: !4997)
!5005 = !DILocation(line: 254, column: 1, scope: !4983)
!5006 = !DISubprogram(name: "input_set_capability", scope: !248, file: !248, line: 458, type: !5007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{null, !246, !7, !7}
!5009 = !DISubprogram(name: "input_set_abs_params", scope: !248, file: !248, line: 476, type: !5010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{null, !246, !7, !85, !85, !85, !85}
!5012 = distinct !DISubprogram(name: "lifebook_create_relative_device", scope: !3, file: !3, line: 270, type: !4746, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5013)
!5013 = !{!5014, !5015, !5016, !5022, !5023}
!5014 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5012, file: !3, line: 270, type: !241)
!5015 = !DILocalVariable(name: "dev2", scope: !5012, file: !3, line: 272, type: !246)
!5016 = !DILocalVariable(name: "priv", scope: !5012, file: !3, line: 273, type: !5017)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lifebook_data", file: !3, line: 22, size: 320, elements: !5019)
!5019 = !{!5020, !5021}
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "dev2", scope: !5018, file: !3, line: 23, baseType: !246, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !5018, file: !3, line: 24, baseType: !3797, size: 256, offset: 64)
!5022 = !DILocalVariable(name: "error", scope: !5012, file: !3, line: 274, type: !85)
!5023 = !DILabel(scope: !5012, name: "err_out", file: !3, line: 305)
!5024 = !DILocation(line: 270, column: 60, scope: !5012)
!5025 = !DILocation(line: 272, column: 2, scope: !5012)
!5026 = !DILocation(line: 272, column: 20, scope: !5012)
!5027 = !DILocation(line: 273, column: 2, scope: !5012)
!5028 = !DILocation(line: 273, column: 24, scope: !5012)
!5029 = !DILocation(line: 274, column: 2, scope: !5012)
!5030 = !DILocation(line: 274, column: 6, scope: !5012)
!5031 = !DILocation(line: 276, column: 9, scope: !5012)
!5032 = !DILocation(line: 276, column: 7, scope: !5012)
!5033 = !DILocation(line: 277, column: 9, scope: !5012)
!5034 = !DILocation(line: 277, column: 7, scope: !5012)
!5035 = !DILocation(line: 278, column: 7, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 278, column: 6)
!5037 = !DILocation(line: 278, column: 12, scope: !5036)
!5038 = !DILocation(line: 278, column: 16, scope: !5036)
!5039 = !DILocation(line: 278, column: 6, scope: !5012)
!5040 = !DILocation(line: 279, column: 3, scope: !5036)
!5041 = !DILocation(line: 281, column: 15, scope: !5012)
!5042 = !DILocation(line: 281, column: 2, scope: !5012)
!5043 = !DILocation(line: 281, column: 8, scope: !5012)
!5044 = !DILocation(line: 281, column: 13, scope: !5012)
!5045 = !DILocation(line: 282, column: 11, scope: !5012)
!5046 = !DILocation(line: 282, column: 17, scope: !5012)
!5047 = !DILocation(line: 283, column: 17, scope: !5012)
!5048 = !DILocation(line: 283, column: 26, scope: !5012)
!5049 = !DILocation(line: 283, column: 33, scope: !5012)
!5050 = !DILocation(line: 283, column: 40, scope: !5012)
!5051 = !DILocation(line: 282, column: 2, scope: !5012)
!5052 = !DILocation(line: 285, column: 15, scope: !5012)
!5053 = !DILocation(line: 285, column: 21, scope: !5012)
!5054 = !DILocation(line: 285, column: 2, scope: !5012)
!5055 = !DILocation(line: 285, column: 8, scope: !5012)
!5056 = !DILocation(line: 285, column: 13, scope: !5012)
!5057 = !DILocation(line: 286, column: 2, scope: !5012)
!5058 = !DILocation(line: 286, column: 8, scope: !5012)
!5059 = !DILocation(line: 286, column: 13, scope: !5012)
!5060 = !DILocation(line: 287, column: 2, scope: !5012)
!5061 = !DILocation(line: 287, column: 8, scope: !5012)
!5062 = !DILocation(line: 287, column: 11, scope: !5012)
!5063 = !DILocation(line: 287, column: 19, scope: !5012)
!5064 = !DILocation(line: 288, column: 2, scope: !5012)
!5065 = !DILocation(line: 288, column: 8, scope: !5012)
!5066 = !DILocation(line: 288, column: 11, scope: !5012)
!5067 = !DILocation(line: 288, column: 19, scope: !5012)
!5068 = !DILocation(line: 289, column: 2, scope: !5012)
!5069 = !DILocation(line: 289, column: 8, scope: !5012)
!5070 = !DILocation(line: 289, column: 11, scope: !5012)
!5071 = !DILocation(line: 289, column: 19, scope: !5012)
!5072 = !DILocation(line: 290, column: 2, scope: !5012)
!5073 = !DILocation(line: 290, column: 8, scope: !5012)
!5074 = !DILocation(line: 290, column: 11, scope: !5012)
!5075 = !DILocation(line: 290, column: 19, scope: !5012)
!5076 = !DILocation(line: 291, column: 22, scope: !5012)
!5077 = !DILocation(line: 291, column: 31, scope: !5012)
!5078 = !DILocation(line: 291, column: 38, scope: !5012)
!5079 = !DILocation(line: 291, column: 45, scope: !5012)
!5080 = !DILocation(line: 291, column: 2, scope: !5012)
!5081 = !DILocation(line: 291, column: 8, scope: !5012)
!5082 = !DILocation(line: 291, column: 12, scope: !5012)
!5083 = !DILocation(line: 291, column: 19, scope: !5012)
!5084 = !DILocation(line: 293, column: 23, scope: !5012)
!5085 = !DILocation(line: 293, column: 2, scope: !5012)
!5086 = !DILocation(line: 294, column: 23, scope: !5012)
!5087 = !DILocation(line: 294, column: 2, scope: !5012)
!5088 = !DILocation(line: 295, column: 23, scope: !5012)
!5089 = !DILocation(line: 295, column: 2, scope: !5012)
!5090 = !DILocation(line: 296, column: 23, scope: !5012)
!5091 = !DILocation(line: 296, column: 2, scope: !5012)
!5092 = !DILocation(line: 298, column: 32, scope: !5012)
!5093 = !DILocation(line: 298, column: 38, scope: !5012)
!5094 = !DILocation(line: 298, column: 10, scope: !5012)
!5095 = !DILocation(line: 298, column: 8, scope: !5012)
!5096 = !DILocation(line: 299, column: 6, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 299, column: 6)
!5098 = !DILocation(line: 299, column: 6, scope: !5012)
!5099 = !DILocation(line: 300, column: 3, scope: !5097)
!5100 = !DILocation(line: 302, column: 21, scope: !5012)
!5101 = !DILocation(line: 302, column: 2, scope: !5012)
!5102 = !DILocation(line: 302, column: 11, scope: !5012)
!5103 = !DILocation(line: 302, column: 19, scope: !5012)
!5104 = !DILocation(line: 303, column: 2, scope: !5012)
!5105 = !DILocation(line: 305, column: 2, scope: !5012)
!5106 = !DILocation(line: 306, column: 20, scope: !5012)
!5107 = !DILocation(line: 306, column: 2, scope: !5012)
!5108 = !DILocation(line: 307, column: 8, scope: !5012)
!5109 = !DILocation(line: 307, column: 2, scope: !5012)
!5110 = !DILocation(line: 308, column: 9, scope: !5012)
!5111 = !DILocation(line: 308, column: 2, scope: !5012)
!5112 = !DILocation(line: 309, column: 1, scope: !5012)
!5113 = distinct !DISubprogram(name: "lifebook_relative_mode", scope: !3, file: !3, line: 220, type: !4785, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5114)
!5114 = !{!5115, !5116, !5117}
!5115 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5113, file: !3, line: 220, type: !241)
!5116 = !DILocalVariable(name: "ps2dev", scope: !5113, file: !3, line: 222, type: !4719)
!5117 = !DILocalVariable(name: "param", scope: !5113, file: !3, line: 223, type: !442)
!5118 = !DILocation(line: 220, column: 52, scope: !5113)
!5119 = !DILocation(line: 222, column: 2, scope: !5113)
!5120 = !DILocation(line: 222, column: 17, scope: !5113)
!5121 = !DILocation(line: 222, column: 27, scope: !5113)
!5122 = !DILocation(line: 222, column: 36, scope: !5113)
!5123 = !DILocation(line: 223, column: 2, scope: !5113)
!5124 = !DILocation(line: 223, column: 5, scope: !5113)
!5125 = !DILocation(line: 225, column: 14, scope: !5113)
!5126 = !DILocation(line: 225, column: 2, scope: !5113)
!5127 = !DILocation(line: 226, column: 1, scope: !5113)
!5128 = distinct !DISubprogram(name: "lifebook_process_byte", scope: !3, file: !3, line: 132, type: !4771, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5129)
!5129 = !{!5130, !5131, !5132, !5133, !5134, !5136}
!5130 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5128, file: !3, line: 132, type: !241)
!5131 = !DILocalVariable(name: "priv", scope: !5128, file: !3, line: 134, type: !5017)
!5132 = !DILocalVariable(name: "dev1", scope: !5128, file: !3, line: 135, type: !246)
!5133 = !DILocalVariable(name: "dev2", scope: !5128, file: !3, line: 136, type: !246)
!5134 = !DILocalVariable(name: "packet", scope: !5128, file: !3, line: 137, type: !5135)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!5136 = !DILocalVariable(name: "relative_packet", scope: !5128, file: !3, line: 138, type: !206)
!5137 = !DILocation(line: 132, column: 60, scope: !5128)
!5138 = !DILocation(line: 134, column: 2, scope: !5128)
!5139 = !DILocation(line: 134, column: 24, scope: !5128)
!5140 = !DILocation(line: 134, column: 31, scope: !5128)
!5141 = !DILocation(line: 134, column: 40, scope: !5128)
!5142 = !DILocation(line: 135, column: 2, scope: !5128)
!5143 = !DILocation(line: 135, column: 20, scope: !5128)
!5144 = !DILocation(line: 135, column: 27, scope: !5128)
!5145 = !DILocation(line: 135, column: 36, scope: !5128)
!5146 = !DILocation(line: 136, column: 2, scope: !5128)
!5147 = !DILocation(line: 136, column: 20, scope: !5128)
!5148 = !DILocation(line: 136, column: 27, scope: !5128)
!5149 = !DILocation(line: 136, column: 34, scope: !5128)
!5150 = !DILocation(line: 136, column: 40, scope: !5128)
!5151 = !DILocation(line: 137, column: 2, scope: !5128)
!5152 = !DILocation(line: 137, column: 6, scope: !5128)
!5153 = !DILocation(line: 137, column: 15, scope: !5128)
!5154 = !DILocation(line: 137, column: 24, scope: !5128)
!5155 = !DILocation(line: 138, column: 2, scope: !5128)
!5156 = !DILocation(line: 138, column: 7, scope: !5128)
!5157 = !DILocation(line: 138, column: 25, scope: !5128)
!5158 = !DILocation(line: 138, column: 35, scope: !5128)
!5159 = !DILocation(line: 140, column: 6, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 140, column: 6)
!5161 = !DILocation(line: 140, column: 22, scope: !5160)
!5162 = !DILocation(line: 140, column: 26, scope: !5160)
!5163 = !DILocation(line: 140, column: 6, scope: !5128)
!5164 = !DILocation(line: 141, column: 7, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 141, column: 7)
!5166 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 140, column: 52)
!5167 = !DILocation(line: 141, column: 16, scope: !5165)
!5168 = !DILocation(line: 141, column: 23, scope: !5165)
!5169 = !DILocation(line: 141, column: 7, scope: !5166)
!5170 = !DILocation(line: 142, column: 4, scope: !5165)
!5171 = !DILocation(line: 143, column: 2, scope: !5166)
!5172 = !DILocation(line: 144, column: 11, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 143, column: 9)
!5174 = !DILocation(line: 144, column: 20, scope: !5173)
!5175 = !DILocation(line: 144, column: 3, scope: !5173)
!5176 = !DILocation(line: 146, column: 12, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 144, column: 28)
!5178 = !DILocation(line: 146, column: 22, scope: !5177)
!5179 = !DILocation(line: 146, column: 30, scope: !5177)
!5180 = !DILocation(line: 146, column: 11, scope: !5177)
!5181 = !DILocation(line: 146, column: 4, scope: !5177)
!5182 = !DILocation(line: 149, column: 4, scope: !5177)
!5183 = !DILocation(line: 151, column: 13, scope: !5177)
!5184 = !DILocation(line: 151, column: 23, scope: !5177)
!5185 = !DILocation(line: 151, column: 31, scope: !5177)
!5186 = !DILocation(line: 151, column: 41, scope: !5177)
!5187 = !DILocation(line: 151, column: 51, scope: !5177)
!5188 = !DILocation(line: 151, column: 37, scope: !5177)
!5189 = !DILocation(line: 151, column: 11, scope: !5177)
!5190 = !DILocation(line: 151, column: 4, scope: !5177)
!5191 = !DILocation(line: 154, column: 12, scope: !5177)
!5192 = !DILocation(line: 154, column: 22, scope: !5177)
!5193 = !DILocation(line: 154, column: 30, scope: !5177)
!5194 = !DILocation(line: 154, column: 11, scope: !5177)
!5195 = !DILocation(line: 154, column: 4, scope: !5177)
!5196 = !DILocation(line: 157, column: 12, scope: !5177)
!5197 = !DILocation(line: 157, column: 22, scope: !5177)
!5198 = !DILocation(line: 157, column: 34, scope: !5177)
!5199 = !DILocation(line: 157, column: 44, scope: !5177)
!5200 = !DILocation(line: 157, column: 30, scope: !5177)
!5201 = !DILocation(line: 157, column: 11, scope: !5177)
!5202 = !DILocation(line: 157, column: 4, scope: !5177)
!5203 = !DILocation(line: 160, column: 10, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 160, column: 8)
!5205 = !DILocation(line: 160, column: 20, scope: !5204)
!5206 = !DILocation(line: 160, column: 28, scope: !5204)
!5207 = !DILocation(line: 160, column: 38, scope: !5204)
!5208 = !DILocation(line: 160, column: 48, scope: !5204)
!5209 = !DILocation(line: 160, column: 34, scope: !5204)
!5210 = !DILocation(line: 160, column: 8, scope: !5177)
!5211 = !DILocation(line: 161, column: 5, scope: !5204)
!5212 = !DILocation(line: 162, column: 9, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 162, column: 8)
!5214 = !DILocation(line: 162, column: 19, scope: !5213)
!5215 = !DILocation(line: 162, column: 31, scope: !5213)
!5216 = !DILocation(line: 162, column: 41, scope: !5213)
!5217 = !DILocation(line: 162, column: 27, scope: !5213)
!5218 = !DILocation(line: 162, column: 8, scope: !5177)
!5219 = !DILocation(line: 163, column: 5, scope: !5213)
!5220 = !DILocation(line: 164, column: 4, scope: !5177)
!5221 = !DILocation(line: 168, column: 6, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 168, column: 6)
!5223 = !DILocation(line: 168, column: 6, scope: !5128)
!5224 = !DILocation(line: 169, column: 8, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 169, column: 7)
!5226 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 168, column: 23)
!5227 = !DILocation(line: 169, column: 7, scope: !5226)
!5228 = !DILocation(line: 170, column: 4, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 170, column: 4)
!5230 = !DILocation(line: 170, column: 4, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 170, column: 4)
!5232 = !DILocation(line: 170, column: 4, scope: !5225)
!5233 = !DILocation(line: 172, column: 2, scope: !5226)
!5234 = !DILocation(line: 173, column: 7, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 173, column: 7)
!5236 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 172, column: 9)
!5237 = !DILocation(line: 173, column: 7, scope: !5236)
!5238 = !DILocation(line: 174, column: 21, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 173, column: 33)
!5240 = !DILocation(line: 175, column: 7, scope: !5239)
!5241 = !DILocation(line: 175, column: 17, scope: !5239)
!5242 = !DILocation(line: 175, column: 25, scope: !5239)
!5243 = !DILocation(line: 175, column: 34, scope: !5239)
!5244 = !DILocation(line: 175, column: 44, scope: !5239)
!5245 = !DILocation(line: 175, column: 31, scope: !5239)
!5246 = !DILocation(line: 174, column: 4, scope: !5239)
!5247 = !DILocation(line: 176, column: 21, scope: !5239)
!5248 = !DILocation(line: 177, column: 15, scope: !5239)
!5249 = !DILocation(line: 177, column: 25, scope: !5239)
!5250 = !DILocation(line: 177, column: 33, scope: !5239)
!5251 = !DILocation(line: 177, column: 42, scope: !5239)
!5252 = !DILocation(line: 177, column: 52, scope: !5239)
!5253 = !DILocation(line: 177, column: 39, scope: !5239)
!5254 = !DILocation(line: 177, column: 10, scope: !5239)
!5255 = !DILocation(line: 176, column: 4, scope: !5239)
!5256 = !DILocation(line: 178, column: 3, scope: !5239)
!5257 = !DILocation(line: 179, column: 21, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 178, column: 10)
!5259 = !DILocation(line: 180, column: 6, scope: !5258)
!5260 = !DILocation(line: 180, column: 20, scope: !5258)
!5261 = !DILocation(line: 180, column: 30, scope: !5258)
!5262 = !DILocation(line: 180, column: 38, scope: !5258)
!5263 = !DILocation(line: 180, column: 16, scope: !5258)
!5264 = !DILocation(line: 179, column: 4, scope: !5258)
!5265 = !DILocation(line: 181, column: 21, scope: !5258)
!5266 = !DILocation(line: 182, column: 13, scope: !5258)
!5267 = !DILocation(line: 182, column: 27, scope: !5258)
!5268 = !DILocation(line: 182, column: 37, scope: !5258)
!5269 = !DILocation(line: 182, column: 45, scope: !5258)
!5270 = !DILocation(line: 182, column: 23, scope: !5258)
!5271 = !DILocation(line: 182, column: 10, scope: !5258)
!5272 = !DILocation(line: 181, column: 4, scope: !5258)
!5273 = !DILocation(line: 184, column: 20, scope: !5236)
!5274 = !DILocation(line: 184, column: 37, scope: !5236)
!5275 = !DILocation(line: 184, column: 47, scope: !5236)
!5276 = !DILocation(line: 184, column: 3, scope: !5236)
!5277 = !DILocation(line: 185, column: 14, scope: !5236)
!5278 = !DILocation(line: 185, column: 3, scope: !5236)
!5279 = !DILocation(line: 188, column: 6, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 188, column: 6)
!5281 = !DILocation(line: 188, column: 6, scope: !5128)
!5282 = !DILocation(line: 189, column: 7, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 189, column: 7)
!5284 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 188, column: 12)
!5285 = !DILocation(line: 189, column: 7, scope: !5284)
!5286 = !DILocation(line: 190, column: 35, scope: !5283)
!5287 = !DILocation(line: 190, column: 41, scope: !5283)
!5288 = !DILocation(line: 190, column: 4, scope: !5283)
!5289 = !DILocation(line: 192, column: 35, scope: !5284)
!5290 = !DILocation(line: 192, column: 41, scope: !5284)
!5291 = !DILocation(line: 192, column: 3, scope: !5284)
!5292 = !DILocation(line: 193, column: 14, scope: !5284)
!5293 = !DILocation(line: 193, column: 3, scope: !5284)
!5294 = !DILocation(line: 194, column: 2, scope: !5284)
!5295 = !DILocation(line: 196, column: 2, scope: !5128)
!5296 = !DILocation(line: 197, column: 1, scope: !5128)
!5297 = !DILocation(line: 228, column: 53, scope: !238)
!5298 = !DILocation(line: 228, column: 75, scope: !238)
!5299 = !DILocation(line: 231, column: 2, scope: !238)
!5300 = !DILocation(line: 231, column: 5, scope: !238)
!5301 = !DILocation(line: 233, column: 6, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !238, file: !3, line: 233, column: 6)
!5303 = !DILocation(line: 233, column: 17, scope: !5302)
!5304 = !DILocation(line: 233, column: 22, scope: !5302)
!5305 = !DILocation(line: 233, column: 25, scope: !5302)
!5306 = !DILocation(line: 233, column: 36, scope: !5302)
!5307 = !DILocation(line: 233, column: 6, scope: !238)
!5308 = !DILocation(line: 234, column: 14, scope: !5302)
!5309 = !DILocation(line: 234, column: 3, scope: !5302)
!5310 = !DILocation(line: 236, column: 13, scope: !238)
!5311 = !DILocation(line: 236, column: 24, scope: !238)
!5312 = !DILocation(line: 236, column: 6, scope: !238)
!5313 = !DILocation(line: 236, column: 4, scope: !238)
!5314 = !DILocation(line: 237, column: 15, scope: !238)
!5315 = !DILocation(line: 237, column: 24, scope: !238)
!5316 = !DILocation(line: 237, column: 2, scope: !238)
!5317 = !DILocation(line: 238, column: 30, scope: !238)
!5318 = !DILocation(line: 238, column: 27, scope: !238)
!5319 = !DILocation(line: 238, column: 2, scope: !238)
!5320 = !DILocation(line: 238, column: 11, scope: !238)
!5321 = !DILocation(line: 238, column: 22, scope: !238)
!5322 = !DILocation(line: 239, column: 1, scope: !238)
!5323 = distinct !DISubprogram(name: "lifebook_disconnect", scope: !3, file: !3, line: 241, type: !4785, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5324)
!5324 = !{!5325, !5326}
!5325 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5323, file: !3, line: 241, type: !241)
!5326 = !DILocalVariable(name: "priv", scope: !5323, file: !3, line: 243, type: !5017)
!5327 = !DILocation(line: 241, column: 49, scope: !5323)
!5328 = !DILocation(line: 243, column: 2, scope: !5323)
!5329 = !DILocation(line: 243, column: 24, scope: !5323)
!5330 = !DILocation(line: 243, column: 31, scope: !5323)
!5331 = !DILocation(line: 243, column: 40, scope: !5323)
!5332 = !DILocation(line: 245, column: 16, scope: !5323)
!5333 = !DILocation(line: 245, column: 2, scope: !5323)
!5334 = !DILocation(line: 246, column: 6, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 246, column: 6)
!5336 = !DILocation(line: 246, column: 6, scope: !5323)
!5337 = !DILocation(line: 247, column: 27, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 246, column: 12)
!5339 = !DILocation(line: 247, column: 33, scope: !5338)
!5340 = !DILocation(line: 247, column: 3, scope: !5338)
!5341 = !DILocation(line: 248, column: 9, scope: !5338)
!5342 = !DILocation(line: 248, column: 3, scope: !5338)
!5343 = !DILocation(line: 249, column: 2, scope: !5338)
!5344 = !DILocation(line: 250, column: 2, scope: !5323)
!5345 = !DILocation(line: 250, column: 11, scope: !5323)
!5346 = !DILocation(line: 250, column: 19, scope: !5323)
!5347 = !DILocation(line: 251, column: 1, scope: !5323)
!5348 = distinct !DISubprogram(name: "lifebook_limit_serio3", scope: !3, file: !3, line: 31, type: !4805, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5349)
!5349 = !{!5350}
!5350 = !DILocalVariable(name: "d", arg: 1, scope: !5348, file: !3, line: 31, type: !4807)
!5351 = !DILocation(line: 31, column: 62, scope: !5348)
!5352 = !DILocation(line: 33, column: 21, scope: !5348)
!5353 = !DILocation(line: 34, column: 2, scope: !5348)
!5354 = distinct !DISubprogram(name: "lifebook_set_6byte_proto", scope: !3, file: !3, line: 39, type: !4805, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5355)
!5355 = !{!5356}
!5356 = !DILocalVariable(name: "d", arg: 1, scope: !5354, file: !3, line: 39, type: !4807)
!5357 = !DILocation(line: 39, column: 65, scope: !5354)
!5358 = !DILocation(line: 41, column: 27, scope: !5354)
!5359 = !DILocation(line: 42, column: 2, scope: !5354)
!5360 = !DISubprogram(name: "psmouse_reset", scope: !130, file: !130, line: 137, type: !4746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5361 = !DISubprogram(name: "ps2_command", scope: !124, file: !124, line: 69, type: !5362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!85, !4719, !5135, !7}
!5364 = distinct !DISubprogram(name: "kzalloc", scope: !178, file: !178, line: 719, type: !5365, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5367)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{!191, !1021, !188}
!5367 = !{!5368, !5369}
!5368 = !DILocalVariable(name: "size", arg: 1, scope: !5364, file: !178, line: 719, type: !1021)
!5369 = !DILocalVariable(name: "flags", arg: 2, scope: !5364, file: !178, line: 719, type: !188)
!5370 = !DILocation(line: 719, column: 52, scope: !5364)
!5371 = !DILocation(line: 719, column: 64, scope: !5364)
!5372 = !DILocation(line: 721, column: 17, scope: !5364)
!5373 = !DILocation(line: 721, column: 23, scope: !5364)
!5374 = !DILocation(line: 721, column: 29, scope: !5364)
!5375 = !DILocation(line: 721, column: 9, scope: !5364)
!5376 = !DILocation(line: 721, column: 2, scope: !5364)
!5377 = !DISubprogram(name: "input_allocate_device", scope: !248, file: !248, line: 359, type: !5378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5378 = !DISubroutineType(types: !5379)
!5379 = !{!246}
!5380 = !DISubprogram(name: "snprintf", scope: !5381, file: !5381, line: 12, type: !5382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5381 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!85, !713, !1021, !210, null}
!5384 = !DISubprogram(name: "input_register_device", scope: !248, file: !248, line: 384, type: !4170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5385 = !DISubprogram(name: "input_free_device", scope: !248, file: !248, line: 361, type: !4174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5386 = !DISubprogram(name: "kfree", scope: !178, file: !178, line: 227, type: !5387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{null, !1638}
!5389 = distinct !DISubprogram(name: "kmalloc", scope: !178, file: !178, line: 591, type: !5365, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5390)
!5390 = !{!5391, !5392, !5393}
!5391 = !DILocalVariable(name: "size", arg: 1, scope: !5389, file: !178, line: 591, type: !1021)
!5392 = !DILocalVariable(name: "flags", arg: 2, scope: !5389, file: !178, line: 591, type: !188)
!5393 = !DILocalVariable(name: "index", scope: !5394, file: !178, line: 594, type: !7)
!5394 = distinct !DILexicalBlock(scope: !5395, file: !178, line: 593, column: 42)
!5395 = distinct !DILexicalBlock(scope: !5389, file: !178, line: 593, column: 6)
!5396 = !DILocation(line: 591, column: 61, scope: !5389)
!5397 = !DILocation(line: 591, column: 73, scope: !5389)
!5398 = !DILocation(line: 593, column: 27, scope: !5395)
!5399 = !DILocation(line: 593, column: 6, scope: !5395)
!5400 = !DILocation(line: 593, column: 33, scope: !5395)
!5401 = !DILocation(line: 593, column: 36, scope: !5395)
!5402 = !DILocation(line: 593, column: 6, scope: !5389)
!5403 = !DILocation(line: 594, column: 3, scope: !5394)
!5404 = !DILocation(line: 594, column: 16, scope: !5394)
!5405 = !DILocation(line: 596, column: 7, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5394, file: !178, line: 596, column: 7)
!5407 = !DILocation(line: 596, column: 12, scope: !5406)
!5408 = !DILocation(line: 596, column: 7, scope: !5394)
!5409 = !DILocation(line: 597, column: 25, scope: !5406)
!5410 = !DILocation(line: 597, column: 31, scope: !5406)
!5411 = !DILocation(line: 597, column: 11, scope: !5406)
!5412 = !DILocation(line: 597, column: 4, scope: !5406)
!5413 = !DILocation(line: 599, column: 11, scope: !5394)
!5414 = !DILocation(line: 599, column: 9, scope: !5394)
!5415 = !DILocation(line: 601, column: 33, scope: !5394)
!5416 = !DILocation(line: 601, column: 40, scope: !5394)
!5417 = !DILocation(line: 601, column: 20, scope: !5394)
!5418 = !DILocation(line: 601, column: 5, scope: !5394)
!5419 = !DILocation(line: 601, column: 51, scope: !5394)
!5420 = !DILocation(line: 602, column: 5, scope: !5394)
!5421 = !DILocation(line: 602, column: 12, scope: !5394)
!5422 = !DILocation(line: 600, column: 10, scope: !5394)
!5423 = !DILocation(line: 600, column: 3, scope: !5394)
!5424 = !DILocation(line: 603, column: 2, scope: !5395)
!5425 = !DILocation(line: 604, column: 19, scope: !5389)
!5426 = !DILocation(line: 604, column: 25, scope: !5389)
!5427 = !DILocation(line: 604, column: 9, scope: !5389)
!5428 = !DILocation(line: 604, column: 2, scope: !5389)
!5429 = !DILocation(line: 605, column: 1, scope: !5389)
!5430 = !DISubprogram(name: "kmalloc_large", scope: !178, file: !178, line: 531, type: !5365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5431 = distinct !DISubprogram(name: "__kmalloc_index", scope: !178, file: !178, line: 444, type: !5432, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5434)
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!7, !1021, !206}
!5434 = !{!5435, !5436}
!5435 = !DILocalVariable(name: "size", arg: 1, scope: !5431, file: !178, line: 444, type: !1021)
!5436 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5431, file: !178, line: 445, type: !206)
!5437 = !DILocation(line: 444, column: 60, scope: !5431)
!5438 = !DILocation(line: 445, column: 16, scope: !5431)
!5439 = !DILocation(line: 447, column: 7, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 447, column: 6)
!5441 = !DILocation(line: 447, column: 6, scope: !5431)
!5442 = !DILocation(line: 448, column: 3, scope: !5440)
!5443 = !DILocation(line: 450, column: 6, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 450, column: 6)
!5445 = !DILocation(line: 450, column: 11, scope: !5444)
!5446 = !DILocation(line: 450, column: 6, scope: !5431)
!5447 = !DILocation(line: 451, column: 3, scope: !5444)
!5448 = !DILocation(line: 453, column: 32, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 453, column: 6)
!5450 = !DILocation(line: 453, column: 37, scope: !5449)
!5451 = !DILocation(line: 453, column: 42, scope: !5449)
!5452 = !DILocation(line: 453, column: 45, scope: !5449)
!5453 = !DILocation(line: 453, column: 50, scope: !5449)
!5454 = !DILocation(line: 453, column: 6, scope: !5431)
!5455 = !DILocation(line: 454, column: 3, scope: !5449)
!5456 = !DILocation(line: 455, column: 32, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 455, column: 6)
!5458 = !DILocation(line: 455, column: 37, scope: !5457)
!5459 = !DILocation(line: 455, column: 43, scope: !5457)
!5460 = !DILocation(line: 455, column: 46, scope: !5457)
!5461 = !DILocation(line: 455, column: 51, scope: !5457)
!5462 = !DILocation(line: 455, column: 6, scope: !5431)
!5463 = !DILocation(line: 456, column: 3, scope: !5457)
!5464 = !DILocation(line: 457, column: 6, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 457, column: 6)
!5466 = !DILocation(line: 457, column: 11, scope: !5465)
!5467 = !DILocation(line: 457, column: 6, scope: !5431)
!5468 = !DILocation(line: 457, column: 26, scope: !5465)
!5469 = !DILocation(line: 458, column: 6, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 458, column: 6)
!5471 = !DILocation(line: 458, column: 11, scope: !5470)
!5472 = !DILocation(line: 458, column: 6, scope: !5431)
!5473 = !DILocation(line: 458, column: 26, scope: !5470)
!5474 = !DILocation(line: 459, column: 6, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 459, column: 6)
!5476 = !DILocation(line: 459, column: 11, scope: !5475)
!5477 = !DILocation(line: 459, column: 6, scope: !5431)
!5478 = !DILocation(line: 459, column: 26, scope: !5475)
!5479 = !DILocation(line: 460, column: 6, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 460, column: 6)
!5481 = !DILocation(line: 460, column: 11, scope: !5480)
!5482 = !DILocation(line: 460, column: 6, scope: !5431)
!5483 = !DILocation(line: 460, column: 26, scope: !5480)
!5484 = !DILocation(line: 461, column: 6, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 461, column: 6)
!5486 = !DILocation(line: 461, column: 11, scope: !5485)
!5487 = !DILocation(line: 461, column: 6, scope: !5431)
!5488 = !DILocation(line: 461, column: 26, scope: !5485)
!5489 = !DILocation(line: 462, column: 6, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 462, column: 6)
!5491 = !DILocation(line: 462, column: 11, scope: !5490)
!5492 = !DILocation(line: 462, column: 6, scope: !5431)
!5493 = !DILocation(line: 462, column: 26, scope: !5490)
!5494 = !DILocation(line: 463, column: 6, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 463, column: 6)
!5496 = !DILocation(line: 463, column: 11, scope: !5495)
!5497 = !DILocation(line: 463, column: 6, scope: !5431)
!5498 = !DILocation(line: 463, column: 26, scope: !5495)
!5499 = !DILocation(line: 464, column: 6, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 464, column: 6)
!5501 = !DILocation(line: 464, column: 11, scope: !5500)
!5502 = !DILocation(line: 464, column: 6, scope: !5431)
!5503 = !DILocation(line: 464, column: 26, scope: !5500)
!5504 = !DILocation(line: 465, column: 6, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 465, column: 6)
!5506 = !DILocation(line: 465, column: 11, scope: !5505)
!5507 = !DILocation(line: 465, column: 6, scope: !5431)
!5508 = !DILocation(line: 465, column: 26, scope: !5505)
!5509 = !DILocation(line: 466, column: 6, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 466, column: 6)
!5511 = !DILocation(line: 466, column: 11, scope: !5510)
!5512 = !DILocation(line: 466, column: 6, scope: !5431)
!5513 = !DILocation(line: 466, column: 26, scope: !5510)
!5514 = !DILocation(line: 467, column: 6, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 467, column: 6)
!5516 = !DILocation(line: 467, column: 11, scope: !5515)
!5517 = !DILocation(line: 467, column: 6, scope: !5431)
!5518 = !DILocation(line: 467, column: 26, scope: !5515)
!5519 = !DILocation(line: 468, column: 6, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 468, column: 6)
!5521 = !DILocation(line: 468, column: 11, scope: !5520)
!5522 = !DILocation(line: 468, column: 6, scope: !5431)
!5523 = !DILocation(line: 468, column: 26, scope: !5520)
!5524 = !DILocation(line: 469, column: 6, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 469, column: 6)
!5526 = !DILocation(line: 469, column: 11, scope: !5525)
!5527 = !DILocation(line: 469, column: 6, scope: !5431)
!5528 = !DILocation(line: 469, column: 26, scope: !5525)
!5529 = !DILocation(line: 470, column: 6, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 470, column: 6)
!5531 = !DILocation(line: 470, column: 11, scope: !5530)
!5532 = !DILocation(line: 470, column: 6, scope: !5431)
!5533 = !DILocation(line: 470, column: 26, scope: !5530)
!5534 = !DILocation(line: 471, column: 6, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 471, column: 6)
!5536 = !DILocation(line: 471, column: 11, scope: !5535)
!5537 = !DILocation(line: 471, column: 6, scope: !5431)
!5538 = !DILocation(line: 471, column: 26, scope: !5535)
!5539 = !DILocation(line: 472, column: 6, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 472, column: 6)
!5541 = !DILocation(line: 472, column: 11, scope: !5540)
!5542 = !DILocation(line: 472, column: 6, scope: !5431)
!5543 = !DILocation(line: 472, column: 26, scope: !5540)
!5544 = !DILocation(line: 473, column: 6, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 473, column: 6)
!5546 = !DILocation(line: 473, column: 11, scope: !5545)
!5547 = !DILocation(line: 473, column: 6, scope: !5431)
!5548 = !DILocation(line: 473, column: 26, scope: !5545)
!5549 = !DILocation(line: 474, column: 6, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 474, column: 6)
!5551 = !DILocation(line: 474, column: 11, scope: !5550)
!5552 = !DILocation(line: 474, column: 6, scope: !5431)
!5553 = !DILocation(line: 474, column: 27, scope: !5550)
!5554 = !DILocation(line: 475, column: 6, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 475, column: 6)
!5556 = !DILocation(line: 475, column: 11, scope: !5555)
!5557 = !DILocation(line: 475, column: 6, scope: !5431)
!5558 = !DILocation(line: 475, column: 32, scope: !5555)
!5559 = !DILocation(line: 477, column: 50, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5431, file: !178, line: 477, column: 6)
!5561 = !DILocation(line: 477, column: 6, scope: !5431)
!5562 = !DILocation(line: 478, column: 3, scope: !5560)
!5563 = !DILocation(line: 478, column: 3, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5565, file: !178, line: 478, column: 3)
!5565 = distinct !DILexicalBlock(scope: !5560, file: !178, line: 478, column: 3)
!5566 = !{i32 -2141133223}
!5567 = !DILocation(line: 478, column: 3, scope: !5565)
!5568 = !DILocation(line: 480, column: 3, scope: !5560)
!5569 = !DILocation(line: 480, column: 3, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5560, file: !178, line: 480, column: 3)
!5571 = !DILocation(line: 480, column: 3, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5570, file: !178, line: 480, column: 3)
!5573 = !DILocation(line: 480, column: 3, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5570, file: !178, line: 480, column: 3)
!5575 = !{i64 2153834276, i64 2153834305, i64 2153834351, i64 2153834409, i64 2153834463, i64 2153834517, i64 2153834572, i64 2153834603}
!5576 = !DILocation(line: 483, column: 2, scope: !5431)
!5577 = !DILocation(line: 484, column: 1, scope: !5431)
!5578 = !DISubprogram(name: "kmalloc_trace", scope: !178, file: !178, line: 525, type: !5579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5579 = !DISubroutineType(types: !5580)
!5580 = !{!191, !5581, !188, !1021}
!5581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5582, size: 64)
!5582 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5583, line: 325, flags: DIFlagFwdDecl)
!5583 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5584 = distinct !DISubprogram(name: "kmalloc_type", scope: !178, file: !178, line: 401, type: !5585, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5587)
!5585 = !DISubroutineType(types: !5586)
!5586 = !{!177, !188, !190}
!5587 = !{!5588, !5589}
!5588 = !DILocalVariable(name: "flags", arg: 1, scope: !5584, file: !178, line: 401, type: !188)
!5589 = !DILocalVariable(name: "caller", arg: 2, scope: !5584, file: !178, line: 401, type: !190)
!5590 = !DILocation(line: 401, column: 67, scope: !5584)
!5591 = !DILocation(line: 401, column: 88, scope: !5584)
!5592 = !DILocation(line: 407, column: 6, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5584, file: !178, line: 407, column: 6)
!5594 = !DILocation(line: 407, column: 6, scope: !5584)
!5595 = !DILocation(line: 413, column: 3, scope: !5593)
!5596 = !DILocation(line: 423, column: 38, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5584, file: !178, line: 423, column: 6)
!5598 = !DILocation(line: 423, column: 44, scope: !5597)
!5599 = !DILocation(line: 423, column: 6, scope: !5584)
!5600 = !DILocation(line: 424, column: 3, scope: !5597)
!5601 = !DILocation(line: 426, column: 3, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5584, file: !178, line: 425, column: 6)
!5603 = !DILocation(line: 429, column: 1, scope: !5584)
!5604 = !DISubprogram(name: "__kmalloc", scope: !178, file: !178, line: 488, type: !5365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5605 = !DISubprogram(name: "__compiletime_assert_263", scope: !178, file: !178, line: 478, type: !2249, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5606 = !DISubprogram(name: "_dev_warn", scope: !5607, file: !5607, line: 52, type: !5608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5607 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5608 = !DISubroutineType(types: !5609)
!5609 = !{null, !4287, !210, null}
!5610 = distinct !DISubprogram(name: "input_report_abs", scope: !248, file: !248, line: 433, type: !5611, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5613)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{null, !246, !7, !85}
!5613 = !{!5614, !5615, !5616}
!5614 = !DILocalVariable(name: "dev", arg: 1, scope: !5610, file: !248, line: 433, type: !246)
!5615 = !DILocalVariable(name: "code", arg: 2, scope: !5610, file: !248, line: 433, type: !7)
!5616 = !DILocalVariable(name: "value", arg: 3, scope: !5610, file: !248, line: 433, type: !85)
!5617 = !DILocation(line: 433, column: 55, scope: !5610)
!5618 = !DILocation(line: 433, column: 73, scope: !5610)
!5619 = !DILocation(line: 433, column: 83, scope: !5610)
!5620 = !DILocation(line: 435, column: 14, scope: !5610)
!5621 = !DILocation(line: 435, column: 27, scope: !5610)
!5622 = !DILocation(line: 435, column: 33, scope: !5610)
!5623 = !DILocation(line: 435, column: 2, scope: !5610)
!5624 = !DILocation(line: 436, column: 1, scope: !5610)
!5625 = distinct !DISubprogram(name: "input_report_key", scope: !248, file: !248, line: 423, type: !5611, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5626)
!5626 = !{!5627, !5628, !5629}
!5627 = !DILocalVariable(name: "dev", arg: 1, scope: !5625, file: !248, line: 423, type: !246)
!5628 = !DILocalVariable(name: "code", arg: 2, scope: !5625, file: !248, line: 423, type: !7)
!5629 = !DILocalVariable(name: "value", arg: 3, scope: !5625, file: !248, line: 423, type: !85)
!5630 = !DILocation(line: 423, column: 55, scope: !5625)
!5631 = !DILocation(line: 423, column: 73, scope: !5625)
!5632 = !DILocation(line: 423, column: 83, scope: !5625)
!5633 = !DILocation(line: 425, column: 14, scope: !5625)
!5634 = !DILocation(line: 425, column: 27, scope: !5625)
!5635 = !DILocation(line: 425, column: 35, scope: !5625)
!5636 = !DILocation(line: 425, column: 34, scope: !5625)
!5637 = !DILocation(line: 425, column: 33, scope: !5625)
!5638 = !DILocation(line: 425, column: 2, scope: !5625)
!5639 = !DILocation(line: 426, column: 1, scope: !5625)
!5640 = distinct !DISubprogram(name: "input_sync", scope: !248, file: !248, line: 448, type: !4174, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5641)
!5641 = !{!5642}
!5642 = !DILocalVariable(name: "dev", arg: 1, scope: !5640, file: !248, line: 448, type: !246)
!5643 = !DILocation(line: 448, column: 49, scope: !5640)
!5644 = !DILocation(line: 450, column: 14, scope: !5640)
!5645 = !DILocation(line: 450, column: 2, scope: !5640)
!5646 = !DILocation(line: 451, column: 1, scope: !5640)
!5647 = !DISubprogram(name: "psmouse_report_standard_motion", scope: !130, file: !130, line: 146, type: !5648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !246, !5135}
!5650 = !DISubprogram(name: "psmouse_report_standard_buttons", scope: !130, file: !130, line: 145, type: !5651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5651 = !DISubroutineType(types: !5652)
!5652 = !{null, !246, !442}
!5653 = !DISubprogram(name: "input_event", scope: !248, file: !248, line: 420, type: !5654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5654 = !DISubroutineType(types: !5655)
!5655 = !{null, !246, !7, !7, !85}
!5656 = !DISubprogram(name: "input_unregister_device", scope: !248, file: !248, line: 385, type: !4174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
