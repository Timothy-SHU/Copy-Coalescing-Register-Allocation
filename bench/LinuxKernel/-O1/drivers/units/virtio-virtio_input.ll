; ModuleID = 'drivers/virtio/virtio_input.c'
source_filename = "drivers/virtio/virtio_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_virtio_input__296_409_virtio_input_driver_init\22, \22a\22\09\09"
module asm "__initcall__kmod_virtio_input__296_409_virtio_input_driver_init6:\09\09\09"
module asm ".long\09__initstub__kmod_virtio_input__296_409_virtio_input_driver_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.static_call_key = type { ptr, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.virtio_input = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], ptr, ptr, [64 x %struct.virtio_input_event], %struct.spinlock, i8 }
%struct.virtio_input_event = type { i16, i16, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i8, ptr }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }

@__UNIQUE_ID___addressable___initstub__kmod_virtio_input__296_409_virtio_input_driver_init6297 = internal global ptr @__initstub__kmod_virtio_input__296_409_virtio_input_driver_init6, section ".discard.addressable", align 8, !dbg !0
@virtio_input_driver = internal global %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 0, ptr null, i32 0, ptr null, ptr @virtinput_probe, ptr null, ptr @virtinput_remove, ptr null, ptr @virtinput_freeze, ptr @virtinput_restore }, align 8, !dbg !4148
@__exitcall_virtio_input_driver_exit = internal global ptr @virtio_input_driver_exit, section ".exitcall.exit", align 8, !dbg !4121
@__UNIQUE_ID_file298 = internal constant [46 x i8] c"virtio_input.file=drivers/virtio/virtio_input\00", section ".modinfo", align 1, !dbg !4125
@__UNIQUE_ID_license299 = internal constant [25 x i8] c"virtio_input.license=GPL\00", section ".modinfo", align 1, !dbg !4130
@__UNIQUE_ID_description300 = internal constant [52 x i8] c"virtio_input.description=Virtio input device driver\00", section ".modinfo", align 1, !dbg !4135
@__UNIQUE_ID_author301 = internal constant [54 x i8] c"virtio_input.author=Gerd Hoffmann <kraxel@redhat.com>\00", section ".modinfo", align 1, !dbg !4138
@.str = private unnamed_addr constant [13 x i8] c"virtio_input\00", align 1, !dbg !4143
@id_table = internal constant [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 18, i32 -1 }, %struct.virtio_device_id zeroinitializer], align 16, !dbg !4753
@features = internal global [0 x i32] zeroinitializer, align 4, !dbg !4756
@.str.1 = private unnamed_addr constant [16 x i8] c"virtio%d/input0\00", align 1, !dbg !4761
@.str.2 = private unnamed_addr constant [30 x i8] c"include/linux/virtio_config.h\00", align 1, !dbg !4763
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4768
@__const.virtinput_init_vqs.cbs = private unnamed_addr constant [2 x ptr] [ptr @virtinput_recv_events, ptr @virtinput_recv_status], align 16
@virtinput_init_vqs.names = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.5], align 16, !dbg !4778
@.str.4 = private unnamed_addr constant [7 x i8] c"events\00", align 1, !dbg !4773
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1, !dbg !4776
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5105
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_virtio_input__296_409_virtio_input_driver_init6297, ptr @virtio_input_driver_exit, ptr @__exitcall_virtio_input_driver_exit, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_author301, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_virtio_input__296_409_virtio_input_driver_init6() #0 section ".init.text" align 16 !dbg !5118 {
entry:
  %call = call i32 @virtio_input_driver_init() #17, !dbg !5119
  ret i32 %call, !dbg !5119
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @virtio_input_driver_init() #0 section ".init.text" align 16 !dbg !5120 {
entry:
  %call = call i32 @register_virtio_driver(ptr noundef @virtio_input_driver) #18, !dbg !5121
  ret i32 %call, !dbg !5121
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @virtio_input_driver_exit() #0 section ".exit.text" align 16 !dbg !5122 {
entry:
  call void @unregister_virtio_driver(ptr noundef @virtio_input_driver) #18, !dbg !5123
  ret void, !dbg !5123
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5124 dso_local void @unregister_virtio_driver(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5128 dso_local i32 @register_virtio_driver(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtinput_probe(ptr noundef %vdev) #2 align 16 !dbg !5131 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %flags = alloca i64, align 8
  %size = alloca i64, align 8
  %abs = alloca i32, align 4
  %err = alloca i32, align 4
  %nslots = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %__UNIQUE_ID___x292 = alloca i64, align 8
  %__UNIQUE_ID___y293 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x294 = alloca i64, align 8
  %__UNIQUE_ID___y295 = alloca i64, align 8
  %tmp24 = alloca i64, align 8
  %virtio_cread_v = alloca i16, align 2
  %__dummy = alloca i16, align 2
  %__dummy2 = alloca i16, align 2
  %tmp55 = alloca i32, align 4
  %virtio_cread_v62 = alloca i16, align 2
  %__dummy66 = alloca i16, align 2
  %__dummy267 = alloca i16, align 2
  %tmp70 = alloca i32, align 4
  %virtio_cread_v80 = alloca i16, align 2
  %__dummy84 = alloca i16, align 2
  %__dummy285 = alloca i16, align 2
  %tmp88 = alloca i32, align 4
  %virtio_cread_v98 = alloca i16, align 2
  %__dummy102 = alloca i16, align 2
  %__dummy2103 = alloca i16, align 2
  %tmp106 = alloca i32, align 4
  %__dummy271 = alloca i64, align 8
  %__dummy2272 = alloca i64, align 8
  %tmp275 = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5133, metadata !DIExpression()), !dbg !5177
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #19, !dbg !5178
  call void @llvm.dbg.declare(metadata ptr %vi, metadata !5134, metadata !DIExpression()), !dbg !5179
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #19, !dbg !5180
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5135, metadata !DIExpression()), !dbg !5181
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #19, !dbg !5182
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5136, metadata !DIExpression()), !dbg !5183
  call void @llvm.lifetime.start.p0(i64 4, ptr %abs) #19, !dbg !5184
  call void @llvm.dbg.declare(metadata ptr %abs, metadata !5137, metadata !DIExpression()), !dbg !5185
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #19, !dbg !5184
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5138, metadata !DIExpression()), !dbg !5186
  call void @llvm.lifetime.start.p0(i64 4, ptr %nslots) #19, !dbg !5184
  call void @llvm.dbg.declare(metadata ptr %nslots, metadata !5139, metadata !DIExpression()), !dbg !5187
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5188
  %call = call zeroext i1 @virtio_has_feature(ptr noundef %0, i32 noundef 32) #18, !dbg !5190
  br i1 %call, label %if.end, label %if.then, !dbg !5191

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5192

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef 744, i32 noundef 3264) #20, !dbg !5193
  store ptr %call1, ptr %vi, align 8, !dbg !5194
  %1 = load ptr, ptr %vi, align 8, !dbg !5195
  %tobool = icmp ne ptr %1, null, !dbg !5195
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !5197

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5198

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %vi, align 8, !dbg !5199
  %3 = load ptr, ptr %vdev.addr, align 8, !dbg !5200
  %priv = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 12, !dbg !5201
  store ptr %2, ptr %priv, align 8, !dbg !5202
  %4 = load ptr, ptr %vdev.addr, align 8, !dbg !5203
  %5 = load ptr, ptr %vi, align 8, !dbg !5204
  %vdev4 = getelementptr inbounds %struct.virtio_input, ptr %5, i32 0, i32 0, !dbg !5205
  store ptr %4, ptr %vdev4, align 8, !dbg !5206
  br label %do.body, !dbg !5207

do.body:                                          ; preds = %if.end3
  %6 = load ptr, ptr %vi, align 8, !dbg !5208
  %lock = getelementptr inbounds %struct.virtio_input, ptr %6, i32 0, i32 8, !dbg !5208
  %call5 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5208
  %7 = load ptr, ptr %vi, align 8, !dbg !5208
  %lock6 = getelementptr inbounds %struct.virtio_input, ptr %7, i32 0, i32 8, !dbg !5208
  %8 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5208
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %8, i32 0, i32 0, !dbg !5208
  %9 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5208
  %counter = getelementptr inbounds %struct.atomic_t, ptr %9, i32 0, i32 0, !dbg !5208
  store i32 0, ptr %counter, align 4, !dbg !5208
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock6, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5208
  br label %do.cond, !dbg !5208

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5208

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %vi, align 8, !dbg !5210
  %call7 = call i32 @virtinput_init_vqs(ptr noundef %10) #18, !dbg !5211
  store i32 %call7, ptr %err, align 4, !dbg !5212
  %11 = load i32, ptr %err, align 4, !dbg !5213
  %tobool8 = icmp ne i32 %11, 0, !dbg !5213
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5215

if.then9:                                         ; preds = %do.end
  br label %err_init_vq, !dbg !5216

if.end10:                                         ; preds = %do.end
  %call11 = call ptr @input_allocate_device() #18, !dbg !5217
  %12 = load ptr, ptr %vi, align 8, !dbg !5218
  %idev = getelementptr inbounds %struct.virtio_input, ptr %12, i32 0, i32 1, !dbg !5219
  store ptr %call11, ptr %idev, align 8, !dbg !5220
  %13 = load ptr, ptr %vi, align 8, !dbg !5221
  %idev12 = getelementptr inbounds %struct.virtio_input, ptr %13, i32 0, i32 1, !dbg !5223
  %14 = load ptr, ptr %idev12, align 8, !dbg !5223
  %tobool13 = icmp ne ptr %14, null, !dbg !5221
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5224

if.then14:                                        ; preds = %if.end10
  store i32 -12, ptr %err, align 4, !dbg !5225
  br label %err_input_alloc, !dbg !5227

if.end15:                                         ; preds = %if.end10
  %15 = load ptr, ptr %vi, align 8, !dbg !5228
  %idev16 = getelementptr inbounds %struct.virtio_input, ptr %15, i32 0, i32 1, !dbg !5229
  %16 = load ptr, ptr %idev16, align 8, !dbg !5229
  %17 = load ptr, ptr %vi, align 8, !dbg !5230
  call void @input_set_drvdata(ptr noundef %16, ptr noundef %17) #18, !dbg !5231
  %18 = load ptr, ptr %vi, align 8, !dbg !5232
  %call17 = call zeroext i8 @virtinput_cfg_select(ptr noundef %18, i8 noundef zeroext 1, i8 noundef zeroext 0) #18, !dbg !5233
  %conv = zext i8 %call17 to i64, !dbg !5233
  store i64 %conv, ptr %size, align 8, !dbg !5234
  %19 = load ptr, ptr %vi, align 8, !dbg !5235
  %vdev18 = getelementptr inbounds %struct.virtio_input, ptr %19, i32 0, i32 0, !dbg !5236
  %20 = load ptr, ptr %vdev18, align 8, !dbg !5236
  %21 = load ptr, ptr %vi, align 8, !dbg !5237
  %name = getelementptr inbounds %struct.virtio_input, ptr %21, i32 0, i32 2, !dbg !5238
  %arraydecay = getelementptr inbounds [64 x i8], ptr %name, i64 0, i64 0, !dbg !5237
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x292) #19, !dbg !5239
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x292, metadata !5140, metadata !DIExpression()), !dbg !5239
  %22 = load i64, ptr %size, align 8, !dbg !5239
  store i64 %22, ptr %__UNIQUE_ID___x292, align 8, !dbg !5239
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y293) #19, !dbg !5239
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y293, metadata !5142, metadata !DIExpression()), !dbg !5239
  store i64 64, ptr %__UNIQUE_ID___y293, align 8, !dbg !5239
  %23 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !5239
  %24 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !5239
  %cmp = icmp ult i64 %23, %24, !dbg !5239
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5239

cond.true:                                        ; preds = %if.end15
  %25 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !5239
  br label %cond.end, !dbg !5239

cond.false:                                       ; preds = %if.end15
  %26 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !5239
  br label %cond.end, !dbg !5239

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !5239
  store i64 %cond, ptr %tmp, align 8, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y293) #19, !dbg !5240
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x292) #19, !dbg !5240
  %27 = load i64, ptr %tmp, align 8, !dbg !5239
  call void @virtio_cread_bytes(ptr noundef %20, i32 noundef 8, ptr noundef %arraydecay, i64 noundef %27) #18, !dbg !5241
  %28 = load ptr, ptr %vi, align 8, !dbg !5242
  %call20 = call zeroext i8 @virtinput_cfg_select(ptr noundef %28, i8 noundef zeroext 2, i8 noundef zeroext 0) #18, !dbg !5243
  %conv21 = zext i8 %call20 to i64, !dbg !5243
  store i64 %conv21, ptr %size, align 8, !dbg !5244
  %29 = load ptr, ptr %vi, align 8, !dbg !5245
  %vdev22 = getelementptr inbounds %struct.virtio_input, ptr %29, i32 0, i32 0, !dbg !5246
  %30 = load ptr, ptr %vdev22, align 8, !dbg !5246
  %31 = load ptr, ptr %vi, align 8, !dbg !5247
  %serial = getelementptr inbounds %struct.virtio_input, ptr %31, i32 0, i32 3, !dbg !5248
  %arraydecay23 = getelementptr inbounds [64 x i8], ptr %serial, i64 0, i64 0, !dbg !5247
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x294) #19, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x294, metadata !5143, metadata !DIExpression()), !dbg !5249
  %32 = load i64, ptr %size, align 8, !dbg !5249
  store i64 %32, ptr %__UNIQUE_ID___x294, align 8, !dbg !5249
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y295) #19, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y295, metadata !5145, metadata !DIExpression()), !dbg !5249
  store i64 64, ptr %__UNIQUE_ID___y295, align 8, !dbg !5249
  %33 = load i64, ptr %__UNIQUE_ID___x294, align 8, !dbg !5249
  %34 = load i64, ptr %__UNIQUE_ID___y295, align 8, !dbg !5249
  %cmp25 = icmp ult i64 %33, %34, !dbg !5249
  br i1 %cmp25, label %cond.true27, label %cond.false28, !dbg !5249

cond.true27:                                      ; preds = %cond.end
  %35 = load i64, ptr %__UNIQUE_ID___x294, align 8, !dbg !5249
  br label %cond.end29, !dbg !5249

cond.false28:                                     ; preds = %cond.end
  %36 = load i64, ptr %__UNIQUE_ID___y295, align 8, !dbg !5249
  br label %cond.end29, !dbg !5249

cond.end29:                                       ; preds = %cond.false28, %cond.true27
  %cond30 = phi i64 [ %35, %cond.true27 ], [ %36, %cond.false28 ], !dbg !5249
  store i64 %cond30, ptr %tmp24, align 8, !dbg !5249
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y295) #19, !dbg !5250
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x294) #19, !dbg !5250
  %37 = load i64, ptr %tmp24, align 8, !dbg !5249
  call void @virtio_cread_bytes(ptr noundef %30, i32 noundef 8, ptr noundef %arraydecay23, i64 noundef %37) #18, !dbg !5251
  %38 = load ptr, ptr %vi, align 8, !dbg !5252
  %phys = getelementptr inbounds %struct.virtio_input, ptr %38, i32 0, i32 4, !dbg !5253
  %arraydecay31 = getelementptr inbounds [64 x i8], ptr %phys, i64 0, i64 0, !dbg !5252
  %39 = load ptr, ptr %vdev.addr, align 8, !dbg !5254
  %index = getelementptr inbounds %struct.virtio_device, ptr %39, i32 0, i32 0, !dbg !5255
  %40 = load i32, ptr %index, align 8, !dbg !5255
  %call32 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay31, i64 noundef 64, ptr noundef @.str.1, i32 noundef %40) #18, !dbg !5256
  %41 = load ptr, ptr %vi, align 8, !dbg !5257
  %name33 = getelementptr inbounds %struct.virtio_input, ptr %41, i32 0, i32 2, !dbg !5258
  %arraydecay34 = getelementptr inbounds [64 x i8], ptr %name33, i64 0, i64 0, !dbg !5257
  %42 = load ptr, ptr %vi, align 8, !dbg !5259
  %idev35 = getelementptr inbounds %struct.virtio_input, ptr %42, i32 0, i32 1, !dbg !5260
  %43 = load ptr, ptr %idev35, align 8, !dbg !5260
  %name36 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 0, !dbg !5261
  store ptr %arraydecay34, ptr %name36, align 8, !dbg !5262
  %44 = load ptr, ptr %vi, align 8, !dbg !5263
  %phys37 = getelementptr inbounds %struct.virtio_input, ptr %44, i32 0, i32 4, !dbg !5264
  %arraydecay38 = getelementptr inbounds [64 x i8], ptr %phys37, i64 0, i64 0, !dbg !5263
  %45 = load ptr, ptr %vi, align 8, !dbg !5265
  %idev39 = getelementptr inbounds %struct.virtio_input, ptr %45, i32 0, i32 1, !dbg !5266
  %46 = load ptr, ptr %idev39, align 8, !dbg !5266
  %phys40 = getelementptr inbounds %struct.input_dev, ptr %46, i32 0, i32 1, !dbg !5267
  store ptr %arraydecay38, ptr %phys40, align 8, !dbg !5268
  %47 = load ptr, ptr %vi, align 8, !dbg !5269
  %serial41 = getelementptr inbounds %struct.virtio_input, ptr %47, i32 0, i32 3, !dbg !5270
  %arraydecay42 = getelementptr inbounds [64 x i8], ptr %serial41, i64 0, i64 0, !dbg !5269
  %48 = load ptr, ptr %vi, align 8, !dbg !5271
  %idev43 = getelementptr inbounds %struct.virtio_input, ptr %48, i32 0, i32 1, !dbg !5272
  %49 = load ptr, ptr %idev43, align 8, !dbg !5272
  %uniq = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 2, !dbg !5273
  store ptr %arraydecay42, ptr %uniq, align 8, !dbg !5274
  %50 = load ptr, ptr %vi, align 8, !dbg !5275
  %call44 = call zeroext i8 @virtinput_cfg_select(ptr noundef %50, i8 noundef zeroext 3, i8 noundef zeroext 0) #18, !dbg !5276
  %conv45 = zext i8 %call44 to i64, !dbg !5276
  store i64 %conv45, ptr %size, align 8, !dbg !5277
  %51 = load i64, ptr %size, align 8, !dbg !5278
  %cmp46 = icmp uge i64 %51, 8, !dbg !5279
  br i1 %cmp46, label %if.then48, label %if.else, !dbg !5280

if.then48:                                        ; preds = %cond.end29
  br label %do.body49, !dbg !5281

do.body49:                                        ; preds = %if.then48
  call void @llvm.lifetime.start.p0(i64 2, ptr %virtio_cread_v) #19, !dbg !5282
  call void @llvm.dbg.declare(metadata ptr %virtio_cread_v, metadata !5146, metadata !DIExpression()), !dbg !5282
  br label %do.body50, !dbg !5282

do.body50:                                        ; preds = %do.body49
  call void @might_resched() #18, !dbg !5283
  br label %do.cond51, !dbg !5283

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !5283

do.end52:                                         ; preds = %do.cond51
  call void @llvm.lifetime.start.p0(i64 2, ptr %__dummy) #19, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5150, metadata !DIExpression()), !dbg !5285
  call void @llvm.lifetime.start.p0(i64 2, ptr %__dummy2) #19, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5152, metadata !DIExpression()), !dbg !5285
  %cmp53 = icmp eq ptr %__dummy, %__dummy2, !dbg !5285
  %conv54 = zext i1 %cmp53 to i32, !dbg !5285
  store i32 1, ptr %tmp55, align 4, !dbg !5285
  call void @llvm.lifetime.end.p0(i64 2, ptr %__dummy2) #19, !dbg !5282
  call void @llvm.lifetime.end.p0(i64 2, ptr %__dummy) #19, !dbg !5282
  %52 = load i32, ptr %tmp55, align 4, !dbg !5285
  %53 = load ptr, ptr %vi, align 8, !dbg !5282
  %vdev56 = getelementptr inbounds %struct.virtio_input, ptr %53, i32 0, i32 0, !dbg !5282
  %54 = load ptr, ptr %vdev56, align 8, !dbg !5282
  %config = getelementptr inbounds %struct.virtio_device, ptr %54, i32 0, i32 8, !dbg !5282
  %55 = load ptr, ptr %config, align 8, !dbg !5282
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %55, i32 0, i32 0, !dbg !5282
  %56 = load ptr, ptr %get, align 8, !dbg !5282
  %57 = load ptr, ptr %vi, align 8, !dbg !5282
  %vdev57 = getelementptr inbounds %struct.virtio_input, ptr %57, i32 0, i32 0, !dbg !5282
  %58 = load ptr, ptr %vdev57, align 8, !dbg !5282
  call void %56(ptr noundef %58, i32 noundef 8, ptr noundef %virtio_cread_v, i32 noundef 2) #18, !dbg !5282
  %59 = load i16, ptr %virtio_cread_v, align 2, !dbg !5282
  %60 = load ptr, ptr %vi, align 8, !dbg !5282
  %idev58 = getelementptr inbounds %struct.virtio_input, ptr %60, i32 0, i32 1, !dbg !5282
  %61 = load ptr, ptr %idev58, align 8, !dbg !5282
  %id = getelementptr inbounds %struct.input_dev, ptr %61, i32 0, i32 3, !dbg !5282
  %bustype = getelementptr inbounds %struct.input_id, ptr %id, i32 0, i32 0, !dbg !5282
  store i16 %59, ptr %bustype, align 8, !dbg !5282
  call void @llvm.lifetime.end.p0(i64 2, ptr %virtio_cread_v) #19, !dbg !5281
  br label %do.cond59, !dbg !5282

do.cond59:                                        ; preds = %do.end52
  br label %do.end60, !dbg !5282

do.end60:                                         ; preds = %do.cond59
  br label %do.body61, !dbg !5286

do.body61:                                        ; preds = %do.end60
  call void @llvm.lifetime.start.p0(i64 2, ptr %virtio_cread_v62) #19, !dbg !5287
  call void @llvm.dbg.declare(metadata ptr %virtio_cread_v62, metadata !5153, metadata !DIExpression()), !dbg !5287
  br label %do.body63, !dbg !5287

do.body63:                                        ; preds = %do.body61
  call void @might_resched() #18, !dbg !5288
  br label %do.cond64, !dbg !5288

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !5288

do.end65:                                         ; preds = %do.cond64
  call void @llvm.lifetime.start.p0(i64 2, ptr %__dummy66) #19, !dbg !5290
  call void @llvm.dbg.declare(metadata ptr %__dummy66, metadata !5155, metadata !DIExpression()), !dbg !5290
  call void @llvm.lifetime.start.p0(i64 2, ptr %__dummy267) #19, !dbg !5290
  call void @llvm.dbg.declare(metadata ptr %__dummy267, metadata !5157, metadata !DIExpression()), !dbg !5290
  %cmp68 = icmp eq ptr %__dummy66, %__dummy267, !dbg !5290
  %conv69 = zext i1 %cmp68 to i32, !dbg !5290
  store i32 1, ptr %tmp70, align 4, !dbg !5290
  call void @llvm.lifetime.end.p0(i64 2, ptr %__dummy267) #19, !dbg !5287
  call void @llvm.lifetime.end.p0(i64 2, ptr %__dummy66) #19, !dbg !5287
  %62 = load i32, ptr %tmp70, align 4, !dbg !5290
  %63 = load ptr, ptr %vi, align 8, !dbg !5287
  %vdev71 = getelementptr inbounds %struct.virtio_input, ptr %63, i32 0, i32 0, !dbg !5287
  %64 = load ptr, ptr %vdev71, align 8, !dbg !5287
  %config72 = getelementptr inbounds %struct.virtio_device, ptr %64, i32 0, i32 8, !dbg !5287
  %65 = load ptr, ptr %config72, align 8, !dbg !5287
  %get73 = getelementptr inbounds %struct.virtio_config_ops, ptr %65, i32 0, i32 0, !dbg !5287
  %66 = load ptr, ptr %get73, align 8, !dbg !5287
  %67 = load ptr, ptr %vi, align 8, !dbg !5287
  %vdev74 = getelementptr inbounds %struct.virtio_input, ptr %67, i32 0, i32 0, !dbg !5287
  %68 = load ptr, ptr %vdev74, align 8, !dbg !5287
  call void %66(ptr noundef %68, i32 noundef 10, ptr noundef %virtio_cread_v62, i32 noundef 2) #18, !dbg !5287
  %69 = load i16, ptr %virtio_cread_v62, align 2, !dbg !5287
  %70 = load ptr, ptr %vi, align 8, !dbg !5287
  %idev75 = getelementptr inbounds %struct.virtio_input, ptr %70, i32 0, i32 1, !dbg !5287
  %71 = load ptr, ptr %idev75, align 8, !dbg !5287
  %id76 = getelementptr inbounds %struct.input_dev, ptr %71, i32 0, i32 3, !dbg !5287
  %vendor = getelementptr inbounds %struct.input_id, ptr %id76, i32 0, i32 1, !dbg !5287
  store i16 %69, ptr %vendor, align 2, !dbg !5287
  call void @llvm.lifetime.end.p0(i64 2, ptr %virtio_cread_v62) #19, !dbg !5286
  br label %do.cond77, !dbg !5287

do.cond77:                                        ; preds = %do.end65
  br label %do.end78, !dbg !5287

do.end78:                                         ; preds = %do.cond77
  br label %do.body79, !dbg !5291

do.body79:                                        ; preds = %do.end78
  call void @llvm.lifetime.start.p0(i64 2, ptr %virtio_cread_v80) #19, !dbg !5292
  call void @llvm.dbg.declare(metadata ptr %virtio_cread_v80, metadata !5158, metadata !DIExpression()), !dbg !5292
  br label %do.body81, !dbg !5292

do.body81:                                        ; preds = %do.body79
  call void @might_resched() #18, !dbg !5293
  br label %do.cond82, !dbg !5293

do.cond82:                                        ; preds = %do.body81
  br label %do.end83, !dbg !5293

do.end83:                                         ; preds = %do.cond82
  call void @llvm.lifetime.start.p0(i64 2, ptr %__dummy84) #19, !dbg !5295
  call void @llvm.dbg.declare(metadata ptr %__dummy84, metadata !5160, metadata !DIExpression()), !dbg !5295
  call void @llvm.lifetime.start.p0(i64 2, ptr %__dummy285) #19, !dbg !5295
  call void @llvm.dbg.declare(metadata ptr %__dummy285, metadata !5162, metadata !DIExpression()), !dbg !5295
  %cmp86 = icmp eq ptr %__dummy84, %__dummy285, !dbg !5295
  %conv87 = zext i1 %cmp86 to i32, !dbg !5295
  store i32 1, ptr %tmp88, align 4, !dbg !5295
  call void @llvm.lifetime.end.p0(i64 2, ptr %__dummy285) #19, !dbg !5292
  call void @llvm.lifetime.end.p0(i64 2, ptr %__dummy84) #19, !dbg !5292
  %72 = load i32, ptr %tmp88, align 4, !dbg !5295
  %73 = load ptr, ptr %vi, align 8, !dbg !5292
  %vdev89 = getelementptr inbounds %struct.virtio_input, ptr %73, i32 0, i32 0, !dbg !5292
  %74 = load ptr, ptr %vdev89, align 8, !dbg !5292
  %config90 = getelementptr inbounds %struct.virtio_device, ptr %74, i32 0, i32 8, !dbg !5292
  %75 = load ptr, ptr %config90, align 8, !dbg !5292
  %get91 = getelementptr inbounds %struct.virtio_config_ops, ptr %75, i32 0, i32 0, !dbg !5292
  %76 = load ptr, ptr %get91, align 8, !dbg !5292
  %77 = load ptr, ptr %vi, align 8, !dbg !5292
  %vdev92 = getelementptr inbounds %struct.virtio_input, ptr %77, i32 0, i32 0, !dbg !5292
  %78 = load ptr, ptr %vdev92, align 8, !dbg !5292
  call void %76(ptr noundef %78, i32 noundef 12, ptr noundef %virtio_cread_v80, i32 noundef 2) #18, !dbg !5292
  %79 = load i16, ptr %virtio_cread_v80, align 2, !dbg !5292
  %80 = load ptr, ptr %vi, align 8, !dbg !5292
  %idev93 = getelementptr inbounds %struct.virtio_input, ptr %80, i32 0, i32 1, !dbg !5292
  %81 = load ptr, ptr %idev93, align 8, !dbg !5292
  %id94 = getelementptr inbounds %struct.input_dev, ptr %81, i32 0, i32 3, !dbg !5292
  %product = getelementptr inbounds %struct.input_id, ptr %id94, i32 0, i32 2, !dbg !5292
  store i16 %79, ptr %product, align 4, !dbg !5292
  call void @llvm.lifetime.end.p0(i64 2, ptr %virtio_cread_v80) #19, !dbg !5291
  br label %do.cond95, !dbg !5292

do.cond95:                                        ; preds = %do.end83
  br label %do.end96, !dbg !5292

do.end96:                                         ; preds = %do.cond95
  br label %do.body97, !dbg !5296

do.body97:                                        ; preds = %do.end96
  call void @llvm.lifetime.start.p0(i64 2, ptr %virtio_cread_v98) #19, !dbg !5297
  call void @llvm.dbg.declare(metadata ptr %virtio_cread_v98, metadata !5163, metadata !DIExpression()), !dbg !5297
  br label %do.body99, !dbg !5297

do.body99:                                        ; preds = %do.body97
  call void @might_resched() #18, !dbg !5298
  br label %do.cond100, !dbg !5298

do.cond100:                                       ; preds = %do.body99
  br label %do.end101, !dbg !5298

do.end101:                                        ; preds = %do.cond100
  call void @llvm.lifetime.start.p0(i64 2, ptr %__dummy102) #19, !dbg !5300
  call void @llvm.dbg.declare(metadata ptr %__dummy102, metadata !5165, metadata !DIExpression()), !dbg !5300
  call void @llvm.lifetime.start.p0(i64 2, ptr %__dummy2103) #19, !dbg !5300
  call void @llvm.dbg.declare(metadata ptr %__dummy2103, metadata !5167, metadata !DIExpression()), !dbg !5300
  %cmp104 = icmp eq ptr %__dummy102, %__dummy2103, !dbg !5300
  %conv105 = zext i1 %cmp104 to i32, !dbg !5300
  store i32 1, ptr %tmp106, align 4, !dbg !5300
  call void @llvm.lifetime.end.p0(i64 2, ptr %__dummy2103) #19, !dbg !5297
  call void @llvm.lifetime.end.p0(i64 2, ptr %__dummy102) #19, !dbg !5297
  %82 = load i32, ptr %tmp106, align 4, !dbg !5300
  %83 = load ptr, ptr %vi, align 8, !dbg !5297
  %vdev107 = getelementptr inbounds %struct.virtio_input, ptr %83, i32 0, i32 0, !dbg !5297
  %84 = load ptr, ptr %vdev107, align 8, !dbg !5297
  %config108 = getelementptr inbounds %struct.virtio_device, ptr %84, i32 0, i32 8, !dbg !5297
  %85 = load ptr, ptr %config108, align 8, !dbg !5297
  %get109 = getelementptr inbounds %struct.virtio_config_ops, ptr %85, i32 0, i32 0, !dbg !5297
  %86 = load ptr, ptr %get109, align 8, !dbg !5297
  %87 = load ptr, ptr %vi, align 8, !dbg !5297
  %vdev110 = getelementptr inbounds %struct.virtio_input, ptr %87, i32 0, i32 0, !dbg !5297
  %88 = load ptr, ptr %vdev110, align 8, !dbg !5297
  call void %86(ptr noundef %88, i32 noundef 14, ptr noundef %virtio_cread_v98, i32 noundef 2) #18, !dbg !5297
  %89 = load i16, ptr %virtio_cread_v98, align 2, !dbg !5297
  %90 = load ptr, ptr %vi, align 8, !dbg !5297
  %idev111 = getelementptr inbounds %struct.virtio_input, ptr %90, i32 0, i32 1, !dbg !5297
  %91 = load ptr, ptr %idev111, align 8, !dbg !5297
  %id112 = getelementptr inbounds %struct.input_dev, ptr %91, i32 0, i32 3, !dbg !5297
  %version = getelementptr inbounds %struct.input_id, ptr %id112, i32 0, i32 3, !dbg !5297
  store i16 %89, ptr %version, align 2, !dbg !5297
  call void @llvm.lifetime.end.p0(i64 2, ptr %virtio_cread_v98) #19, !dbg !5296
  br label %do.cond113, !dbg !5297

do.cond113:                                       ; preds = %do.end101
  br label %do.end114, !dbg !5297

do.end114:                                        ; preds = %do.cond113
  br label %if.end118, !dbg !5301

if.else:                                          ; preds = %cond.end29
  %92 = load ptr, ptr %vi, align 8, !dbg !5302
  %idev115 = getelementptr inbounds %struct.virtio_input, ptr %92, i32 0, i32 1, !dbg !5304
  %93 = load ptr, ptr %idev115, align 8, !dbg !5304
  %id116 = getelementptr inbounds %struct.input_dev, ptr %93, i32 0, i32 3, !dbg !5305
  %bustype117 = getelementptr inbounds %struct.input_id, ptr %id116, i32 0, i32 0, !dbg !5306
  store i16 6, ptr %bustype117, align 8, !dbg !5307
  br label %if.end118

if.end118:                                        ; preds = %if.else, %do.end114
  %94 = load ptr, ptr %vi, align 8, !dbg !5308
  %95 = load ptr, ptr %vi, align 8, !dbg !5309
  %idev119 = getelementptr inbounds %struct.virtio_input, ptr %95, i32 0, i32 1, !dbg !5310
  %96 = load ptr, ptr %idev119, align 8, !dbg !5310
  %propbit = getelementptr inbounds %struct.input_dev, ptr %96, i32 0, i32 4, !dbg !5311
  %arraydecay120 = getelementptr inbounds [1 x i64], ptr %propbit, i64 0, i64 0, !dbg !5309
  call void @virtinput_cfg_bits(ptr noundef %94, i32 noundef 16, i32 noundef 0, ptr noundef %arraydecay120, i32 noundef 32) #18, !dbg !5312
  %97 = load ptr, ptr %vi, align 8, !dbg !5313
  %call121 = call zeroext i8 @virtinput_cfg_select(ptr noundef %97, i8 noundef zeroext 17, i8 noundef zeroext 20) #18, !dbg !5314
  %conv122 = zext i8 %call121 to i64, !dbg !5314
  store i64 %conv122, ptr %size, align 8, !dbg !5315
  %98 = load i64, ptr %size, align 8, !dbg !5316
  %tobool123 = icmp ne i64 %98, 0, !dbg !5316
  br i1 %tobool123, label %if.then124, label %if.end147, !dbg !5318

if.then124:                                       ; preds = %if.end118
  %99 = load ptr, ptr %vi, align 8, !dbg !5319
  %idev125 = getelementptr inbounds %struct.virtio_input, ptr %99, i32 0, i32 1, !dbg !5319
  %100 = load ptr, ptr %idev125, align 8, !dbg !5319
  %evbit = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 5, !dbg !5319
  %arraydecay126 = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !5319
  %101 = ptrtoint ptr %arraydecay126 to i64, !dbg !5319
  %cmp127 = icmp ne i64 %101, 0, !dbg !5319
  %conv128 = zext i1 %cmp127 to i32, !dbg !5319
  %102 = call i1 @llvm.is.constant.i32(i32 %conv128), !dbg !5319
  br i1 %102, label %land.lhs.true, label %cond.false142, !dbg !5319

land.lhs.true:                                    ; preds = %if.then124
  %103 = load ptr, ptr %vi, align 8, !dbg !5319
  %idev129 = getelementptr inbounds %struct.virtio_input, ptr %103, i32 0, i32 1, !dbg !5319
  %104 = load ptr, ptr %idev129, align 8, !dbg !5319
  %evbit130 = getelementptr inbounds %struct.input_dev, ptr %104, i32 0, i32 5, !dbg !5319
  %arraydecay131 = getelementptr inbounds [1 x i64], ptr %evbit130, i64 0, i64 0, !dbg !5319
  %105 = ptrtoint ptr %arraydecay131 to i64, !dbg !5319
  %cmp132 = icmp ne i64 %105, 0, !dbg !5319
  br i1 %cmp132, label %land.lhs.true134, label %cond.false142, !dbg !5319

land.lhs.true134:                                 ; preds = %land.lhs.true
  %106 = load ptr, ptr %vi, align 8, !dbg !5319
  %idev135 = getelementptr inbounds %struct.virtio_input, ptr %106, i32 0, i32 1, !dbg !5319
  %107 = load ptr, ptr %idev135, align 8, !dbg !5319
  %evbit136 = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 5, !dbg !5319
  %arraydecay137 = getelementptr inbounds [1 x i64], ptr %evbit136, i64 0, i64 0, !dbg !5319
  %108 = load i64, ptr %arraydecay137, align 8, !dbg !5319
  %109 = call i1 @llvm.is.constant.i64(i64 %108), !dbg !5319
  br i1 %109, label %cond.true138, label %cond.false142, !dbg !5319

cond.true138:                                     ; preds = %land.lhs.true134
  %110 = load ptr, ptr %vi, align 8, !dbg !5319
  %idev139 = getelementptr inbounds %struct.virtio_input, ptr %110, i32 0, i32 1, !dbg !5319
  %111 = load ptr, ptr %idev139, align 8, !dbg !5319
  %evbit140 = getelementptr inbounds %struct.input_dev, ptr %111, i32 0, i32 5, !dbg !5319
  %arraydecay141 = getelementptr inbounds [1 x i64], ptr %evbit140, i64 0, i64 0, !dbg !5319
  call void @generic___set_bit(i64 noundef 20, ptr noundef %arraydecay141) #18, !dbg !5319
  br label %cond.end146, !dbg !5319

cond.false142:                                    ; preds = %land.lhs.true134, %land.lhs.true, %if.then124
  %112 = load ptr, ptr %vi, align 8, !dbg !5319
  %idev143 = getelementptr inbounds %struct.virtio_input, ptr %112, i32 0, i32 1, !dbg !5319
  %113 = load ptr, ptr %idev143, align 8, !dbg !5319
  %evbit144 = getelementptr inbounds %struct.input_dev, ptr %113, i32 0, i32 5, !dbg !5319
  %arraydecay145 = getelementptr inbounds [1 x i64], ptr %evbit144, i64 0, i64 0, !dbg !5319
  call void @___set_bit(i64 noundef 20, ptr noundef %arraydecay145) #18, !dbg !5319
  br label %cond.end146, !dbg !5319

cond.end146:                                      ; preds = %cond.false142, %cond.true138
  br label %if.end147, !dbg !5319

if.end147:                                        ; preds = %cond.end146, %if.end118
  %114 = load ptr, ptr %vdev.addr, align 8, !dbg !5320
  %dev = getelementptr inbounds %struct.virtio_device, ptr %114, i32 0, i32 6, !dbg !5321
  %115 = load ptr, ptr %vi, align 8, !dbg !5322
  %idev148 = getelementptr inbounds %struct.virtio_input, ptr %115, i32 0, i32 1, !dbg !5323
  %116 = load ptr, ptr %idev148, align 8, !dbg !5323
  %dev149 = getelementptr inbounds %struct.input_dev, ptr %116, i32 0, i32 40, !dbg !5324
  %parent = getelementptr inbounds %struct.device, ptr %dev149, i32 0, i32 1, !dbg !5325
  store ptr %dev, ptr %parent, align 8, !dbg !5326
  %117 = load ptr, ptr %vi, align 8, !dbg !5327
  %idev150 = getelementptr inbounds %struct.virtio_input, ptr %117, i32 0, i32 1, !dbg !5328
  %118 = load ptr, ptr %idev150, align 8, !dbg !5328
  %event = getelementptr inbounds %struct.input_dev, ptr %118, i32 0, i32 34, !dbg !5329
  store ptr @virtinput_status, ptr %event, align 8, !dbg !5330
  %119 = load ptr, ptr %vi, align 8, !dbg !5331
  %120 = load ptr, ptr %vi, align 8, !dbg !5332
  %idev151 = getelementptr inbounds %struct.virtio_input, ptr %120, i32 0, i32 1, !dbg !5333
  %121 = load ptr, ptr %idev151, align 8, !dbg !5333
  %keybit = getelementptr inbounds %struct.input_dev, ptr %121, i32 0, i32 6, !dbg !5334
  %arraydecay152 = getelementptr inbounds [12 x i64], ptr %keybit, i64 0, i64 0, !dbg !5332
  call void @virtinput_cfg_bits(ptr noundef %119, i32 noundef 17, i32 noundef 1, ptr noundef %arraydecay152, i32 noundef 768) #18, !dbg !5335
  %122 = load ptr, ptr %vi, align 8, !dbg !5336
  %123 = load ptr, ptr %vi, align 8, !dbg !5337
  %idev153 = getelementptr inbounds %struct.virtio_input, ptr %123, i32 0, i32 1, !dbg !5338
  %124 = load ptr, ptr %idev153, align 8, !dbg !5338
  %relbit = getelementptr inbounds %struct.input_dev, ptr %124, i32 0, i32 7, !dbg !5339
  %arraydecay154 = getelementptr inbounds [1 x i64], ptr %relbit, i64 0, i64 0, !dbg !5337
  call void @virtinput_cfg_bits(ptr noundef %122, i32 noundef 17, i32 noundef 2, ptr noundef %arraydecay154, i32 noundef 16) #18, !dbg !5340
  %125 = load ptr, ptr %vi, align 8, !dbg !5341
  %126 = load ptr, ptr %vi, align 8, !dbg !5342
  %idev155 = getelementptr inbounds %struct.virtio_input, ptr %126, i32 0, i32 1, !dbg !5343
  %127 = load ptr, ptr %idev155, align 8, !dbg !5343
  %absbit = getelementptr inbounds %struct.input_dev, ptr %127, i32 0, i32 8, !dbg !5344
  %arraydecay156 = getelementptr inbounds [1 x i64], ptr %absbit, i64 0, i64 0, !dbg !5342
  call void @virtinput_cfg_bits(ptr noundef %125, i32 noundef 17, i32 noundef 3, ptr noundef %arraydecay156, i32 noundef 64) #18, !dbg !5345
  %128 = load ptr, ptr %vi, align 8, !dbg !5346
  %129 = load ptr, ptr %vi, align 8, !dbg !5347
  %idev157 = getelementptr inbounds %struct.virtio_input, ptr %129, i32 0, i32 1, !dbg !5348
  %130 = load ptr, ptr %idev157, align 8, !dbg !5348
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %130, i32 0, i32 9, !dbg !5349
  %arraydecay158 = getelementptr inbounds [1 x i64], ptr %mscbit, i64 0, i64 0, !dbg !5347
  call void @virtinput_cfg_bits(ptr noundef %128, i32 noundef 17, i32 noundef 4, ptr noundef %arraydecay158, i32 noundef 8) #18, !dbg !5350
  %131 = load ptr, ptr %vi, align 8, !dbg !5351
  %132 = load ptr, ptr %vi, align 8, !dbg !5352
  %idev159 = getelementptr inbounds %struct.virtio_input, ptr %132, i32 0, i32 1, !dbg !5353
  %133 = load ptr, ptr %idev159, align 8, !dbg !5353
  %swbit = getelementptr inbounds %struct.input_dev, ptr %133, i32 0, i32 13, !dbg !5354
  %arraydecay160 = getelementptr inbounds [1 x i64], ptr %swbit, i64 0, i64 0, !dbg !5352
  call void @virtinput_cfg_bits(ptr noundef %131, i32 noundef 17, i32 noundef 5, ptr noundef %arraydecay160, i32 noundef 17) #18, !dbg !5355
  %134 = load ptr, ptr %vi, align 8, !dbg !5356
  %135 = load ptr, ptr %vi, align 8, !dbg !5357
  %idev161 = getelementptr inbounds %struct.virtio_input, ptr %135, i32 0, i32 1, !dbg !5358
  %136 = load ptr, ptr %idev161, align 8, !dbg !5358
  %ledbit = getelementptr inbounds %struct.input_dev, ptr %136, i32 0, i32 10, !dbg !5359
  %arraydecay162 = getelementptr inbounds [1 x i64], ptr %ledbit, i64 0, i64 0, !dbg !5357
  call void @virtinput_cfg_bits(ptr noundef %134, i32 noundef 17, i32 noundef 17, ptr noundef %arraydecay162, i32 noundef 16) #18, !dbg !5360
  %137 = load ptr, ptr %vi, align 8, !dbg !5361
  %138 = load ptr, ptr %vi, align 8, !dbg !5362
  %idev163 = getelementptr inbounds %struct.virtio_input, ptr %138, i32 0, i32 1, !dbg !5363
  %139 = load ptr, ptr %idev163, align 8, !dbg !5363
  %sndbit = getelementptr inbounds %struct.input_dev, ptr %139, i32 0, i32 11, !dbg !5364
  %arraydecay164 = getelementptr inbounds [1 x i64], ptr %sndbit, i64 0, i64 0, !dbg !5362
  call void @virtinput_cfg_bits(ptr noundef %137, i32 noundef 17, i32 noundef 18, ptr noundef %arraydecay164, i32 noundef 8) #18, !dbg !5365
  %140 = load ptr, ptr %vi, align 8, !dbg !5366
  %idev165 = getelementptr inbounds %struct.virtio_input, ptr %140, i32 0, i32 1, !dbg !5366
  %141 = load ptr, ptr %idev165, align 8, !dbg !5366
  %evbit166 = getelementptr inbounds %struct.input_dev, ptr %141, i32 0, i32 5, !dbg !5366
  %arraydecay167 = getelementptr inbounds [1 x i64], ptr %evbit166, i64 0, i64 0, !dbg !5366
  %142 = ptrtoint ptr %arraydecay167 to i64, !dbg !5366
  %cmp168 = icmp ne i64 %142, 0, !dbg !5366
  %conv169 = zext i1 %cmp168 to i32, !dbg !5366
  %143 = call i1 @llvm.is.constant.i32(i32 %conv169), !dbg !5366
  br i1 %143, label %land.lhs.true170, label %cond.false186, !dbg !5366

land.lhs.true170:                                 ; preds = %if.end147
  %144 = load ptr, ptr %vi, align 8, !dbg !5366
  %idev171 = getelementptr inbounds %struct.virtio_input, ptr %144, i32 0, i32 1, !dbg !5366
  %145 = load ptr, ptr %idev171, align 8, !dbg !5366
  %evbit172 = getelementptr inbounds %struct.input_dev, ptr %145, i32 0, i32 5, !dbg !5366
  %arraydecay173 = getelementptr inbounds [1 x i64], ptr %evbit172, i64 0, i64 0, !dbg !5366
  %146 = ptrtoint ptr %arraydecay173 to i64, !dbg !5366
  %cmp174 = icmp ne i64 %146, 0, !dbg !5366
  br i1 %cmp174, label %land.lhs.true176, label %cond.false186, !dbg !5366

land.lhs.true176:                                 ; preds = %land.lhs.true170
  %147 = load ptr, ptr %vi, align 8, !dbg !5366
  %idev177 = getelementptr inbounds %struct.virtio_input, ptr %147, i32 0, i32 1, !dbg !5366
  %148 = load ptr, ptr %idev177, align 8, !dbg !5366
  %evbit178 = getelementptr inbounds %struct.input_dev, ptr %148, i32 0, i32 5, !dbg !5366
  %arraydecay179 = getelementptr inbounds [1 x i64], ptr %evbit178, i64 0, i64 0, !dbg !5366
  %149 = load i64, ptr %arraydecay179, align 8, !dbg !5366
  %150 = call i1 @llvm.is.constant.i64(i64 %149), !dbg !5366
  br i1 %150, label %cond.true180, label %cond.false186, !dbg !5368

cond.true180:                                     ; preds = %land.lhs.true176
  %151 = load ptr, ptr %vi, align 8, !dbg !5366
  %idev181 = getelementptr inbounds %struct.virtio_input, ptr %151, i32 0, i32 1, !dbg !5366
  %152 = load ptr, ptr %idev181, align 8, !dbg !5366
  %evbit182 = getelementptr inbounds %struct.input_dev, ptr %152, i32 0, i32 5, !dbg !5366
  %arraydecay183 = getelementptr inbounds [1 x i64], ptr %evbit182, i64 0, i64 0, !dbg !5366
  %call184 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %arraydecay183) #18, !dbg !5366
  br i1 %call184, label %if.then192, label %if.end263, !dbg !5366

cond.false186:                                    ; preds = %land.lhs.true176, %land.lhs.true170, %if.end147
  %153 = load ptr, ptr %vi, align 8, !dbg !5366
  %idev187 = getelementptr inbounds %struct.virtio_input, ptr %153, i32 0, i32 1, !dbg !5366
  %154 = load ptr, ptr %idev187, align 8, !dbg !5366
  %evbit188 = getelementptr inbounds %struct.input_dev, ptr %154, i32 0, i32 5, !dbg !5366
  %arraydecay189 = getelementptr inbounds [1 x i64], ptr %evbit188, i64 0, i64 0, !dbg !5366
  %call190 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %arraydecay189) #18, !dbg !5366
  br i1 %call190, label %if.then192, label %if.end263, !dbg !5368

if.then192:                                       ; preds = %cond.false186, %cond.true180
  store i32 0, ptr %abs, align 4, !dbg !5369
  br label %for.cond, !dbg !5372

for.cond:                                         ; preds = %for.inc, %if.then192
  %155 = load i32, ptr %abs, align 4, !dbg !5373
  %cmp193 = icmp slt i32 %155, 64, !dbg !5375
  br i1 %cmp193, label %for.body, label %for.end, !dbg !5376

for.body:                                         ; preds = %for.cond
  %156 = load i32, ptr %abs, align 4, !dbg !5377
  %157 = call i1 @llvm.is.constant.i32(i32 %156), !dbg !5377
  br i1 %157, label %land.lhs.true195, label %cond.false218, !dbg !5377

land.lhs.true195:                                 ; preds = %for.body
  %158 = load ptr, ptr %vi, align 8, !dbg !5377
  %idev196 = getelementptr inbounds %struct.virtio_input, ptr %158, i32 0, i32 1, !dbg !5377
  %159 = load ptr, ptr %idev196, align 8, !dbg !5377
  %absbit197 = getelementptr inbounds %struct.input_dev, ptr %159, i32 0, i32 8, !dbg !5377
  %arraydecay198 = getelementptr inbounds [1 x i64], ptr %absbit197, i64 0, i64 0, !dbg !5377
  %160 = ptrtoint ptr %arraydecay198 to i64, !dbg !5377
  %cmp199 = icmp ne i64 %160, 0, !dbg !5377
  %conv200 = zext i1 %cmp199 to i32, !dbg !5377
  %161 = call i1 @llvm.is.constant.i32(i32 %conv200), !dbg !5377
  br i1 %161, label %land.lhs.true201, label %cond.false218, !dbg !5377

land.lhs.true201:                                 ; preds = %land.lhs.true195
  %162 = load ptr, ptr %vi, align 8, !dbg !5377
  %idev202 = getelementptr inbounds %struct.virtio_input, ptr %162, i32 0, i32 1, !dbg !5377
  %163 = load ptr, ptr %idev202, align 8, !dbg !5377
  %absbit203 = getelementptr inbounds %struct.input_dev, ptr %163, i32 0, i32 8, !dbg !5377
  %arraydecay204 = getelementptr inbounds [1 x i64], ptr %absbit203, i64 0, i64 0, !dbg !5377
  %164 = ptrtoint ptr %arraydecay204 to i64, !dbg !5377
  %cmp205 = icmp ne i64 %164, 0, !dbg !5377
  br i1 %cmp205, label %land.lhs.true207, label %cond.false218, !dbg !5377

land.lhs.true207:                                 ; preds = %land.lhs.true201
  %165 = load ptr, ptr %vi, align 8, !dbg !5377
  %idev208 = getelementptr inbounds %struct.virtio_input, ptr %165, i32 0, i32 1, !dbg !5377
  %166 = load ptr, ptr %idev208, align 8, !dbg !5377
  %absbit209 = getelementptr inbounds %struct.input_dev, ptr %166, i32 0, i32 8, !dbg !5377
  %arraydecay210 = getelementptr inbounds [1 x i64], ptr %absbit209, i64 0, i64 0, !dbg !5377
  %167 = load i64, ptr %arraydecay210, align 8, !dbg !5377
  %168 = call i1 @llvm.is.constant.i64(i64 %167), !dbg !5377
  br i1 %168, label %cond.true211, label %cond.false218, !dbg !5380

cond.true211:                                     ; preds = %land.lhs.true207
  %169 = load i32, ptr %abs, align 4, !dbg !5377
  %conv212 = sext i32 %169 to i64, !dbg !5377
  %170 = load ptr, ptr %vi, align 8, !dbg !5377
  %idev213 = getelementptr inbounds %struct.virtio_input, ptr %170, i32 0, i32 1, !dbg !5377
  %171 = load ptr, ptr %idev213, align 8, !dbg !5377
  %absbit214 = getelementptr inbounds %struct.input_dev, ptr %171, i32 0, i32 8, !dbg !5377
  %arraydecay215 = getelementptr inbounds [1 x i64], ptr %absbit214, i64 0, i64 0, !dbg !5377
  %call216 = call zeroext i1 @const_test_bit(i64 noundef %conv212, ptr noundef %arraydecay215) #18, !dbg !5377
  br i1 %call216, label %if.end226, label %if.then225, !dbg !5377

cond.false218:                                    ; preds = %land.lhs.true207, %land.lhs.true201, %land.lhs.true195, %for.body
  %172 = load i32, ptr %abs, align 4, !dbg !5377
  %conv219 = sext i32 %172 to i64, !dbg !5377
  %173 = load ptr, ptr %vi, align 8, !dbg !5377
  %idev220 = getelementptr inbounds %struct.virtio_input, ptr %173, i32 0, i32 1, !dbg !5377
  %174 = load ptr, ptr %idev220, align 8, !dbg !5377
  %absbit221 = getelementptr inbounds %struct.input_dev, ptr %174, i32 0, i32 8, !dbg !5377
  %arraydecay222 = getelementptr inbounds [1 x i64], ptr %absbit221, i64 0, i64 0, !dbg !5377
  %call223 = call zeroext i1 @_test_bit(i64 noundef %conv219, ptr noundef %arraydecay222) #18, !dbg !5377
  br i1 %call223, label %if.end226, label %if.then225, !dbg !5380

if.then225:                                       ; preds = %cond.false218, %cond.true211
  br label %for.inc, !dbg !5381

if.end226:                                        ; preds = %cond.false218, %cond.true211
  %175 = load ptr, ptr %vi, align 8, !dbg !5382
  %176 = load i32, ptr %abs, align 4, !dbg !5383
  call void @virtinput_cfg_abs(ptr noundef %175, i32 noundef %176) #18, !dbg !5384
  br label %for.inc, !dbg !5385

for.inc:                                          ; preds = %if.end226, %if.then225
  %177 = load i32, ptr %abs, align 4, !dbg !5386
  %inc = add i32 %177, 1, !dbg !5386
  store i32 %inc, ptr %abs, align 4, !dbg !5386
  br label %for.cond, !dbg !5387, !llvm.loop !5388

for.end:                                          ; preds = %for.cond
  %178 = load ptr, ptr %vi, align 8, !dbg !5392
  %idev227 = getelementptr inbounds %struct.virtio_input, ptr %178, i32 0, i32 1, !dbg !5392
  %179 = load ptr, ptr %idev227, align 8, !dbg !5392
  %absbit228 = getelementptr inbounds %struct.input_dev, ptr %179, i32 0, i32 8, !dbg !5392
  %arraydecay229 = getelementptr inbounds [1 x i64], ptr %absbit228, i64 0, i64 0, !dbg !5392
  %180 = ptrtoint ptr %arraydecay229 to i64, !dbg !5392
  %cmp230 = icmp ne i64 %180, 0, !dbg !5392
  %conv231 = zext i1 %cmp230 to i32, !dbg !5392
  %181 = call i1 @llvm.is.constant.i32(i32 %conv231), !dbg !5392
  br i1 %181, label %land.lhs.true232, label %cond.false248, !dbg !5392

land.lhs.true232:                                 ; preds = %for.end
  %182 = load ptr, ptr %vi, align 8, !dbg !5392
  %idev233 = getelementptr inbounds %struct.virtio_input, ptr %182, i32 0, i32 1, !dbg !5392
  %183 = load ptr, ptr %idev233, align 8, !dbg !5392
  %absbit234 = getelementptr inbounds %struct.input_dev, ptr %183, i32 0, i32 8, !dbg !5392
  %arraydecay235 = getelementptr inbounds [1 x i64], ptr %absbit234, i64 0, i64 0, !dbg !5392
  %184 = ptrtoint ptr %arraydecay235 to i64, !dbg !5392
  %cmp236 = icmp ne i64 %184, 0, !dbg !5392
  br i1 %cmp236, label %land.lhs.true238, label %cond.false248, !dbg !5392

land.lhs.true238:                                 ; preds = %land.lhs.true232
  %185 = load ptr, ptr %vi, align 8, !dbg !5392
  %idev239 = getelementptr inbounds %struct.virtio_input, ptr %185, i32 0, i32 1, !dbg !5392
  %186 = load ptr, ptr %idev239, align 8, !dbg !5392
  %absbit240 = getelementptr inbounds %struct.input_dev, ptr %186, i32 0, i32 8, !dbg !5392
  %arraydecay241 = getelementptr inbounds [1 x i64], ptr %absbit240, i64 0, i64 0, !dbg !5392
  %187 = load i64, ptr %arraydecay241, align 8, !dbg !5392
  %188 = call i1 @llvm.is.constant.i64(i64 %187), !dbg !5392
  br i1 %188, label %cond.true242, label %cond.false248, !dbg !5394

cond.true242:                                     ; preds = %land.lhs.true238
  %189 = load ptr, ptr %vi, align 8, !dbg !5392
  %idev243 = getelementptr inbounds %struct.virtio_input, ptr %189, i32 0, i32 1, !dbg !5392
  %190 = load ptr, ptr %idev243, align 8, !dbg !5392
  %absbit244 = getelementptr inbounds %struct.input_dev, ptr %190, i32 0, i32 8, !dbg !5392
  %arraydecay245 = getelementptr inbounds [1 x i64], ptr %absbit244, i64 0, i64 0, !dbg !5392
  %call246 = call zeroext i1 @const_test_bit(i64 noundef 47, ptr noundef %arraydecay245) #18, !dbg !5392
  br i1 %call246, label %if.then254, label %if.end262, !dbg !5392

cond.false248:                                    ; preds = %land.lhs.true238, %land.lhs.true232, %for.end
  %191 = load ptr, ptr %vi, align 8, !dbg !5392
  %idev249 = getelementptr inbounds %struct.virtio_input, ptr %191, i32 0, i32 1, !dbg !5392
  %192 = load ptr, ptr %idev249, align 8, !dbg !5392
  %absbit250 = getelementptr inbounds %struct.input_dev, ptr %192, i32 0, i32 8, !dbg !5392
  %arraydecay251 = getelementptr inbounds [1 x i64], ptr %absbit250, i64 0, i64 0, !dbg !5392
  %call252 = call zeroext i1 @_test_bit(i64 noundef 47, ptr noundef %arraydecay251) #18, !dbg !5392
  br i1 %call252, label %if.then254, label %if.end262, !dbg !5394

if.then254:                                       ; preds = %cond.false248, %cond.true242
  %193 = load ptr, ptr %vi, align 8, !dbg !5395
  %idev255 = getelementptr inbounds %struct.virtio_input, ptr %193, i32 0, i32 1, !dbg !5397
  %194 = load ptr, ptr %idev255, align 8, !dbg !5397
  %call256 = call i32 @input_abs_get_max(ptr noundef %194, i32 noundef 47) #18, !dbg !5398
  %add = add i32 %call256, 1, !dbg !5399
  store i32 %add, ptr %nslots, align 4, !dbg !5400
  %195 = load ptr, ptr %vi, align 8, !dbg !5401
  %idev257 = getelementptr inbounds %struct.virtio_input, ptr %195, i32 0, i32 1, !dbg !5402
  %196 = load ptr, ptr %idev257, align 8, !dbg !5402
  %197 = load i32, ptr %nslots, align 4, !dbg !5403
  %call258 = call i32 @input_mt_init_slots(ptr noundef %196, i32 noundef %197, i32 noundef 0) #18, !dbg !5404
  store i32 %call258, ptr %err, align 4, !dbg !5405
  %198 = load i32, ptr %err, align 4, !dbg !5406
  %tobool259 = icmp ne i32 %198, 0, !dbg !5406
  br i1 %tobool259, label %if.then260, label %if.end261, !dbg !5408

if.then260:                                       ; preds = %if.then254
  br label %err_mt_init_slots, !dbg !5409

if.end261:                                        ; preds = %if.then254
  br label %if.end262, !dbg !5410

if.end262:                                        ; preds = %if.end261, %cond.false248, %cond.true242
  br label %if.end263, !dbg !5411

if.end263:                                        ; preds = %if.end262, %cond.false186, %cond.true180
  %199 = load ptr, ptr %vdev.addr, align 8, !dbg !5412
  call void @virtio_device_ready(ptr noundef %199) #18, !dbg !5413
  %200 = load ptr, ptr %vi, align 8, !dbg !5414
  %ready = getelementptr inbounds %struct.virtio_input, ptr %200, i32 0, i32 9, !dbg !5415
  store i8 1, ptr %ready, align 4, !dbg !5416
  %201 = load ptr, ptr %vi, align 8, !dbg !5417
  %idev264 = getelementptr inbounds %struct.virtio_input, ptr %201, i32 0, i32 1, !dbg !5418
  %202 = load ptr, ptr %idev264, align 8, !dbg !5418
  %call265 = call i32 @input_register_device(ptr noundef %202) #18, !dbg !5419
  store i32 %call265, ptr %err, align 4, !dbg !5420
  %203 = load i32, ptr %err, align 4, !dbg !5421
  %tobool266 = icmp ne i32 %203, 0, !dbg !5421
  br i1 %tobool266, label %if.then267, label %if.end268, !dbg !5423

if.then267:                                       ; preds = %if.end263
  br label %err_input_register, !dbg !5424

if.end268:                                        ; preds = %if.end263
  %204 = load ptr, ptr %vi, align 8, !dbg !5425
  call void @virtinput_fill_evt(ptr noundef %204) #18, !dbg !5426
  store i32 0, ptr %retval, align 4, !dbg !5427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5427

err_input_register:                               ; preds = %if.then267
  call void @llvm.dbg.label(metadata !5168), !dbg !5428
  br label %do.body269, !dbg !5429

do.body269:                                       ; preds = %err_input_register
  br label %do.body270, !dbg !5430

do.body270:                                       ; preds = %do.body269
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy271) #19, !dbg !5431
  call void @llvm.dbg.declare(metadata ptr %__dummy271, metadata !5169, metadata !DIExpression()), !dbg !5431
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2272) #19, !dbg !5431
  call void @llvm.dbg.declare(metadata ptr %__dummy2272, metadata !5173, metadata !DIExpression()), !dbg !5431
  %cmp273 = icmp eq ptr %__dummy271, %__dummy2272, !dbg !5431
  %conv274 = zext i1 %cmp273 to i32, !dbg !5431
  store i32 1, ptr %tmp275, align 4, !dbg !5431
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2272) #19, !dbg !5432
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy271) #19, !dbg !5432
  %205 = load i32, ptr %tmp275, align 4, !dbg !5431
  %206 = load ptr, ptr %vi, align 8, !dbg !5432
  %lock276 = getelementptr inbounds %struct.virtio_input, ptr %206, i32 0, i32 8, !dbg !5432
  %call277 = call ptr @spinlock_check(ptr noundef %lock276) #18, !dbg !5432
  %call278 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call277) #18, !dbg !5432
  store i64 %call278, ptr %flags, align 8, !dbg !5432
  br label %do.cond279, !dbg !5432

do.cond279:                                       ; preds = %do.body270
  br label %do.end280, !dbg !5432

do.end280:                                        ; preds = %do.cond279
  br label %do.cond281, !dbg !5430

do.cond281:                                       ; preds = %do.end280
  br label %do.end282, !dbg !5430

do.end282:                                        ; preds = %do.cond281
  %207 = load ptr, ptr %vi, align 8, !dbg !5433
  %ready283 = getelementptr inbounds %struct.virtio_input, ptr %207, i32 0, i32 9, !dbg !5434
  store i8 0, ptr %ready283, align 4, !dbg !5435
  %208 = load ptr, ptr %vi, align 8, !dbg !5436
  %lock284 = getelementptr inbounds %struct.virtio_input, ptr %208, i32 0, i32 8, !dbg !5437
  %209 = load i64, ptr %flags, align 8, !dbg !5438
  call void @spin_unlock_irqrestore(ptr noundef %lock284, i64 noundef %209) #18, !dbg !5439
  br label %err_mt_init_slots, !dbg !5439

err_mt_init_slots:                                ; preds = %do.end282, %if.then260
  call void @llvm.dbg.label(metadata !5174), !dbg !5440
  %210 = load ptr, ptr %vi, align 8, !dbg !5441
  %idev285 = getelementptr inbounds %struct.virtio_input, ptr %210, i32 0, i32 1, !dbg !5442
  %211 = load ptr, ptr %idev285, align 8, !dbg !5442
  call void @input_free_device(ptr noundef %211) #18, !dbg !5443
  br label %err_input_alloc, !dbg !5443

err_input_alloc:                                  ; preds = %err_mt_init_slots, %if.then14
  call void @llvm.dbg.label(metadata !5175), !dbg !5444
  %212 = load ptr, ptr %vdev.addr, align 8, !dbg !5445
  %config286 = getelementptr inbounds %struct.virtio_device, ptr %212, i32 0, i32 8, !dbg !5446
  %213 = load ptr, ptr %config286, align 8, !dbg !5446
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %213, i32 0, i32 7, !dbg !5447
  %214 = load ptr, ptr %del_vqs, align 8, !dbg !5447
  %215 = load ptr, ptr %vdev.addr, align 8, !dbg !5448
  call void %214(ptr noundef %215) #18, !dbg !5445
  br label %err_init_vq, !dbg !5445

err_init_vq:                                      ; preds = %err_input_alloc, %if.then9
  call void @llvm.dbg.label(metadata !5176), !dbg !5449
  %216 = load ptr, ptr %vi, align 8, !dbg !5450
  call void @kfree(ptr noundef %216) #18, !dbg !5451
  %217 = load i32, ptr %err, align 4, !dbg !5452
  store i32 %217, ptr %retval, align 4, !dbg !5453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5453

cleanup:                                          ; preds = %err_init_vq, %if.end268, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nslots) #19, !dbg !5454
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #19, !dbg !5454
  call void @llvm.lifetime.end.p0(i64 4, ptr %abs) #19, !dbg !5454
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #19, !dbg !5454
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #19, !dbg !5454
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #19, !dbg !5454
  %218 = load i32, ptr %retval, align 4, !dbg !5454
  ret i32 %218, !dbg !5454
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtinput_remove(ptr noundef %vdev) #2 align 16 !dbg !5455 {
entry:
  %vdev.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5457, metadata !DIExpression()), !dbg !5466
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #19, !dbg !5467
  call void @llvm.dbg.declare(metadata ptr %vi, metadata !5458, metadata !DIExpression()), !dbg !5468
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5469
  %priv = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12, !dbg !5470
  %1 = load ptr, ptr %priv, align 8, !dbg !5470
  store ptr %1, ptr %vi, align 8, !dbg !5468
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #19, !dbg !5471
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5459, metadata !DIExpression()), !dbg !5472
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #19, !dbg !5473
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5460, metadata !DIExpression()), !dbg !5474
  br label %do.body, !dbg !5475

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5476

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #19, !dbg !5477
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5461, metadata !DIExpression()), !dbg !5477
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #19, !dbg !5477
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5465, metadata !DIExpression()), !dbg !5477
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5477
  %conv = zext i1 %cmp to i32, !dbg !5477
  store i32 1, ptr %tmp, align 4, !dbg !5477
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #19, !dbg !5478
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #19, !dbg !5478
  %2 = load i32, ptr %tmp, align 4, !dbg !5477
  %3 = load ptr, ptr %vi, align 8, !dbg !5478
  %lock = getelementptr inbounds %struct.virtio_input, ptr %3, i32 0, i32 8, !dbg !5478
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5478
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5478
  store i64 %call2, ptr %flags, align 8, !dbg !5478
  br label %do.cond, !dbg !5478

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5478

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5476

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5476

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %vi, align 8, !dbg !5479
  %ready = getelementptr inbounds %struct.virtio_input, ptr %4, i32 0, i32 9, !dbg !5480
  store i8 0, ptr %ready, align 4, !dbg !5481
  %5 = load ptr, ptr %vi, align 8, !dbg !5482
  %lock5 = getelementptr inbounds %struct.virtio_input, ptr %5, i32 0, i32 8, !dbg !5483
  %6 = load i64, ptr %flags, align 8, !dbg !5484
  call void @spin_unlock_irqrestore(ptr noundef %lock5, i64 noundef %6) #18, !dbg !5485
  %7 = load ptr, ptr %vi, align 8, !dbg !5486
  %idev = getelementptr inbounds %struct.virtio_input, ptr %7, i32 0, i32 1, !dbg !5487
  %8 = load ptr, ptr %idev, align 8, !dbg !5487
  call void @input_unregister_device(ptr noundef %8) #18, !dbg !5488
  %9 = load ptr, ptr %vdev.addr, align 8, !dbg !5489
  call void @virtio_reset_device(ptr noundef %9) #18, !dbg !5490
  br label %while.cond, !dbg !5491

while.cond:                                       ; preds = %while.body, %do.end4
  %10 = load ptr, ptr %vi, align 8, !dbg !5492
  %sts = getelementptr inbounds %struct.virtio_input, ptr %10, i32 0, i32 6, !dbg !5493
  %11 = load ptr, ptr %sts, align 8, !dbg !5493
  %call6 = call ptr @virtqueue_detach_unused_buf(ptr noundef %11) #18, !dbg !5494
  store ptr %call6, ptr %buf, align 8, !dbg !5495
  %cmp7 = icmp ne ptr %call6, null, !dbg !5496
  br i1 %cmp7, label %while.body, label %while.end, !dbg !5491

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %buf, align 8, !dbg !5497
  call void @kfree(ptr noundef %12) #18, !dbg !5498
  br label %while.cond, !dbg !5491, !llvm.loop !5499

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %vdev.addr, align 8, !dbg !5501
  %config = getelementptr inbounds %struct.virtio_device, ptr %13, i32 0, i32 8, !dbg !5502
  %14 = load ptr, ptr %config, align 8, !dbg !5502
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %14, i32 0, i32 7, !dbg !5503
  %15 = load ptr, ptr %del_vqs, align 8, !dbg !5503
  %16 = load ptr, ptr %vdev.addr, align 8, !dbg !5504
  call void %15(ptr noundef %16) #18, !dbg !5501
  %17 = load ptr, ptr %vi, align 8, !dbg !5505
  call void @kfree(ptr noundef %17) #18, !dbg !5506
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #19, !dbg !5507
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #19, !dbg !5507
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #19, !dbg !5507
  ret void, !dbg !5507
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtinput_freeze(ptr noundef %vdev) #2 align 16 !dbg !5508 {
entry:
  %vdev.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5510, metadata !DIExpression()), !dbg !5518
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #19, !dbg !5519
  call void @llvm.dbg.declare(metadata ptr %vi, metadata !5511, metadata !DIExpression()), !dbg !5520
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5521
  %priv = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12, !dbg !5522
  %1 = load ptr, ptr %priv, align 8, !dbg !5522
  store ptr %1, ptr %vi, align 8, !dbg !5520
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #19, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5512, metadata !DIExpression()), !dbg !5524
  br label %do.body, !dbg !5525

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5526

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #19, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5513, metadata !DIExpression()), !dbg !5527
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #19, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5517, metadata !DIExpression()), !dbg !5527
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5527
  %conv = zext i1 %cmp to i32, !dbg !5527
  store i32 1, ptr %tmp, align 4, !dbg !5527
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #19, !dbg !5528
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #19, !dbg !5528
  %2 = load i32, ptr %tmp, align 4, !dbg !5527
  %3 = load ptr, ptr %vi, align 8, !dbg !5528
  %lock = getelementptr inbounds %struct.virtio_input, ptr %3, i32 0, i32 8, !dbg !5528
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5528
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5528
  store i64 %call2, ptr %flags, align 8, !dbg !5528
  br label %do.cond, !dbg !5528

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5528

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5526

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5526

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %vi, align 8, !dbg !5529
  %ready = getelementptr inbounds %struct.virtio_input, ptr %4, i32 0, i32 9, !dbg !5530
  store i8 0, ptr %ready, align 4, !dbg !5531
  %5 = load ptr, ptr %vi, align 8, !dbg !5532
  %lock5 = getelementptr inbounds %struct.virtio_input, ptr %5, i32 0, i32 8, !dbg !5533
  %6 = load i64, ptr %flags, align 8, !dbg !5534
  call void @spin_unlock_irqrestore(ptr noundef %lock5, i64 noundef %6) #18, !dbg !5535
  %7 = load ptr, ptr %vdev.addr, align 8, !dbg !5536
  %config = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 8, !dbg !5537
  %8 = load ptr, ptr %config, align 8, !dbg !5537
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 7, !dbg !5538
  %9 = load ptr, ptr %del_vqs, align 8, !dbg !5538
  %10 = load ptr, ptr %vdev.addr, align 8, !dbg !5539
  call void %9(ptr noundef %10) #18, !dbg !5536
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #19, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #19, !dbg !5540
  ret i32 0, !dbg !5541
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtinput_restore(ptr noundef %vdev) #2 align 16 !dbg !5542 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5544, metadata !DIExpression()), !dbg !5547
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #19, !dbg !5548
  call void @llvm.dbg.declare(metadata ptr %vi, metadata !5545, metadata !DIExpression()), !dbg !5549
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5550
  %priv = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12, !dbg !5551
  %1 = load ptr, ptr %priv, align 8, !dbg !5551
  store ptr %1, ptr %vi, align 8, !dbg !5549
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #19, !dbg !5552
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5546, metadata !DIExpression()), !dbg !5553
  %2 = load ptr, ptr %vi, align 8, !dbg !5554
  %call = call i32 @virtinput_init_vqs(ptr noundef %2) #18, !dbg !5555
  store i32 %call, ptr %err, align 4, !dbg !5556
  %3 = load i32, ptr %err, align 4, !dbg !5557
  %tobool = icmp ne i32 %3, 0, !dbg !5557
  br i1 %tobool, label %if.then, label %if.end, !dbg !5559

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %err, align 4, !dbg !5560
  store i32 %4, ptr %retval, align 4, !dbg !5561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5561

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %vdev.addr, align 8, !dbg !5562
  call void @virtio_device_ready(ptr noundef %5) #18, !dbg !5563
  %6 = load ptr, ptr %vi, align 8, !dbg !5564
  %ready = getelementptr inbounds %struct.virtio_input, ptr %6, i32 0, i32 9, !dbg !5565
  store i8 1, ptr %ready, align 4, !dbg !5566
  %7 = load ptr, ptr %vi, align 8, !dbg !5567
  call void @virtinput_fill_evt(ptr noundef %7) #18, !dbg !5568
  store i32 0, ptr %retval, align 4, !dbg !5569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5569

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #19, !dbg !5570
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #19, !dbg !5570
  %8 = load i32, ptr %retval, align 4, !dbg !5570
  ret i32 %8, !dbg !5570
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @virtio_has_feature(ptr noundef %vdev, i32 noundef %fbit) #5 align 16 !dbg !5571 {
entry:
  %vdev.addr = alloca ptr, align 8
  %fbit.addr = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5577, metadata !DIExpression()), !dbg !5579
  store i32 %fbit, ptr %fbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fbit.addr, metadata !5578, metadata !DIExpression()), !dbg !5580
  %0 = load i32, ptr %fbit.addr, align 4, !dbg !5581
  %cmp = icmp ult i32 %0, 28, !dbg !5583
  br i1 %cmp, label %if.then, label %if.end, !dbg !5584

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vdev.addr, align 8, !dbg !5585
  %2 = load i32, ptr %fbit.addr, align 4, !dbg !5586
  call void @virtio_check_driver_offered_feature(ptr noundef %1, i32 noundef %2) #18, !dbg !5587
  br label %if.end, !dbg !5587

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %vdev.addr, align 8, !dbg !5588
  %4 = load i32, ptr %fbit.addr, align 4, !dbg !5589
  %call = call zeroext i1 @__virtio_test_bit(ptr noundef %3, i32 noundef %4) #18, !dbg !5590
  ret i1 %call, !dbg !5591
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5592 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5596, metadata !DIExpression()), !dbg !5598
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5597, metadata !DIExpression()), !dbg !5599
  %0 = load i64, ptr %size.addr, align 8, !dbg !5600
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5601
  %or = or i32 %1, 256, !dbg !5602
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !5603
  ret ptr %call, !dbg !5604
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #7 align 16 !dbg !5605 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5611, metadata !DIExpression()), !dbg !5612
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5613
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5614
  ret ptr %1, !dbg !5615
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtinput_init_vqs(ptr noundef %vi) #2 align 16 !dbg !4780 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %vqs = alloca [2 x ptr], align 16
  %cbs = alloca [2 x ptr], align 16
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vi.addr, metadata !5098, metadata !DIExpression()), !dbg !5616
  call void @llvm.lifetime.start.p0(i64 16, ptr %vqs) #19, !dbg !5617
  call void @llvm.dbg.declare(metadata ptr %vqs, metadata !5099, metadata !DIExpression()), !dbg !5618
  call void @llvm.lifetime.start.p0(i64 16, ptr %cbs) #19, !dbg !5619
  call void @llvm.dbg.declare(metadata ptr %cbs, metadata !5101, metadata !DIExpression()), !dbg !5620
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %cbs, ptr align 16 @__const.virtinput_init_vqs.cbs, i64 16, i1 false), !dbg !5620
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #19, !dbg !5621
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5103, metadata !DIExpression()), !dbg !5622
  %0 = load ptr, ptr %vi.addr, align 8, !dbg !5623
  %vdev = getelementptr inbounds %struct.virtio_input, ptr %0, i32 0, i32 0, !dbg !5624
  %1 = load ptr, ptr %vdev, align 8, !dbg !5624
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %vqs, i64 0, i64 0, !dbg !5625
  %arraydecay1 = getelementptr inbounds [2 x ptr], ptr %cbs, i64 0, i64 0, !dbg !5626
  %call = call i32 @virtio_find_vqs(ptr noundef %1, i32 noundef 2, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef @virtinput_init_vqs.names, ptr noundef null) #18, !dbg !5627
  store i32 %call, ptr %err, align 4, !dbg !5628
  %2 = load i32, ptr %err, align 4, !dbg !5629
  %tobool = icmp ne i32 %2, 0, !dbg !5629
  br i1 %tobool, label %if.then, label %if.end, !dbg !5631

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %err, align 4, !dbg !5632
  store i32 %3, ptr %retval, align 4, !dbg !5633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5633

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x ptr], ptr %vqs, i64 0, i64 0, !dbg !5634
  %4 = load ptr, ptr %arrayidx, align 16, !dbg !5634
  %5 = load ptr, ptr %vi.addr, align 8, !dbg !5635
  %evt = getelementptr inbounds %struct.virtio_input, ptr %5, i32 0, i32 5, !dbg !5636
  store ptr %4, ptr %evt, align 8, !dbg !5637
  %arrayidx2 = getelementptr [2 x ptr], ptr %vqs, i64 0, i64 1, !dbg !5638
  %6 = load ptr, ptr %arrayidx2, align 8, !dbg !5638
  %7 = load ptr, ptr %vi.addr, align 8, !dbg !5639
  %sts = getelementptr inbounds %struct.virtio_input, ptr %7, i32 0, i32 6, !dbg !5640
  store ptr %6, ptr %sts, align 8, !dbg !5641
  store i32 0, ptr %retval, align 4, !dbg !5642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5642

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #19, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 16, ptr %cbs) #19, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 16, ptr %vqs) #19, !dbg !5643
  %8 = load i32, ptr %retval, align 4, !dbg !5643
  ret i32 %8, !dbg !5643
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5644 dso_local ptr @input_allocate_device() #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_set_drvdata(ptr noundef %dev, ptr noundef %data) #5 align 16 !dbg !5647 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5651, metadata !DIExpression()), !dbg !5653
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5652, metadata !DIExpression()), !dbg !5654
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5655
  %dev1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, !dbg !5656
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5657
  call void @dev_set_drvdata(ptr noundef %dev1, ptr noundef %1) #18, !dbg !5658
  ret void, !dbg !5659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @virtinput_cfg_select(ptr noundef %vi, i8 noundef zeroext %select, i8 noundef zeroext %subsel) #2 align 16 !dbg !5660 {
entry:
  %vi.addr = alloca ptr, align 8
  %select.addr = alloca i8, align 1
  %subsel.addr = alloca i8, align 1
  %size = alloca i8, align 1
  %virtio_cwrite_v = alloca i8, align 1
  %__dummy = alloca i8, align 1
  %__dummy2 = alloca i8, align 1
  %tmp = alloca i32, align 4
  %virtio_cwrite_v6 = alloca i8, align 1
  %__dummy10 = alloca i8, align 1
  %__dummy211 = alloca i8, align 1
  %tmp14 = alloca i32, align 4
  %virtio_cread_v = alloca i8, align 1
  %__dummy25 = alloca i8, align 1
  %__dummy226 = alloca i8, align 1
  %tmp29 = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vi.addr, metadata !5664, metadata !DIExpression()), !dbg !5683
  store i8 %select, ptr %select.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %select.addr, metadata !5665, metadata !DIExpression()), !dbg !5684
  store i8 %subsel, ptr %subsel.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %subsel.addr, metadata !5666, metadata !DIExpression()), !dbg !5685
  call void @llvm.lifetime.start.p0(i64 1, ptr %size) #19, !dbg !5686
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5667, metadata !DIExpression()), !dbg !5687
  br label %do.body, !dbg !5688

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %virtio_cwrite_v) #19, !dbg !5689
  call void @llvm.dbg.declare(metadata ptr %virtio_cwrite_v, metadata !5668, metadata !DIExpression()), !dbg !5689
  %0 = load i8, ptr %select.addr, align 1, !dbg !5689
  store i8 %0, ptr %virtio_cwrite_v, align 1, !dbg !5689
  br label %do.body1, !dbg !5689

do.body1:                                         ; preds = %do.body
  call void @might_resched() #18, !dbg !5690
  br label %do.cond, !dbg !5690

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5690

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %__dummy) #19, !dbg !5692
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5670, metadata !DIExpression()), !dbg !5692
  call void @llvm.lifetime.start.p0(i64 1, ptr %__dummy2) #19, !dbg !5692
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5672, metadata !DIExpression()), !dbg !5692
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5692
  %conv = zext i1 %cmp to i32, !dbg !5692
  store i32 1, ptr %tmp, align 4, !dbg !5692
  call void @llvm.lifetime.end.p0(i64 1, ptr %__dummy2) #19, !dbg !5689
  call void @llvm.lifetime.end.p0(i64 1, ptr %__dummy) #19, !dbg !5689
  %1 = load i32, ptr %tmp, align 4, !dbg !5692
  %2 = load ptr, ptr %vi.addr, align 8, !dbg !5689
  %vdev = getelementptr inbounds %struct.virtio_input, ptr %2, i32 0, i32 0, !dbg !5689
  %3 = load ptr, ptr %vdev, align 8, !dbg !5689
  %config = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 8, !dbg !5689
  %4 = load ptr, ptr %config, align 8, !dbg !5689
  %set = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 1, !dbg !5689
  %5 = load ptr, ptr %set, align 8, !dbg !5689
  %6 = load ptr, ptr %vi.addr, align 8, !dbg !5689
  %vdev2 = getelementptr inbounds %struct.virtio_input, ptr %6, i32 0, i32 0, !dbg !5689
  %7 = load ptr, ptr %vdev2, align 8, !dbg !5689
  call void %5(ptr noundef %7, i32 noundef 0, ptr noundef %virtio_cwrite_v, i32 noundef 1) #18, !dbg !5689
  call void @llvm.lifetime.end.p0(i64 1, ptr %virtio_cwrite_v) #19, !dbg !5688
  br label %do.cond3, !dbg !5689

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5689

do.end4:                                          ; preds = %do.cond3
  br label %do.body5, !dbg !5693

do.body5:                                         ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 1, ptr %virtio_cwrite_v6) #19, !dbg !5694
  call void @llvm.dbg.declare(metadata ptr %virtio_cwrite_v6, metadata !5673, metadata !DIExpression()), !dbg !5694
  %8 = load i8, ptr %subsel.addr, align 1, !dbg !5694
  store i8 %8, ptr %virtio_cwrite_v6, align 1, !dbg !5694
  br label %do.body7, !dbg !5694

do.body7:                                         ; preds = %do.body5
  call void @might_resched() #18, !dbg !5695
  br label %do.cond8, !dbg !5695

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5695

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.start.p0(i64 1, ptr %__dummy10) #19, !dbg !5697
  call void @llvm.dbg.declare(metadata ptr %__dummy10, metadata !5675, metadata !DIExpression()), !dbg !5697
  call void @llvm.lifetime.start.p0(i64 1, ptr %__dummy211) #19, !dbg !5697
  call void @llvm.dbg.declare(metadata ptr %__dummy211, metadata !5677, metadata !DIExpression()), !dbg !5697
  %cmp12 = icmp eq ptr %__dummy10, %__dummy211, !dbg !5697
  %conv13 = zext i1 %cmp12 to i32, !dbg !5697
  store i32 1, ptr %tmp14, align 4, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 1, ptr %__dummy211) #19, !dbg !5694
  call void @llvm.lifetime.end.p0(i64 1, ptr %__dummy10) #19, !dbg !5694
  %9 = load i32, ptr %tmp14, align 4, !dbg !5697
  %10 = load ptr, ptr %vi.addr, align 8, !dbg !5694
  %vdev15 = getelementptr inbounds %struct.virtio_input, ptr %10, i32 0, i32 0, !dbg !5694
  %11 = load ptr, ptr %vdev15, align 8, !dbg !5694
  %config16 = getelementptr inbounds %struct.virtio_device, ptr %11, i32 0, i32 8, !dbg !5694
  %12 = load ptr, ptr %config16, align 8, !dbg !5694
  %set17 = getelementptr inbounds %struct.virtio_config_ops, ptr %12, i32 0, i32 1, !dbg !5694
  %13 = load ptr, ptr %set17, align 8, !dbg !5694
  %14 = load ptr, ptr %vi.addr, align 8, !dbg !5694
  %vdev18 = getelementptr inbounds %struct.virtio_input, ptr %14, i32 0, i32 0, !dbg !5694
  %15 = load ptr, ptr %vdev18, align 8, !dbg !5694
  call void %13(ptr noundef %15, i32 noundef 1, ptr noundef %virtio_cwrite_v6, i32 noundef 1) #18, !dbg !5694
  call void @llvm.lifetime.end.p0(i64 1, ptr %virtio_cwrite_v6) #19, !dbg !5693
  br label %do.cond19, !dbg !5694

do.cond19:                                        ; preds = %do.end9
  br label %do.end20, !dbg !5694

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !5698

do.body21:                                        ; preds = %do.end20
  call void @llvm.lifetime.start.p0(i64 1, ptr %virtio_cread_v) #19, !dbg !5699
  call void @llvm.dbg.declare(metadata ptr %virtio_cread_v, metadata !5678, metadata !DIExpression()), !dbg !5699
  br label %do.body22, !dbg !5699

do.body22:                                        ; preds = %do.body21
  call void @might_resched() #18, !dbg !5700
  br label %do.cond23, !dbg !5700

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !5700

do.end24:                                         ; preds = %do.cond23
  call void @llvm.lifetime.start.p0(i64 1, ptr %__dummy25) #19, !dbg !5702
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !5680, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 1, ptr %__dummy226) #19, !dbg !5702
  call void @llvm.dbg.declare(metadata ptr %__dummy226, metadata !5682, metadata !DIExpression()), !dbg !5702
  %cmp27 = icmp eq ptr %__dummy25, %__dummy226, !dbg !5702
  %conv28 = zext i1 %cmp27 to i32, !dbg !5702
  store i32 1, ptr %tmp29, align 4, !dbg !5702
  call void @llvm.lifetime.end.p0(i64 1, ptr %__dummy226) #19, !dbg !5699
  call void @llvm.lifetime.end.p0(i64 1, ptr %__dummy25) #19, !dbg !5699
  %16 = load i32, ptr %tmp29, align 4, !dbg !5702
  %17 = load ptr, ptr %vi.addr, align 8, !dbg !5699
  %vdev30 = getelementptr inbounds %struct.virtio_input, ptr %17, i32 0, i32 0, !dbg !5699
  %18 = load ptr, ptr %vdev30, align 8, !dbg !5699
  %config31 = getelementptr inbounds %struct.virtio_device, ptr %18, i32 0, i32 8, !dbg !5699
  %19 = load ptr, ptr %config31, align 8, !dbg !5699
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %19, i32 0, i32 0, !dbg !5699
  %20 = load ptr, ptr %get, align 8, !dbg !5699
  %21 = load ptr, ptr %vi.addr, align 8, !dbg !5699
  %vdev32 = getelementptr inbounds %struct.virtio_input, ptr %21, i32 0, i32 0, !dbg !5699
  %22 = load ptr, ptr %vdev32, align 8, !dbg !5699
  call void %20(ptr noundef %22, i32 noundef 2, ptr noundef %virtio_cread_v, i32 noundef 1) #18, !dbg !5699
  %23 = load i8, ptr %virtio_cread_v, align 1, !dbg !5699
  store i8 %23, ptr %size, align 1, !dbg !5699
  call void @llvm.lifetime.end.p0(i64 1, ptr %virtio_cread_v) #19, !dbg !5698
  br label %do.cond33, !dbg !5699

do.cond33:                                        ; preds = %do.end24
  br label %do.end34, !dbg !5699

do.end34:                                         ; preds = %do.cond33
  %24 = load i8, ptr %size, align 1, !dbg !5703
  call void @llvm.lifetime.end.p0(i64 1, ptr %size) #19, !dbg !5704
  ret i8 %24, !dbg !5705
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtio_cread_bytes(ptr noundef %vdev, i32 noundef %offset, ptr noundef %buf, i64 noundef %len) #5 align 16 !dbg !5706 {
entry:
  %vdev.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !5710, metadata !DIExpression()), !dbg !5714
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5711, metadata !DIExpression()), !dbg !5715
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5712, metadata !DIExpression()), !dbg !5716
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5713, metadata !DIExpression()), !dbg !5717
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !5718
  %1 = load i32, ptr %offset.addr, align 4, !dbg !5719
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5720
  %3 = load i64, ptr %len.addr, align 8, !dbg !5721
  call void @__virtio_cread_many(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef 1) #18, !dbg !5722
  ret void, !dbg !5723
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5724 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #7 align 16 !dbg !5107 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5728
  %0 = load ptr, ptr %tmp, align 8, !dbg !5728
  %call = call i32 %0() #18, !dbg !5730
  ret void, !dbg !5731
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtinput_cfg_bits(ptr noundef %vi, i32 noundef %select, i32 noundef %subsel, ptr noundef %bits, i32 noundef %bitcount) #2 align 16 !dbg !5732 {
entry:
  %vi.addr = alloca ptr, align 8
  %select.addr = alloca i32, align 4
  %subsel.addr = alloca i32, align 4
  %bits.addr = alloca ptr, align 8
  %bitcount.addr = alloca i32, align 4
  %bit = alloca i32, align 4
  %virtio_bits = alloca ptr, align 8
  %bytes = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vi.addr, metadata !5736, metadata !DIExpression()), !dbg !5745
  store i32 %select, ptr %select.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %select.addr, metadata !5737, metadata !DIExpression()), !dbg !5746
  store i32 %subsel, ptr %subsel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subsel.addr, metadata !5738, metadata !DIExpression()), !dbg !5747
  store ptr %bits, ptr %bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5739, metadata !DIExpression()), !dbg !5748
  store i32 %bitcount, ptr %bitcount.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bitcount.addr, metadata !5740, metadata !DIExpression()), !dbg !5749
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #19, !dbg !5750
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !5741, metadata !DIExpression()), !dbg !5751
  call void @llvm.lifetime.start.p0(i64 8, ptr %virtio_bits) #19, !dbg !5752
  call void @llvm.dbg.declare(metadata ptr %virtio_bits, metadata !5742, metadata !DIExpression()), !dbg !5753
  call void @llvm.lifetime.start.p0(i64 1, ptr %bytes) #19, !dbg !5754
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5744, metadata !DIExpression()), !dbg !5755
  %0 = load ptr, ptr %vi.addr, align 8, !dbg !5756
  %1 = load i32, ptr %select.addr, align 4, !dbg !5757
  %conv = trunc i32 %1 to i8, !dbg !5757
  %2 = load i32, ptr %subsel.addr, align 4, !dbg !5758
  %conv1 = trunc i32 %2 to i8, !dbg !5758
  %call = call zeroext i8 @virtinput_cfg_select(ptr noundef %0, i8 noundef zeroext %conv, i8 noundef zeroext %conv1) #18, !dbg !5759
  store i8 %call, ptr %bytes, align 1, !dbg !5760
  %3 = load i8, ptr %bytes, align 1, !dbg !5761
  %tobool = icmp ne i8 %3, 0, !dbg !5761
  br i1 %tobool, label %if.end, label %if.then, !dbg !5763

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5764

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %bitcount.addr, align 4, !dbg !5765
  %5 = load i8, ptr %bytes, align 1, !dbg !5767
  %conv2 = zext i8 %5 to i32, !dbg !5767
  %mul = mul i32 %conv2, 8, !dbg !5768
  %cmp = icmp ugt i32 %4, %mul, !dbg !5769
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !5770

if.then4:                                         ; preds = %if.end
  %6 = load i8, ptr %bytes, align 1, !dbg !5771
  %conv5 = zext i8 %6 to i32, !dbg !5771
  %mul6 = mul i32 %conv5, 8, !dbg !5772
  store i32 %mul6, ptr %bitcount.addr, align 4, !dbg !5773
  br label %if.end7, !dbg !5774

if.end7:                                          ; preds = %if.then4, %if.end
  %7 = load i8, ptr %bytes, align 1, !dbg !5775
  %conv8 = zext i8 %7 to i64, !dbg !5775
  %call9 = call noalias ptr @kzalloc(i64 noundef %conv8, i32 noundef 3264) #20, !dbg !5776
  store ptr %call9, ptr %virtio_bits, align 8, !dbg !5777
  %8 = load ptr, ptr %virtio_bits, align 8, !dbg !5778
  %tobool10 = icmp ne ptr %8, null, !dbg !5778
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5780

if.then11:                                        ; preds = %if.end7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5781

if.end12:                                         ; preds = %if.end7
  %9 = load ptr, ptr %vi.addr, align 8, !dbg !5782
  %vdev = getelementptr inbounds %struct.virtio_input, ptr %9, i32 0, i32 0, !dbg !5783
  %10 = load ptr, ptr %vdev, align 8, !dbg !5783
  %11 = load ptr, ptr %virtio_bits, align 8, !dbg !5784
  %12 = load i8, ptr %bytes, align 1, !dbg !5785
  %conv13 = zext i8 %12 to i64, !dbg !5785
  call void @virtio_cread_bytes(ptr noundef %10, i32 noundef 8, ptr noundef %11, i64 noundef %conv13) #18, !dbg !5786
  store i32 0, ptr %bit, align 4, !dbg !5787
  br label %for.cond, !dbg !5789

for.cond:                                         ; preds = %for.inc, %if.end12
  %13 = load i32, ptr %bit, align 4, !dbg !5790
  %14 = load i32, ptr %bitcount.addr, align 4, !dbg !5792
  %cmp14 = icmp ult i32 %13, %14, !dbg !5793
  br i1 %cmp14, label %for.body, label %for.end, !dbg !5794

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %virtio_bits, align 8, !dbg !5795
  %16 = load i32, ptr %bit, align 4, !dbg !5798
  %div = udiv i32 %16, 8, !dbg !5799
  %idxprom = zext i32 %div to i64, !dbg !5795
  %arrayidx = getelementptr i8, ptr %15, i64 %idxprom, !dbg !5795
  %17 = load i8, ptr %arrayidx, align 1, !dbg !5795
  %conv16 = zext i8 %17 to i32, !dbg !5795
  %18 = load i32, ptr %bit, align 4, !dbg !5800
  %rem = urem i32 %18, 8, !dbg !5801
  %shl = shl i32 1, %rem, !dbg !5802
  %and = and i32 %conv16, %shl, !dbg !5803
  %tobool17 = icmp ne i32 %and, 0, !dbg !5803
  br i1 %tobool17, label %if.then18, label %if.end27, !dbg !5804

if.then18:                                        ; preds = %for.body
  %19 = load i32, ptr %bit, align 4, !dbg !5805
  %20 = call i1 @llvm.is.constant.i32(i32 %19), !dbg !5805
  br i1 %20, label %land.lhs.true, label %cond.false, !dbg !5805

land.lhs.true:                                    ; preds = %if.then18
  %21 = load ptr, ptr %bits.addr, align 8, !dbg !5805
  %22 = ptrtoint ptr %21 to i64, !dbg !5805
  %cmp19 = icmp ne i64 %22, 0, !dbg !5805
  %conv20 = zext i1 %cmp19 to i32, !dbg !5805
  %23 = call i1 @llvm.is.constant.i32(i32 %conv20), !dbg !5805
  br i1 %23, label %land.lhs.true21, label %cond.false, !dbg !5805

land.lhs.true21:                                  ; preds = %land.lhs.true
  %24 = load ptr, ptr %bits.addr, align 8, !dbg !5805
  %25 = ptrtoint ptr %24 to i64, !dbg !5805
  %cmp22 = icmp ne i64 %25, 0, !dbg !5805
  br i1 %cmp22, label %land.lhs.true24, label %cond.false, !dbg !5805

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %26 = load ptr, ptr %bits.addr, align 8, !dbg !5805
  %27 = load i64, ptr %26, align 8, !dbg !5805
  %28 = call i1 @llvm.is.constant.i64(i64 %27), !dbg !5805
  br i1 %28, label %cond.true, label %cond.false, !dbg !5805

cond.true:                                        ; preds = %land.lhs.true24
  %29 = load i32, ptr %bit, align 4, !dbg !5805
  %conv25 = zext i32 %29 to i64, !dbg !5805
  %30 = load ptr, ptr %bits.addr, align 8, !dbg !5805
  call void @generic___set_bit(i64 noundef %conv25, ptr noundef %30) #18, !dbg !5805
  br label %cond.end, !dbg !5805

cond.false:                                       ; preds = %land.lhs.true24, %land.lhs.true21, %land.lhs.true, %if.then18
  %31 = load i32, ptr %bit, align 4, !dbg !5805
  %conv26 = zext i32 %31 to i64, !dbg !5805
  %32 = load ptr, ptr %bits.addr, align 8, !dbg !5805
  call void @___set_bit(i64 noundef %conv26, ptr noundef %32) #18, !dbg !5805
  br label %cond.end, !dbg !5805

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end27, !dbg !5805

if.end27:                                         ; preds = %cond.end, %for.body
  br label %for.inc, !dbg !5806

for.inc:                                          ; preds = %if.end27
  %33 = load i32, ptr %bit, align 4, !dbg !5807
  %inc = add i32 %33, 1, !dbg !5807
  store i32 %inc, ptr %bit, align 4, !dbg !5807
  br label %for.cond, !dbg !5808, !llvm.loop !5809

for.end:                                          ; preds = %for.cond
  %34 = load ptr, ptr %virtio_bits, align 8, !dbg !5811
  call void @kfree(ptr noundef %34) #18, !dbg !5812
  %35 = load i32, ptr %select.addr, align 4, !dbg !5813
  %cmp28 = icmp eq i32 %35, 17, !dbg !5815
  br i1 %cmp28, label %if.then30, label %if.end55, !dbg !5816

if.then30:                                        ; preds = %for.end
  %36 = load i32, ptr %subsel.addr, align 4, !dbg !5817
  %37 = call i1 @llvm.is.constant.i32(i32 %36), !dbg !5817
  br i1 %37, label %land.lhs.true31, label %cond.false49, !dbg !5817

land.lhs.true31:                                  ; preds = %if.then30
  %38 = load ptr, ptr %vi.addr, align 8, !dbg !5817
  %idev = getelementptr inbounds %struct.virtio_input, ptr %38, i32 0, i32 1, !dbg !5817
  %39 = load ptr, ptr %idev, align 8, !dbg !5817
  %evbit = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 5, !dbg !5817
  %arraydecay = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !5817
  %40 = ptrtoint ptr %arraydecay to i64, !dbg !5817
  %cmp32 = icmp ne i64 %40, 0, !dbg !5817
  %conv33 = zext i1 %cmp32 to i32, !dbg !5817
  %41 = call i1 @llvm.is.constant.i32(i32 %conv33), !dbg !5817
  br i1 %41, label %land.lhs.true34, label %cond.false49, !dbg !5817

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %42 = load ptr, ptr %vi.addr, align 8, !dbg !5817
  %idev35 = getelementptr inbounds %struct.virtio_input, ptr %42, i32 0, i32 1, !dbg !5817
  %43 = load ptr, ptr %idev35, align 8, !dbg !5817
  %evbit36 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 5, !dbg !5817
  %arraydecay37 = getelementptr inbounds [1 x i64], ptr %evbit36, i64 0, i64 0, !dbg !5817
  %44 = ptrtoint ptr %arraydecay37 to i64, !dbg !5817
  %cmp38 = icmp ne i64 %44, 0, !dbg !5817
  br i1 %cmp38, label %land.lhs.true40, label %cond.false49, !dbg !5817

land.lhs.true40:                                  ; preds = %land.lhs.true34
  %45 = load ptr, ptr %vi.addr, align 8, !dbg !5817
  %idev41 = getelementptr inbounds %struct.virtio_input, ptr %45, i32 0, i32 1, !dbg !5817
  %46 = load ptr, ptr %idev41, align 8, !dbg !5817
  %evbit42 = getelementptr inbounds %struct.input_dev, ptr %46, i32 0, i32 5, !dbg !5817
  %arraydecay43 = getelementptr inbounds [1 x i64], ptr %evbit42, i64 0, i64 0, !dbg !5817
  %47 = load i64, ptr %arraydecay43, align 8, !dbg !5817
  %48 = call i1 @llvm.is.constant.i64(i64 %47), !dbg !5817
  br i1 %48, label %cond.true44, label %cond.false49, !dbg !5817

cond.true44:                                      ; preds = %land.lhs.true40
  %49 = load i32, ptr %subsel.addr, align 4, !dbg !5817
  %conv45 = sext i32 %49 to i64, !dbg !5817
  %50 = load ptr, ptr %vi.addr, align 8, !dbg !5817
  %idev46 = getelementptr inbounds %struct.virtio_input, ptr %50, i32 0, i32 1, !dbg !5817
  %51 = load ptr, ptr %idev46, align 8, !dbg !5817
  %evbit47 = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 5, !dbg !5817
  %arraydecay48 = getelementptr inbounds [1 x i64], ptr %evbit47, i64 0, i64 0, !dbg !5817
  call void @generic___set_bit(i64 noundef %conv45, ptr noundef %arraydecay48) #18, !dbg !5817
  br label %cond.end54, !dbg !5817

cond.false49:                                     ; preds = %land.lhs.true40, %land.lhs.true34, %land.lhs.true31, %if.then30
  %52 = load i32, ptr %subsel.addr, align 4, !dbg !5817
  %conv50 = sext i32 %52 to i64, !dbg !5817
  %53 = load ptr, ptr %vi.addr, align 8, !dbg !5817
  %idev51 = getelementptr inbounds %struct.virtio_input, ptr %53, i32 0, i32 1, !dbg !5817
  %54 = load ptr, ptr %idev51, align 8, !dbg !5817
  %evbit52 = getelementptr inbounds %struct.input_dev, ptr %54, i32 0, i32 5, !dbg !5817
  %arraydecay53 = getelementptr inbounds [1 x i64], ptr %evbit52, i64 0, i64 0, !dbg !5817
  call void @___set_bit(i64 noundef %conv50, ptr noundef %arraydecay53) #18, !dbg !5817
  br label %cond.end54, !dbg !5817

cond.end54:                                       ; preds = %cond.false49, %cond.true44
  br label %if.end55, !dbg !5817

if.end55:                                         ; preds = %cond.end54, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5818
  br label %cleanup, !dbg !5818

cleanup:                                          ; preds = %if.end55, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %bytes) #19, !dbg !5818
  call void @llvm.lifetime.end.p0(i64 8, ptr %virtio_bits) #19, !dbg !5818
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #19, !dbg !5818
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5818

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5819 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5826, metadata !DIExpression()), !dbg !5830
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5827, metadata !DIExpression()), !dbg !5831
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #19, !dbg !5832
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5828, metadata !DIExpression()), !dbg !5833
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5834
  %rem = urem i64 %0, 64, !dbg !5834
  %shl = shl i64 1, %rem, !dbg !5834
  store i64 %shl, ptr %mask, align 8, !dbg !5833
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #19, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5829, metadata !DIExpression()), !dbg !5836
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5837
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5838
  %div = udiv i64 %2, 64, !dbg !5838
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5839
  store ptr %add.ptr, ptr %p, align 8, !dbg !5836
  %3 = load i64, ptr %mask, align 8, !dbg !5840
  %4 = load ptr, ptr %p, align 8, !dbg !5841
  %5 = load i64, ptr %4, align 8, !dbg !5842
  %or = or i64 %5, %3, !dbg !5842
  store i64 %or, ptr %4, align 8, !dbg !5842
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #19, !dbg !5843
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #19, !dbg !5843
  ret void, !dbg !5843
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5844 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5847, metadata !DIExpression()), !dbg !5849
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5848, metadata !DIExpression()), !dbg !5850
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5851
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5852
  %div = udiv i64 %1, 64, !dbg !5852
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5853
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5854
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5855
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5856
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5857
  ret void, !dbg !5858
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtinput_status(ptr noundef %idev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 16 !dbg !5859 {
entry:
  %idev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %vi = alloca ptr, align 8
  store ptr %idev, ptr %idev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idev.addr, metadata !5861, metadata !DIExpression()), !dbg !5866
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5862, metadata !DIExpression()), !dbg !5867
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5863, metadata !DIExpression()), !dbg !5868
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5864, metadata !DIExpression()), !dbg !5869
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #19, !dbg !5870
  call void @llvm.dbg.declare(metadata ptr %vi, metadata !5865, metadata !DIExpression()), !dbg !5871
  %0 = load ptr, ptr %idev.addr, align 8, !dbg !5872
  %call = call ptr @input_get_drvdata(ptr noundef %0) #18, !dbg !5873
  store ptr %call, ptr %vi, align 8, !dbg !5871
  %1 = load ptr, ptr %vi, align 8, !dbg !5874
  %2 = load i32, ptr %type.addr, align 4, !dbg !5875
  %conv = trunc i32 %2 to i16, !dbg !5875
  %3 = load i32, ptr %code.addr, align 4, !dbg !5876
  %conv1 = trunc i32 %3 to i16, !dbg !5876
  %4 = load i32, ptr %value.addr, align 4, !dbg !5877
  %call2 = call i32 @virtinput_send_status(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %conv1, i32 noundef %4) #18, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #19, !dbg !5879
  ret i32 %call2, !dbg !5880
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5881 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5887, metadata !DIExpression()), !dbg !5892
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5888, metadata !DIExpression()), !dbg !5893
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #19, !dbg !5894
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5889, metadata !DIExpression()), !dbg !5895
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5896
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5897
  %div = udiv i64 %1, 64, !dbg !5897
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5898
  store ptr %add.ptr, ptr %p, align 8, !dbg !5895
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #19, !dbg !5899
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5890, metadata !DIExpression()), !dbg !5900
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5901
  %rem = urem i64 %2, 64, !dbg !5901
  %shl = shl i64 1, %rem, !dbg !5901
  store i64 %shl, ptr %mask, align 8, !dbg !5900
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #19, !dbg !5902
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5891, metadata !DIExpression()), !dbg !5903
  %3 = load ptr, ptr %p, align 8, !dbg !5904
  %4 = load i64, ptr %3, align 8, !dbg !5905
  store i64 %4, ptr %val, align 8, !dbg !5903
  %5 = load i64, ptr %val, align 8, !dbg !5906
  %6 = load i64, ptr %mask, align 8, !dbg !5907
  %and = and i64 %5, %6, !dbg !5908
  %tobool = icmp ne i64 %and, 0, !dbg !5909
  %lnot = xor i1 %tobool, true, !dbg !5909
  %lnot1 = xor i1 %lnot, true, !dbg !5910
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #19, !dbg !5911
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #19, !dbg !5911
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #19, !dbg !5911
  ret i1 %lnot1, !dbg !5912
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5913 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5915, metadata !DIExpression()), !dbg !5917
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5916, metadata !DIExpression()), !dbg !5918
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5919
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5920
  %div = udiv i64 %1, 64, !dbg !5920
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5921
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5922
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5923
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5924
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5925
  ret i1 %call, !dbg !5926
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtinput_cfg_abs(ptr noundef %vi, i32 noundef %abs) #2 align 16 !dbg !5927 {
entry:
  %vi.addr = alloca ptr, align 8
  %abs.addr = alloca i32, align 4
  %mi = alloca i32, align 4
  %ma = alloca i32, align 4
  %re = alloca i32, align 4
  %fu = alloca i32, align 4
  %fl = alloca i32, align 4
  %virtio_cread_v = alloca i32, align 4
  %__dummy = alloca i32, align 4
  %__dummy2 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %virtio_cread_v7 = alloca i32, align 4
  %__dummy11 = alloca i32, align 4
  %__dummy212 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %virtio_cread_v23 = alloca i32, align 4
  %__dummy27 = alloca i32, align 4
  %__dummy228 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %virtio_cread_v39 = alloca i32, align 4
  %__dummy43 = alloca i32, align 4
  %__dummy244 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %virtio_cread_v55 = alloca i32, align 4
  %__dummy59 = alloca i32, align 4
  %__dummy260 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vi.addr, metadata !5931, metadata !DIExpression()), !dbg !5963
  store i32 %abs, ptr %abs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %abs.addr, metadata !5932, metadata !DIExpression()), !dbg !5964
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #19, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !5933, metadata !DIExpression()), !dbg !5966
  call void @llvm.lifetime.start.p0(i64 4, ptr %ma) #19, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %ma, metadata !5934, metadata !DIExpression()), !dbg !5967
  call void @llvm.lifetime.start.p0(i64 4, ptr %re) #19, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %re, metadata !5935, metadata !DIExpression()), !dbg !5968
  call void @llvm.lifetime.start.p0(i64 4, ptr %fu) #19, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %fu, metadata !5936, metadata !DIExpression()), !dbg !5969
  call void @llvm.lifetime.start.p0(i64 4, ptr %fl) #19, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %fl, metadata !5937, metadata !DIExpression()), !dbg !5970
  %0 = load ptr, ptr %vi.addr, align 8, !dbg !5971
  %1 = load i32, ptr %abs.addr, align 4, !dbg !5972
  %conv = trunc i32 %1 to i8, !dbg !5972
  %call = call zeroext i8 @virtinput_cfg_select(ptr noundef %0, i8 noundef zeroext 18, i8 noundef zeroext %conv) #18, !dbg !5973
  br label %do.body, !dbg !5974

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %virtio_cread_v) #19, !dbg !5975
  call void @llvm.dbg.declare(metadata ptr %virtio_cread_v, metadata !5938, metadata !DIExpression()), !dbg !5975
  br label %do.body1, !dbg !5975

do.body1:                                         ; preds = %do.body
  call void @might_resched() #18, !dbg !5976
  br label %do.cond, !dbg !5976

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5976

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__dummy) #19, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5940, metadata !DIExpression()), !dbg !5978
  call void @llvm.lifetime.start.p0(i64 4, ptr %__dummy2) #19, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5942, metadata !DIExpression()), !dbg !5978
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5978
  %conv2 = zext i1 %cmp to i32, !dbg !5978
  store i32 1, ptr %tmp, align 4, !dbg !5978
  call void @llvm.lifetime.end.p0(i64 4, ptr %__dummy2) #19, !dbg !5975
  call void @llvm.lifetime.end.p0(i64 4, ptr %__dummy) #19, !dbg !5975
  %2 = load i32, ptr %tmp, align 4, !dbg !5978
  %3 = load ptr, ptr %vi.addr, align 8, !dbg !5975
  %vdev = getelementptr inbounds %struct.virtio_input, ptr %3, i32 0, i32 0, !dbg !5975
  %4 = load ptr, ptr %vdev, align 8, !dbg !5975
  %config = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 8, !dbg !5975
  %5 = load ptr, ptr %config, align 8, !dbg !5975
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %5, i32 0, i32 0, !dbg !5975
  %6 = load ptr, ptr %get, align 8, !dbg !5975
  %7 = load ptr, ptr %vi.addr, align 8, !dbg !5975
  %vdev3 = getelementptr inbounds %struct.virtio_input, ptr %7, i32 0, i32 0, !dbg !5975
  %8 = load ptr, ptr %vdev3, align 8, !dbg !5975
  call void %6(ptr noundef %8, i32 noundef 8, ptr noundef %virtio_cread_v, i32 noundef 4) #18, !dbg !5975
  %9 = load i32, ptr %virtio_cread_v, align 4, !dbg !5975
  store i32 %9, ptr %mi, align 4, !dbg !5975
  call void @llvm.lifetime.end.p0(i64 4, ptr %virtio_cread_v) #19, !dbg !5974
  br label %do.cond4, !dbg !5975

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5975

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !5979

do.body6:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %virtio_cread_v7) #19, !dbg !5980
  call void @llvm.dbg.declare(metadata ptr %virtio_cread_v7, metadata !5943, metadata !DIExpression()), !dbg !5980
  br label %do.body8, !dbg !5980

do.body8:                                         ; preds = %do.body6
  call void @might_resched() #18, !dbg !5981
  br label %do.cond9, !dbg !5981

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5981

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__dummy11) #19, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %__dummy11, metadata !5945, metadata !DIExpression()), !dbg !5983
  call void @llvm.lifetime.start.p0(i64 4, ptr %__dummy212) #19, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %__dummy212, metadata !5947, metadata !DIExpression()), !dbg !5983
  %cmp13 = icmp eq ptr %__dummy11, %__dummy212, !dbg !5983
  %conv14 = zext i1 %cmp13 to i32, !dbg !5983
  store i32 1, ptr %tmp15, align 4, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 4, ptr %__dummy212) #19, !dbg !5980
  call void @llvm.lifetime.end.p0(i64 4, ptr %__dummy11) #19, !dbg !5980
  %10 = load i32, ptr %tmp15, align 4, !dbg !5983
  %11 = load ptr, ptr %vi.addr, align 8, !dbg !5980
  %vdev16 = getelementptr inbounds %struct.virtio_input, ptr %11, i32 0, i32 0, !dbg !5980
  %12 = load ptr, ptr %vdev16, align 8, !dbg !5980
  %config17 = getelementptr inbounds %struct.virtio_device, ptr %12, i32 0, i32 8, !dbg !5980
  %13 = load ptr, ptr %config17, align 8, !dbg !5980
  %get18 = getelementptr inbounds %struct.virtio_config_ops, ptr %13, i32 0, i32 0, !dbg !5980
  %14 = load ptr, ptr %get18, align 8, !dbg !5980
  %15 = load ptr, ptr %vi.addr, align 8, !dbg !5980
  %vdev19 = getelementptr inbounds %struct.virtio_input, ptr %15, i32 0, i32 0, !dbg !5980
  %16 = load ptr, ptr %vdev19, align 8, !dbg !5980
  call void %14(ptr noundef %16, i32 noundef 12, ptr noundef %virtio_cread_v7, i32 noundef 4) #18, !dbg !5980
  %17 = load i32, ptr %virtio_cread_v7, align 4, !dbg !5980
  store i32 %17, ptr %ma, align 4, !dbg !5980
  call void @llvm.lifetime.end.p0(i64 4, ptr %virtio_cread_v7) #19, !dbg !5979
  br label %do.cond20, !dbg !5980

do.cond20:                                        ; preds = %do.end10
  br label %do.end21, !dbg !5980

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !5984

do.body22:                                        ; preds = %do.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr %virtio_cread_v23) #19, !dbg !5985
  call void @llvm.dbg.declare(metadata ptr %virtio_cread_v23, metadata !5948, metadata !DIExpression()), !dbg !5985
  br label %do.body24, !dbg !5985

do.body24:                                        ; preds = %do.body22
  call void @might_resched() #18, !dbg !5986
  br label %do.cond25, !dbg !5986

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5986

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.start.p0(i64 4, ptr %__dummy27) #19, !dbg !5988
  call void @llvm.dbg.declare(metadata ptr %__dummy27, metadata !5950, metadata !DIExpression()), !dbg !5988
  call void @llvm.lifetime.start.p0(i64 4, ptr %__dummy228) #19, !dbg !5988
  call void @llvm.dbg.declare(metadata ptr %__dummy228, metadata !5952, metadata !DIExpression()), !dbg !5988
  %cmp29 = icmp eq ptr %__dummy27, %__dummy228, !dbg !5988
  %conv30 = zext i1 %cmp29 to i32, !dbg !5988
  store i32 1, ptr %tmp31, align 4, !dbg !5988
  call void @llvm.lifetime.end.p0(i64 4, ptr %__dummy228) #19, !dbg !5985
  call void @llvm.lifetime.end.p0(i64 4, ptr %__dummy27) #19, !dbg !5985
  %18 = load i32, ptr %tmp31, align 4, !dbg !5988
  %19 = load ptr, ptr %vi.addr, align 8, !dbg !5985
  %vdev32 = getelementptr inbounds %struct.virtio_input, ptr %19, i32 0, i32 0, !dbg !5985
  %20 = load ptr, ptr %vdev32, align 8, !dbg !5985
  %config33 = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 8, !dbg !5985
  %21 = load ptr, ptr %config33, align 8, !dbg !5985
  %get34 = getelementptr inbounds %struct.virtio_config_ops, ptr %21, i32 0, i32 0, !dbg !5985
  %22 = load ptr, ptr %get34, align 8, !dbg !5985
  %23 = load ptr, ptr %vi.addr, align 8, !dbg !5985
  %vdev35 = getelementptr inbounds %struct.virtio_input, ptr %23, i32 0, i32 0, !dbg !5985
  %24 = load ptr, ptr %vdev35, align 8, !dbg !5985
  call void %22(ptr noundef %24, i32 noundef 24, ptr noundef %virtio_cread_v23, i32 noundef 4) #18, !dbg !5985
  %25 = load i32, ptr %virtio_cread_v23, align 4, !dbg !5985
  store i32 %25, ptr %re, align 4, !dbg !5985
  call void @llvm.lifetime.end.p0(i64 4, ptr %virtio_cread_v23) #19, !dbg !5984
  br label %do.cond36, !dbg !5985

do.cond36:                                        ; preds = %do.end26
  br label %do.end37, !dbg !5985

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !5989

do.body38:                                        ; preds = %do.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr %virtio_cread_v39) #19, !dbg !5990
  call void @llvm.dbg.declare(metadata ptr %virtio_cread_v39, metadata !5953, metadata !DIExpression()), !dbg !5990
  br label %do.body40, !dbg !5990

do.body40:                                        ; preds = %do.body38
  call void @might_resched() #18, !dbg !5991
  br label %do.cond41, !dbg !5991

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !5991

do.end42:                                         ; preds = %do.cond41
  call void @llvm.lifetime.start.p0(i64 4, ptr %__dummy43) #19, !dbg !5993
  call void @llvm.dbg.declare(metadata ptr %__dummy43, metadata !5955, metadata !DIExpression()), !dbg !5993
  call void @llvm.lifetime.start.p0(i64 4, ptr %__dummy244) #19, !dbg !5993
  call void @llvm.dbg.declare(metadata ptr %__dummy244, metadata !5957, metadata !DIExpression()), !dbg !5993
  %cmp45 = icmp eq ptr %__dummy43, %__dummy244, !dbg !5993
  %conv46 = zext i1 %cmp45 to i32, !dbg !5993
  store i32 1, ptr %tmp47, align 4, !dbg !5993
  call void @llvm.lifetime.end.p0(i64 4, ptr %__dummy244) #19, !dbg !5990
  call void @llvm.lifetime.end.p0(i64 4, ptr %__dummy43) #19, !dbg !5990
  %26 = load i32, ptr %tmp47, align 4, !dbg !5993
  %27 = load ptr, ptr %vi.addr, align 8, !dbg !5990
  %vdev48 = getelementptr inbounds %struct.virtio_input, ptr %27, i32 0, i32 0, !dbg !5990
  %28 = load ptr, ptr %vdev48, align 8, !dbg !5990
  %config49 = getelementptr inbounds %struct.virtio_device, ptr %28, i32 0, i32 8, !dbg !5990
  %29 = load ptr, ptr %config49, align 8, !dbg !5990
  %get50 = getelementptr inbounds %struct.virtio_config_ops, ptr %29, i32 0, i32 0, !dbg !5990
  %30 = load ptr, ptr %get50, align 8, !dbg !5990
  %31 = load ptr, ptr %vi.addr, align 8, !dbg !5990
  %vdev51 = getelementptr inbounds %struct.virtio_input, ptr %31, i32 0, i32 0, !dbg !5990
  %32 = load ptr, ptr %vdev51, align 8, !dbg !5990
  call void %30(ptr noundef %32, i32 noundef 16, ptr noundef %virtio_cread_v39, i32 noundef 4) #18, !dbg !5990
  %33 = load i32, ptr %virtio_cread_v39, align 4, !dbg !5990
  store i32 %33, ptr %fu, align 4, !dbg !5990
  call void @llvm.lifetime.end.p0(i64 4, ptr %virtio_cread_v39) #19, !dbg !5989
  br label %do.cond52, !dbg !5990

do.cond52:                                        ; preds = %do.end42
  br label %do.end53, !dbg !5990

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !5994

do.body54:                                        ; preds = %do.end53
  call void @llvm.lifetime.start.p0(i64 4, ptr %virtio_cread_v55) #19, !dbg !5995
  call void @llvm.dbg.declare(metadata ptr %virtio_cread_v55, metadata !5958, metadata !DIExpression()), !dbg !5995
  br label %do.body56, !dbg !5995

do.body56:                                        ; preds = %do.body54
  call void @might_resched() #18, !dbg !5996
  br label %do.cond57, !dbg !5996

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !5996

do.end58:                                         ; preds = %do.cond57
  call void @llvm.lifetime.start.p0(i64 4, ptr %__dummy59) #19, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %__dummy59, metadata !5960, metadata !DIExpression()), !dbg !5998
  call void @llvm.lifetime.start.p0(i64 4, ptr %__dummy260) #19, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %__dummy260, metadata !5962, metadata !DIExpression()), !dbg !5998
  %cmp61 = icmp eq ptr %__dummy59, %__dummy260, !dbg !5998
  %conv62 = zext i1 %cmp61 to i32, !dbg !5998
  store i32 1, ptr %tmp63, align 4, !dbg !5998
  call void @llvm.lifetime.end.p0(i64 4, ptr %__dummy260) #19, !dbg !5995
  call void @llvm.lifetime.end.p0(i64 4, ptr %__dummy59) #19, !dbg !5995
  %34 = load i32, ptr %tmp63, align 4, !dbg !5998
  %35 = load ptr, ptr %vi.addr, align 8, !dbg !5995
  %vdev64 = getelementptr inbounds %struct.virtio_input, ptr %35, i32 0, i32 0, !dbg !5995
  %36 = load ptr, ptr %vdev64, align 8, !dbg !5995
  %config65 = getelementptr inbounds %struct.virtio_device, ptr %36, i32 0, i32 8, !dbg !5995
  %37 = load ptr, ptr %config65, align 8, !dbg !5995
  %get66 = getelementptr inbounds %struct.virtio_config_ops, ptr %37, i32 0, i32 0, !dbg !5995
  %38 = load ptr, ptr %get66, align 8, !dbg !5995
  %39 = load ptr, ptr %vi.addr, align 8, !dbg !5995
  %vdev67 = getelementptr inbounds %struct.virtio_input, ptr %39, i32 0, i32 0, !dbg !5995
  %40 = load ptr, ptr %vdev67, align 8, !dbg !5995
  call void %38(ptr noundef %40, i32 noundef 20, ptr noundef %virtio_cread_v55, i32 noundef 4) #18, !dbg !5995
  %41 = load i32, ptr %virtio_cread_v55, align 4, !dbg !5995
  store i32 %41, ptr %fl, align 4, !dbg !5995
  call void @llvm.lifetime.end.p0(i64 4, ptr %virtio_cread_v55) #19, !dbg !5994
  br label %do.cond68, !dbg !5995

do.cond68:                                        ; preds = %do.end58
  br label %do.end69, !dbg !5995

do.end69:                                         ; preds = %do.cond68
  %42 = load ptr, ptr %vi.addr, align 8, !dbg !5999
  %idev = getelementptr inbounds %struct.virtio_input, ptr %42, i32 0, i32 1, !dbg !6000
  %43 = load ptr, ptr %idev, align 8, !dbg !6000
  %44 = load i32, ptr %abs.addr, align 4, !dbg !6001
  %45 = load i32, ptr %mi, align 4, !dbg !6002
  %46 = load i32, ptr %ma, align 4, !dbg !6003
  %47 = load i32, ptr %fu, align 4, !dbg !6004
  %48 = load i32, ptr %fl, align 4, !dbg !6005
  call void @input_set_abs_params(ptr noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %48) #18, !dbg !6006
  %49 = load ptr, ptr %vi.addr, align 8, !dbg !6007
  %idev70 = getelementptr inbounds %struct.virtio_input, ptr %49, i32 0, i32 1, !dbg !6008
  %50 = load ptr, ptr %idev70, align 8, !dbg !6008
  %51 = load i32, ptr %abs.addr, align 4, !dbg !6009
  %52 = load i32, ptr %re, align 4, !dbg !6010
  call void @input_abs_set_res(ptr noundef %50, i32 noundef %51, i32 noundef %52) #18, !dbg !6011
  call void @llvm.lifetime.end.p0(i64 4, ptr %fl) #19, !dbg !6012
  call void @llvm.lifetime.end.p0(i64 4, ptr %fu) #19, !dbg !6012
  call void @llvm.lifetime.end.p0(i64 4, ptr %re) #19, !dbg !6012
  call void @llvm.lifetime.end.p0(i64 4, ptr %ma) #19, !dbg !6012
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #19, !dbg !6012
  ret void, !dbg !6012
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @input_abs_get_max(ptr noundef %dev, i32 noundef %axis) #5 align 16 !dbg !6013 {
entry:
  %dev.addr = alloca ptr, align 8
  %axis.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6017, metadata !DIExpression()), !dbg !6019
  store i32 %axis, ptr %axis.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %axis.addr, metadata !6018, metadata !DIExpression()), !dbg !6019
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6019
  %absinfo = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26, !dbg !6019
  %1 = load ptr, ptr %absinfo, align 8, !dbg !6019
  %tobool = icmp ne ptr %1, null, !dbg !6019
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6019

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6019
  %absinfo1 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 26, !dbg !6019
  %3 = load ptr, ptr %absinfo1, align 8, !dbg !6019
  %4 = load i32, ptr %axis.addr, align 4, !dbg !6019
  %idxprom = zext i32 %4 to i64, !dbg !6019
  %arrayidx = getelementptr %struct.input_absinfo, ptr %3, i64 %idxprom, !dbg !6019
  %maximum = getelementptr inbounds %struct.input_absinfo, ptr %arrayidx, i32 0, i32 2, !dbg !6019
  %5 = load i32, ptr %maximum, align 4, !dbg !6019
  br label %cond.end, !dbg !6019

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6019

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 0, %cond.false ], !dbg !6019
  ret i32 %cond, !dbg !6019
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6020 dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtio_device_ready(ptr noundef %dev) #5 align 16 !dbg !6023 {
entry:
  %dev.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6025, metadata !DIExpression()), !dbg !6032
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #19, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6026, metadata !DIExpression()), !dbg !6034
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6035
  %config = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8, !dbg !6036
  %1 = load ptr, ptr %config, align 8, !dbg !6036
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 3, !dbg !6037
  %2 = load ptr, ptr %get_status, align 8, !dbg !6037
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6038
  %call = call zeroext i8 %2(ptr noundef %3) #18, !dbg !6035
  %conv = zext i8 %call to i32, !dbg !6035
  store i32 %conv, ptr %status, align 4, !dbg !6034
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6027, metadata !DIExpression()), !dbg !6039
  %4 = load i32, ptr %status, align 4, !dbg !6039
  %and = and i32 %4, 4, !dbg !6039
  %tobool = icmp ne i32 %and, 0, !dbg !6039
  %lnot = xor i1 %tobool, true, !dbg !6039
  %lnot1 = xor i1 %lnot, true, !dbg !6039
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6039
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6039
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6040
  %tobool2 = icmp ne i32 %5, 0, !dbg !6040
  %lnot3 = xor i1 %tobool2, true, !dbg !6040
  %lnot5 = xor i1 %lnot3, true, !dbg !6040
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6040
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !6040
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6040
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6040
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6039

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6040

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !6041
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6029, metadata !DIExpression()), !dbg !6041
  store i32 2305, ptr %__flags, align 4, !dbg !6041
  br label %do.body9, !dbg !6041

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6042

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6042

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6041

do.body10:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !6044
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 274, i32 %6, i64 12) #19, !dbg !6044, !srcloc !6046
  br label %do.cond11, !dbg !6044

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6044

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6041

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6047

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6047

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !6040
  br label %do.cond16, !dbg !6041

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6041

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6041

if.end:                                           ; preds = %do.end17, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !6039
  %tobool18 = icmp ne i32 %7, 0, !dbg !6039
  %lnot19 = xor i1 %tobool18, true, !dbg !6039
  %lnot21 = xor i1 %lnot19, true, !dbg !6039
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6039
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6039
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6039
  store i64 %expval24, ptr %tmp, align 8, !dbg !6040
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6049
  %8 = load i64, ptr %tmp, align 8, !dbg !6039
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !6050
  %config25 = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 8, !dbg !6051
  %10 = load ptr, ptr %config25, align 8, !dbg !6051
  %set_status = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 4, !dbg !6052
  %11 = load ptr, ptr %set_status, align 8, !dbg !6052
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !6053
  %13 = load i32, ptr %status, align 4, !dbg !6054
  %or = or i32 %13, 4, !dbg !6055
  %conv26 = trunc i32 %or to i8, !dbg !6054
  call void %11(ptr noundef %12, i8 noundef zeroext %conv26) #18, !dbg !6050
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #19, !dbg !6056
  ret void, !dbg !6056
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6057 dso_local i32 @input_register_device(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtinput_fill_evt(ptr noundef %vi) #2 align 16 !dbg !6058 {
entry:
  %vi.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vi.addr, metadata !6062, metadata !DIExpression()), !dbg !6071
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #19, !dbg !6072
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6063, metadata !DIExpression()), !dbg !6073
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !6074
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6064, metadata !DIExpression()), !dbg !6075
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #19, !dbg !6074
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6065, metadata !DIExpression()), !dbg !6076
  br label %do.body, !dbg !6077

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6078

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #19, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6066, metadata !DIExpression()), !dbg !6079
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #19, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6070, metadata !DIExpression()), !dbg !6079
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6079
  %conv = zext i1 %cmp to i32, !dbg !6079
  store i32 1, ptr %tmp, align 4, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #19, !dbg !6080
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #19, !dbg !6080
  %0 = load i32, ptr %tmp, align 4, !dbg !6079
  %1 = load ptr, ptr %vi.addr, align 8, !dbg !6080
  %lock = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 8, !dbg !6080
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !6080
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !6080
  store i64 %call2, ptr %flags, align 8, !dbg !6080
  br label %do.cond, !dbg !6080

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6080

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6078

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6078

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %vi.addr, align 8, !dbg !6081
  %evt = getelementptr inbounds %struct.virtio_input, ptr %2, i32 0, i32 5, !dbg !6082
  %3 = load ptr, ptr %evt, align 8, !dbg !6082
  %call5 = call i32 @virtqueue_get_vring_size(ptr noundef %3) #18, !dbg !6083
  store i32 %call5, ptr %size, align 4, !dbg !6084
  %4 = load i32, ptr %size, align 4, !dbg !6085
  %conv6 = sext i32 %4 to i64, !dbg !6085
  %cmp7 = icmp ugt i64 %conv6, 64, !dbg !6087
  br i1 %cmp7, label %if.then, label %if.end, !dbg !6088

if.then:                                          ; preds = %do.end4
  store i32 64, ptr %size, align 4, !dbg !6089
  br label %if.end, !dbg !6090

if.end:                                           ; preds = %if.then, %do.end4
  store i32 0, ptr %i, align 4, !dbg !6091
  br label %for.cond, !dbg !6093

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !6094
  %6 = load i32, ptr %size, align 4, !dbg !6096
  %cmp9 = icmp slt i32 %5, %6, !dbg !6097
  br i1 %cmp9, label %for.body, label %for.end, !dbg !6098

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %vi.addr, align 8, !dbg !6099
  %8 = load ptr, ptr %vi.addr, align 8, !dbg !6100
  %evts = getelementptr inbounds %struct.virtio_input, ptr %8, i32 0, i32 7, !dbg !6101
  %9 = load i32, ptr %i, align 4, !dbg !6102
  %idxprom = sext i32 %9 to i64, !dbg !6100
  %arrayidx = getelementptr [64 x %struct.virtio_input_event], ptr %evts, i64 0, i64 %idxprom, !dbg !6100
  call void @virtinput_queue_evtbuf(ptr noundef %7, ptr noundef %arrayidx) #18, !dbg !6103
  br label %for.inc, !dbg !6103

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !6104
  %inc = add i32 %10, 1, !dbg !6104
  store i32 %inc, ptr %i, align 4, !dbg !6104
  br label %for.cond, !dbg !6105, !llvm.loop !6106

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %vi.addr, align 8, !dbg !6108
  %evt11 = getelementptr inbounds %struct.virtio_input, ptr %11, i32 0, i32 5, !dbg !6109
  %12 = load ptr, ptr %evt11, align 8, !dbg !6109
  %call12 = call zeroext i1 @virtqueue_kick(ptr noundef %12) #18, !dbg !6110
  %13 = load ptr, ptr %vi.addr, align 8, !dbg !6111
  %lock13 = getelementptr inbounds %struct.virtio_input, ptr %13, i32 0, i32 8, !dbg !6112
  %14 = load i64, ptr %flags, align 8, !dbg !6113
  call void @spin_unlock_irqrestore(ptr noundef %lock13, i64 noundef %14) #18, !dbg !6114
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #19, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #19, !dbg !6115
  ret void, !dbg !6115
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6116 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #7 align 16 !dbg !6120 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6124, metadata !DIExpression()), !dbg !6130
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6125, metadata !DIExpression()), !dbg !6131
  br label %do.body, !dbg !6132

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #19, !dbg !6133
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6126, metadata !DIExpression()), !dbg !6133
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #19, !dbg !6133
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6129, metadata !DIExpression()), !dbg !6133
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6133
  %conv = zext i1 %cmp to i32, !dbg !6133
  store i32 1, ptr %tmp, align 4, !dbg !6133
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #19, !dbg !6134
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #19, !dbg !6134
  %0 = load i32, ptr %tmp, align 4, !dbg !6133
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6134
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6134
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6134
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #18, !dbg !6134
  br label %do.end, !dbg !6134

do.end:                                           ; preds = %do.body
  ret void, !dbg !6135
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6136 dso_local void @input_free_device(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6137 dso_local void @kfree(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6140 dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__virtio_test_bit(ptr noundef %vdev, i32 noundef %fbit) #5 align 16 !dbg !6143 {
entry:
  %vdev.addr = alloca ptr, align 8
  %fbit.addr = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6145, metadata !DIExpression()), !dbg !6147
  store i32 %fbit, ptr %fbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fbit.addr, metadata !6146, metadata !DIExpression()), !dbg !6148
  %0 = load i32, ptr %fbit.addr, align 4, !dbg !6149
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6151
  br i1 %1, label %if.then, label %if.else, !dbg !6152

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6153

do.body:                                          ; preds = %if.then
  %2 = load i32, ptr %fbit.addr, align 4, !dbg !6154
  %cmp = icmp uge i32 %2, 64, !dbg !6154
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6157

if.then1:                                         ; preds = %do.body
  call void @__compiletime_assert_289() #21, !dbg !6154, !srcloc !6158
  unreachable, !dbg !6154

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !6157

do.end:                                           ; preds = %if.end
  br label %if.end14, !dbg !6157

if.else:                                          ; preds = %entry
  br label %do.body2, !dbg !6159

do.body2:                                         ; preds = %if.else
  %3 = load i32, ptr %fbit.addr, align 4, !dbg !6160
  %cmp3 = icmp uge i32 %3, 64, !dbg !6160
  %lnot = xor i1 %cmp3, true, !dbg !6160
  %lnot4 = xor i1 %lnot, true, !dbg !6160
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6160
  %conv = sext i32 %lnot.ext to i64, !dbg !6160
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6160
  %tobool = icmp ne i64 %expval, 0, !dbg !6160
  br i1 %tobool, label %if.then5, label %if.end12, !dbg !6163

if.then5:                                         ; preds = %do.body2
  br label %do.body6, !dbg !6160

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !6164

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6166

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !6164

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 143, i32 0, i64 12) #19, !dbg !6168, !srcloc !6170
  br label %do.end10, !dbg !6168

do.end10:                                         ; preds = %do.body9
  unreachable, !dbg !6164

do.end11:                                         ; No predecessors!
  br label %if.end12, !dbg !6164

if.end12:                                         ; preds = %do.end11, %do.body2
  br label %do.end13, !dbg !6163

do.end13:                                         ; preds = %if.end12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.end
  %4 = load ptr, ptr %vdev.addr, align 8, !dbg !6171
  %features = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 11, !dbg !6172
  %5 = load i64, ptr %features, align 8, !dbg !6172
  %6 = load i32, ptr %fbit.addr, align 4, !dbg !6173
  %sh_prom = zext i32 %6 to i64, !dbg !6173
  %shl = shl i64 1, %sh_prom, !dbg !6173
  %and = and i64 %5, %shl, !dbg !6174
  %tobool15 = icmp ne i64 %and, 0, !dbg !6171
  ret i1 %tobool15, !dbg !6175
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6176 dso_local void @__compiletime_assert_289() #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !6177 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6179, metadata !DIExpression()), !dbg !6184
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6180, metadata !DIExpression()), !dbg !6185
  %0 = load i64, ptr %size.addr, align 8, !dbg !6186
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6187
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6188

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6189
  %tobool = icmp ne i64 %2, 0, !dbg !6189
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6190

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !6191
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6181, metadata !DIExpression()), !dbg !6192
  %3 = load i64, ptr %size.addr, align 8, !dbg !6193
  %cmp = icmp ugt i64 %3, 8192, !dbg !6195
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6196

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6197
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6198
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6199
  store ptr %call, ptr %retval, align 8, !dbg !6200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6200

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6201
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6201
  store i32 %call2, ptr %index, align 4, !dbg !6202
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6203
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6204
  %9 = ptrtoint ptr %8 to i64, !dbg !6204
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6205
  %idxprom = zext i32 %call3 to i64, !dbg !6206
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6206
  %10 = load i32, ptr %index, align 4, !dbg !6207
  %idxprom4 = zext i32 %10 to i64, !dbg !6206
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6206
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6206
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6208
  %13 = load i64, ptr %size.addr, align 8, !dbg !6209
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !6210
  store ptr %call6, ptr %retval, align 8, !dbg !6211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6211

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !6212
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6213
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6214
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6215
  store ptr %call8, ptr %retval, align 8, !dbg !6216
  br label %return, !dbg !6216

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6217
  ret ptr %16, !dbg !6217
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6218 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !6219 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6223, metadata !DIExpression()), !dbg !6225
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6224, metadata !DIExpression()), !dbg !6226
  %0 = load i64, ptr %size.addr, align 8, !dbg !6227
  %tobool = icmp ne i64 %0, 0, !dbg !6227
  br i1 %tobool, label %if.end, label %if.then, !dbg !6229

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6230
  br label %return, !dbg !6230

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6231
  %cmp = icmp ule i64 %1, 8, !dbg !6233
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6234

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6235
  br label %return, !dbg !6235

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6236
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6238
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6239

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6240
  %cmp4 = icmp ule i64 %3, 96, !dbg !6241
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6242

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6243
  br label %return, !dbg !6243

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6244
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6246
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6247

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6248
  %cmp9 = icmp ule i64 %5, 192, !dbg !6249
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6250

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6251
  br label %return, !dbg !6251

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6252
  %cmp12 = icmp ule i64 %6, 8, !dbg !6254
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6255

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6256
  br label %return, !dbg !6256

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6257
  %cmp15 = icmp ule i64 %7, 16, !dbg !6259
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6260

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6261
  br label %return, !dbg !6261

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6262
  %cmp18 = icmp ule i64 %8, 32, !dbg !6264
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6265

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6266
  br label %return, !dbg !6266

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6267
  %cmp21 = icmp ule i64 %9, 64, !dbg !6269
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6270

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6271
  br label %return, !dbg !6271

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6272
  %cmp24 = icmp ule i64 %10, 128, !dbg !6274
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6275

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6276
  br label %return, !dbg !6276

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6277
  %cmp27 = icmp ule i64 %11, 256, !dbg !6279
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6280

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6281
  br label %return, !dbg !6281

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6282
  %cmp30 = icmp ule i64 %12, 512, !dbg !6284
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6285

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6286
  br label %return, !dbg !6286

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6287
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6289
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6290

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6291
  br label %return, !dbg !6291

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6292
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6294
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6295

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6296
  br label %return, !dbg !6296

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6297
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6299
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6300

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6301
  br label %return, !dbg !6301

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6302
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6304
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6305

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6306
  br label %return, !dbg !6306

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6307
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6309
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6310

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6311
  br label %return, !dbg !6311

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6312
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6314
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6315

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6316
  br label %return, !dbg !6316

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6317
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6319
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6320

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6321
  br label %return, !dbg !6321

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6322
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6324
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6325

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6326
  br label %return, !dbg !6326

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6327
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6329
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6330

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6331
  br label %return, !dbg !6331

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6332
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6334
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6335

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6336
  br label %return, !dbg !6336

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6337
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6339
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6340

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6341
  br label %return, !dbg !6341

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6342
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6344
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6345

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6346
  br label %return, !dbg !6346

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6347, !range !6349, !noundef !557
  %tobool69 = trunc i8 %25 to i1, !dbg !6347
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6350

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6351

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_229() #21, !dbg !6352, !srcloc !6355
  unreachable, !dbg !6352

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6356

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6357

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6358

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6360

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6358

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #19, !dbg !6362, !srcloc !6364
  br label %do.end75, !dbg !6362

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6358

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6365
  br label %return, !dbg !6365

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6366
  ret i32 %26, !dbg !6366
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6367 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !6373 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6377, metadata !DIExpression()), !dbg !6379
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6378, metadata !DIExpression()), !dbg !6380
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6381
  %and = and i32 %0, 17, !dbg !6381
  %cmp = icmp eq i32 %and, 0, !dbg !6381
  %lnot = xor i1 %cmp, true, !dbg !6381
  %lnot1 = xor i1 %lnot, true, !dbg !6381
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6381
  %conv = sext i32 %lnot.ext to i64, !dbg !6381
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6381
  %tobool = icmp ne i64 %expval, 0, !dbg !6381
  br i1 %tobool, label %if.then, label %if.end, !dbg !6383

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6384
  br label %return, !dbg !6384

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6385
  %and2 = and i32 %1, 1, !dbg !6387
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6387
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6388

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6389
  br label %return, !dbg !6389

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6390
  br label %return, !dbg !6390

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6392
  ret i32 %2, !dbg !6392
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6393 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6394 dso_local void @__compiletime_assert_229() #15

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtinput_recv_events(ptr noundef %vq) #2 align 16 !dbg !6395 {
entry:
  %vq.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %event = alloca ptr, align 8
  %flags = alloca i64, align 8
  %len = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy13 = alloca i64, align 8
  %__dummy214 = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  store ptr %vq, ptr %vq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vq.addr, metadata !6397, metadata !DIExpression()), !dbg !6416
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #19, !dbg !6417
  call void @llvm.dbg.declare(metadata ptr %vi, metadata !6398, metadata !DIExpression()), !dbg !6418
  %0 = load ptr, ptr %vq.addr, align 8, !dbg !6419
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3, !dbg !6420
  %1 = load ptr, ptr %vdev, align 8, !dbg !6420
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12, !dbg !6421
  %2 = load ptr, ptr %priv, align 8, !dbg !6421
  store ptr %2, ptr %vi, align 8, !dbg !6418
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #19, !dbg !6422
  call void @llvm.dbg.declare(metadata ptr %event, metadata !6399, metadata !DIExpression()), !dbg !6423
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #19, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6401, metadata !DIExpression()), !dbg !6425
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #19, !dbg !6426
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6402, metadata !DIExpression()), !dbg !6427
  br label %do.body, !dbg !6428

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6429

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #19, !dbg !6430
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6403, metadata !DIExpression()), !dbg !6430
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #19, !dbg !6430
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6407, metadata !DIExpression()), !dbg !6430
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6430
  %conv = zext i1 %cmp to i32, !dbg !6430
  store i32 1, ptr %tmp, align 4, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #19, !dbg !6431
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #19, !dbg !6431
  %3 = load i32, ptr %tmp, align 4, !dbg !6430
  %4 = load ptr, ptr %vi, align 8, !dbg !6431
  %lock = getelementptr inbounds %struct.virtio_input, ptr %4, i32 0, i32 8, !dbg !6431
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !6431
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !6431
  store i64 %call2, ptr %flags, align 8, !dbg !6431
  br label %do.cond, !dbg !6431

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6431

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6429

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6429

do.end4:                                          ; preds = %do.cond3
  %5 = load ptr, ptr %vi, align 8, !dbg !6432
  %ready = getelementptr inbounds %struct.virtio_input, ptr %5, i32 0, i32 9, !dbg !6433
  %6 = load i8, ptr %ready, align 4, !dbg !6433, !range !6349, !noundef !557
  %tobool = trunc i8 %6 to i1, !dbg !6433
  br i1 %tobool, label %if.then, label %if.end, !dbg !6434

if.then:                                          ; preds = %do.end4
  br label %while.cond, !dbg !6435

while.cond:                                       ; preds = %do.end24, %if.then
  %7 = load ptr, ptr %vi, align 8, !dbg !6436
  %evt = getelementptr inbounds %struct.virtio_input, ptr %7, i32 0, i32 5, !dbg !6437
  %8 = load ptr, ptr %evt, align 8, !dbg !6437
  %call5 = call ptr @virtqueue_get_buf(ptr noundef %8, ptr noundef %len) #18, !dbg !6438
  store ptr %call5, ptr %event, align 8, !dbg !6439
  %cmp6 = icmp ne ptr %call5, null, !dbg !6440
  br i1 %cmp6, label %while.body, label %while.end, !dbg !6435

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %vi, align 8, !dbg !6441
  %lock8 = getelementptr inbounds %struct.virtio_input, ptr %9, i32 0, i32 8, !dbg !6442
  %10 = load i64, ptr %flags, align 8, !dbg !6443
  call void @spin_unlock_irqrestore(ptr noundef %lock8, i64 noundef %10) #18, !dbg !6444
  %11 = load ptr, ptr %vi, align 8, !dbg !6445
  %idev = getelementptr inbounds %struct.virtio_input, ptr %11, i32 0, i32 1, !dbg !6446
  %12 = load ptr, ptr %idev, align 8, !dbg !6446
  %13 = load ptr, ptr %event, align 8, !dbg !6447
  %type = getelementptr inbounds %struct.virtio_input_event, ptr %13, i32 0, i32 0, !dbg !6447
  %14 = load i16, ptr %type, align 4, !dbg !6447
  %conv9 = zext i16 %14 to i32, !dbg !6447
  %15 = load ptr, ptr %event, align 8, !dbg !6448
  %code = getelementptr inbounds %struct.virtio_input_event, ptr %15, i32 0, i32 1, !dbg !6448
  %16 = load i16, ptr %code, align 2, !dbg !6448
  %conv10 = zext i16 %16 to i32, !dbg !6448
  %17 = load ptr, ptr %event, align 8, !dbg !6449
  %value = getelementptr inbounds %struct.virtio_input_event, ptr %17, i32 0, i32 2, !dbg !6449
  %18 = load i32, ptr %value, align 4, !dbg !6449
  call void @input_event(ptr noundef %12, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %18) #18, !dbg !6450
  br label %do.body11, !dbg !6451

do.body11:                                        ; preds = %while.body
  br label %do.body12, !dbg !6452

do.body12:                                        ; preds = %do.body11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy13) #19, !dbg !6453
  call void @llvm.dbg.declare(metadata ptr %__dummy13, metadata !6408, metadata !DIExpression()), !dbg !6453
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy214) #19, !dbg !6453
  call void @llvm.dbg.declare(metadata ptr %__dummy214, metadata !6415, metadata !DIExpression()), !dbg !6453
  %cmp15 = icmp eq ptr %__dummy13, %__dummy214, !dbg !6453
  %conv16 = zext i1 %cmp15 to i32, !dbg !6453
  store i32 1, ptr %tmp17, align 4, !dbg !6453
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy214) #19, !dbg !6454
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy13) #19, !dbg !6454
  %19 = load i32, ptr %tmp17, align 4, !dbg !6453
  %20 = load ptr, ptr %vi, align 8, !dbg !6454
  %lock18 = getelementptr inbounds %struct.virtio_input, ptr %20, i32 0, i32 8, !dbg !6454
  %call19 = call ptr @spinlock_check(ptr noundef %lock18) #18, !dbg !6454
  %call20 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call19) #18, !dbg !6454
  store i64 %call20, ptr %flags, align 8, !dbg !6454
  br label %do.cond21, !dbg !6454

do.cond21:                                        ; preds = %do.body12
  br label %do.end22, !dbg !6454

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !6452

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !6452

do.end24:                                         ; preds = %do.cond23
  %21 = load ptr, ptr %vi, align 8, !dbg !6455
  %22 = load ptr, ptr %event, align 8, !dbg !6456
  call void @virtinput_queue_evtbuf(ptr noundef %21, ptr noundef %22) #18, !dbg !6457
  br label %while.cond, !dbg !6435, !llvm.loop !6458

while.end:                                        ; preds = %while.cond
  %23 = load ptr, ptr %vq.addr, align 8, !dbg !6460
  %call25 = call zeroext i1 @virtqueue_kick(ptr noundef %23) #18, !dbg !6461
  br label %if.end, !dbg !6462

if.end:                                           ; preds = %while.end, %do.end4
  %24 = load ptr, ptr %vi, align 8, !dbg !6463
  %lock26 = getelementptr inbounds %struct.virtio_input, ptr %24, i32 0, i32 8, !dbg !6464
  %25 = load i64, ptr %flags, align 8, !dbg !6465
  call void @spin_unlock_irqrestore(ptr noundef %lock26, i64 noundef %25) #18, !dbg !6466
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #19, !dbg !6467
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #19, !dbg !6467
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #19, !dbg !6467
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #19, !dbg !6467
  ret void, !dbg !6467
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtinput_recv_status(ptr noundef %vq) #2 align 16 !dbg !6468 {
entry:
  %vq.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %stsbuf = alloca ptr, align 8
  %flags = alloca i64, align 8
  %len = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %vq, ptr %vq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vq.addr, metadata !6470, metadata !DIExpression()), !dbg !6480
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #19, !dbg !6481
  call void @llvm.dbg.declare(metadata ptr %vi, metadata !6471, metadata !DIExpression()), !dbg !6482
  %0 = load ptr, ptr %vq.addr, align 8, !dbg !6483
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3, !dbg !6484
  %1 = load ptr, ptr %vdev, align 8, !dbg !6484
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12, !dbg !6485
  %2 = load ptr, ptr %priv, align 8, !dbg !6485
  store ptr %2, ptr %vi, align 8, !dbg !6482
  call void @llvm.lifetime.start.p0(i64 8, ptr %stsbuf) #19, !dbg !6486
  call void @llvm.dbg.declare(metadata ptr %stsbuf, metadata !6472, metadata !DIExpression()), !dbg !6487
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #19, !dbg !6488
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6473, metadata !DIExpression()), !dbg !6489
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #19, !dbg !6490
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6474, metadata !DIExpression()), !dbg !6491
  br label %do.body, !dbg !6492

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6493

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #19, !dbg !6494
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6475, metadata !DIExpression()), !dbg !6494
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #19, !dbg !6494
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6479, metadata !DIExpression()), !dbg !6494
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6494
  %conv = zext i1 %cmp to i32, !dbg !6494
  store i32 1, ptr %tmp, align 4, !dbg !6494
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #19, !dbg !6495
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #19, !dbg !6495
  %3 = load i32, ptr %tmp, align 4, !dbg !6494
  %4 = load ptr, ptr %vi, align 8, !dbg !6495
  %lock = getelementptr inbounds %struct.virtio_input, ptr %4, i32 0, i32 8, !dbg !6495
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !6495
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !6495
  store i64 %call2, ptr %flags, align 8, !dbg !6495
  br label %do.cond, !dbg !6495

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6495

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6493

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6493

do.end4:                                          ; preds = %do.cond3
  br label %while.cond, !dbg !6496

while.cond:                                       ; preds = %while.body, %do.end4
  %5 = load ptr, ptr %vi, align 8, !dbg !6497
  %sts = getelementptr inbounds %struct.virtio_input, ptr %5, i32 0, i32 6, !dbg !6498
  %6 = load ptr, ptr %sts, align 8, !dbg !6498
  %call5 = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef %len) #18, !dbg !6499
  store ptr %call5, ptr %stsbuf, align 8, !dbg !6500
  %cmp6 = icmp ne ptr %call5, null, !dbg !6501
  br i1 %cmp6, label %while.body, label %while.end, !dbg !6496

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %stsbuf, align 8, !dbg !6502
  call void @kfree(ptr noundef %7) #18, !dbg !6503
  br label %while.cond, !dbg !6496, !llvm.loop !6504

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %vi, align 8, !dbg !6506
  %lock8 = getelementptr inbounds %struct.virtio_input, ptr %8, i32 0, i32 8, !dbg !6507
  %9 = load i64, ptr %flags, align 8, !dbg !6508
  call void @spin_unlock_irqrestore(ptr noundef %lock8, i64 noundef %9) #18, !dbg !6509
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #19, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #19, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 8, ptr %stsbuf) #19, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #19, !dbg !6510
  ret void, !dbg !6510
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_find_vqs(ptr noundef %vdev, i32 noundef %nvqs, ptr noundef %vqs, ptr noundef %callbacks, ptr noundef %names, ptr noundef %desc) #5 align 16 !dbg !6511 {
entry:
  %vdev.addr = alloca ptr, align 8
  %nvqs.addr = alloca i32, align 4
  %vqs.addr = alloca ptr, align 8
  %callbacks.addr = alloca ptr, align 8
  %names.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6515, metadata !DIExpression()), !dbg !6521
  store i32 %nvqs, ptr %nvqs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nvqs.addr, metadata !6516, metadata !DIExpression()), !dbg !6522
  store ptr %vqs, ptr %vqs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vqs.addr, metadata !6517, metadata !DIExpression()), !dbg !6523
  store ptr %callbacks, ptr %callbacks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callbacks.addr, metadata !6518, metadata !DIExpression()), !dbg !6524
  store ptr %names, ptr %names.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %names.addr, metadata !6519, metadata !DIExpression()), !dbg !6525
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6520, metadata !DIExpression()), !dbg !6526
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !6527
  %config = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8, !dbg !6528
  %1 = load ptr, ptr %config, align 8, !dbg !6528
  %find_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 6, !dbg !6529
  %2 = load ptr, ptr %find_vqs, align 8, !dbg !6529
  %3 = load ptr, ptr %vdev.addr, align 8, !dbg !6530
  %4 = load i32, ptr %nvqs.addr, align 4, !dbg !6531
  %5 = load ptr, ptr %vqs.addr, align 8, !dbg !6532
  %6 = load ptr, ptr %callbacks.addr, align 8, !dbg !6533
  %7 = load ptr, ptr %names.addr, align 8, !dbg !6534
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !6535
  %call = call i32 %2(ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null, ptr noundef %8) #18, !dbg !6527
  ret i32 %call, !dbg !6536
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6537 dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6540 dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtinput_queue_evtbuf(ptr noundef %vi, ptr noundef %evtbuf) #2 align 16 !dbg !6543 {
entry:
  %vi.addr = alloca ptr, align 8
  %evtbuf.addr = alloca ptr, align 8
  %sg = alloca [1 x %struct.scatterlist], align 16
  store ptr %vi, ptr %vi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vi.addr, metadata !6547, metadata !DIExpression()), !dbg !6561
  store ptr %evtbuf, ptr %evtbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %evtbuf.addr, metadata !6548, metadata !DIExpression()), !dbg !6562
  call void @llvm.lifetime.start.p0(i64 32, ptr %sg) #19, !dbg !6563
  call void @llvm.dbg.declare(metadata ptr %sg, metadata !6549, metadata !DIExpression()), !dbg !6564
  %arraydecay = getelementptr inbounds [1 x %struct.scatterlist], ptr %sg, i64 0, i64 0, !dbg !6565
  %0 = load ptr, ptr %evtbuf.addr, align 8, !dbg !6566
  call void @sg_init_one(ptr noundef %arraydecay, ptr noundef %0, i32 noundef 8) #18, !dbg !6567
  %1 = load ptr, ptr %vi.addr, align 8, !dbg !6568
  %evt = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 5, !dbg !6569
  %2 = load ptr, ptr %evt, align 8, !dbg !6569
  %arraydecay1 = getelementptr inbounds [1 x %struct.scatterlist], ptr %sg, i64 0, i64 0, !dbg !6570
  %3 = load ptr, ptr %evtbuf.addr, align 8, !dbg !6571
  %call = call i32 @virtqueue_add_inbuf(ptr noundef %2, ptr noundef %arraydecay1, i32 noundef 1, ptr noundef %3, i32 noundef 2080) #18, !dbg !6572
  call void @llvm.lifetime.end.p0(i64 32, ptr %sg) #19, !dbg !6573
  ret void, !dbg !6573
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6574 dso_local zeroext i1 @virtqueue_kick(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6577 dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6581 dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #5 align 16 !dbg !6584 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6588, metadata !DIExpression()), !dbg !6590
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6589, metadata !DIExpression()), !dbg !6591
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6592
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6593
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !6594
  store ptr %0, ptr %driver_data, align 8, !dbg !6595
  ret void, !dbg !6596
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__virtio_cread_many(ptr noundef %vdev, i32 noundef %offset, ptr noundef %buf, i64 noundef %count, i64 noundef %bytes) #5 align 16 !dbg !6597 {
entry:
  %vdev.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %bytes.addr = alloca i64, align 8
  %old = alloca i32, align 4
  %gen = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6601, metadata !DIExpression()), !dbg !6609
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6602, metadata !DIExpression()), !dbg !6610
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6603, metadata !DIExpression()), !dbg !6611
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6604, metadata !DIExpression()), !dbg !6612
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6605, metadata !DIExpression()), !dbg !6613
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #19, !dbg !6614
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6606, metadata !DIExpression()), !dbg !6615
  call void @llvm.lifetime.start.p0(i64 4, ptr %gen) #19, !dbg !6614
  call void @llvm.dbg.declare(metadata ptr %gen, metadata !6607, metadata !DIExpression()), !dbg !6616
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !6617
  %config = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8, !dbg !6618
  %1 = load ptr, ptr %config, align 8, !dbg !6618
  %generation = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 2, !dbg !6619
  %2 = load ptr, ptr %generation, align 8, !dbg !6619
  %tobool = icmp ne ptr %2, null, !dbg !6617
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6617

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %vdev.addr, align 8, !dbg !6620
  %config1 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 8, !dbg !6621
  %4 = load ptr, ptr %config1, align 8, !dbg !6621
  %generation2 = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 2, !dbg !6622
  %5 = load ptr, ptr %generation2, align 8, !dbg !6622
  %6 = load ptr, ptr %vdev.addr, align 8, !dbg !6623
  %call = call i32 %5(ptr noundef %6) #18, !dbg !6620
  br label %cond.end, !dbg !6617

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6617

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ], !dbg !6617
  store i32 %cond, ptr %gen, align 4, !dbg !6616
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !6624
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6608, metadata !DIExpression()), !dbg !6625
  br label %do.body, !dbg !6626

do.body:                                          ; preds = %cond.end
  call void @might_resched() #18, !dbg !6627
  br label %do.cond, !dbg !6627

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6627

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6629

do.body3:                                         ; preds = %do.cond22, %do.end
  %7 = load i32, ptr %gen, align 4, !dbg !6630
  store i32 %7, ptr %old, align 4, !dbg !6632
  store i32 0, ptr %i, align 4, !dbg !6633
  br label %for.cond, !dbg !6635

for.cond:                                         ; preds = %for.inc, %do.body3
  %8 = load i32, ptr %i, align 4, !dbg !6636
  %conv = sext i32 %8 to i64, !dbg !6636
  %9 = load i64, ptr %count.addr, align 8, !dbg !6638
  %cmp = icmp ult i64 %conv, %9, !dbg !6639
  br i1 %cmp, label %for.body, label %for.end, !dbg !6640

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %vdev.addr, align 8, !dbg !6641
  %config5 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 8, !dbg !6642
  %11 = load ptr, ptr %config5, align 8, !dbg !6642
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %11, i32 0, i32 0, !dbg !6643
  %12 = load ptr, ptr %get, align 8, !dbg !6643
  %13 = load ptr, ptr %vdev.addr, align 8, !dbg !6644
  %14 = load i32, ptr %offset.addr, align 4, !dbg !6645
  %conv6 = zext i32 %14 to i64, !dbg !6645
  %15 = load i64, ptr %bytes.addr, align 8, !dbg !6646
  %16 = load i32, ptr %i, align 4, !dbg !6647
  %conv7 = sext i32 %16 to i64, !dbg !6647
  %mul = mul i64 %15, %conv7, !dbg !6648
  %add = add i64 %conv6, %mul, !dbg !6649
  %conv8 = trunc i64 %add to i32, !dbg !6645
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !6650
  %18 = load i32, ptr %i, align 4, !dbg !6651
  %conv9 = sext i32 %18 to i64, !dbg !6651
  %19 = load i64, ptr %bytes.addr, align 8, !dbg !6652
  %mul10 = mul i64 %conv9, %19, !dbg !6653
  %add.ptr = getelementptr i8, ptr %17, i64 %mul10, !dbg !6654
  %20 = load i64, ptr %bytes.addr, align 8, !dbg !6655
  %conv11 = trunc i64 %20 to i32, !dbg !6655
  call void %12(ptr noundef %13, i32 noundef %conv8, ptr noundef %add.ptr, i32 noundef %conv11) #18, !dbg !6641
  br label %for.inc, !dbg !6641

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4, !dbg !6656
  %inc = add i32 %21, 1, !dbg !6656
  store i32 %inc, ptr %i, align 4, !dbg !6656
  br label %for.cond, !dbg !6657, !llvm.loop !6658

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %vdev.addr, align 8, !dbg !6660
  %config12 = getelementptr inbounds %struct.virtio_device, ptr %22, i32 0, i32 8, !dbg !6661
  %23 = load ptr, ptr %config12, align 8, !dbg !6661
  %generation13 = getelementptr inbounds %struct.virtio_config_ops, ptr %23, i32 0, i32 2, !dbg !6662
  %24 = load ptr, ptr %generation13, align 8, !dbg !6662
  %tobool14 = icmp ne ptr %24, null, !dbg !6660
  br i1 %tobool14, label %cond.true15, label %cond.false19, !dbg !6660

cond.true15:                                      ; preds = %for.end
  %25 = load ptr, ptr %vdev.addr, align 8, !dbg !6663
  %config16 = getelementptr inbounds %struct.virtio_device, ptr %25, i32 0, i32 8, !dbg !6664
  %26 = load ptr, ptr %config16, align 8, !dbg !6664
  %generation17 = getelementptr inbounds %struct.virtio_config_ops, ptr %26, i32 0, i32 2, !dbg !6665
  %27 = load ptr, ptr %generation17, align 8, !dbg !6665
  %28 = load ptr, ptr %vdev.addr, align 8, !dbg !6666
  %call18 = call i32 %27(ptr noundef %28) #18, !dbg !6663
  br label %cond.end20, !dbg !6660

cond.false19:                                     ; preds = %for.end
  br label %cond.end20, !dbg !6660

cond.end20:                                       ; preds = %cond.false19, %cond.true15
  %cond21 = phi i32 [ %call18, %cond.true15 ], [ 0, %cond.false19 ], !dbg !6660
  store i32 %cond21, ptr %gen, align 4, !dbg !6667
  br label %do.cond22, !dbg !6668

do.cond22:                                        ; preds = %cond.end20
  %29 = load i32, ptr %gen, align 4, !dbg !6669
  %30 = load i32, ptr %old, align 4, !dbg !6670
  %cmp23 = icmp ne i32 %29, %30, !dbg !6671
  br i1 %cmp23, label %do.body3, label %do.end25, !dbg !6668, !llvm.loop !6672

do.end25:                                         ; preds = %do.cond22
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !6674
  call void @llvm.lifetime.end.p0(i64 4, ptr %gen) #19, !dbg !6674
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #19, !dbg !6674
  ret void, !dbg !6674
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6675 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6683, metadata !DIExpression()), !dbg !6685
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6684, metadata !DIExpression()), !dbg !6686
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6687
  %1 = load i64, ptr %size.addr, align 8, !dbg !6688
  %conv = trunc i64 %1 to i32, !dbg !6688
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6689
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6690
  %3 = load i64, ptr %size.addr, align 8, !dbg !6690
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #18, !dbg !6690
  ret void, !dbg !6691
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6692 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6695, metadata !DIExpression()), !dbg !6697
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6696, metadata !DIExpression()), !dbg !6698
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6699
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6700
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #19, !dbg !6701, !srcloc !6702
  ret void, !dbg !6703
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6704 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6709, metadata !DIExpression()), !dbg !6711
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6710, metadata !DIExpression()), !dbg !6712
  ret i1 true, !dbg !6713
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6714 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6719, metadata !DIExpression()), !dbg !6722
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6720, metadata !DIExpression()), !dbg !6723
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6721, metadata !DIExpression()), !dbg !6724
  ret void, !dbg !6725
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @input_get_drvdata(ptr noundef %dev) #5 align 16 !dbg !6726 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6730, metadata !DIExpression()), !dbg !6731
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6732
  %dev1 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, !dbg !6733
  %call = call ptr @dev_get_drvdata(ptr noundef %dev1) #18, !dbg !6734
  ret ptr %call, !dbg !6735
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtinput_send_status(ptr noundef %vi, i16 noundef zeroext %type, i16 noundef zeroext %code, i32 noundef %value) #2 align 16 !dbg !6736 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %type.addr = alloca i16, align 2
  %code.addr = alloca i16, align 2
  %value.addr = alloca i32, align 4
  %stsbuf = alloca ptr, align 8
  %sg = alloca [1 x %struct.scatterlist], align 16
  %flags = alloca i64, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vi.addr, metadata !6740, metadata !DIExpression()), !dbg !6753
  store i16 %type, ptr %type.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6741, metadata !DIExpression()), !dbg !6754
  store i16 %code, ptr %code.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !6742, metadata !DIExpression()), !dbg !6755
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6743, metadata !DIExpression()), !dbg !6756
  call void @llvm.lifetime.start.p0(i64 8, ptr %stsbuf) #19, !dbg !6757
  call void @llvm.dbg.declare(metadata ptr %stsbuf, metadata !6744, metadata !DIExpression()), !dbg !6758
  call void @llvm.lifetime.start.p0(i64 32, ptr %sg) #19, !dbg !6759
  call void @llvm.dbg.declare(metadata ptr %sg, metadata !6745, metadata !DIExpression()), !dbg !6760
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #19, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6746, metadata !DIExpression()), !dbg !6762
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #19, !dbg !6763
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !6747, metadata !DIExpression()), !dbg !6764
  %0 = load ptr, ptr %vi.addr, align 8, !dbg !6765
  %idev = getelementptr inbounds %struct.virtio_input, ptr %0, i32 0, i32 1, !dbg !6767
  %1 = load ptr, ptr %idev, align 8, !dbg !6767
  %mt = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 25, !dbg !6768
  %2 = load ptr, ptr %mt, align 8, !dbg !6768
  %tobool = icmp ne ptr %2, null, !dbg !6765
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6769

land.lhs.true:                                    ; preds = %entry
  %3 = load i16, ptr %type.addr, align 2, !dbg !6770
  %conv = zext i16 %3 to i32, !dbg !6770
  %cmp = icmp eq i32 %conv, 4, !dbg !6771
  br i1 %cmp, label %land.lhs.true2, label %if.end, !dbg !6772

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load i16, ptr %code.addr, align 2, !dbg !6773
  %conv3 = zext i16 %4 to i32, !dbg !6773
  %cmp4 = icmp eq i32 %conv3, 5, !dbg !6774
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6775

if.then:                                          ; preds = %land.lhs.true2
  store i32 0, ptr %retval, align 4, !dbg !6776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6776

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %call = call noalias ptr @kzalloc(i64 noundef 8, i32 noundef 2080) #20, !dbg !6777
  store ptr %call, ptr %stsbuf, align 8, !dbg !6778
  %5 = load ptr, ptr %stsbuf, align 8, !dbg !6779
  %tobool6 = icmp ne ptr %5, null, !dbg !6779
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !6781

if.then7:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !6782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6782

if.end8:                                          ; preds = %if.end
  %6 = load i16, ptr %type.addr, align 2, !dbg !6783
  %7 = load ptr, ptr %stsbuf, align 8, !dbg !6784
  %type9 = getelementptr inbounds %struct.virtio_input_event, ptr %7, i32 0, i32 0, !dbg !6785
  store i16 %6, ptr %type9, align 4, !dbg !6786
  %8 = load i16, ptr %code.addr, align 2, !dbg !6787
  %9 = load ptr, ptr %stsbuf, align 8, !dbg !6788
  %code10 = getelementptr inbounds %struct.virtio_input_event, ptr %9, i32 0, i32 1, !dbg !6789
  store i16 %8, ptr %code10, align 2, !dbg !6790
  %10 = load i32, ptr %value.addr, align 4, !dbg !6791
  %11 = load ptr, ptr %stsbuf, align 8, !dbg !6792
  %value11 = getelementptr inbounds %struct.virtio_input_event, ptr %11, i32 0, i32 2, !dbg !6793
  store i32 %10, ptr %value11, align 4, !dbg !6794
  %arraydecay = getelementptr inbounds [1 x %struct.scatterlist], ptr %sg, i64 0, i64 0, !dbg !6795
  %12 = load ptr, ptr %stsbuf, align 8, !dbg !6796
  call void @sg_init_one(ptr noundef %arraydecay, ptr noundef %12, i32 noundef 8) #18, !dbg !6797
  br label %do.body, !dbg !6798

do.body:                                          ; preds = %if.end8
  br label %do.body12, !dbg !6799

do.body12:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #19, !dbg !6800
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6748, metadata !DIExpression()), !dbg !6800
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #19, !dbg !6800
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6752, metadata !DIExpression()), !dbg !6800
  %cmp13 = icmp eq ptr %__dummy, %__dummy2, !dbg !6800
  %conv14 = zext i1 %cmp13 to i32, !dbg !6800
  store i32 1, ptr %tmp, align 4, !dbg !6800
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #19, !dbg !6801
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #19, !dbg !6801
  %13 = load i32, ptr %tmp, align 4, !dbg !6800
  %14 = load ptr, ptr %vi.addr, align 8, !dbg !6801
  %lock = getelementptr inbounds %struct.virtio_input, ptr %14, i32 0, i32 8, !dbg !6801
  %call15 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !6801
  %call16 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call15) #18, !dbg !6801
  store i64 %call16, ptr %flags, align 8, !dbg !6801
  br label %do.cond, !dbg !6801

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !6801

do.end:                                           ; preds = %do.cond
  br label %do.cond17, !dbg !6799

do.cond17:                                        ; preds = %do.end
  br label %do.end18, !dbg !6799

do.end18:                                         ; preds = %do.cond17
  %15 = load ptr, ptr %vi.addr, align 8, !dbg !6802
  %ready = getelementptr inbounds %struct.virtio_input, ptr %15, i32 0, i32 9, !dbg !6804
  %16 = load i8, ptr %ready, align 4, !dbg !6804, !range !6349, !noundef !557
  %tobool19 = trunc i8 %16 to i1, !dbg !6804
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !6805

if.then20:                                        ; preds = %do.end18
  %17 = load ptr, ptr %vi.addr, align 8, !dbg !6806
  %sts = getelementptr inbounds %struct.virtio_input, ptr %17, i32 0, i32 6, !dbg !6808
  %18 = load ptr, ptr %sts, align 8, !dbg !6808
  %arraydecay21 = getelementptr inbounds [1 x %struct.scatterlist], ptr %sg, i64 0, i64 0, !dbg !6809
  %19 = load ptr, ptr %stsbuf, align 8, !dbg !6810
  %call22 = call i32 @virtqueue_add_outbuf(ptr noundef %18, ptr noundef %arraydecay21, i32 noundef 1, ptr noundef %19, i32 noundef 2080) #18, !dbg !6811
  store i32 %call22, ptr %rc, align 4, !dbg !6812
  %20 = load ptr, ptr %vi.addr, align 8, !dbg !6813
  %sts23 = getelementptr inbounds %struct.virtio_input, ptr %20, i32 0, i32 6, !dbg !6814
  %21 = load ptr, ptr %sts23, align 8, !dbg !6814
  %call24 = call zeroext i1 @virtqueue_kick(ptr noundef %21) #18, !dbg !6815
  br label %if.end25, !dbg !6816

if.else:                                          ; preds = %do.end18
  store i32 -19, ptr %rc, align 4, !dbg !6817
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then20
  %22 = load ptr, ptr %vi.addr, align 8, !dbg !6819
  %lock26 = getelementptr inbounds %struct.virtio_input, ptr %22, i32 0, i32 8, !dbg !6820
  %23 = load i64, ptr %flags, align 8, !dbg !6821
  call void @spin_unlock_irqrestore(ptr noundef %lock26, i64 noundef %23) #18, !dbg !6822
  %24 = load i32, ptr %rc, align 4, !dbg !6823
  %cmp27 = icmp ne i32 %24, 0, !dbg !6825
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !6826

if.then29:                                        ; preds = %if.end25
  %25 = load ptr, ptr %stsbuf, align 8, !dbg !6827
  call void @kfree(ptr noundef %25) #18, !dbg !6828
  br label %if.end30, !dbg !6828

if.end30:                                         ; preds = %if.then29, %if.end25
  %26 = load i32, ptr %rc, align 4, !dbg !6829
  store i32 %26, ptr %retval, align 4, !dbg !6830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6830

cleanup:                                          ; preds = %if.end30, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #19, !dbg !6831
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #19, !dbg !6831
  call void @llvm.lifetime.end.p0(i64 32, ptr %sg) #19, !dbg !6831
  call void @llvm.lifetime.end.p0(i64 8, ptr %stsbuf) #19, !dbg !6831
  %27 = load i32, ptr %retval, align 4, !dbg !6831
  ret i32 %27, !dbg !6831
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #5 align 16 !dbg !6832 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6836, metadata !DIExpression()), !dbg !6837
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6838
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !6839
  %1 = load ptr, ptr %driver_data, align 8, !dbg !6839
  ret ptr %1, !dbg !6840
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6841 dso_local i32 @virtqueue_add_outbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6842 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6844, metadata !DIExpression()), !dbg !6846
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6845, metadata !DIExpression()), !dbg !6847
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6848
  %1 = load i64, ptr %size.addr, align 8, !dbg !6849
  %conv = trunc i64 %1 to i32, !dbg !6849
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !6850
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6851
  %3 = load i64, ptr %size.addr, align 8, !dbg !6851
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !6851
  ret void, !dbg !6852
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6853 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6855, metadata !DIExpression()), !dbg !6857
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6856, metadata !DIExpression()), !dbg !6858
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6859
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6860
  br i1 %1, label %cond.true, label %cond.false, !dbg !6860

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6861
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6862
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !6863
  %conv = zext i1 %call to i32, !dbg !6863
  br label %cond.end, !dbg !6860

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6864
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6865
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !6866
  %conv2 = zext i1 %call1 to i32, !dbg !6866
  br label %cond.end, !dbg !6860

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6860
  %tobool = icmp ne i32 %cond, 0, !dbg !6860
  ret i1 %tobool, !dbg !6867
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6868 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6870, metadata !DIExpression()), !dbg !6872
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6871, metadata !DIExpression()), !dbg !6873
  ret i1 true, !dbg !6874
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6875 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6879, metadata !DIExpression()), !dbg !6881
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6880, metadata !DIExpression()), !dbg !6882
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6883
  %and = and i64 %0, 63, !dbg !6884
  %shl = shl i64 1, %and, !dbg !6885
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6886
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6887
  %shr = ashr i64 %2, 6, !dbg !6888
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6886
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6886
  %and1 = and i64 %shl, %3, !dbg !6889
  %cmp = icmp ne i64 %and1, 0, !dbg !6890
  ret i1 %cmp, !dbg !6891
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6892 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6894, metadata !DIExpression()), !dbg !6897
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6895, metadata !DIExpression()), !dbg !6898
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #19, !dbg !6899
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6896, metadata !DIExpression()), !dbg !6900
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6901
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6902
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #19, !dbg !6903, !srcloc !6904
  %3 = icmp ult i8 %2, 2, !dbg !6903
  call void @llvm.assume(i1 %3), !dbg !6903
  store i8 %2, ptr %oldbit, align 1, !dbg !6903
  %4 = load i8, ptr %oldbit, align 1, !dbg !6905, !range !6349, !noundef !557
  %tobool = trunc i8 %4 to i1, !dbg !6905
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #19, !dbg !6906
  ret i1 %tobool, !dbg !6907
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6908 dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_abs_set_res(ptr noundef %dev, i32 noundef %axis, i32 noundef %val) #5 align 16 !dbg !6911 {
entry:
  %dev.addr = alloca ptr, align 8
  %axis.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6915, metadata !DIExpression()), !dbg !6918
  store i32 %axis, ptr %axis.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %axis.addr, metadata !6916, metadata !DIExpression()), !dbg !6918
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6917, metadata !DIExpression()), !dbg !6918
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6918
  call void @input_alloc_absinfo(ptr noundef %0) #18, !dbg !6918
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6919
  %absinfo = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 26, !dbg !6919
  %2 = load ptr, ptr %absinfo, align 8, !dbg !6919
  %tobool = icmp ne ptr %2, null, !dbg !6919
  br i1 %tobool, label %if.then, label %if.end, !dbg !6918

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %val.addr, align 4, !dbg !6919
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6919
  %absinfo1 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 26, !dbg !6919
  %5 = load ptr, ptr %absinfo1, align 8, !dbg !6919
  %6 = load i32, ptr %axis.addr, align 4, !dbg !6919
  %idxprom = zext i32 %6 to i64, !dbg !6919
  %arrayidx = getelementptr %struct.input_absinfo, ptr %5, i64 %idxprom, !dbg !6919
  %resolution = getelementptr inbounds %struct.input_absinfo, ptr %arrayidx, i32 0, i32 5, !dbg !6919
  store i32 %3, ptr %resolution, align 4, !dbg !6919
  br label %if.end, !dbg !6919

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6918
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6921 dso_local void @input_alloc_absinfo(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6922 dso_local i32 @virtqueue_get_vring_size(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6927 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6930 dso_local void @input_unregister_device(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6931 dso_local void @virtio_reset_device(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6932 dso_local ptr @virtqueue_detach_unused_buf(ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: fbit >= 64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone }
attributes #19 = { nounwind }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone noreturn }
attributes #22 = { noredzone allocsize(2) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116}
!llvm.ident = !{!5117}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_virtio_input__296_409_virtio_input_driver_init6297", scope: !2, file: !3, line: 409, type: !167, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/virtio/.virtio_input.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/virtio/virtio_input\22 -D KBUILD_BASENAME=\22virtio_input\22 -D KBUILD_MODNAME=\22virtio_input\22 -D __KBUILD_MODNAME=kmod_virtio_input -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/virtio/virtio_input.ll drivers/virtio/virtio_input.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !166, globals: !4120, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/virtio/virtio_input.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5f50dc7461fa0d220db70366841ec7")
!4 = !{!5, !12, !20, !27, !32, !38, !43, !49, !56, !64, !80, !87, !94, !102, !110, !119, !124, !129, !135, !141, !151, !156}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !13, line: 9, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!16 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!17 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!18 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!19 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !21, line: 312, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!24 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!25 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!26 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !28, line: 2052, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!31 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !33, line: 54, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "USRQUOTA", value: 0)
!36 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!37 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !44, line: 16, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "TT_NONE", value: 0)
!47 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!48 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !50, line: 15, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!53 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!54 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !57, line: 68, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!61 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!62 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !65, line: 1325, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!67 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!68 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!69 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!70 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!71 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!72 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!73 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!74 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!75 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!76 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!77 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!78 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!79 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !88, line: 487, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!89 = !{!90, !91, !92, !93}
!90 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!91 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!92 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!93 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !95, line: 620, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!98 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!99 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!100 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!101 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !95, line: 597, baseType: !103, size: 32, elements: !104)
!103 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!104 = !{!105, !106, !107, !108, !109}
!105 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!106 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!107 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!108 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!109 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !88, line: 547, baseType: !7, size: 32, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118}
!112 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!113 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!114 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!115 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!116 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!117 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!118 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !88, line: 564, baseType: !7, size: 32, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!122 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!123 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !88, line: 577, baseType: !7, size: 32, elements: !125)
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!127 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!128 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !88, line: 503, baseType: !7, size: 32, elements: !130)
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!132 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!133 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!134 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !136, line: 45, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!139 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!140 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "virtio_input_config_select", file: !142, line: 32, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/uapi/linux/virtio_input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "518e01108e50e39cc34152569d56df96")
!143 = !{!144, !145, !146, !147, !148, !149, !150}
!144 = !DIEnumerator(name: "VIRTIO_INPUT_CFG_UNSET", value: 0)
!145 = !DIEnumerator(name: "VIRTIO_INPUT_CFG_ID_NAME", value: 1)
!146 = !DIEnumerator(name: "VIRTIO_INPUT_CFG_ID_SERIAL", value: 2)
!147 = !DIEnumerator(name: "VIRTIO_INPUT_CFG_ID_DEVIDS", value: 3)
!148 = !DIEnumerator(name: "VIRTIO_INPUT_CFG_PROP_BITS", value: 16)
!149 = !DIEnumerator(name: "VIRTIO_INPUT_CFG_EV_BITS", value: 17)
!150 = !DIEnumerator(name: "VIRTIO_INPUT_CFG_ABS_INFO", value: 18)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !152, line: 10, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!153 = !{!154, !155}
!154 = !DIEnumerator(name: "false", value: 0)
!155 = !DIEnumerator(name: "true", value: 1)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !157, line: 364, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!158 = !{!159, !160, !161, !162, !163, !164, !165}
!159 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!160 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!161 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!162 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!163 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!164 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!165 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!166 = !{!167, !168, !718, !241, !242, !4114, !4115, !4116, !323, !423, !4117, !231, !4099, !4118, !422, !103}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !21, line: 402, size: 9216, align: 512, elements: !170)
!170 = !{!171, !172, !179, !184, !3790, !3816, !3817, !3818, !3819, !3823, !3826, !3827, !3828, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3895, !3899, !3917, !3934, !3935, !3936, !3937, !3946, !3969, !3970, !3973, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3987, !3988, !4074, !4082, !4083, !4084, !4086, !4090, !4091, !4095, !4096, !4097, !4098, !4100, !4101, !4102, !4109, !4110, !4111, !4113}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !169, file: !21, line: 403, baseType: !20, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !169, file: !21, line: 406, baseType: !173, size: 128, offset: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !174, line: 190, size: 128, elements: !175)
!174 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!175 = !{!176, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !174, line: 191, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !173, file: !174, line: 191, baseType: !177, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !21, line: 409, baseType: !180, size: 448, offset: 192)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 448, elements: !182)
!181 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!182 = !{!183}
!183 = !DISubrange(count: 56)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !169, file: !21, line: 417, baseType: !185, size: 768, offset: 640)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !21, line: 45, size: 768, elements: !186)
!186 = !{!187, !3784, !3785, !3786, !3789}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !185, file: !21, line: 46, baseType: !188, size: 512)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !189, line: 64, size: 512, elements: !190)
!189 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!190 = !{!191, !194, !195, !197, !286, !3671, !3774, !3779, !3780, !3781, !3782, !3783}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !189, line: 65, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !188, file: !189, line: 66, baseType: !173, size: 128, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !189, line: 67, baseType: !196, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !188, file: !189, line: 68, baseType: !198, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !189, line: 168, size: 768, elements: !200)
!200 = !{!201, !202, !245, !246}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !199, file: !189, line: 169, baseType: !173, size: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !199, file: !189, line: 170, baseType: !203, size: 32, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !204, line: 29, baseType: !205)
!204 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !204, line: 17, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !204, line: 18, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !204, line: 18, size: 32, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !208, file: !204, line: 19, baseType: !211, size: 32)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !212, line: 14, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !211, file: !212, line: 15, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !216, line: 44, baseType: !217)
!216 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !216, line: 14, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !216, line: 15, baseType: !220, size: 32)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !216, line: 15, size: 32, elements: !221)
!221 = !{!222, !227, !237}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !220, file: !216, line: 16, baseType: !223, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !174, line: 174, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 172, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !224, file: !174, line: 173, baseType: !103, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !220, file: !216, line: 24, baseType: !228, size: 16)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !220, file: !216, line: 24, size: 16, elements: !229)
!229 = !{!230, !236}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !228, file: !216, line: 25, baseType: !231, size: 8)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !232, line: 17, baseType: !233)
!232 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !234, line: 21, baseType: !235)
!234 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!235 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !228, file: !216, line: 26, baseType: !231, size: 8, offset: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !220, file: !216, line: 28, baseType: !238, size: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !220, file: !216, line: 28, size: 32, elements: !239)
!239 = !{!240, !244}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !238, file: !216, line: 29, baseType: !241, size: 16)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !232, line: 19, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !234, line: 24, baseType: !243)
!243 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !238, file: !216, line: 30, baseType: !241, size: 16, offset: 16)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !199, file: !189, line: 171, baseType: !188, size: 512, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !199, file: !189, line: 172, baseType: !247, size: 64, offset: 704)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !189, line: 133, size: 192, elements: !250)
!250 = !{!251, !258, !263}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !249, file: !189, line: 134, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!103, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !189, line: 135, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!192, !256}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !249, file: !189, line: 136, baseType: !264, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!103, !256, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !189, line: 125, size: 20736, elements: !270)
!270 = !{!271, !276, !280, !281, !285}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !269, file: !189, line: 126, baseType: !272, size: 192)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 192, elements: !274)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!274 = !{!275}
!275 = !DISubrange(count: 3)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !269, file: !189, line: 127, baseType: !277, size: 4096, offset: 192)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 4096, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !269, file: !189, line: 128, baseType: !103, size: 32, offset: 4288)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !269, file: !189, line: 129, baseType: !282, size: 16384, offset: 4320)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 16384, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 2048)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !269, file: !189, line: 130, baseType: !103, size: 32, offset: 20704)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !188, file: !189, line: 69, baseType: !287, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !189, line: 116, size: 384, elements: !290)
!290 = !{!291, !295, !324, !3633, !3661, !3665}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !289, file: !189, line: 117, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !196}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !289, file: !189, line: 118, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !299, line: 254, size: 128, elements: !300)
!299 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!300 = !{!301, !316}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !298, file: !299, line: 255, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!305, !196, !310, !273}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !174, line: 66, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !307, line: 73, baseType: !308)
!307 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !307, line: 15, baseType: !309)
!309 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !299, line: 30, size: 128, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !299, line: 31, baseType: !192, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !311, file: !299, line: 32, baseType: !315, size: 16, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !174, line: 24, baseType: !243)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !298, file: !299, line: 256, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!305, !196, !310, !192, !320}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 61, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !307, line: 72, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !307, line: 16, baseType: !323)
!323 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !289, file: !189, line: 119, baseType: !325, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !299, line: 84, size: 320, elements: !329)
!329 = !{!330, !331, !335, !3629, !3631}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !299, line: 85, baseType: !192, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !328, file: !299, line: 86, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!315, !196, !310, !103}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !328, file: !299, line: 88, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!315, !196, !339, !103}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !299, line: 175, size: 512, elements: !341)
!341 = !{!342, !343, !344, !345, !3620, !3624, !3625}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !340, file: !299, line: 176, baseType: !311, size: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !340, file: !299, line: 177, baseType: !320, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !340, file: !299, line: 178, baseType: !167, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !340, file: !299, line: 179, baseType: !346, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !28, line: 472, size: 1536, align: 64, elements: !351)
!351 = !{!352, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3614, !3615, !3616, !3617, !3618, !3619}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !350, file: !28, line: 473, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !28, line: 641, size: 4800, elements: !355)
!355 = !{!356, !357, !358, !366, !367, !374, !375, !378, !379, !3393, !3394, !3395, !3396, !3397, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3437, !3440, !3441, !3442, !3451, !3452, !3453, !3454}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !354, file: !28, line: 642, baseType: !315, size: 16)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !354, file: !28, line: 643, baseType: !243, size: 16, offset: 16)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !354, file: !28, line: 644, baseType: !359, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !360, line: 23, baseType: !361)
!360 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 21, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !361, file: !360, line: 22, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !174, line: 37, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !307, line: 49, baseType: !7)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !354, file: !28, line: 645, baseType: !173, size: 128, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !354, file: !28, line: 646, baseType: !368, size: 32, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !360, line: 28, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 26, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !369, file: !360, line: 27, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !174, line: 38, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !307, line: 50, baseType: !7)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !354, file: !28, line: 647, baseType: !7, size: 32, offset: 224)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !354, file: !28, line: 650, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !28, line: 607, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !354, file: !28, line: 651, baseType: !376, size: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !354, file: !28, line: 654, baseType: !380, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !28, line: 1966, size: 2048, align: 512, elements: !383)
!383 = !{!384, !3218, !3231, !3235, !3239, !3243, !3247, !3251, !3255, !3259, !3263, !3264, !3268, !3272, !3309, !3338, !3342, !3348, !3352, !3356, !3360, !3364, !3368, !3374, !3378}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !382, file: !28, line: 1967, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!388, !353, !388, !7}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !390, line: 82, size: 1536, elements: !391)
!390 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!391 = !{!392, !393, !403, !411, !412, !432, !433, !437, !450, !3201, !3202, !3203, !3204, !3210, !3211, !3212}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !389, file: !390, line: 84, baseType: !7, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !389, file: !390, line: 85, baseType: !394, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !395, line: 275, baseType: !396)
!395 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !395, line: 275, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !396, file: !395, line: 275, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !395, line: 69, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !395, line: 64, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !400, file: !395, line: 65, baseType: !7, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !389, file: !390, line: 86, baseType: !404, size: 128, offset: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !405, line: 38, size: 128, elements: !406)
!405 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!406 = !{!407, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !405, line: 39, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !404, file: !405, line: 39, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !389, file: !390, line: 87, baseType: !388, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !389, file: !390, line: 88, baseType: !413, size: 128, offset: 256)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !390, line: 49, size: 128, elements: !414)
!414 = !{!415, !429}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !390, line: 50, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !390, line: 50, size: 64, elements: !417)
!417 = !{!418, !425}
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !390, line: 51, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !416, file: !390, line: 51, size: 64, elements: !420)
!420 = !{!421, !424}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !419, file: !390, line: 52, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !232, line: 21, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !234, line: 27, baseType: !7)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !419, file: !390, line: 52, baseType: !422, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !416, file: !390, line: 54, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !232, line: 23, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !234, line: 31, baseType: !428)
!428 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !413, file: !390, line: 56, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !389, file: !390, line: 89, baseType: !353, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !389, file: !390, line: 91, baseType: !434, size: 256, offset: 448)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !389, file: !390, line: 94, baseType: !438, size: 64, offset: 704)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !439, line: 25, size: 64, elements: !440)
!439 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !439, line: 26, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !439, line: 26, size: 64, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !442, file: !439, line: 28, baseType: !427, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !439, line: 30, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !442, file: !439, line: 30, size: 64, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !446, file: !439, line: 31, baseType: !203, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !446, file: !439, line: 32, baseType: !103, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !389, file: !390, line: 95, baseType: !451, size: 64, offset: 768)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !390, line: 128, size: 1024, align: 512, elements: !454)
!454 = !{!455, !459, !460, !467, !473, !477, !481, !485, !486, !490, !494, !3191, !3195}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !453, file: !390, line: 129, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!103, !388, !7}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !453, file: !390, line: 130, baseType: !456, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !453, file: !390, line: 131, baseType: !461, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!103, !464, !466}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !453, file: !390, line: 132, baseType: !468, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!103, !464, !7, !192, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !453, file: !390, line: 134, baseType: !474, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!103, !464}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !453, file: !390, line: 135, baseType: !478, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!103, !388}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !453, file: !390, line: 136, baseType: !482, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !388}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !453, file: !390, line: 137, baseType: !482, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !453, file: !390, line: 138, baseType: !487, size: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !388, !353}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !453, file: !390, line: 139, baseType: !491, size: 64, offset: 576)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!273, !388, !273, !103}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !453, file: !390, line: 140, baseType: !495, size: 64, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!498, !3190}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !500, line: 70, size: 256, elements: !501)
!500 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!501 = !{!502, !503, !3186, !3187}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !499, file: !500, line: 71, baseType: !388, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !499, file: !500, line: 72, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !28, line: 1190, size: 10752, elements: !506)
!506 = !{!507, !508, !511, !512, !513, !517, !566, !727, !767, !857, !861, !862, !863, !864, !865, !874, !875, !876, !877, !882, !886, !887, !890, !893, !896, !899, !900, !901, !942, !3117, !3118, !3119, !3120, !3121, !3122, !3125, !3127, !3134, !3135, !3136, !3137, !3138, !3153, !3154, !3155, !3156, !3157, !3160, !3161, !3162, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !505, file: !28, line: 1191, baseType: !173, size: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !505, file: !28, line: 1192, baseType: !509, size: 32, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !174, line: 21, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !174, line: 18, baseType: !422)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !505, file: !28, line: 1193, baseType: !235, size: 8, offset: 160)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !505, file: !28, line: 1194, baseType: !323, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !505, file: !28, line: 1195, baseType: !514, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !174, line: 52, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !307, line: 88, baseType: !516)
!516 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !505, file: !28, line: 1196, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !28, line: 2366, size: 576, elements: !520)
!520 = !{!521, !522, !523, !530, !534, !538, !542, !543, !544, !554, !558, !559, !560, !562, !563, !564, !565}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !519, file: !28, line: 2367, baseType: !192, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !519, file: !28, line: 2368, baseType: !103, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !519, file: !28, line: 2376, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!103, !527}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !529, line: 32, flags: DIFlagFwdDecl)
!529 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!530 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !519, file: !28, line: 2377, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !28, line: 75, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !519, file: !28, line: 2378, baseType: !535, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!388, !518, !103, !192, !167}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !519, file: !28, line: 2380, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !504}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !519, file: !28, line: 2381, baseType: !168, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !519, file: !28, line: 2382, baseType: !518, size: 64, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !519, file: !28, line: 2383, baseType: !545, size: 64, offset: 512)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !174, line: 194, size: 64, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !545, file: !174, line: 195, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !174, line: 198, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !174, line: 199, baseType: !548, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !549, file: !174, line: 199, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !519, file: !28, line: 2385, baseType: !555, offset: 576)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !556, line: 206, elements: !557)
!556 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!557 = !{}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !519, file: !28, line: 2386, baseType: !555, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !519, file: !28, line: 2387, baseType: !555, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !519, file: !28, line: 2388, baseType: !561, offset: 576)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, elements: !274)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !519, file: !28, line: 2390, baseType: !555, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !519, file: !28, line: 2391, baseType: !555, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !519, file: !28, line: 2392, baseType: !555, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !519, file: !28, line: 2393, baseType: !555, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !505, file: !28, line: 1197, baseType: !567, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !28, line: 2057, size: 1664, elements: !570)
!570 = !{!571, !575, !579, !580, !584, !590, !594, !595, !596, !600, !604, !608, !609, !610, !616, !621, !622, !629, !630, !631, !632, !636, !640, !709, !725, !726}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !569, file: !28, line: 2058, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!353, !504}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !569, file: !28, line: 2059, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !353}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !569, file: !28, line: 2060, baseType: !576, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !569, file: !28, line: 2062, baseType: !581, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !353, !103}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !569, file: !28, line: 2063, baseType: !585, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!103, !353, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !28, line: 309, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !569, file: !28, line: 2064, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!103, !353}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !569, file: !28, line: 2065, baseType: !576, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !569, file: !28, line: 2066, baseType: !539, size: 64, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !569, file: !28, line: 2067, baseType: !597, size: 64, offset: 512)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!103, !504, !103}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !569, file: !28, line: 2068, baseType: !601, size: 64, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!103, !504, !27}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !569, file: !28, line: 2069, baseType: !605, size: 64, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!103, !504}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !569, file: !28, line: 2070, baseType: !601, size: 64, offset: 704)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !569, file: !28, line: 2071, baseType: !605, size: 64, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !569, file: !28, line: 2072, baseType: !611, size: 64, offset: 832)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!103, !388, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !28, line: 62, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !569, file: !28, line: 2073, baseType: !617, size: 64, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!103, !504, !620, !273}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !569, file: !28, line: 2074, baseType: !539, size: 64, offset: 960)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !569, file: !28, line: 2076, baseType: !623, size: 64, offset: 1024)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!103, !626, !388}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !628, line: 66, flags: DIFlagFwdDecl)
!628 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!629 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !569, file: !28, line: 2077, baseType: !623, size: 64, offset: 1088)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !569, file: !28, line: 2078, baseType: !623, size: 64, offset: 1152)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !569, file: !28, line: 2079, baseType: !623, size: 64, offset: 1216)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !569, file: !28, line: 2081, baseType: !633, size: 64, offset: 1280)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!305, !504, !103, !273, !320, !514}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !569, file: !28, line: 2082, baseType: !637, size: 64, offset: 1344)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!305, !504, !103, !192, !320, !514}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !569, file: !28, line: 2083, baseType: !641, size: 64, offset: 1408)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!644, !353}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !647)
!647 = !{!648, !649, !650, !651, !652, !673, !674, !675, !676, !692, !693, !694}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !646, file: !33, line: 297, baseType: !549, size: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !646, file: !33, line: 298, baseType: !173, size: 128, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !646, file: !33, line: 299, baseType: !173, size: 128, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !646, file: !33, line: 300, baseType: !173, size: 128, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !646, file: !33, line: 301, baseType: !653, size: 256, offset: 512)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !654, line: 66, size: 256, elements: !655)
!654 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!655 = !{!656, !665, !667, !672}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !653, file: !654, line: 67, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !658, line: 13, baseType: !659)
!658 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !174, line: 181, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 179, size: 64, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !660, file: !174, line: 180, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !232, line: 22, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !234, line: 30, baseType: !516)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !653, file: !654, line: 68, baseType: !666, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !212, line: 23, baseType: !211)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !653, file: !654, line: 70, baseType: !668, size: 32, offset: 96)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !669, line: 15, size: 32, elements: !670)
!669 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !668, file: !669, line: 20, baseType: !223, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !653, file: !654, line: 72, baseType: !173, size: 128, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !646, file: !33, line: 302, baseType: !203, size: 32, offset: 768)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !646, file: !33, line: 303, baseType: !223, size: 32, offset: 800)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !646, file: !33, line: 304, baseType: !504, size: 64, offset: 832)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !646, file: !33, line: 305, baseType: !677, size: 64, offset: 896)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !678)
!678 = !{!679, !691}
!679 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !33, line: 69, baseType: !680, size: 32)
!680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !33, line: 69, size: 32, elements: !681)
!681 = !{!682, !683, !684}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !680, file: !33, line: 70, baseType: !359, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !680, file: !33, line: 71, baseType: !368, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !680, file: !33, line: 72, baseType: !685, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !686, line: 24, baseType: !687)
!686 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !686, line: 22, size: 32, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !687, file: !686, line: 23, baseType: !690, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !686, line: 20, baseType: !365)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !646, file: !33, line: 306, baseType: !514, size: 64, offset: 960)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !646, file: !33, line: 307, baseType: !323, size: 64, offset: 1024)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !646, file: !33, line: 308, baseType: !695, size: 576, offset: 1088)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !696)
!696 = !{!697, !699, !700, !701, !702, !703, !704, !705, !708}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !695, file: !33, line: 206, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !516)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !695, file: !33, line: 207, baseType: !698, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !695, file: !33, line: 208, baseType: !698, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !695, file: !33, line: 209, baseType: !698, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !695, file: !33, line: 210, baseType: !698, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !695, file: !33, line: 211, baseType: !698, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !695, file: !33, line: 212, baseType: !698, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !695, file: !33, line: 213, baseType: !706, size: 64, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !707, line: 8, baseType: !664)
!707 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !695, file: !33, line: 214, baseType: !706, size: 64, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !569, file: !28, line: 2085, baseType: !710, size: 64, offset: 1472)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!309, !504, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !715, line: 15, size: 256, elements: !716)
!715 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!716 = !{!717, !719, !720, !721, !722}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !714, file: !715, line: 16, baseType: !718, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !174, line: 154, baseType: !7)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !714, file: !715, line: 19, baseType: !103, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !714, file: !715, line: 26, baseType: !323, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !714, file: !715, line: 33, baseType: !323, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !714, file: !715, line: 36, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !65, line: 33, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !569, file: !28, line: 2087, baseType: !710, size: 64, offset: 1536)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !569, file: !28, line: 2089, baseType: !539, size: 64, offset: 1600)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !505, file: !28, line: 1198, baseType: !728, size: 64, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !731)
!731 = !{!732, !736, !740, !744, !745, !746, !747, !748, !753, !758, !762}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !730, file: !33, line: 325, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!103, !645}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !730, file: !33, line: 326, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!645, !504, !103}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !730, file: !33, line: 327, baseType: !741, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !645}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !730, file: !33, line: 328, baseType: !733, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !730, file: !33, line: 329, baseType: !733, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !730, file: !33, line: 330, baseType: !733, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !730, file: !33, line: 331, baseType: !597, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !730, file: !33, line: 334, baseType: !749, size: 64, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!752, !353}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !730, file: !33, line: 335, baseType: !754, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!103, !353, !757}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !730, file: !33, line: 337, baseType: !759, size: 64, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!103, !353, !752}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !730, file: !33, line: 339, baseType: !763, size: 64, offset: 640)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!103, !504, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !505, file: !28, line: 1199, baseType: !768, size: 64, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !771)
!771 = !{!772, !783, !784, !788, !789, !790, !805, !828, !832, !833, !856}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !770, file: !33, line: 431, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!103, !504, !103, !103, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !779, line: 8, size: 128, elements: !780)
!779 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !778, file: !779, line: 9, baseType: !498, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !778, file: !779, line: 10, baseType: !388, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !770, file: !33, line: 432, baseType: !597, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !770, file: !33, line: 433, baseType: !785, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!103, !504, !7}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !770, file: !33, line: 434, baseType: !785, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !770, file: !33, line: 435, baseType: !597, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !770, file: !33, line: 436, baseType: !791, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!103, !504, !103, !794}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !796)
!796 = !{!797, !798, !799, !800, !801, !802, !803, !804}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !795, file: !33, line: 418, baseType: !103, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !795, file: !33, line: 419, baseType: !7, size: 32, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !795, file: !33, line: 420, baseType: !7, size: 32, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !795, file: !33, line: 422, baseType: !7, size: 32, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !795, file: !33, line: 423, baseType: !7, size: 32, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !795, file: !33, line: 424, baseType: !7, size: 32, offset: 160)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !795, file: !33, line: 425, baseType: !7, size: 32, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !795, file: !33, line: 426, baseType: !7, size: 32, offset: 224)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !770, file: !33, line: 437, baseType: !806, size: 64, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!103, !504, !677, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !811)
!811 = !{!812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !810, file: !33, line: 346, baseType: !103, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !810, file: !33, line: 347, baseType: !426, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !810, file: !33, line: 348, baseType: !426, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !810, file: !33, line: 349, baseType: !426, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !810, file: !33, line: 350, baseType: !426, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !810, file: !33, line: 351, baseType: !426, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !810, file: !33, line: 352, baseType: !426, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !810, file: !33, line: 353, baseType: !663, size: 64, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !810, file: !33, line: 355, baseType: !663, size: 64, offset: 512)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !810, file: !33, line: 356, baseType: !103, size: 32, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !810, file: !33, line: 357, baseType: !103, size: 32, offset: 608)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !810, file: !33, line: 358, baseType: !426, size: 64, offset: 640)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !810, file: !33, line: 359, baseType: !426, size: 64, offset: 704)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !810, file: !33, line: 360, baseType: !426, size: 64, offset: 768)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !810, file: !33, line: 361, baseType: !663, size: 64, offset: 832)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !810, file: !33, line: 362, baseType: !103, size: 32, offset: 896)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !770, file: !33, line: 438, baseType: !829, size: 64, offset: 448)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!103, !504, !766, !809}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !770, file: !33, line: 440, baseType: !806, size: 64, offset: 512)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !770, file: !33, line: 441, baseType: !834, size: 64, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!103, !504, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !838, file: !33, line: 412, baseType: !7, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !838, file: !33, line: 413, baseType: !842, size: 1344, offset: 64)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !843, size: 1344, elements: !274)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !844)
!844 = !{!845, !846, !847, !848, !849, !850, !851, !852, !853, !855}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !843, file: !33, line: 398, baseType: !7, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !843, file: !33, line: 399, baseType: !7, size: 32, offset: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !843, file: !33, line: 401, baseType: !7, size: 32, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !843, file: !33, line: 402, baseType: !7, size: 32, offset: 96)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !843, file: !33, line: 403, baseType: !7, size: 32, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !843, file: !33, line: 404, baseType: !7, size: 32, offset: 160)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !843, file: !33, line: 405, baseType: !7, size: 32, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !843, file: !33, line: 406, baseType: !428, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !843, file: !33, line: 407, baseType: !854, size: 64, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !174, line: 132, baseType: !426)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !843, file: !33, line: 408, baseType: !854, size: 64, offset: 384)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !770, file: !33, line: 442, baseType: !785, size: 64, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !505, file: !28, line: 1200, baseType: !858, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !28, line: 54, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !505, file: !28, line: 1201, baseType: !323, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !505, file: !28, line: 1202, baseType: !323, size: 64, offset: 704)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !505, file: !28, line: 1203, baseType: !323, size: 64, offset: 768)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !505, file: !28, line: 1204, baseType: !388, size: 64, offset: 832)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !505, file: !28, line: 1205, baseType: !866, size: 320, offset: 896)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !867, line: 48, size: 320, elements: !868)
!867 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!868 = !{!869, !870, !871, !872, !873}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !866, file: !867, line: 49, baseType: !657, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !866, file: !867, line: 55, baseType: !657, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !866, file: !867, line: 57, baseType: !668, size: 32, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !866, file: !867, line: 59, baseType: !666, size: 32, offset: 160)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !866, file: !867, line: 60, baseType: !173, size: 128, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !505, file: !28, line: 1206, baseType: !103, size: 32, offset: 1216)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !505, file: !28, line: 1207, baseType: !223, size: 32, offset: 1248)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !505, file: !28, line: 1209, baseType: !167, size: 64, offset: 1280)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !505, file: !28, line: 1211, baseType: !878, size: 64, offset: 1344)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !28, line: 1211, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !505, file: !28, line: 1223, baseType: !883, size: 64, offset: 1408)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !405, line: 34, size: 64, elements: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !883, file: !405, line: 35, baseType: !408, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !505, file: !28, line: 1224, baseType: !173, size: 128, offset: 1472)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !505, file: !28, line: 1225, baseType: !888, size: 64, offset: 1600)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !28, line: 1225, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !505, file: !28, line: 1226, baseType: !891, size: 64, offset: 1664)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !28, line: 1226, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !505, file: !28, line: 1227, baseType: !894, size: 64, offset: 1728)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !28, line: 50, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !505, file: !28, line: 1228, baseType: !897, size: 64, offset: 1792)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !28, line: 1228, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !505, file: !28, line: 1229, baseType: !549, size: 128, offset: 1856)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !505, file: !28, line: 1230, baseType: !7, size: 32, offset: 1984)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !505, file: !28, line: 1231, baseType: !902, size: 2496, offset: 2048)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !903)
!903 = !{!904, !905, !906, !908, !940}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !902, file: !33, line: 522, baseType: !7, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !902, file: !33, line: 523, baseType: !866, size: 320, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !902, file: !33, line: 524, baseType: !907, size: 192, offset: 384)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 192, elements: !274)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !902, file: !33, line: 525, baseType: !909, size: 1728, offset: 576)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !910, size: 1728, elements: !274)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !911)
!911 = !{!912, !932, !933, !934, !935, !936, !937, !938, !939}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !910, file: !33, line: 223, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !915)
!915 = !{!916, !917, !930, !931}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !914, file: !33, line: 446, baseType: !103, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !914, file: !33, line: 447, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !921)
!921 = !{!922, !923, !924, !925, !926, !927, !928, !929}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !920, file: !33, line: 313, baseType: !597, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !920, file: !33, line: 314, baseType: !597, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !920, file: !33, line: 315, baseType: !597, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !920, file: !33, line: 316, baseType: !597, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !920, file: !33, line: 317, baseType: !733, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !920, file: !33, line: 318, baseType: !733, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !920, file: !33, line: 319, baseType: !733, size: 64, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !920, file: !33, line: 320, baseType: !763, size: 64, offset: 448)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !914, file: !33, line: 448, baseType: !168, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !914, file: !33, line: 449, baseType: !913, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !910, file: !33, line: 224, baseType: !103, size: 32, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !910, file: !33, line: 226, baseType: !173, size: 128, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !910, file: !33, line: 227, baseType: !323, size: 64, offset: 256)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !910, file: !33, line: 228, baseType: !7, size: 32, offset: 320)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !910, file: !33, line: 229, baseType: !7, size: 32, offset: 352)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !910, file: !33, line: 230, baseType: !698, size: 64, offset: 384)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !910, file: !33, line: 231, baseType: !698, size: 64, offset: 448)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !910, file: !33, line: 232, baseType: !167, size: 64, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !902, file: !33, line: 526, baseType: !941, size: 192, offset: 2304)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 192, elements: !274)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !505, file: !28, line: 1233, baseType: !943, size: 2368, offset: 4544)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !28, line: 1184, size: 2368, elements: !944)
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !943, file: !28, line: 1185, baseType: !243, size: 16)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !943, file: !28, line: 1186, baseType: !243, size: 16, offset: 16)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !943, file: !28, line: 1187, baseType: !948, size: 2304, offset: 64)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !949, size: 2304, elements: !274)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !950, line: 12, size: 768, elements: !951)
!950 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!951 = !{!952, !974, !976, !3115, !3116}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !949, file: !950, line: 13, baseType: !953, size: 384)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !954, line: 17, size: 384, elements: !955)
!954 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!955 = !{!956, !957, !958, !965}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !953, file: !954, line: 18, baseType: !103, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !953, file: !954, line: 19, baseType: !103, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !953, file: !954, line: 20, baseType: !959, size: 192, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !960, line: 41, baseType: !961)
!960 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !960, line: 37, size: 192, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !961, file: !960, line: 38, baseType: !203, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !961, file: !960, line: 39, baseType: !173, size: 128, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !953, file: !954, line: 22, baseType: !966, size: 128, align: 64, offset: 256)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !174, line: 232, size: 128, align: 64, elements: !967)
!967 = !{!968, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !966, file: !174, line: 233, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !966, file: !174, line: 234, baseType: !971, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !969}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !949, file: !950, line: 14, baseType: !975, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !949, file: !950, line: 15, baseType: !977, size: 64, offset: 448)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !978, line: 16, size: 64, elements: !979)
!978 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!979 = !{!980}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !977, file: !978, line: 17, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !628, line: 746, size: 58368, elements: !983)
!983 = !{!984, !992, !993, !994, !1000, !1001, !1002, !1003, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1081, !1092, !1187, !1191, !1194, !1225, !1226, !1227, !1228, !1239, !1241, !1242, !1243, !1244, !1245, !1246, !1257, !1258, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1275, !1276, !1283, !1284, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2272, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2287, !2288, !2289, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2321, !2327, !2328, !2329, !2330, !2331, !2335, !2338, !2345, !2350, !2353, !2356, !2359, !2363, !2503, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2543, !2544, !2545, !2554, !2562, !2563, !2564, !2565, !2566, !2571, !2572, !2573, !2576, !2577, !2580, !2583, !2586, !2594, !2597, !2598, !2684, !2685, !2686, !2687, !2688, !2694, !2695, !2696, !2697, !2700, !2701, !2704, !2707, !2708, !2711, !2712, !2713, !2716, !2717, !2718, !2719, !2720, !2721, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2753, !2754, !2760, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2772, !2844, !2846, !2847, !2848, !2849, !2850, !2862, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2892, !2893, !2894}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !982, file: !628, line: 752, baseType: !985, size: 192)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !986, line: 56, size: 192, elements: !987)
!986 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!987 = !{!988, !989, !990, !991}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !985, file: !986, line: 57, baseType: !323, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !985, file: !986, line: 58, baseType: !323, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !985, file: !986, line: 59, baseType: !422, size: 32, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !985, file: !986, line: 61, baseType: !422, size: 32, offset: 160)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !982, file: !628, line: 754, baseType: !7, size: 32, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !982, file: !628, line: 767, baseType: !167, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !982, file: !628, line: 768, baseType: !995, size: 32, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !996, line: 113, baseType: !997)
!996 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !996, line: 111, size: 32, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !997, file: !996, line: 112, baseType: !223, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !982, file: !628, line: 770, baseType: !7, size: 32, offset: 352)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !982, file: !628, line: 771, baseType: !7, size: 32, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !982, file: !628, line: 774, baseType: !103, size: 32, offset: 416)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !982, file: !628, line: 775, baseType: !1004, size: 128, offset: 448)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1005, line: 58, size: 128, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1006 = !{!1007, !1013, !1018, !1019}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1004, file: !1005, line: 59, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1009, line: 60, size: 64, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1010 = !{!1011}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1008, file: !1009, line: 61, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !1005, line: 60, baseType: !1014, size: 32, offset: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !1005, line: 60, size: 32, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1014, file: !1005, line: 61, baseType: !7, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1014, file: !1005, line: 62, baseType: !223, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1004, file: !1005, line: 65, baseType: !241, size: 16, offset: 96)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1004, file: !1005, line: 65, baseType: !241, size: 16, offset: 112)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !982, file: !628, line: 776, baseType: !7, size: 32, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !982, file: !628, line: 777, baseType: !323, size: 64, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !982, file: !628, line: 778, baseType: !981, size: 64, offset: 704)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !982, file: !628, line: 787, baseType: !103, size: 32, offset: 768)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !982, file: !628, line: 788, baseType: !103, size: 32, offset: 800)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !982, file: !628, line: 790, baseType: !103, size: 32, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !982, file: !628, line: 792, baseType: !103, size: 32, offset: 864)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !982, file: !628, line: 793, baseType: !103, size: 32, offset: 896)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !982, file: !628, line: 794, baseType: !103, size: 32, offset: 928)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !982, file: !628, line: 795, baseType: !7, size: 32, offset: 960)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !982, file: !628, line: 797, baseType: !1031, size: 2048, offset: 1024)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !628, line: 551, size: 2048, elements: !1032)
!1032 = !{!1033, !1038, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1060, !1063, !1064, !1065}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1031, file: !628, line: 553, baseType: !1034, size: 128)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !628, line: 411, size: 128, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1034, file: !628, line: 412, baseType: !323, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1034, file: !628, line: 413, baseType: !422, size: 32, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1031, file: !628, line: 554, baseType: !1039, size: 192, align: 64, offset: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1040, line: 5, size: 192, align: 64, elements: !1041)
!1040 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1041 = !{!1042, !1043, !1045}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1039, file: !1040, line: 6, baseType: !323, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1039, file: !1040, line: 7, baseType: !1044, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1039, file: !1040, line: 8, baseType: !1044, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1031, file: !628, line: 555, baseType: !426, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1031, file: !628, line: 556, baseType: !426, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1031, file: !628, line: 558, baseType: !173, size: 128, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1031, file: !628, line: 559, baseType: !7, size: 32, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1031, file: !628, line: 561, baseType: !426, size: 64, offset: 640)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1031, file: !628, line: 562, baseType: !426, size: 64, offset: 704)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1031, file: !628, line: 563, baseType: !426, size: 64, offset: 768)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1031, file: !628, line: 564, baseType: !426, size: 64, offset: 832)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1031, file: !628, line: 565, baseType: !663, size: 64, offset: 896)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1031, file: !628, line: 566, baseType: !426, size: 64, offset: 960)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1031, file: !628, line: 568, baseType: !426, size: 64, offset: 1024)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1031, file: !628, line: 571, baseType: !103, size: 32, offset: 1088)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1031, file: !628, line: 572, baseType: !1059, size: 64, offset: 1152)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1031, file: !628, line: 574, baseType: !1061, size: 64, offset: 1216)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !628, line: 49, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1031, file: !628, line: 576, baseType: !1061, size: 64, offset: 1280)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1031, file: !628, line: 578, baseType: !323, size: 64, offset: 1344)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1031, file: !628, line: 588, baseType: !1066, size: 512, align: 512, offset: 1536)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !628, line: 497, size: 512, align: 512, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1066, file: !628, line: 498, baseType: !426, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1066, file: !628, line: 499, baseType: !426, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1066, file: !628, line: 500, baseType: !426, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1066, file: !628, line: 501, baseType: !422, size: 32, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1066, file: !628, line: 502, baseType: !422, size: 32, offset: 224)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1066, file: !628, line: 503, baseType: !323, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1066, file: !628, line: 504, baseType: !323, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1066, file: !628, line: 505, baseType: !323, size: 64, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1066, file: !628, line: 506, baseType: !1077, size: 64, align: 64, offset: 448)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !628, line: 445, size: 64, align: 64, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1077, file: !628, line: 446, baseType: !7, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1077, file: !628, line: 447, baseType: !7, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !982, file: !628, line: 798, baseType: !1082, size: 384, offset: 3072)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !628, line: 592, size: 384, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087, !1088, !1089, !1090}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1082, file: !628, line: 593, baseType: !173, size: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1082, file: !628, line: 594, baseType: !323, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1082, file: !628, line: 595, baseType: !323, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1082, file: !628, line: 596, baseType: !7, size: 32, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1082, file: !628, line: 597, baseType: !243, size: 16, offset: 288)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1082, file: !628, line: 598, baseType: !243, size: 16, offset: 304)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1082, file: !628, line: 600, baseType: !1091, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !982, file: !628, line: 799, baseType: !1093, size: 1792, offset: 3456)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !628, line: 610, size: 1792, elements: !1094)
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1184, !1185}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1093, file: !628, line: 611, baseType: !1039, size: 192, align: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1093, file: !628, line: 618, baseType: !426, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1093, file: !628, line: 619, baseType: !426, size: 64, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1093, file: !628, line: 620, baseType: !426, size: 64, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1093, file: !628, line: 621, baseType: !426, size: 64, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1093, file: !628, line: 622, baseType: !426, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1093, file: !628, line: 629, baseType: !663, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1093, file: !628, line: 630, baseType: !426, size: 64, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1093, file: !628, line: 631, baseType: !7, size: 32, offset: 640)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1093, file: !628, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1093, file: !628, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1093, file: !628, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1093, file: !628, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1093, file: !628, line: 662, baseType: !1109, size: 512, offset: 704)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1110)
!1110 = !{!1111, !1119, !1120, !1125, !1180, !1181, !1182, !1183}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1109, file: !39, line: 119, baseType: !1112, size: 256)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1113, line: 9, size: 256, elements: !1114)
!1113 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1112, file: !1113, line: 10, baseType: !1039, size: 192, align: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1112, file: !1113, line: 11, baseType: !1117, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1118, line: 29, baseType: !663)
!1118 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1109, file: !39, line: 120, baseType: !1117, size: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1109, file: !39, line: 121, baseType: !1121, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!38, !1124}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1109, file: !39, line: 122, baseType: !1126, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1128)
!1128 = !{!1129, !1154, !1155, !1158, !1163, !1164, !1175, !1179}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1127, file: !39, line: 160, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1131, file: !39, line: 216, baseType: !666, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1131, file: !39, line: 217, baseType: !7, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1131, file: !39, line: 218, baseType: !7, size: 32, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1131, file: !39, line: 219, baseType: !7, size: 32, offset: 96)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1131, file: !39, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1131, file: !39, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1131, file: !39, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1131, file: !39, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1131, file: !39, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1131, file: !39, line: 226, baseType: !7, size: 32, offset: 160)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1131, file: !39, line: 227, baseType: !243, size: 16, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1131, file: !39, line: 228, baseType: !243, size: 16, offset: 208)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1131, file: !39, line: 229, baseType: !7, size: 32, offset: 224)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1131, file: !39, line: 235, baseType: !1117, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1131, file: !39, line: 236, baseType: !1124, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1131, file: !39, line: 237, baseType: !1117, size: 64, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1131, file: !39, line: 238, baseType: !1124, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1131, file: !39, line: 239, baseType: !1151, size: 4096, align: 512, offset: 512)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1127, size: 4096, align: 512, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 8)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1127, file: !39, line: 161, baseType: !7, size: 32, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1127, file: !39, line: 162, baseType: !1156, size: 32, offset: 96)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !174, line: 32, baseType: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !307, line: 96, baseType: !103)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1127, file: !39, line: 163, baseType: !1159, size: 32, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !395, line: 274, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !395, line: 274, size: 32, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1160, file: !395, line: 274, baseType: !399, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1127, file: !39, line: 164, baseType: !1124, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1127, file: !39, line: 165, baseType: !1165, size: 128, offset: 256)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1113, line: 14, size: 128, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1165, file: !1113, line: 15, baseType: !1168, size: 128)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1040, line: 26, size: 128, elements: !1169)
!1169 = !{!1170, !1174}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1168, file: !1040, line: 27, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1040, line: 12, size: 64, elements: !1172)
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1171, file: !1040, line: 13, baseType: !1044, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1168, file: !1040, line: 28, baseType: !1044, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1127, file: !39, line: 166, baseType: !1176, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1117}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1127, file: !39, line: 167, baseType: !1117, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1109, file: !39, line: 123, baseType: !231, size: 8, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1109, file: !39, line: 124, baseType: !231, size: 8, offset: 456)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1109, file: !39, line: 125, baseType: !231, size: 8, offset: 464)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1109, file: !39, line: 126, baseType: !231, size: 8, offset: 472)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1093, file: !628, line: 671, baseType: !1109, size: 512, offset: 1216)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1093, file: !628, line: 679, baseType: !1186, size: 64, offset: 1728)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !982, file: !628, line: 800, baseType: !1188, size: 64, offset: 5248)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1190)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !628, line: 800, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !982, file: !628, line: 809, baseType: !1192, size: 64, offset: 5312)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !628, line: 70, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !982, file: !628, line: 825, baseType: !1195, size: 2048, align: 512, offset: 5632)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !628, line: 509, size: 2048, align: 512, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1195, file: !628, line: 511, baseType: !426, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1195, file: !628, line: 512, baseType: !426, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1195, file: !628, line: 513, baseType: !426, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1195, file: !628, line: 514, baseType: !426, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1195, file: !628, line: 515, baseType: !426, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1195, file: !628, line: 516, baseType: !426, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1195, file: !628, line: 518, baseType: !426, size: 64, offset: 384)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1195, file: !628, line: 519, baseType: !426, size: 64, offset: 448)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1195, file: !628, line: 520, baseType: !663, size: 64, offset: 512)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1195, file: !628, line: 522, baseType: !426, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1195, file: !628, line: 523, baseType: !426, size: 64, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1195, file: !628, line: 524, baseType: !663, size: 64, offset: 704)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1195, file: !628, line: 526, baseType: !663, size: 64, offset: 768)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1195, file: !628, line: 527, baseType: !426, size: 64, offset: 832)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1195, file: !628, line: 529, baseType: !426, size: 64, offset: 896)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1195, file: !628, line: 530, baseType: !426, size: 64, offset: 960)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1195, file: !628, line: 531, baseType: !426, size: 64, offset: 1024)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1195, file: !628, line: 532, baseType: !426, size: 64, offset: 1088)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1195, file: !628, line: 533, baseType: !426, size: 64, offset: 1152)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1195, file: !628, line: 535, baseType: !426, size: 64, offset: 1216)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1195, file: !628, line: 536, baseType: !426, size: 64, offset: 1280)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1195, file: !628, line: 537, baseType: !426, size: 64, offset: 1344)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1195, file: !628, line: 538, baseType: !426, size: 64, offset: 1408)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1195, file: !628, line: 539, baseType: !426, size: 64, offset: 1472)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1195, file: !628, line: 540, baseType: !426, size: 64, offset: 1536)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1195, file: !628, line: 541, baseType: !426, size: 64, offset: 1600)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1195, file: !628, line: 542, baseType: !426, size: 64, offset: 1664)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1195, file: !628, line: 543, baseType: !426, size: 64, offset: 1728)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !982, file: !628, line: 833, baseType: !7, size: 32, offset: 7680)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !982, file: !628, line: 836, baseType: !7, size: 32, offset: 7712)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !982, file: !628, line: 837, baseType: !103, size: 32, offset: 7744)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !982, file: !628, line: 838, baseType: !1229, size: 64, offset: 7808)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1232, line: 19, baseType: !1233)
!1232 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1232, line: 19, size: 64, elements: !1234)
!1234 = !{!1235}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1233, file: !1232, line: 19, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !1237)
!1237 = !{!1238}
!1238 = !DISubrange(count: 1)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !982, file: !628, line: 839, baseType: !1240, size: 64, offset: 7872)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !982, file: !628, line: 840, baseType: !1231, size: 64, offset: 7936)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !982, file: !628, line: 841, baseType: !167, size: 64, offset: 8000)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !982, file: !628, line: 843, baseType: !243, size: 16, offset: 8064)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !982, file: !628, line: 845, baseType: !243, size: 16, offset: 8080)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !982, file: !628, line: 848, baseType: !103, size: 32, offset: 8096)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !982, file: !628, line: 849, baseType: !1247, size: 32, offset: 8128)
!1247 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !628, line: 718, size: 32, elements: !1248)
!1248 = !{!1249, !1256}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1247, file: !628, line: 724, baseType: !1250, size: 32)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1247, file: !628, line: 719, size: 32, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1250, file: !628, line: 720, baseType: !231, size: 8)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1250, file: !628, line: 721, baseType: !231, size: 8, offset: 8)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1250, file: !628, line: 722, baseType: !231, size: 8, offset: 16)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1250, file: !628, line: 723, baseType: !231, size: 8, offset: 24)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1247, file: !628, line: 725, baseType: !422, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !982, file: !628, line: 850, baseType: !173, size: 128, offset: 8192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !982, file: !628, line: 851, baseType: !1259, size: 64, offset: 8320)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !628, line: 60, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !982, file: !628, line: 855, baseType: !323, size: 64, offset: 8384)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !982, file: !628, line: 856, baseType: !231, size: 8, offset: 8448)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !982, file: !628, line: 857, baseType: !231, size: 8, offset: 8456)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !982, file: !628, line: 858, baseType: !103, size: 32, offset: 8480)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !982, file: !628, line: 859, baseType: !173, size: 128, offset: 8512)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !982, file: !628, line: 860, baseType: !103, size: 32, offset: 8640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !982, file: !628, line: 861, baseType: !173, size: 128, offset: 8704)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !982, file: !628, line: 873, baseType: !1269, size: 256, offset: 8832)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !628, line: 376, size: 256, elements: !1270)
!1270 = !{!1271, !1272, !1273, !1274}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1269, file: !628, line: 381, baseType: !323, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1269, file: !628, line: 384, baseType: !428, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1269, file: !628, line: 389, baseType: !428, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1269, file: !628, line: 392, baseType: !428, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !982, file: !628, line: 875, baseType: !173, size: 128, offset: 9088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !982, file: !628, line: 877, baseType: !1277, size: 320, offset: 9216)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1278, line: 86, size: 320, elements: !1279)
!1278 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1279 = !{!1280, !1281, !1282}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1277, file: !1278, line: 87, baseType: !103, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1277, file: !1278, line: 88, baseType: !173, size: 128, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1277, file: !1278, line: 89, baseType: !173, size: 128, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !982, file: !628, line: 878, baseType: !1039, size: 192, align: 64, offset: 9536)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !982, file: !628, line: 881, baseType: !1285, size: 64, offset: 9728)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !65, line: 733, size: 10240, elements: !1287)
!1287 = !{!1288, !2191}
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1286, file: !65, line: 734, baseType: !1289, size: 10240)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1286, file: !65, line: 734, size: 10240, elements: !1290)
!1290 = !{!1291, !1295, !1308, !2055, !2056, !2057, !2058, !2059, !2060, !2067, !2068, !2069, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2108, !2110, !2113, !2160, !2161, !2162, !2165, !2166, !2167, !2170, !2171, !2172, !2178, !2179}
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !65, line: 739, baseType: !1292, size: 512, align: 512)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !65, line: 739, size: 512, align: 512, elements: !1293)
!1293 = !{!1294}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1292, file: !65, line: 747, baseType: !223, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1289, file: !65, line: 750, baseType: !1296, size: 128, offset: 512)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1297, line: 218, size: 128, elements: !1298)
!1297 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1298 = !{!1299, !1306, !1307}
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !1297, line: 219, baseType: !1300, size: 32)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1296, file: !1297, line: 219, size: 32, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1300, file: !1297, line: 220, baseType: !203, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1300, file: !1297, line: 221, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1297, line: 197, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1297, line: 197, elements: !557)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1296, file: !1297, line: 223, baseType: !7, size: 32, offset: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1296, file: !1297, line: 224, baseType: !167, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1289, file: !65, line: 752, baseType: !1309, size: 64, offset: 640)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!323, !1312, !323, !323, !323, !323}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !28, line: 994, size: 1856, align: 64, elements: !1314)
!1314 = !{!1315, !1321, !1322, !1324, !1325, !1326, !1327, !1328, !1380, !1575, !1584, !1585, !1586, !2045, !2046, !2047, !2048, !2050, !2051, !2054}
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !28, line: 995, baseType: !1316, size: 128)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !28, line: 995, size: 128, elements: !1317)
!1317 = !{!1318, !1319, !1320}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1316, file: !28, line: 996, baseType: !1008, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1316, file: !28, line: 997, baseType: !966, size: 128, align: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1316, file: !28, line: 998, baseType: !7, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1313, file: !28, line: 1005, baseType: !203, size: 32, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1313, file: !28, line: 1006, baseType: !1323, size: 32, offset: 160)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !174, line: 156, baseType: !7)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1313, file: !28, line: 1007, baseType: !657, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1313, file: !28, line: 1008, baseType: !653, size: 256, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1313, file: !28, line: 1009, baseType: !514, size: 64, offset: 512)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1313, file: !28, line: 1010, baseType: !7, size: 32, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1313, file: !28, line: 1011, baseType: !1329, size: 256, offset: 640)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !28, line: 948, size: 256, elements: !1330)
!1330 = !{!1331, !1352, !1376, !1377, !1378, !1379}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1329, file: !28, line: 949, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1333, line: 34, baseType: !1334)
!1333 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1333, line: 25, size: 64, elements: !1335)
!1335 = !{!1336}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1334, file: !1333, line: 26, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1338, line: 27, baseType: !1339)
!1338 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1338, line: 13, size: 64, elements: !1340)
!1340 = !{!1341, !1351}
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !1338, line: 14, baseType: !1342, size: 32)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !1338, line: 14, size: 32, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1342, file: !1338, line: 15, baseType: !223, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !1338, line: 16, baseType: !1346, size: 32)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !1338, line: 16, size: 32, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1346, file: !1338, line: 18, baseType: !231, size: 8)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1346, file: !1338, line: 19, baseType: !1350, size: 24, offset: 8)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 24, elements: !274)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1339, file: !1338, line: 26, baseType: !215, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1329, file: !28, line: 950, baseType: !1353, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !13, line: 59, size: 768, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1363, !1364, !1365, !1366}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1354, file: !13, line: 61, baseType: !995, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1354, file: !13, line: 62, baseType: !7, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1354, file: !13, line: 63, baseType: !203, size: 32, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1354, file: !13, line: 65, baseType: !1360, size: 256, offset: 128)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 256, elements: !1361)
!1361 = !{!1362}
!1362 = !DISubrange(count: 4)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1354, file: !13, line: 66, baseType: !545, size: 64, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1354, file: !13, line: 68, baseType: !959, size: 192, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1354, file: !13, line: 69, baseType: !966, size: 128, align: 64, offset: 640)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1354, file: !13, line: 70, baseType: !1367, offset: 768)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1368, elements: !1374)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !13, line: 54, size: 128, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1368, file: !13, line: 55, baseType: !103, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1368, file: !13, line: 56, baseType: !1372, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !13, line: 56, flags: DIFlagFwdDecl)
!1374 = !{!1375}
!1375 = !DISubrange(count: -1)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1329, file: !28, line: 951, baseType: !12, size: 32, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1329, file: !28, line: 952, baseType: !359, size: 32, offset: 160)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1329, file: !28, line: 952, baseType: !359, size: 32, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1329, file: !28, line: 953, baseType: !103, size: 32, offset: 224)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1313, file: !28, line: 1012, baseType: !1381, size: 64, offset: 896)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1384, line: 110, size: 1472, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1402, !1403, !1404, !1405, !1406, !1407, !1520, !1521, !1522, !1523, !1524, !1555, !1558, !1562, !1570}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1383, file: !1384, line: 111, baseType: !657, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1383, file: !1384, line: 112, baseType: !359, size: 32, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1383, file: !1384, line: 113, baseType: !368, size: 32, offset: 96)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1383, file: !1384, line: 114, baseType: !359, size: 32, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1383, file: !1384, line: 115, baseType: !368, size: 32, offset: 160)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1383, file: !1384, line: 116, baseType: !359, size: 32, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1383, file: !1384, line: 117, baseType: !368, size: 32, offset: 224)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1383, file: !1384, line: 118, baseType: !359, size: 32, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1383, file: !1384, line: 119, baseType: !368, size: 32, offset: 288)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1383, file: !1384, line: 120, baseType: !7, size: 32, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1383, file: !1384, line: 121, baseType: !1397, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1398, line: 24, baseType: !1399)
!1398 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1398, line: 24, size: 64, elements: !1400)
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1399, file: !1398, line: 24, baseType: !426, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1383, file: !1384, line: 122, baseType: !1397, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1383, file: !1384, line: 123, baseType: !1397, size: 64, offset: 512)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1383, file: !1384, line: 124, baseType: !1397, size: 64, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1383, file: !1384, line: 125, baseType: !1397, size: 64, offset: 640)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1383, file: !1384, line: 127, baseType: !235, size: 8, offset: 704)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1383, file: !1384, line: 129, baseType: !1408, size: 64, offset: 768)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1410, line: 195, size: 1728, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1411 = !{!1412, !1413, !1418, !1423, !1424, !1427, !1428, !1433, !1434, !1435, !1436, !1439, !1440, !1441, !1443, !1444, !1484, !1505}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1409, file: !1410, line: 196, baseType: !995, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1409, file: !1410, line: 197, baseType: !1414, size: 32, offset: 32)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1410, line: 28, baseType: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !174, line: 104, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !232, line: 20, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !234, line: 26, baseType: !103)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !1410, line: 198, baseType: !1419, size: 192, offset: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !1410, line: 198, size: 192, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1419, file: !1410, line: 199, baseType: !173, size: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1419, file: !1410, line: 200, baseType: !1039, size: 192, align: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1409, file: !1410, line: 205, baseType: !866, size: 320, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1409, file: !1410, line: 206, baseType: !1425, size: 64, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1410, line: 206, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1409, file: !1410, line: 207, baseType: !167, size: 64, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !1410, line: 208, baseType: !1429, size: 64, offset: 704)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !1410, line: 208, size: 64, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1429, file: !1410, line: 209, baseType: !706, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1429, file: !1410, line: 210, baseType: !706, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1409, file: !1410, line: 212, baseType: !706, size: 64, offset: 768)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1409, file: !1410, line: 213, baseType: !359, size: 32, offset: 832)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1409, file: !1410, line: 214, baseType: !368, size: 32, offset: 864)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1409, file: !1410, line: 215, baseType: !1437, size: 32, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1410, line: 31, baseType: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !174, line: 110, baseType: !422)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1409, file: !1410, line: 216, baseType: !243, size: 16, offset: 928)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1409, file: !1410, line: 217, baseType: !243, size: 16, offset: 944)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1409, file: !1410, line: 221, baseType: !1442, size: 16, offset: 960)
!1442 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1409, file: !1410, line: 228, baseType: !323, size: 64, offset: 1024)
!1444 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !1410, line: 245, baseType: !1445, size: 320, offset: 1088)
!1445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !1410, line: 245, size: 320, elements: !1446)
!1446 = !{!1447, !1476}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1445, file: !1410, line: 246, baseType: !1448, size: 320)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1410, line: 114, size: 320, elements: !1449)
!1449 = !{!1450, !1451, !1463, !1466, !1475}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1448, file: !1410, line: 116, baseType: !323, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !1410, line: 117, baseType: !1452, size: 64, offset: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !1410, line: 117, size: 64, elements: !1453)
!1453 = !{!1454, !1462}
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !1410, line: 118, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !1410, line: 118, size: 64, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1455, file: !1410, line: 120, baseType: !241, size: 16)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1455, file: !1410, line: 121, baseType: !1459, size: 48, offset: 16)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 48, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: 6)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1452, file: !1410, line: 127, baseType: !323, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1448, file: !1410, line: 129, baseType: !1464, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1410, line: 102, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1448, file: !1410, line: 130, baseType: !1467, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1410, line: 108, size: 192, elements: !1469)
!1469 = !{!1470, !1471, !1472}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1468, file: !1410, line: 109, baseType: !966, size: 128, align: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1468, file: !1410, line: 110, baseType: !995, size: 32, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1468, file: !1410, line: 111, baseType: !1473, size: 8, offset: 160)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !174, line: 35, baseType: !1474)
!1474 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1448, file: !1410, line: 131, baseType: !192, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1410, line: 247, baseType: !1477, size: 320)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1445, file: !1410, line: 247, size: 320, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482, !1483}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1477, file: !1410, line: 248, baseType: !323, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1477, file: !1410, line: 249, baseType: !323, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1477, file: !1410, line: 250, baseType: !1464, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1477, file: !1410, line: 251, baseType: !1467, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1477, file: !1410, line: 252, baseType: !273, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !1410, line: 260, baseType: !1485, size: 256, offset: 1408)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !1410, line: 260, size: 256, elements: !1486)
!1486 = !{!1487, !1493}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1485, file: !1410, line: 261, baseType: !1488, size: 256)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1410, line: 134, size: 256, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1488, file: !1410, line: 135, baseType: !167, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1488, file: !1410, line: 136, baseType: !1492, size: 256)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 256, elements: !1361)
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1410, line: 262, baseType: !1494, size: 256)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1485, file: !1410, line: 262, size: 256, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1494, file: !1410, line: 264, baseType: !173, size: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1494, file: !1410, line: 265, baseType: !1498, size: 128, offset: 128)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1499, line: 22, size: 128, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1500 = !{!1501, !1504}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1498, file: !1499, line: 23, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1499, line: 23, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1498, file: !1499, line: 24, baseType: !323, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1409, file: !1410, line: 280, baseType: !1506, size: 64, offset: 1664)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1410, line: 176, size: 192, elements: !1508)
!1508 = !{!1509, !1518, !1519}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1507, file: !1410, line: 177, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1410, line: 171, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!103, !1408, !1514, !1516, !1408}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1465)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1488)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1507, file: !1410, line: 178, baseType: !1408, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1507, file: !1410, line: 179, baseType: !1464, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1383, file: !1384, line: 130, baseType: !1408, size: 64, offset: 832)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1383, file: !1384, line: 131, baseType: !1408, size: 64, offset: 896)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1383, file: !1384, line: 132, baseType: !1408, size: 64, offset: 960)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1383, file: !1384, line: 135, baseType: !167, size: 64, offset: 1024)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1383, file: !1384, line: 137, baseType: !1525, size: 64, offset: 1088)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1527, line: 14, size: 1088, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1528 = !{!1529, !1530, !1539, !1540, !1541, !1542, !1543, !1544}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1526, file: !1527, line: 15, baseType: !995, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1526, file: !1527, line: 17, baseType: !1531, size: 320, offset: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1532, line: 22, size: 320, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1533 = !{!1534, !1535, !1536, !1537}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1531, file: !1532, line: 23, baseType: !666, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1531, file: !1532, line: 24, baseType: !663, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1531, file: !1532, line: 26, baseType: !173, size: 128, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1531, file: !1532, line: 28, baseType: !1538, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1526, file: !1527, line: 19, baseType: !323, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1526, file: !1527, line: 20, baseType: !657, size: 64, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1526, file: !1527, line: 23, baseType: !549, size: 128, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1526, file: !1527, line: 24, baseType: !359, size: 32, offset: 640)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1526, file: !1527, line: 29, baseType: !657, size: 64, offset: 704)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1526, file: !1527, line: 36, baseType: !1545, size: 320, offset: 768)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1546, line: 15, size: 320, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1545, file: !1546, line: 16, baseType: !666, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1545, file: !1546, line: 18, baseType: !103, size: 32, offset: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1545, file: !1546, line: 19, baseType: !103, size: 32, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1545, file: !1546, line: 20, baseType: !103, size: 32, offset: 96)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1545, file: !1546, line: 21, baseType: !103, size: 32, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1545, file: !1546, line: 22, baseType: !323, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1545, file: !1546, line: 23, baseType: !323, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1383, file: !1384, line: 138, baseType: !1556, size: 64, offset: 1152)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !360, line: 18, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1383, file: !1384, line: 139, baseType: !1559, size: 64, offset: 1216)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1561, line: 16, flags: DIFlagFwdDecl)
!1561 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1383, file: !1384, line: 140, baseType: !1563, size: 64, offset: 1280)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1384, line: 25, size: 64, elements: !1565)
!1565 = !{!1566, !1567, !1568}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1564, file: !1384, line: 26, baseType: !223, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1564, file: !1384, line: 27, baseType: !103, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1564, file: !1384, line: 28, baseType: !1569, offset: 64)
!1569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, elements: !1374)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1384, line: 142, baseType: !1571, size: 128, offset: 1344)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1384, line: 142, size: 128, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1571, file: !1384, line: 143, baseType: !103, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1571, file: !1384, line: 144, baseType: !966, size: 128, align: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1313, file: !28, line: 1013, baseType: !1576, size: 256, offset: 960)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !28, line: 970, size: 256, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1576, file: !28, line: 971, baseType: !323, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1576, file: !28, line: 972, baseType: !7, size: 32, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1576, file: !28, line: 973, baseType: !7, size: 32, offset: 96)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1576, file: !28, line: 974, baseType: !7, size: 32, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1576, file: !28, line: 975, baseType: !7, size: 32, offset: 160)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1576, file: !28, line: 976, baseType: !514, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1313, file: !28, line: 1014, baseType: !778, size: 128, offset: 1216)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1313, file: !28, line: 1015, baseType: !353, size: 64, offset: 1344)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1313, file: !28, line: 1016, baseType: !1587, size: 64, offset: 1408)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !28, line: 1914, size: 2112, elements: !1590)
!1590 = !{!1591, !1592, !1596, !1601, !1605, !1633, !1634, !1640, !1653, !1661, !1665, !1666, !1967, !1968, !1972, !1977, !1978, !1982, !1986, !1992, !1993, !1997, !1998, !2004, !2008, !2012, !2018, !2022, !2026, !2030, !2034, !2035, !2041}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1589, file: !28, line: 1915, baseType: !168, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1589, file: !28, line: 1916, baseType: !1593, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!514, !1312, !514, !103}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1589, file: !28, line: 1917, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!305, !1312, !273, !320, !1600}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1589, file: !28, line: 1918, baseType: !1602, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!305, !1312, !192, !320, !1600}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1589, file: !28, line: 1919, baseType: !1606, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!305, !1609, !1631}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !28, line: 373, size: 384, elements: !1611)
!1611 = !{!1612, !1613, !1614, !1618, !1619, !1620, !1621}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1610, file: !28, line: 374, baseType: !1312, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1610, file: !28, line: 375, baseType: !514, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1610, file: !28, line: 376, baseType: !1615, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null, !1609, !309}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1610, file: !28, line: 377, baseType: !167, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1610, file: !28, line: 378, baseType: !103, size: 32, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1610, file: !28, line: 379, baseType: !241, size: 16, offset: 288)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1610, file: !28, line: 380, baseType: !1622, size: 64, offset: 320)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1610, file: !28, line: 380, size: 64, elements: !1623)
!1623 = !{!1624, !1627}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1622, file: !28, line: 386, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !28, line: 386, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1622, file: !28, line: 395, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!305, !167}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !28, line: 69, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1589, file: !28, line: 1920, baseType: !1606, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1589, file: !28, line: 1921, baseType: !1635, size: 64, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!103, !1609, !1638, !7}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !28, line: 53, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1589, file: !28, line: 1923, baseType: !1641, size: 64, offset: 448)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!103, !1312, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !28, line: 1858, size: 128, elements: !1646)
!1646 = !{!1647, !1652}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1645, file: !28, line: 1859, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !28, line: 1855, baseType: !1649)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1473, !1644, !192, !103, !514, !426, !7}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1645, file: !28, line: 1860, baseType: !514, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1589, file: !28, line: 1924, baseType: !1654, size: 64, offset: 512)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!1657, !1312, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1658, line: 59, baseType: !7)
!1658 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !529, line: 31, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1589, file: !28, line: 1925, baseType: !1662, size: 64, offset: 576)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!309, !1312, !7, !323}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1589, file: !28, line: 1926, baseType: !1662, size: 64, offset: 640)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1589, file: !28, line: 1927, baseType: !1667, size: 64, offset: 704)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!103, !1312, !1670}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !65, line: 625, size: 1344, elements: !1672)
!1672 = !{!1673, !1682, !1683, !1691, !1698, !1699, !1704, !1705, !1710, !1711, !1714, !1960, !1961, !1962, !1963, !1964, !1965}
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !65, line: 628, baseType: !1674, size: 128)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !65, line: 628, size: 128, elements: !1675)
!1675 = !{!1676, !1681}
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !65, line: 629, baseType: !1677, size: 128)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !65, line: 629, size: 128, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1677, file: !65, line: 631, baseType: !323, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1677, file: !65, line: 632, baseType: !323, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1674, file: !65, line: 635, baseType: !966, size: 128, align: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1671, file: !65, line: 639, baseType: !1285, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1671, file: !65, line: 640, baseType: !1684, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1685, line: 297, baseType: !1686)
!1685 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1685, line: 297, size: 64, elements: !1687)
!1687 = !{!1688}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1686, file: !1685, line: 297, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1690, line: 19, baseType: !323)
!1690 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !65, line: 646, baseType: !1692, size: 64, offset: 256)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !65, line: 646, size: 64, elements: !1693)
!1693 = !{!1694, !1697}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1692, file: !65, line: 647, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1696)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !65, line: 542, baseType: !323)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1692, file: !65, line: 648, baseType: !1696, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1671, file: !65, line: 666, baseType: !103, size: 32, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1671, file: !65, line: 667, baseType: !1700, size: 64, offset: 384)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !65, line: 579, size: 320, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1701, file: !65, line: 580, baseType: !866, size: 320)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1671, file: !65, line: 670, baseType: !1473, size: 8, offset: 448)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1671, file: !65, line: 681, baseType: !1706, size: 256, offset: 512)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1671, file: !65, line: 678, size: 256, elements: !1707)
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1706, file: !65, line: 679, baseType: !1039, size: 192, align: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1706, file: !65, line: 680, baseType: !323, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1671, file: !65, line: 689, baseType: !173, size: 128, offset: 768)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1671, file: !65, line: 691, baseType: !1712, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !65, line: 691, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1671, file: !65, line: 694, baseType: !1715, size: 64, offset: 960)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1718, line: 563, size: 1024, elements: !1719)
!1718 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1719 = !{!1720, !1724, !1725, !1729, !1733, !1737, !1924, !1928, !1932, !1936, !1937, !1938, !1942, !1946, !1952, !1956}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1717, file: !1718, line: 564, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !1670}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1717, file: !1718, line: 569, baseType: !1721, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1717, file: !1718, line: 571, baseType: !1726, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!103, !1670, !323}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1717, file: !1718, line: 572, baseType: !1730, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!103, !1670}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1717, file: !1718, line: 578, baseType: !1734, size: 64, offset: 256)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!103, !1670, !323, !323, !323}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1717, file: !1718, line: 580, baseType: !1738, size: 64, offset: 320)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !65, line: 1184, baseType: !7)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1718, line: 512, size: 896, elements: !1744)
!1744 = !{!1745, !1753, !1754, !1761, !1768, !1778, !1917, !1918, !1920, !1922}
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !1718, line: 513, baseType: !1746, size: 320)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !1718, line: 513, size: 320, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751, !1752}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1746, file: !1718, line: 514, baseType: !1670, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1746, file: !1718, line: 515, baseType: !718, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1746, file: !1718, line: 516, baseType: !323, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1746, file: !1718, line: 517, baseType: !323, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1746, file: !1718, line: 518, baseType: !323, size: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1743, file: !1718, line: 520, baseType: !64, size: 32, offset: 320)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1743, file: !1718, line: 522, baseType: !1755, size: 64, offset: 384)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1690, line: 22, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1690, line: 22, size: 64, elements: !1758)
!1758 = !{!1759}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1757, file: !1690, line: 22, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1690, line: 15, baseType: !323)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1743, file: !1718, line: 524, baseType: !1762, size: 64, offset: 448)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1685, line: 372, baseType: !1764)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1685, line: 372, size: 64, elements: !1765)
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1764, file: !1685, line: 372, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1690, line: 16, baseType: !323)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !1718, line: 527, baseType: !1769, size: 64, offset: 512)
!1769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1743, file: !1718, line: 527, size: 64, elements: !1770)
!1770 = !{!1771, !1777}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1769, file: !1718, line: 528, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1690, line: 21, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1690, line: 21, size: 64, elements: !1774)
!1774 = !{!1775}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1773, file: !1690, line: 21, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1690, line: 14, baseType: !323)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1769, file: !1718, line: 529, baseType: !1756, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1743, file: !1718, line: 534, baseType: !1779, size: 64, offset: 576)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !65, line: 74, size: 512, align: 128, elements: !1781)
!1781 = !{!1782, !1783, !1911, !1916}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1780, file: !65, line: 75, baseType: !323, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !65, line: 83, baseType: !1784, size: 320, offset: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !65, line: 83, size: 320, elements: !1785)
!1785 = !{!1786, !1807, !1821, !1825, !1910}
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !65, line: 84, baseType: !1787, size: 320)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1784, file: !65, line: 84, size: 320, elements: !1788)
!1788 = !{!1789, !1800, !1801, !1806}
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !65, line: 90, baseType: !1790, size: 128)
!1790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !65, line: 90, size: 128, elements: !1791)
!1791 = !{!1792, !1793, !1798, !1799}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1790, file: !65, line: 91, baseType: !173, size: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !65, line: 94, baseType: !1794, size: 128)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !65, line: 94, size: 128, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1794, file: !65, line: 96, baseType: !167, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1794, file: !65, line: 98, baseType: !7, size: 32, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1790, file: !65, line: 102, baseType: !173, size: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1790, file: !65, line: 103, baseType: !173, size: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1787, file: !65, line: 106, baseType: !349, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !65, line: 107, baseType: !1802, size: 64, offset: 192)
!1802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !65, line: 107, size: 64, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1802, file: !65, line: 108, baseType: !323, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1802, file: !65, line: 109, baseType: !323, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1787, file: !65, line: 117, baseType: !323, size: 64, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !65, line: 119, baseType: !1808, size: 320)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1784, file: !65, line: 119, size: 320, elements: !1809)
!1809 = !{!1810, !1811, !1814, !1815, !1816}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1808, file: !65, line: 124, baseType: !323, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1808, file: !65, line: 125, baseType: !1812, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !65, line: 125, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1808, file: !65, line: 126, baseType: !323, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1808, file: !65, line: 127, baseType: !323, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !65, line: 128, baseType: !1817, size: 64, offset: 256)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !65, line: 128, size: 64, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1817, file: !65, line: 133, baseType: !323, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1817, file: !65, line: 138, baseType: !657, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !65, line: 141, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1784, file: !65, line: 141, size: 64, elements: !1823)
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1822, file: !65, line: 142, baseType: !323, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !65, line: 144, baseType: !1826, size: 128)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1784, file: !65, line: 144, size: 128, elements: !1827)
!1827 = !{!1828, !1909}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1826, file: !65, line: 146, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !57, line: 126, size: 1216, elements: !1831)
!1831 = !{!1832, !1842, !1863, !1874, !1875, !1876, !1877, !1891, !1892, !1893}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1830, file: !57, line: 127, baseType: !1833, size: 384)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !57, line: 21, size: 384, elements: !1834)
!1834 = !{!1835, !1836, !1838, !1839, !1840, !1841}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1833, file: !57, line: 22, baseType: !323, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1833, file: !57, line: 23, baseType: !1837, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1833, file: !57, line: 24, baseType: !1837, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1833, file: !57, line: 25, baseType: !323, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1833, file: !57, line: 26, baseType: !323, size: 64, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1833, file: !57, line: 27, baseType: !323, size: 64, offset: 320)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1830, file: !57, line: 128, baseType: !1843, size: 128, offset: 384)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1844, line: 105, size: 128, elements: !1845)
!1844 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1843, file: !1844, line: 110, baseType: !323, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1843, file: !1844, line: 118, baseType: !1848, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1844, line: 95, size: 448, elements: !1850)
!1850 = !{!1851, !1852, !1858, !1859, !1860, !1861, !1862}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1849, file: !1844, line: 96, baseType: !657, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1849, file: !1844, line: 97, baseType: !1853, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1844, line: 60, baseType: !1855)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !1857}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1849, file: !1844, line: 98, baseType: !1853, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1849, file: !1844, line: 99, baseType: !1473, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1849, file: !1844, line: 100, baseType: !1473, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1849, file: !1844, line: 101, baseType: !966, size: 128, align: 64, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1849, file: !1844, line: 102, baseType: !1857, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1830, file: !57, line: 129, baseType: !1864, size: 256, offset: 512)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1865, line: 26, size: 256, elements: !1866)
!1865 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1864, file: !1865, line: 27, baseType: !7, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1864, file: !1865, line: 28, baseType: !1869, size: 192, offset: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1870, line: 43, size: 192, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1869, file: !1870, line: 44, baseType: !666, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1869, file: !1870, line: 45, baseType: !173, size: 128, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1830, file: !57, line: 130, baseType: !56, size: 32, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1830, file: !57, line: 131, baseType: !7, size: 32, offset: 800)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1830, file: !57, line: 132, baseType: !323, size: 64, offset: 832)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1830, file: !57, line: 133, baseType: !1878, size: 64, offset: 896)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !57, line: 77, size: 192, elements: !1881)
!1881 = !{!1882, !1886, !1887}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1880, file: !57, line: 83, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !1779}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1880, file: !57, line: 89, baseType: !1738, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1880, file: !57, line: 100, baseType: !1888, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!103, !1829, !323, !323, !103}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1830, file: !57, line: 134, baseType: !167, size: 64, offset: 960)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1830, file: !57, line: 135, baseType: !103, size: 32, offset: 1024)
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !57, line: 136, baseType: !1894, size: 128, offset: 1088)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !57, line: 136, size: 128, elements: !1895)
!1895 = !{!1896, !1902}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1894, file: !57, line: 137, baseType: !1897, size: 128)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1898, line: 6, size: 128, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1897, file: !1898, line: 7, baseType: !426, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1897, file: !1898, line: 8, baseType: !426, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !57, line: 138, baseType: !1903)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !57, line: 138, elements: !1904)
!1904 = !{!1905, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1903, file: !57, line: 138, baseType: !1906)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1903, file: !57, line: 138, elements: !557)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1903, file: !57, line: 138, baseType: !1908)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1897, elements: !1374)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1826, file: !65, line: 147, baseType: !167, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1784, file: !65, line: 161, baseType: !966, size: 128, align: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !65, line: 164, baseType: !1912, size: 32, offset: 384)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !65, line: 164, size: 32, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1912, file: !65, line: 169, baseType: !223, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1912, file: !65, line: 177, baseType: !7, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1780, file: !65, line: 181, baseType: !223, size: 32, offset: 416)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1743, file: !1718, line: 535, baseType: !1779, size: 64, offset: 640)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1743, file: !1718, line: 541, baseType: !1919, size: 64, offset: 704)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1743, file: !1718, line: 545, baseType: !1921, size: 64, offset: 768)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1743, file: !1718, line: 549, baseType: !1923, size: 64, offset: 832)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1685, line: 520, baseType: !1779)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1717, file: !1718, line: 581, baseType: !1925, size: 64, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1741, !1742, !7}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1717, file: !1718, line: 582, baseType: !1929, size: 64, offset: 448)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!1741, !1742, !323, !323}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1717, file: !1718, line: 584, baseType: !1933, size: 64, offset: 512)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!323, !1670}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1717, file: !1718, line: 588, baseType: !1738, size: 64, offset: 576)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1717, file: !1718, line: 591, baseType: !1738, size: 64, offset: 640)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1717, file: !1718, line: 597, baseType: !1939, size: 64, offset: 704)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!103, !1670, !323, !167, !103, !103}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1717, file: !1718, line: 603, baseType: !1943, size: 64, offset: 768)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!192, !1670}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1717, file: !1718, line: 613, baseType: !1947, size: 64, offset: 832)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!103, !1670, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !65, line: 717, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1717, file: !1718, line: 625, baseType: !1953, size: 64, offset: 896)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!1950, !1670, !323}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1717, file: !1718, line: 633, baseType: !1957, size: 64, offset: 960)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!1779, !1670, !323}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1671, file: !65, line: 697, baseType: !323, size: 64, offset: 1024)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1671, file: !65, line: 699, baseType: !1312, size: 64, offset: 1088)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1671, file: !65, line: 700, baseType: !167, size: 64, offset: 1152)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1671, file: !65, line: 711, baseType: !657, size: 64, offset: 1216)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1671, file: !65, line: 717, baseType: !1950, size: 64, offset: 1280)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1671, file: !65, line: 722, baseType: !1966, offset: 1344)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !65, line: 570, elements: !557)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1589, file: !28, line: 1928, baseType: !323, size: 64, offset: 768)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1589, file: !28, line: 1929, baseType: !1969, size: 64, offset: 832)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!103, !353, !1312}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1589, file: !28, line: 1930, baseType: !1973, size: 64, offset: 896)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!103, !1312, !1976}
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !28, line: 1061, baseType: !167)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1589, file: !28, line: 1931, baseType: !1969, size: 64, offset: 960)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1589, file: !28, line: 1932, baseType: !1979, size: 64, offset: 1024)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!103, !1312, !514, !514, !103}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1589, file: !28, line: 1933, baseType: !1983, size: 64, offset: 1088)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!103, !103, !1312, !103}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1589, file: !28, line: 1934, baseType: !1987, size: 64, offset: 1152)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!103, !1312, !103, !1990}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !28, line: 1063, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1589, file: !28, line: 1935, baseType: !1309, size: 64, offset: 1216)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1589, file: !28, line: 1936, baseType: !1994, size: 64, offset: 1280)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!103, !103}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1589, file: !28, line: 1937, baseType: !1987, size: 64, offset: 1344)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1589, file: !28, line: 1938, baseType: !1999, size: 64, offset: 1408)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!305, !2002, !1312, !1600, !320, !7}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !628, line: 59, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1589, file: !28, line: 1939, baseType: !2005, size: 64, offset: 1472)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!305, !1312, !1600, !2002, !320, !7}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1589, file: !28, line: 1940, baseType: !2009, size: 64, offset: 1536)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !1312}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1589, file: !28, line: 1941, baseType: !2013, size: 64, offset: 1600)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!103, !1312, !103, !2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1589, file: !28, line: 1942, baseType: !2019, size: 64, offset: 1664)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!309, !1312, !103, !514, !514}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1589, file: !28, line: 1944, baseType: !2023, size: 64, offset: 1728)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !626, !1312}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1589, file: !28, line: 1948, baseType: !2027, size: 64, offset: 1792)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!305, !1312, !514, !1312, !514, !320, !7}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1589, file: !28, line: 1950, baseType: !2031, size: 64, offset: 1856)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!514, !1312, !514, !1312, !514, !514, !7}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1589, file: !28, line: 1953, baseType: !1979, size: 64, offset: 1920)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1589, file: !28, line: 1954, baseType: !2036, size: 64, offset: 1984)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!103, !2039, !7}
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !28, line: 1911, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1589, file: !28, line: 1955, baseType: !2042, size: 64, offset: 2048)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!103, !2039, !1638, !7}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1313, file: !28, line: 1018, baseType: !426, size: 64, offset: 1472)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1313, file: !28, line: 1020, baseType: !167, size: 64, offset: 1536)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1313, file: !28, line: 1023, baseType: !167, size: 64, offset: 1600)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1313, file: !28, line: 1027, baseType: !2049, size: 64, offset: 1664)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1313, file: !28, line: 1029, baseType: !349, size: 64, offset: 1728)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1313, file: !28, line: 1030, baseType: !2052, size: 32, offset: 1792)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2053, line: 8, baseType: !422)
!2053 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1313, file: !28, line: 1031, baseType: !2052, size: 32, offset: 1824)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1289, file: !65, line: 756, baseType: !323, size: 64, offset: 704)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1289, file: !65, line: 757, baseType: !323, size: 64, offset: 768)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1289, file: !65, line: 760, baseType: !323, size: 64, offset: 832)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1289, file: !65, line: 761, baseType: !323, size: 64, offset: 896)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1289, file: !65, line: 763, baseType: !323, size: 64, offset: 960)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1289, file: !65, line: 764, baseType: !2061, size: 64, offset: 1024)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1685, line: 299, baseType: !2063)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1685, line: 299, size: 64, elements: !2064)
!2064 = !{!2065}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2063, file: !1685, line: 299, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1690, line: 18, baseType: !323)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1289, file: !65, line: 773, baseType: !223, size: 32, offset: 1088)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1289, file: !65, line: 785, baseType: !223, size: 32, offset: 1120)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1289, file: !65, line: 795, baseType: !2070, size: 64, offset: 1152)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !65, line: 726, size: 128, elements: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2071, file: !65, line: 727, baseType: !426, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2071, file: !65, line: 728, baseType: !103, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1289, file: !65, line: 801, baseType: !323, size: 64, offset: 1216)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1289, file: !65, line: 804, baseType: !657, size: 64, offset: 1280)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1289, file: !65, line: 806, baseType: !103, size: 32, offset: 1344)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1289, file: !65, line: 808, baseType: !203, size: 32, offset: 1376)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1289, file: !65, line: 823, baseType: !866, size: 320, offset: 1408)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1289, file: !65, line: 825, baseType: !173, size: 128, offset: 1728)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1289, file: !65, line: 845, baseType: !103, size: 32, offset: 1856)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1289, file: !65, line: 849, baseType: !323, size: 64, offset: 1920)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1289, file: !65, line: 850, baseType: !323, size: 64, offset: 1984)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1289, file: !65, line: 852, baseType: !323, size: 64, offset: 2048)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1289, file: !65, line: 853, baseType: !323, size: 64, offset: 2112)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1289, file: !65, line: 854, baseType: !659, size: 64, offset: 2176)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1289, file: !65, line: 855, baseType: !323, size: 64, offset: 2240)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1289, file: !65, line: 856, baseType: !323, size: 64, offset: 2304)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1289, file: !65, line: 857, baseType: !323, size: 64, offset: 2368)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1289, file: !65, line: 858, baseType: !323, size: 64, offset: 2432)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1289, file: !65, line: 865, baseType: !399, size: 32, offset: 2496)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1289, file: !65, line: 867, baseType: !203, size: 32, offset: 2528)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1289, file: !65, line: 869, baseType: !323, size: 64, offset: 2560)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1289, file: !65, line: 869, baseType: !323, size: 64, offset: 2624)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1289, file: !65, line: 869, baseType: !323, size: 64, offset: 2688)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1289, file: !65, line: 869, baseType: !323, size: 64, offset: 2752)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1289, file: !65, line: 870, baseType: !323, size: 64, offset: 2816)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1289, file: !65, line: 870, baseType: !323, size: 64, offset: 2880)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1289, file: !65, line: 870, baseType: !323, size: 64, offset: 2944)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1289, file: !65, line: 871, baseType: !323, size: 64, offset: 3008)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1289, file: !65, line: 871, baseType: !323, size: 64, offset: 3072)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1289, file: !65, line: 871, baseType: !323, size: 64, offset: 3136)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1289, file: !65, line: 871, baseType: !323, size: 64, offset: 3200)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1289, file: !65, line: 873, baseType: !2105, size: 3328, offset: 3264)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 3328, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 52)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1289, file: !65, line: 875, baseType: !2109, size: 1280, offset: 6592)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1531, size: 1280, elements: !1361)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1289, file: !65, line: 877, baseType: !2111, size: 64, offset: 7872)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !65, line: 877, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1289, file: !65, line: 880, baseType: !2114, size: 1088, offset: 7936)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2115, line: 72, baseType: !2116)
!2115 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2115, line: 23, size: 1088, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2125, !2126, !2127, !2128, !2155, !2156, !2157}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2116, file: !2115, line: 28, baseType: !426, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2116, file: !2115, line: 38, baseType: !659, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2116, file: !2115, line: 40, baseType: !323, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2116, file: !2115, line: 43, baseType: !866, size: 320, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2116, file: !2115, line: 44, baseType: !2123, size: 64, offset: 512)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2115, line: 44, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2116, file: !2115, line: 48, baseType: !323, size: 64, offset: 576)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2116, file: !2115, line: 59, baseType: !653, size: 256, offset: 640)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2116, file: !2115, line: 60, baseType: !167, size: 64, offset: 896)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2116, file: !2115, line: 61, baseType: !2129, size: 64, offset: 960)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2131)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2132, line: 13, size: 1216, elements: !2133)
!2132 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2133 = !{!2134, !2135, !2136, !2137, !2138, !2139, !2140, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2131, file: !2132, line: 14, baseType: !167, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2131, file: !2132, line: 15, baseType: !323, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2131, file: !2132, line: 17, baseType: !323, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2131, file: !2132, line: 17, baseType: !323, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2131, file: !2132, line: 18, baseType: !323, size: 64, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2131, file: !2132, line: 18, baseType: !323, size: 64, offset: 320)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2131, file: !2132, line: 19, baseType: !2141, size: 64, offset: 384)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2131, file: !2132, line: 21, baseType: !309, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2131, file: !2132, line: 23, baseType: !309, size: 64, offset: 512)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2131, file: !2132, line: 24, baseType: !309, size: 64, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2131, file: !2132, line: 25, baseType: !309, size: 64, offset: 640)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2131, file: !2132, line: 26, baseType: !309, size: 64, offset: 704)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2131, file: !2132, line: 27, baseType: !309, size: 64, offset: 768)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2131, file: !2132, line: 28, baseType: !309, size: 64, offset: 832)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2131, file: !2132, line: 29, baseType: !309, size: 64, offset: 896)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2131, file: !2132, line: 30, baseType: !309, size: 64, offset: 960)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2131, file: !2132, line: 31, baseType: !309, size: 64, offset: 1024)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2131, file: !2132, line: 32, baseType: !309, size: 64, offset: 1088)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2131, file: !2132, line: 33, baseType: !309, size: 64, offset: 1152)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2116, file: !2115, line: 63, baseType: !223, size: 32, offset: 1024)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2116, file: !2115, line: 69, baseType: !241, size: 16, offset: 1056)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2116, file: !2115, line: 70, baseType: !2158, size: 16, offset: 1072)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !232, line: 18, baseType: !2159)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !234, line: 23, baseType: !1442)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1289, file: !65, line: 882, baseType: !323, size: 64, offset: 9024)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1289, file: !65, line: 885, baseType: !203, size: 32, offset: 9088)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1289, file: !65, line: 886, baseType: !2163, size: 64, offset: 9152)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !65, line: 732, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1289, file: !65, line: 901, baseType: !1556, size: 64, offset: 9216)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1289, file: !65, line: 904, baseType: !1312, size: 64, offset: 9280)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1289, file: !65, line: 906, baseType: !2168, size: 64, offset: 9344)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !65, line: 906, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1289, file: !65, line: 930, baseType: !223, size: 32, offset: 9408)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1289, file: !65, line: 933, baseType: !223, size: 32, offset: 9440)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1289, file: !65, line: 935, baseType: !2173, size: 64, offset: 9472)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !2174)
!2174 = !{!2175}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2173, file: !81, line: 104, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1289, file: !65, line: 940, baseType: !657, size: 64, offset: 9536)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1289, file: !65, line: 942, baseType: !2180, size: 256, offset: 9600)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2181, line: 98, size: 256, elements: !2182)
!2181 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2182 = !{!2183, !2184, !2185}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2180, file: !2181, line: 99, baseType: !657, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2180, file: !2181, line: 100, baseType: !173, size: 128, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2180, file: !2181, line: 101, baseType: !2186, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2181, line: 21, baseType: !2187)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !2190}
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1286, file: !65, line: 986, baseType: !2192, offset: 10240)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, elements: !1374)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !982, file: !628, line: 882, baseType: !1285, size: 64, offset: 9792)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !982, file: !628, line: 884, baseType: !103, size: 32, offset: 9856)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !982, file: !628, line: 885, baseType: !103, size: 32, offset: 9888)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !982, file: !628, line: 886, baseType: !103, size: 32, offset: 9920)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !982, file: !628, line: 888, baseType: !103, size: 32, offset: 9952)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !982, file: !628, line: 890, baseType: !323, size: 64, offset: 9984)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !982, file: !628, line: 893, baseType: !7, size: 32, offset: 10048)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !982, file: !628, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !982, file: !628, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !982, file: !628, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !982, file: !628, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !982, file: !628, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !982, file: !628, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !982, file: !628, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !982, file: !628, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !982, file: !628, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !982, file: !628, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !982, file: !628, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !982, file: !628, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !982, file: !628, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !982, file: !628, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !982, file: !628, line: 969, baseType: !323, size: 64, offset: 10176)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !982, file: !628, line: 971, baseType: !2216, size: 448, offset: 10240)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !44, line: 25, size: 448, elements: !2217)
!2217 = !{!2218, !2219, !2224}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2216, file: !44, line: 26, baseType: !323, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2216, file: !44, line: 27, baseType: !2220, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!309, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, scope: !2216, file: !44, line: 28, baseType: !2225, size: 320, offset: 128)
!2225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2216, file: !44, line: 28, size: 320, elements: !2226)
!2226 = !{!2227, !2237, !2262}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2225, file: !44, line: 37, baseType: !2228, size: 320)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2225, file: !44, line: 30, size: 320, elements: !2229)
!2229 = !{!2230, !2232, !2233, !2234, !2235, !2236}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2228, file: !44, line: 31, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2228, file: !44, line: 32, baseType: !422, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2228, file: !44, line: 33, baseType: !422, size: 32, offset: 96)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2228, file: !44, line: 34, baseType: !422, size: 32, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2228, file: !44, line: 35, baseType: !426, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2228, file: !44, line: 36, baseType: !2231, size: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2225, file: !44, line: 47, baseType: !2238, size: 192)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2225, file: !44, line: 39, size: 192, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2261}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2238, file: !44, line: 40, baseType: !1156, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2238, file: !44, line: 41, baseType: !43, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !44, line: 42, baseType: !2243, size: 64, offset: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !44, line: 42, size: 64, elements: !2244)
!2244 = !{!2245, !2253}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2243, file: !44, line: 43, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2248, line: 7, size: 128, elements: !2249)
!2248 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2249 = !{!2250, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2247, file: !2248, line: 8, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !307, line: 93, baseType: !516)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2247, file: !2248, line: 9, baseType: !516, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2243, file: !44, line: 44, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2256, line: 7, size: 64, elements: !2257)
!2256 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2257 = !{!2258, !2260}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2255, file: !2256, line: 8, baseType: !2259, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2256, line: 5, baseType: !1416)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2255, file: !2256, line: 9, baseType: !1416, size: 32, offset: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2238, file: !44, line: 46, baseType: !426, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2225, file: !44, line: 55, baseType: !2263, size: 256)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2225, file: !44, line: 49, size: 256, elements: !2264)
!2264 = !{!2265, !2268, !2269, !2270, !2271}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2263, file: !44, line: 50, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !44, line: 14, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2263, file: !44, line: 51, baseType: !103, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2263, file: !44, line: 52, baseType: !103, size: 32, offset: 96)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2263, file: !44, line: 53, baseType: !323, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2263, file: !44, line: 54, baseType: !323, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !982, file: !628, line: 973, baseType: !2273, size: 32, offset: 10688)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !174, line: 27, baseType: !2274)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !307, line: 28, baseType: !103)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !982, file: !628, line: 974, baseType: !2273, size: 32, offset: 10720)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !982, file: !628, line: 978, baseType: !323, size: 64, offset: 10752)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !982, file: !628, line: 987, baseType: !981, size: 64, offset: 10816)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !982, file: !628, line: 990, baseType: !981, size: 64, offset: 10880)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !982, file: !628, line: 995, baseType: !173, size: 128, offset: 10944)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !982, file: !628, line: 996, baseType: !173, size: 128, offset: 11072)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !982, file: !628, line: 997, baseType: !981, size: 64, offset: 11200)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !982, file: !628, line: 1005, baseType: !173, size: 128, offset: 11264)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !982, file: !628, line: 1006, baseType: !173, size: 128, offset: 11392)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !982, file: !628, line: 1009, baseType: !1353, size: 64, offset: 11520)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !982, file: !628, line: 1010, baseType: !2286, size: 512, offset: 11584)
!2286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 512, elements: !1361)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !982, file: !628, line: 1011, baseType: !173, size: 128, offset: 12096)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !982, file: !628, line: 1012, baseType: !173, size: 128, offset: 12224)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !982, file: !628, line: 1014, baseType: !2290, size: 64, offset: 12352)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !982, file: !628, line: 1017, baseType: !620, size: 64, offset: 12416)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !982, file: !628, line: 1020, baseType: !620, size: 64, offset: 12480)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !982, file: !628, line: 1023, baseType: !167, size: 64, offset: 12544)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !982, file: !628, line: 1025, baseType: !426, size: 64, offset: 12608)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !982, file: !628, line: 1026, baseType: !426, size: 64, offset: 12672)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !982, file: !628, line: 1031, baseType: !426, size: 64, offset: 12736)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !982, file: !628, line: 1032, baseType: !2298, size: 192, offset: 12800)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !628, line: 324, size: 192, elements: !2299)
!2299 = !{!2300, !2301, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2298, file: !628, line: 326, baseType: !426, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2298, file: !628, line: 327, baseType: !426, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2298, file: !628, line: 328, baseType: !666, size: 32, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !982, file: !628, line: 1041, baseType: !323, size: 64, offset: 12992)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !982, file: !628, line: 1042, baseType: !323, size: 64, offset: 13056)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !982, file: !628, line: 1045, baseType: !426, size: 64, offset: 13120)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !982, file: !628, line: 1048, baseType: !426, size: 64, offset: 13184)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !982, file: !628, line: 1051, baseType: !323, size: 64, offset: 13248)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !982, file: !628, line: 1052, baseType: !323, size: 64, offset: 13312)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !982, file: !628, line: 1055, baseType: !2310, size: 640, offset: 13376)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2311, line: 132, size: 640, elements: !2312)
!2311 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2312 = !{!2313, !2319, !2320}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2310, file: !2311, line: 133, baseType: !2314, size: 576)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2315, size: 576, elements: !274)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2311, line: 117, size: 192, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2315, file: !2311, line: 118, baseType: !426, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2315, file: !2311, line: 119, baseType: !1165, size: 128, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2310, file: !2311, line: 134, baseType: !7, size: 32, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2310, file: !2311, line: 135, baseType: !7, size: 32, offset: 608)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !982, file: !628, line: 1058, baseType: !2322, size: 448, offset: 14016)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2311, line: 144, size: 448, elements: !2323)
!2323 = !{!2324, !2325, !2326}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2322, file: !2311, line: 145, baseType: !966, size: 128, align: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2322, file: !2311, line: 146, baseType: !653, size: 256, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2322, file: !2311, line: 147, baseType: !7, size: 32, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !982, file: !628, line: 1064, baseType: !1381, size: 64, offset: 14464)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !982, file: !628, line: 1067, baseType: !1381, size: 64, offset: 14528)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !982, file: !628, line: 1070, baseType: !1381, size: 64, offset: 14592)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !982, file: !628, line: 1074, baseType: !1408, size: 64, offset: 14656)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !982, file: !628, line: 1084, baseType: !2332, size: 128, offset: 14720)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 128, elements: !2333)
!2333 = !{!2334}
!2334 = !DISubrange(count: 16)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !982, file: !628, line: 1086, baseType: !2336, size: 64, offset: 14848)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !628, line: 55, flags: DIFlagFwdDecl)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !982, file: !628, line: 1089, baseType: !2339, size: 64, offset: 14912)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2340, line: 12, size: 64, elements: !2341)
!2340 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2341 = !{!2342}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2339, file: !2340, line: 13, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2340, line: 8, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !982, file: !628, line: 1090, baseType: !2346, size: 128, offset: 14976)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2347, line: 13, size: 128, elements: !2348)
!2347 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2348 = !{!2349}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2346, file: !2347, line: 14, baseType: !173, size: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !982, file: !628, line: 1097, baseType: !2351, size: 64, offset: 15104)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !628, line: 50, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !982, file: !628, line: 1100, baseType: !2354, size: 64, offset: 15168)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !628, line: 1100, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !982, file: !628, line: 1103, baseType: !2357, size: 64, offset: 15232)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !628, line: 53, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !982, file: !628, line: 1107, baseType: !2360, size: 64, offset: 15296)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2362, line: 35, flags: DIFlagFwdDecl)
!2362 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !982, file: !628, line: 1110, baseType: !2364, size: 64, offset: 15360)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2366, line: 93, size: 8768, elements: !2367)
!2366 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2417, !2426, !2427, !2429, !2430, !2431, !2434, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2472, !2473, !2480, !2490, !2493, !2494, !2497, !2498, !2499, !2500, !2501, !2502}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2365, file: !2366, line: 94, baseType: !995, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2365, file: !2366, line: 95, baseType: !223, size: 32, offset: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2365, file: !2366, line: 96, baseType: !103, size: 32, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2365, file: !2366, line: 97, baseType: !103, size: 32, offset: 96)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2365, file: !2366, line: 98, baseType: !173, size: 128, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2365, file: !2366, line: 100, baseType: !959, size: 192, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2365, file: !2366, line: 103, baseType: !981, size: 64, offset: 448)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2365, file: !2366, line: 106, baseType: !2376, size: 192, offset: 512)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1561, line: 32, size: 192, elements: !2377)
!2377 = !{!2378, !2379}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2376, file: !1561, line: 33, baseType: !173, size: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2376, file: !1561, line: 34, baseType: !2380, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2381, line: 25, baseType: !2382)
!2381 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2381, line: 23, size: 64, elements: !2383)
!2383 = !{!2384}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2382, file: !2381, line: 24, baseType: !1236, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2365, file: !2366, line: 109, baseType: !545, size: 64, offset: 704)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2365, file: !2366, line: 112, baseType: !103, size: 32, offset: 768)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2365, file: !2366, line: 114, baseType: !103, size: 32, offset: 800)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2365, file: !2366, line: 115, baseType: !981, size: 64, offset: 832)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2365, file: !2366, line: 118, baseType: !103, size: 32, offset: 896)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2365, file: !2366, line: 119, baseType: !7, size: 32, offset: 928)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2365, file: !2366, line: 121, baseType: !2392, size: 64, offset: 960)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2366, line: 80, size: 448, elements: !2394)
!2394 = !{!2395, !2396, !2402}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2393, file: !2366, line: 81, baseType: !223, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2393, file: !2366, line: 82, baseType: !2397, size: 128, offset: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2366, line: 75, size: 128, elements: !2398)
!2398 = !{!2399, !2400}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2397, file: !2366, line: 76, baseType: !981, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2397, file: !2366, line: 77, baseType: !2401, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2393, file: !2366, line: 83, baseType: !1864, size: 256, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2365, file: !2366, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2365, file: !2366, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2365, file: !2366, line: 138, baseType: !7, size: 32, offset: 1056)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2365, file: !2366, line: 139, baseType: !173, size: 128, offset: 1088)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2365, file: !2366, line: 142, baseType: !1109, size: 512, offset: 1216)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2365, file: !2366, line: 143, baseType: !1117, size: 64, offset: 1728)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2365, file: !2366, line: 150, baseType: !2410, size: 256, offset: 1792)
!2410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2411, size: 256, elements: !2415)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2366, line: 38, size: 128, elements: !2412)
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2411, file: !2366, line: 39, baseType: !426, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2411, file: !2366, line: 40, baseType: !426, size: 64, offset: 64)
!2415 = !{!2416}
!2416 = !DISubrange(count: 2)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2365, file: !2366, line: 156, baseType: !2418, size: 192, offset: 2048)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2366, line: 66, size: 192, elements: !2419)
!2419 = !{!2420}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2418, file: !2366, line: 67, baseType: !2421, size: 192)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2366, line: 47, size: 192, elements: !2422)
!2422 = !{!2423, !2424, !2425}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2421, file: !2366, line: 48, baseType: !659, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2421, file: !2366, line: 49, baseType: !659, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2421, file: !2366, line: 50, baseType: !659, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2365, file: !2366, line: 160, baseType: !2310, size: 640, offset: 2240)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2365, file: !2366, line: 163, baseType: !2428, size: 256, offset: 2880)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, size: 256, elements: !1361)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2365, file: !2366, line: 169, baseType: !1353, size: 64, offset: 3136)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2365, file: !2366, line: 172, baseType: !103, size: 32, offset: 3200)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2365, file: !2366, line: 174, baseType: !2432, size: 64, offset: 3264)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2366, line: 174, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2365, file: !2366, line: 185, baseType: !2435, size: 64, offset: 3328)
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !395, line: 860, baseType: !2436)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 853, size: 64, elements: !2437)
!2437 = !{!2438, !2439}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2436, file: !395, line: 858, baseType: !394, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2436, file: !395, line: 859, baseType: !203, size: 32, offset: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2365, file: !2366, line: 186, baseType: !426, size: 64, offset: 3392)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2365, file: !2366, line: 186, baseType: !426, size: 64, offset: 3456)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2365, file: !2366, line: 186, baseType: !426, size: 64, offset: 3520)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2365, file: !2366, line: 186, baseType: !426, size: 64, offset: 3584)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2365, file: !2366, line: 187, baseType: !426, size: 64, offset: 3648)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2365, file: !2366, line: 188, baseType: !426, size: 64, offset: 3712)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2365, file: !2366, line: 189, baseType: !2298, size: 192, offset: 3776)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2365, file: !2366, line: 190, baseType: !323, size: 64, offset: 3968)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2365, file: !2366, line: 190, baseType: !323, size: 64, offset: 4032)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2365, file: !2366, line: 190, baseType: !323, size: 64, offset: 4096)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2365, file: !2366, line: 190, baseType: !323, size: 64, offset: 4160)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2365, file: !2366, line: 191, baseType: !323, size: 64, offset: 4224)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2365, file: !2366, line: 191, baseType: !323, size: 64, offset: 4288)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2365, file: !2366, line: 191, baseType: !323, size: 64, offset: 4352)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2365, file: !2366, line: 191, baseType: !323, size: 64, offset: 4416)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2365, file: !2366, line: 192, baseType: !323, size: 64, offset: 4480)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2365, file: !2366, line: 192, baseType: !323, size: 64, offset: 4544)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2365, file: !2366, line: 192, baseType: !323, size: 64, offset: 4608)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2365, file: !2366, line: 192, baseType: !323, size: 64, offset: 4672)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2365, file: !2366, line: 193, baseType: !323, size: 64, offset: 4736)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2365, file: !2366, line: 193, baseType: !323, size: 64, offset: 4800)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2365, file: !2366, line: 194, baseType: !2462, size: 448, offset: 4864)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2463, line: 12, size: 448, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2470, !2471}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2462, file: !2463, line: 15, baseType: !426, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2462, file: !2463, line: 17, baseType: !426, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2462, file: !2463, line: 19, baseType: !426, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2462, file: !2463, line: 21, baseType: !426, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2462, file: !2463, line: 29, baseType: !426, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2462, file: !2463, line: 35, baseType: !426, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2462, file: !2463, line: 44, baseType: !426, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2365, file: !2366, line: 202, baseType: !428, size: 64, offset: 5312)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2365, file: !2366, line: 213, baseType: !2474, size: 2048, offset: 5376)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2475, size: 2048, elements: !2333)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2476, line: 43, size: 128, elements: !2477)
!2476 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2477 = !{!2478, !2479}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2475, file: !2476, line: 44, baseType: !322, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2475, file: !2476, line: 45, baseType: !322, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2365, file: !2366, line: 216, baseType: !2481, size: 448, offset: 7424)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2366, line: 30, size: 448, elements: !2482)
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488, !2489}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2481, file: !2366, line: 31, baseType: !103, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2481, file: !2366, line: 32, baseType: !309, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2481, file: !2366, line: 33, baseType: !323, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2481, file: !2366, line: 34, baseType: !426, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2481, file: !2366, line: 34, baseType: !426, size: 64, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2481, file: !2366, line: 35, baseType: !323, size: 64, offset: 320)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2481, file: !2366, line: 35, baseType: !323, size: 64, offset: 384)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2365, file: !2366, line: 219, baseType: !2491, size: 64, offset: 7872)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2366, line: 219, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2365, file: !2366, line: 222, baseType: !7, size: 32, offset: 7936)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2365, file: !2366, line: 223, baseType: !2495, size: 64, offset: 8000)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2366, line: 223, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2365, file: !2366, line: 230, baseType: !1473, size: 8, offset: 8064)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2365, file: !2366, line: 231, baseType: !1442, size: 16, offset: 8080)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2365, file: !2366, line: 232, baseType: !1442, size: 16, offset: 8096)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2365, file: !2366, line: 234, baseType: !1285, size: 64, offset: 8128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2365, file: !2366, line: 237, baseType: !653, size: 256, offset: 8192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2365, file: !2366, line: 243, baseType: !866, size: 320, offset: 8448)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !982, file: !628, line: 1111, baseType: !2504, size: 64, offset: 15424)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2366, line: 20, size: 16640, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2510}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2505, file: !2366, line: 21, baseType: !203, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2505, file: !2366, line: 22, baseType: !995, size: 32, offset: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2505, file: !2366, line: 23, baseType: !959, size: 192, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2505, file: !2366, line: 24, baseType: !2511, size: 16384, offset: 256)
!2511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2512, size: 16384, elements: !278)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1561, line: 51, size: 256, elements: !2513)
!2513 = !{!2514}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2512, file: !1561, line: 52, baseType: !2515, size: 256)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1561, line: 37, size: 256, elements: !2516)
!2516 = !{!2517, !2524, !2525, !2531}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2515, file: !1561, line: 39, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2519, line: 83, baseType: !2520)
!2519 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2519, line: 82, baseType: !2522)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null, !103}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2515, file: !1561, line: 40, baseType: !323, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2515, file: !1561, line: 46, baseType: !2526, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2519, line: 86, baseType: !2527)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2519, line: 85, baseType: !2529)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2515, file: !1561, line: 48, baseType: !2380, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !982, file: !628, line: 1112, baseType: !2380, size: 64, offset: 15488)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !982, file: !628, line: 1113, baseType: !2380, size: 64, offset: 15552)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !982, file: !628, line: 1115, baseType: !2380, size: 64, offset: 15616)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !982, file: !628, line: 1116, baseType: !2376, size: 192, offset: 15680)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !982, file: !628, line: 1117, baseType: !323, size: 64, offset: 15872)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !982, file: !628, line: 1118, baseType: !320, size: 64, offset: 15936)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !982, file: !628, line: 1119, baseType: !7, size: 32, offset: 16000)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !982, file: !628, line: 1121, baseType: !969, size: 64, offset: 16064)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !982, file: !628, line: 1125, baseType: !2541, size: 64, offset: 16128)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !628, line: 43, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !982, file: !628, line: 1127, baseType: !359, size: 32, offset: 16192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !982, file: !628, line: 1128, baseType: !7, size: 32, offset: 16224)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !982, file: !628, line: 1130, baseType: !2546, size: 128, offset: 16256)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2547, line: 37, size: 128, elements: !2548)
!2547 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2548 = !{!2549, !2550, !2551}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2546, file: !2547, line: 38, baseType: !103, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2546, file: !2547, line: 39, baseType: !223, size: 32, offset: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2546, file: !2547, line: 40, baseType: !2552, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2547, line: 24, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !982, file: !628, line: 1131, baseType: !2555, size: 256, offset: 16384)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2556, line: 12, size: 256, elements: !2557)
!2556 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2557 = !{!2558, !2559, !2560, !2561}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2555, file: !2556, line: 13, baseType: !273, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2555, file: !2556, line: 14, baseType: !323, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2555, file: !2556, line: 15, baseType: !323, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2555, file: !2556, line: 16, baseType: !1473, size: 8, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !982, file: !628, line: 1134, baseType: !426, size: 64, offset: 16640)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !982, file: !628, line: 1135, baseType: !426, size: 64, offset: 16704)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !982, file: !628, line: 1138, baseType: !203, size: 32, offset: 16768)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !982, file: !628, line: 1141, baseType: !666, size: 32, offset: 16800)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !982, file: !628, line: 1143, baseType: !2567, size: 64, offset: 16832)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !628, line: 735, size: 64, elements: !2568)
!2568 = !{!2569}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2567, file: !628, line: 736, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !982, file: !628, line: 1147, baseType: !1168, size: 128, offset: 16896)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !982, file: !628, line: 1149, baseType: !981, size: 64, offset: 17024)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !982, file: !628, line: 1151, baseType: !2574, size: 64, offset: 17088)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !628, line: 1151, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !982, file: !628, line: 1188, baseType: !167, size: 64, offset: 17152)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !982, file: !628, line: 1191, baseType: !2578, size: 64, offset: 17216)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !628, line: 44, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !982, file: !628, line: 1194, baseType: !2581, size: 64, offset: 17280)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !628, line: 45, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !982, file: !628, line: 1197, baseType: !2584, size: 64, offset: 17344)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !628, line: 61, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !982, file: !628, line: 1199, baseType: !2587, size: 64, offset: 17408)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2589, line: 99, size: 128, elements: !2590)
!2589 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2590 = !{!2591, !2592, !2593}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2588, file: !2589, line: 100, baseType: !657, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2588, file: !2589, line: 101, baseType: !223, size: 32, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2588, file: !2589, line: 103, baseType: !243, size: 16, offset: 96)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !982, file: !628, line: 1202, baseType: !2595, size: 64, offset: 17472)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !628, line: 48, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !982, file: !628, line: 1205, baseType: !323, size: 64, offset: 17536)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !982, file: !628, line: 1206, baseType: !2599, size: 64, offset: 17600)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1561, line: 14, baseType: !2601)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1561, line: 12, size: 384, elements: !2602)
!2602 = !{!2603}
!2603 = !DIDerivedType(tag: DW_TAG_member, scope: !2601, file: !1561, line: 13, baseType: !2604, size: 384)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2601, file: !1561, line: 13, size: 384, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2609}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2604, file: !1561, line: 13, baseType: !103, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2604, file: !1561, line: 13, baseType: !103, size: 32, offset: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2604, file: !1561, line: 13, baseType: !103, size: 32, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2604, file: !1561, line: 13, baseType: !2610, size: 256, offset: 128)
!2610 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2611, line: 37, size: 256, elements: !2612)
!2611 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2612 = !{!2613, !2618, !2631, !2637, !2646, !2673, !2678}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2610, file: !2611, line: 42, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2610, file: !2611, line: 39, size: 64, elements: !2615)
!2615 = !{!2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2614, file: !2611, line: 40, baseType: !2274, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2614, file: !2611, line: 41, baseType: !365, size: 32, offset: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2610, file: !2611, line: 50, baseType: !2619, size: 192)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2610, file: !2611, line: 45, size: 192, elements: !2620)
!2620 = !{!2621, !2623, !2624, !2630}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2619, file: !2611, line: 46, baseType: !2622, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !307, line: 95, baseType: !103)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2619, file: !2611, line: 47, baseType: !103, size: 32, offset: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2619, file: !2611, line: 48, baseType: !2625, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2611, line: 11, baseType: !2626)
!2626 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2611, line: 8, size: 64, elements: !2627)
!2627 = !{!2628, !2629}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2626, file: !2611, line: 9, baseType: !103, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2626, file: !2611, line: 10, baseType: !167, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2619, file: !2611, line: 49, baseType: !103, size: 32, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2610, file: !2611, line: 57, baseType: !2632, size: 128)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2610, file: !2611, line: 53, size: 128, elements: !2633)
!2633 = !{!2634, !2635, !2636}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2632, file: !2611, line: 54, baseType: !2274, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2632, file: !2611, line: 55, baseType: !365, size: 32, offset: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2632, file: !2611, line: 56, baseType: !2625, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2610, file: !2611, line: 66, baseType: !2638, size: 256)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2610, file: !2611, line: 60, size: 256, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2645}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2638, file: !2611, line: 61, baseType: !2274, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2638, file: !2611, line: 62, baseType: !365, size: 32, offset: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2638, file: !2611, line: 63, baseType: !103, size: 32, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2638, file: !2611, line: 64, baseType: !2644, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !307, line: 94, baseType: !308)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2638, file: !2611, line: 65, baseType: !2644, size: 64, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2610, file: !2611, line: 105, baseType: !2647, size: 256)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2610, file: !2611, line: 69, size: 256, elements: !2648)
!2648 = !{!2649, !2650}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2647, file: !2611, line: 70, baseType: !167, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !2647, file: !2611, line: 79, baseType: !2651, size: 192, offset: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2647, file: !2611, line: 79, size: 192, elements: !2652)
!2652 = !{!2653, !2654, !2655, !2662, !2667}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2651, file: !2611, line: 81, baseType: !103, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2651, file: !2611, line: 86, baseType: !1442, size: 16)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2651, file: !2611, line: 92, baseType: !2656, size: 192)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2651, file: !2611, line: 88, size: 192, elements: !2657)
!2657 = !{!2658, !2660, !2661}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2656, file: !2611, line: 89, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 64, elements: !1152)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2656, file: !2611, line: 90, baseType: !167, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2656, file: !2611, line: 91, baseType: !167, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2651, file: !2611, line: 97, baseType: !2663, size: 96)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2651, file: !2611, line: 94, size: 96, elements: !2664)
!2664 = !{!2665, !2666}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2663, file: !2611, line: 95, baseType: !2659, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2663, file: !2611, line: 96, baseType: !423, size: 32, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2651, file: !2611, line: 103, baseType: !2668, size: 128)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2651, file: !2611, line: 99, size: 128, elements: !2669)
!2669 = !{!2670, !2671, !2672}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2668, file: !2611, line: 100, baseType: !323, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2668, file: !2611, line: 101, baseType: !423, size: 32, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2668, file: !2611, line: 102, baseType: !423, size: 32, offset: 96)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2610, file: !2611, line: 111, baseType: !2674, size: 128)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2610, file: !2611, line: 108, size: 128, elements: !2675)
!2675 = !{!2676, !2677}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2674, file: !2611, line: 109, baseType: !309, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2674, file: !2611, line: 110, baseType: !103, size: 32, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2610, file: !2611, line: 118, baseType: !2679, size: 128)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2610, file: !2611, line: 114, size: 128, elements: !2680)
!2680 = !{!2681, !2682, !2683}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2679, file: !2611, line: 115, baseType: !167, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2679, file: !2611, line: 116, baseType: !103, size: 32, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2679, file: !2611, line: 117, baseType: !7, size: 32, offset: 96)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !982, file: !628, line: 1208, baseType: !2462, size: 448, offset: 17664)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !982, file: !628, line: 1215, baseType: !426, size: 64, offset: 18112)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !982, file: !628, line: 1217, baseType: !426, size: 64, offset: 18176)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !982, file: !628, line: 1219, baseType: !426, size: 64, offset: 18240)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !982, file: !628, line: 1223, baseType: !2689, size: 64, offset: 18304)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2690, line: 99, baseType: !2691)
!2690 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2690, line: 99, size: 64, elements: !2692)
!2692 = !{!2693}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2691, file: !2690, line: 99, baseType: !1236, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !982, file: !628, line: 1225, baseType: !394, size: 32, offset: 18368)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !982, file: !628, line: 1226, baseType: !103, size: 32, offset: 18400)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !982, file: !628, line: 1227, baseType: !103, size: 32, offset: 18432)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !982, file: !628, line: 1231, baseType: !2698, size: 64, offset: 18496)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !628, line: 1231, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !982, file: !628, line: 1233, baseType: !173, size: 128, offset: 18560)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !982, file: !628, line: 1240, baseType: !2702, size: 64, offset: 18688)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !628, line: 62, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !982, file: !628, line: 1242, baseType: !2705, size: 64, offset: 18752)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !628, line: 1242, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !982, file: !628, line: 1244, baseType: !173, size: 128, offset: 18816)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !982, file: !628, line: 1245, baseType: !2709, size: 64, offset: 18944)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !628, line: 51, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !982, file: !628, line: 1246, baseType: !653, size: 256, offset: 19008)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !982, file: !628, line: 1247, baseType: !7, size: 32, offset: 19264)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !982, file: !628, line: 1250, baseType: !2714, size: 64, offset: 19328)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !628, line: 57, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !982, file: !628, line: 1251, baseType: !653, size: 256, offset: 19392)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !982, file: !628, line: 1252, baseType: !173, size: 128, offset: 19648)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !982, file: !628, line: 1259, baseType: !1950, size: 64, offset: 19776)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !982, file: !628, line: 1260, baseType: !1442, size: 16, offset: 19840)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !982, file: !628, line: 1261, baseType: !1442, size: 16, offset: 19856)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !982, file: !628, line: 1314, baseType: !2722, size: 64, offset: 19904)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2724, line: 62, size: 256, align: 256, elements: !2725)
!2724 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731, !2732}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2723, file: !2724, line: 75, baseType: !423, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2723, file: !2724, line: 90, baseType: !423, size: 32, offset: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2723, file: !2724, line: 112, baseType: !427, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2723, file: !2724, line: 132, baseType: !423, size: 32, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2723, file: !2724, line: 140, baseType: !423, size: 32, offset: 160)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2723, file: !2724, line: 149, baseType: !423, size: 32, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2723, file: !2724, line: 154, baseType: !2733, offset: 224)
!2733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, elements: !1374)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !982, file: !628, line: 1315, baseType: !422, size: 32, offset: 19968)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !982, file: !628, line: 1316, baseType: !422, size: 32, offset: 20000)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !982, file: !628, line: 1321, baseType: !323, size: 64, offset: 20032)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !982, file: !628, line: 1325, baseType: !103, size: 32, offset: 20096)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !982, file: !628, line: 1326, baseType: !103, size: 32, offset: 20128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !982, file: !628, line: 1327, baseType: !103, size: 32, offset: 20160)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !982, file: !628, line: 1328, baseType: !103, size: 32, offset: 20192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !982, file: !628, line: 1329, baseType: !966, size: 128, align: 64, offset: 20224)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !982, file: !628, line: 1332, baseType: !2743, size: 128, offset: 20352)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2744, line: 51, size: 128, elements: !2745)
!2744 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2745 = !{!2746, !2751, !2752}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2743, file: !2744, line: 60, baseType: !2747, size: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2748, line: 7, size: 64, elements: !2749)
!2748 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2749 = !{!2750}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2747, file: !2748, line: 12, baseType: !1233, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2743, file: !2744, line: 63, baseType: !1473, size: 8, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2743, file: !2744, line: 70, baseType: !1473, size: 8, offset: 72)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !982, file: !628, line: 1335, baseType: !2002, size: 64, offset: 20480)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !982, file: !628, line: 1337, baseType: !2755, size: 128, offset: 20544)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2744, line: 39, size: 128, elements: !2756)
!2756 = !{!2757, !2758, !2759}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2755, file: !2744, line: 40, baseType: !1779, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2755, file: !2744, line: 42, baseType: !423, size: 32, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2755, file: !2744, line: 43, baseType: !423, size: 32, offset: 96)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !982, file: !628, line: 1340, baseType: !2761, size: 64, offset: 20672)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !628, line: 69, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !982, file: !628, line: 1351, baseType: !103, size: 32, offset: 20736)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !982, file: !628, line: 1352, baseType: !103, size: 32, offset: 20768)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !982, file: !628, line: 1354, baseType: !323, size: 64, offset: 20800)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !982, file: !628, line: 1364, baseType: !426, size: 64, offset: 20864)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !982, file: !628, line: 1365, baseType: !426, size: 64, offset: 20928)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !982, file: !628, line: 1412, baseType: !323, size: 64, offset: 20992)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !982, file: !628, line: 1453, baseType: !2770, size: 64, offset: 21056)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !628, line: 1453, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !982, file: !628, line: 1457, baseType: !2773, size: 64, offset: 21120)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !2775)
!2775 = !{!2776, !2777, !2796, !2799, !2800, !2833, !2843}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2774, file: !81, line: 62, baseType: !80, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, scope: !2774, file: !81, line: 64, baseType: !2778, size: 192, offset: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2774, file: !81, line: 64, size: 192, elements: !2779)
!2779 = !{!2780, !2791}
!2780 = !DIDerivedType(tag: DW_TAG_member, scope: !2778, file: !81, line: 65, baseType: !2781, size: 192)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2778, file: !81, line: 65, size: 192, elements: !2782)
!2782 = !{!2783, !2790}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2781, file: !81, line: 66, baseType: !2784, size: 128)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2785, line: 50, size: 128, elements: !2786)
!2785 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2786 = !{!2787, !2788, !2789}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2784, file: !2785, line: 52, baseType: !323, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2784, file: !2785, line: 54, baseType: !7, size: 32, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2784, file: !2785, line: 55, baseType: !7, size: 32, offset: 96)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2781, file: !81, line: 67, baseType: !323, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, scope: !2778, file: !81, line: 70, baseType: !2792, size: 192)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2778, file: !81, line: 70, size: 192, elements: !2793)
!2793 = !{!2794, !2795}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2792, file: !81, line: 71, baseType: !966, size: 128, align: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2792, file: !81, line: 72, baseType: !323, size: 64, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2774, file: !81, line: 76, baseType: !2797, size: 64, offset: 256)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2774, file: !81, line: 77, baseType: !323, size: 64, offset: 320)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2774, file: !81, line: 79, baseType: !2801, size: 64, offset: 384)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2785, line: 25, size: 256, elements: !2803)
!2803 = !{!2804, !2810, !2814}
!2804 = !DIDerivedType(tag: DW_TAG_member, scope: !2802, file: !2785, line: 26, baseType: !2805, size: 128)
!2805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2802, file: !2785, line: 26, size: 128, elements: !2806)
!2806 = !{!2807, !2809}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2805, file: !2785, line: 27, baseType: !2808, size: 128)
!2808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 128, elements: !2333)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2805, file: !2785, line: 28, baseType: !2808, size: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2802, file: !2785, line: 31, baseType: !2811, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2813)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2785, line: 23, flags: DIFlagFwdDecl)
!2814 = !DIDerivedType(tag: DW_TAG_member, scope: !2802, file: !2785, line: 33, baseType: !2815, size: 64, offset: 192)
!2815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2802, file: !2785, line: 33, size: 64, elements: !2816)
!2816 = !{!2817, !2823, !2828}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2815, file: !2785, line: 38, baseType: !2818, size: 64)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2815, file: !2785, line: 34, size: 64, elements: !2819)
!2819 = !{!2820, !2821, !2822}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2818, file: !2785, line: 35, baseType: !1416, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2818, file: !2785, line: 36, baseType: !231, size: 8, offset: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2818, file: !2785, line: 37, baseType: !231, size: 8, offset: 40)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2815, file: !2785, line: 42, baseType: !2824, size: 16)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2815, file: !2785, line: 39, size: 16, elements: !2825)
!2825 = !{!2826, !2827}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2824, file: !2785, line: 40, baseType: !231, size: 8)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2824, file: !2785, line: 41, baseType: !231, size: 8, offset: 8)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2815, file: !2785, line: 46, baseType: !2829, size: 16)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2815, file: !2785, line: 43, size: 16, elements: !2830)
!2830 = !{!2831, !2832}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2829, file: !2785, line: 44, baseType: !231, size: 8)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2829, file: !2785, line: 45, baseType: !231, size: 8, offset: 8)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2774, file: !81, line: 81, baseType: !2834, size: 64, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2835, file: !81, line: 86, baseType: !2797, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2835, file: !81, line: 87, baseType: !323, size: 64, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2835, file: !81, line: 88, baseType: !323, size: 64, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2835, file: !81, line: 89, baseType: !323, size: 64, offset: 192)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2835, file: !81, line: 90, baseType: !1473, size: 8, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2835, file: !81, line: 92, baseType: !2834, size: 64, offset: 320)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2774, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !982, file: !628, line: 1463, baseType: !2845, offset: 21184)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !628, line: 739, elements: !557)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !982, file: !628, line: 1470, baseType: !966, size: 128, align: 64, offset: 21184)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !982, file: !628, line: 1471, baseType: !995, size: 32, offset: 21312)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !982, file: !628, line: 1472, baseType: !103, size: 32, offset: 21344)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !982, file: !628, line: 1474, baseType: !981, size: 64, offset: 21376)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !982, file: !628, line: 1475, baseType: !2851, size: 320, offset: 21440)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2852, line: 11, size: 320, elements: !2853)
!2852 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2853 = !{!2854, !2855, !2856, !2861}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2851, file: !2852, line: 16, baseType: !549, size: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2851, file: !2852, line: 17, baseType: !323, size: 64, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2851, file: !2852, line: 18, baseType: !2857, size: 64, offset: 192)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{null, !2860}
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2851, file: !2852, line: 19, baseType: !422, size: 32, offset: 256)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !982, file: !628, line: 1478, baseType: !2863, size: 64, offset: 21760)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2865, line: 49, size: 512, elements: !2866)
!2865 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2873, !2874, !2875, !2877}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2864, file: !2865, line: 50, baseType: !2863, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2864, file: !2865, line: 51, baseType: !167, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2864, file: !2865, line: 52, baseType: !323, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2864, file: !2865, line: 53, baseType: !323, size: 64, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2864, file: !2865, line: 54, baseType: !2872, size: 64, offset: 256)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2864, file: !2865, line: 56, baseType: !7, size: 32, offset: 320)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2864, file: !2865, line: 58, baseType: !7, size: 32, offset: 352)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2864, file: !2865, line: 59, baseType: !2876, size: 64, offset: 384)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !174, line: 159, baseType: !426)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2864, file: !2865, line: 60, baseType: !2141, size: 64, offset: 448)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !982, file: !628, line: 1482, baseType: !995, size: 32, offset: 21824)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !982, file: !628, line: 1489, baseType: !167, size: 64, offset: 21888)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !982, file: !628, line: 1504, baseType: !167, size: 64, offset: 21952)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !982, file: !628, line: 1505, baseType: !427, size: 64, offset: 22016)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !982, file: !628, line: 1506, baseType: !426, size: 64, offset: 22080)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !982, file: !628, line: 1507, baseType: !427, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !982, file: !628, line: 1508, baseType: !427, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !982, file: !628, line: 1509, baseType: !427, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !982, file: !628, line: 1510, baseType: !966, size: 128, align: 64, offset: 22208)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !982, file: !628, line: 1511, baseType: !103, size: 32, offset: 22336)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !982, file: !628, line: 1515, baseType: !2889, size: 64, offset: 22400)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1009, line: 56, size: 64, elements: !2890)
!2890 = !{!2891}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2889, file: !1009, line: 57, baseType: !1012, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !982, file: !628, line: 1518, baseType: !2889, size: 64, offset: 22464)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !982, file: !628, line: 1528, baseType: !966, size: 128, align: 64, offset: 22528)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !982, file: !628, line: 1552, baseType: !2895, size: 35328, offset: 23040)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2896, line: 430, size: 35328, elements: !2897)
!2896 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2897 = !{!2898, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2927, !2928, !2929, !2930, !2931, !2932, !2935, !2936, !2937, !2938}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2895, file: !2896, line: 432, baseType: !2899, size: 192)
!2899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2900, size: 192, elements: !274)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2901, line: 16, size: 64, elements: !2902)
!2901 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2902 = !{!2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2900, file: !2901, line: 17, baseType: !241, size: 16)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2900, file: !2901, line: 18, baseType: !241, size: 16, offset: 16)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2900, file: !2901, line: 19, baseType: !241, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2900, file: !2901, line: 19, baseType: !241, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2900, file: !2901, line: 19, baseType: !241, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2900, file: !2901, line: 19, baseType: !241, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2900, file: !2901, line: 19, baseType: !241, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2900, file: !2901, line: 20, baseType: !241, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2900, file: !2901, line: 20, baseType: !241, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2900, file: !2901, line: 20, baseType: !241, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2900, file: !2901, line: 20, baseType: !241, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2900, file: !2901, line: 20, baseType: !241, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2900, file: !2901, line: 20, baseType: !241, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2895, file: !2896, line: 436, baseType: !323, size: 64, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2895, file: !2896, line: 440, baseType: !243, size: 16, offset: 256)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2895, file: !2896, line: 441, baseType: !243, size: 16, offset: 272)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2895, file: !2896, line: 442, baseType: !243, size: 16, offset: 288)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2895, file: !2896, line: 443, baseType: !243, size: 16, offset: 304)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2895, file: !2896, line: 447, baseType: !323, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2895, file: !2896, line: 448, baseType: !323, size: 64, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2895, file: !2896, line: 459, baseType: !2924, size: 256, offset: 448)
!2924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2925, size: 256, elements: !1361)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2896, line: 428, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2895, file: !2896, line: 461, baseType: !323, size: 64, offset: 704)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2895, file: !2896, line: 463, baseType: !323, size: 64, offset: 768)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2895, file: !2896, line: 465, baseType: !323, size: 64, offset: 832)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2895, file: !2896, line: 466, baseType: !323, size: 64, offset: 896)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2895, file: !2896, line: 467, baseType: !323, size: 64, offset: 960)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2895, file: !2896, line: 473, baseType: !2933, size: 64, offset: 1024)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2896, line: 10, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2895, file: !2896, line: 480, baseType: !323, size: 64, offset: 1088)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2895, file: !2896, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2895, file: !2896, line: 491, baseType: !422, size: 32, offset: 1184)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2895, file: !2896, line: 501, baseType: !2939, size: 33792, offset: 1536)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2940, line: 448, size: 33792, elements: !2941)
!2940 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2941 = !{!2942, !2943, !2944, !3106, !3107, !3113, !3114}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2939, file: !2940, line: 461, baseType: !7, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2939, file: !2940, line: 468, baseType: !323, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2939, file: !2940, line: 476, baseType: !2945, size: 64, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2940, line: 356, size: 33280, align: 512, elements: !2947)
!2947 = !{!2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2946, file: !2940, line: 358, baseType: !7, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2946, file: !2940, line: 361, baseType: !7, size: 32, offset: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2946, file: !2940, line: 364, baseType: !426, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2946, file: !2940, line: 367, baseType: !426, size: 64, offset: 128)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2946, file: !2940, line: 370, baseType: !426, size: 64, offset: 192)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2946, file: !2940, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2946, file: !2940, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2946, file: !2940, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2946, file: !2940, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2946, file: !2940, line: 397, baseType: !2958, size: 32768, offset: 512)
!2958 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2940, line: 348, size: 32768, elements: !2959)
!2959 = !{!2960, !2975, !3012, !3089, !3102}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2958, file: !2940, line: 349, baseType: !2961, size: 896)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2940, line: 12, size: 896, elements: !2962)
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2974}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2961, file: !2940, line: 13, baseType: !422, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2961, file: !2940, line: 14, baseType: !422, size: 32, offset: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2961, file: !2940, line: 15, baseType: !422, size: 32, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2961, file: !2940, line: 16, baseType: !422, size: 32, offset: 96)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2961, file: !2940, line: 17, baseType: !422, size: 32, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2961, file: !2940, line: 18, baseType: !422, size: 32, offset: 160)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2961, file: !2940, line: 19, baseType: !422, size: 32, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2961, file: !2940, line: 22, baseType: !2971, size: 640, offset: 224)
!2971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 640, elements: !2972)
!2972 = !{!2973}
!2973 = !DISubrange(count: 20)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2961, file: !2940, line: 25, baseType: !422, size: 32, offset: 864)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2958, file: !2940, line: 350, baseType: !2976, size: 4096, align: 128)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2940, line: 34, size: 4096, align: 128, elements: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2997, !2998, !2999, !3001, !3003, !3007}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2976, file: !2940, line: 35, baseType: !241, size: 16)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2976, file: !2940, line: 36, baseType: !241, size: 16, offset: 16)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2976, file: !2940, line: 37, baseType: !241, size: 16, offset: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2976, file: !2940, line: 38, baseType: !241, size: 16, offset: 48)
!2982 = !DIDerivedType(tag: DW_TAG_member, scope: !2976, file: !2940, line: 39, baseType: !2983, size: 128, offset: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2976, file: !2940, line: 39, size: 128, elements: !2984)
!2984 = !{!2985, !2990}
!2985 = !DIDerivedType(tag: DW_TAG_member, scope: !2983, file: !2940, line: 40, baseType: !2986, size: 128)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !2940, line: 40, size: 128, elements: !2987)
!2987 = !{!2988, !2989}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2986, file: !2940, line: 41, baseType: !426, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2986, file: !2940, line: 42, baseType: !426, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, scope: !2983, file: !2940, line: 44, baseType: !2991, size: 128)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !2940, line: 44, size: 128, elements: !2992)
!2992 = !{!2993, !2994, !2995, !2996}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2991, file: !2940, line: 45, baseType: !422, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2991, file: !2940, line: 46, baseType: !422, size: 32, offset: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2991, file: !2940, line: 47, baseType: !422, size: 32, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2991, file: !2940, line: 48, baseType: !422, size: 32, offset: 96)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2976, file: !2940, line: 51, baseType: !422, size: 32, offset: 192)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2976, file: !2940, line: 52, baseType: !422, size: 32, offset: 224)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2976, file: !2940, line: 55, baseType: !3000, size: 1024, offset: 256)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 1024, elements: !435)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2976, file: !2940, line: 58, baseType: !3002, size: 2048, offset: 1280)
!3002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 2048, elements: !278)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2976, file: !2940, line: 60, baseType: !3004, size: 384, offset: 3328)
!3004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 384, elements: !3005)
!3005 = !{!3006}
!3006 = !DISubrange(count: 12)
!3007 = !DIDerivedType(tag: DW_TAG_member, scope: !2976, file: !2940, line: 62, baseType: !3008, size: 384, offset: 3712)
!3008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2976, file: !2940, line: 62, size: 384, elements: !3009)
!3009 = !{!3010, !3011}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3008, file: !2940, line: 63, baseType: !3004, size: 384)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3008, file: !2940, line: 64, baseType: !3004, size: 384)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2958, file: !2940, line: 351, baseType: !3013, size: 1088)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2940, line: 79, size: 1088, elements: !3014)
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3088}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3013, file: !2940, line: 80, baseType: !422, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3013, file: !2940, line: 81, baseType: !422, size: 32, offset: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3013, file: !2940, line: 82, baseType: !422, size: 32, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3013, file: !2940, line: 83, baseType: !422, size: 32, offset: 96)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3013, file: !2940, line: 84, baseType: !422, size: 32, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3013, file: !2940, line: 85, baseType: !422, size: 32, offset: 160)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3013, file: !2940, line: 86, baseType: !422, size: 32, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3013, file: !2940, line: 88, baseType: !2971, size: 640, offset: 224)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3013, file: !2940, line: 89, baseType: !231, size: 8, offset: 864)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3013, file: !2940, line: 90, baseType: !231, size: 8, offset: 872)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3013, file: !2940, line: 91, baseType: !231, size: 8, offset: 880)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3013, file: !2940, line: 92, baseType: !231, size: 8, offset: 888)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3013, file: !2940, line: 93, baseType: !231, size: 8, offset: 896)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3013, file: !2940, line: 94, baseType: !231, size: 8, offset: 904)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3013, file: !2940, line: 95, baseType: !3030, size: 64, offset: 960)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3032, line: 11, size: 128, elements: !3033)
!3032 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3033 = !{!3034, !3035}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3031, file: !3032, line: 12, baseType: !309, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3031, file: !3032, line: 13, baseType: !3036, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3038, line: 103, size: 1344, elements: !3039)
!3038 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3039 = !{!3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3068, !3069, !3070}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3037, file: !3038, line: 109, baseType: !323, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3037, file: !3038, line: 110, baseType: !323, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3037, file: !3038, line: 111, baseType: !323, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3037, file: !3038, line: 112, baseType: !323, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3037, file: !3038, line: 113, baseType: !323, size: 64, offset: 256)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3037, file: !3038, line: 114, baseType: !323, size: 64, offset: 320)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3037, file: !3038, line: 117, baseType: !323, size: 64, offset: 384)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3037, file: !3038, line: 118, baseType: !323, size: 64, offset: 448)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3037, file: !3038, line: 119, baseType: !323, size: 64, offset: 512)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3037, file: !3038, line: 120, baseType: !323, size: 64, offset: 576)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3037, file: !3038, line: 121, baseType: !323, size: 64, offset: 640)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3037, file: !3038, line: 122, baseType: !323, size: 64, offset: 704)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3037, file: !3038, line: 123, baseType: !323, size: 64, offset: 768)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3037, file: !3038, line: 124, baseType: !323, size: 64, offset: 832)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3037, file: !3038, line: 125, baseType: !323, size: 64, offset: 896)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3037, file: !3038, line: 139, baseType: !323, size: 64, offset: 960)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3037, file: !3038, line: 142, baseType: !323, size: 64, offset: 1024)
!3057 = !DIDerivedType(tag: DW_TAG_member, scope: !3037, file: !3038, line: 144, baseType: !3058, size: 64, offset: 1088)
!3058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3037, file: !3038, line: 144, size: 64, elements: !3059)
!3059 = !{!3060, !3061, !3062}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3058, file: !3038, line: 146, baseType: !241, size: 16)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3058, file: !3038, line: 148, baseType: !426, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3058, file: !3038, line: 150, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3038, line: 59, size: 64, elements: !3064)
!3064 = !{!3065, !3066, !3067}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3063, file: !3038, line: 61, baseType: !426, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3063, file: !3038, line: 63, baseType: !426, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3063, file: !3038, line: 65, baseType: !426, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3037, file: !3038, line: 153, baseType: !323, size: 64, offset: 1152)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3037, file: !3038, line: 154, baseType: !323, size: 64, offset: 1216)
!3070 = !DIDerivedType(tag: DW_TAG_member, scope: !3037, file: !3038, line: 156, baseType: !3071, size: 64, offset: 1280)
!3071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3037, file: !3038, line: 156, size: 64, elements: !3072)
!3072 = !{!3073, !3074, !3075}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3071, file: !3038, line: 158, baseType: !241, size: 16)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3071, file: !3038, line: 160, baseType: !426, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3071, file: !3038, line: 162, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3038, line: 69, size: 64, elements: !3077)
!3077 = !{!3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3076, file: !3038, line: 71, baseType: !426, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3076, file: !3038, line: 73, baseType: !426, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3076, file: !3038, line: 75, baseType: !426, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3076, file: !3038, line: 77, baseType: !426, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3076, file: !3038, line: 80, baseType: !426, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3076, file: !3038, line: 83, baseType: !426, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3076, file: !3038, line: 86, baseType: !426, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3076, file: !3038, line: 88, baseType: !426, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3076, file: !3038, line: 93, baseType: !426, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3076, file: !3038, line: 100, baseType: !426, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3013, file: !2940, line: 96, baseType: !422, size: 32, offset: 1024)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2958, file: !2940, line: 352, baseType: !3090, size: 4608, align: 512)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2940, line: 333, size: 4608, align: 512, elements: !3091)
!3091 = !{!3092, !3093, !3100}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3090, file: !2940, line: 334, baseType: !2976, size: 4096, align: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3090, file: !2940, line: 335, baseType: !3094, size: 512, offset: 4096)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2940, line: 312, size: 512, elements: !3095)
!3095 = !{!3096, !3097, !3098}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3094, file: !2940, line: 313, baseType: !426, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3094, file: !2940, line: 314, baseType: !426, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3094, file: !2940, line: 315, baseType: !3099, size: 384, offset: 128)
!3099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 384, elements: !1460)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3090, file: !2940, line: 336, baseType: !3101, offset: 4608)
!3101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, elements: !1374)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2958, file: !2940, line: 353, baseType: !3103, size: 32768)
!3103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 32768, elements: !3104)
!3104 = !{!3105}
!3105 = !DISubrange(count: 4096)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2939, file: !2940, line: 484, baseType: !2945, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2939, file: !2940, line: 491, baseType: !3108, size: 128, offset: 256)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2940, line: 404, size: 128, elements: !3109)
!3109 = !{!3110, !3111, !3112}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3108, file: !2940, line: 424, baseType: !426, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3108, file: !2940, line: 432, baseType: !7, size: 32, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3108, file: !2940, line: 440, baseType: !7, size: 32, offset: 96)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2939, file: !2940, line: 498, baseType: !3108, size: 128, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2939, file: !2940, line: 508, baseType: !2946, size: 33280, align: 512, offset: 512)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !949, file: !950, line: 16, baseType: !959, size: 192, offset: 512)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !949, file: !950, line: 17, baseType: !223, size: 32, offset: 704)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !505, file: !28, line: 1240, baseType: !167, size: 64, offset: 6912)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !505, file: !28, line: 1243, baseType: !422, size: 32, offset: 6976)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !505, file: !28, line: 1245, baseType: !706, size: 64, offset: 7040)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !505, file: !28, line: 1246, baseType: !706, size: 64, offset: 7104)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !505, file: !28, line: 1248, baseType: !423, size: 32, offset: 7168)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !505, file: !28, line: 1249, baseType: !3123, size: 64, offset: 7232)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !28, line: 634, flags: DIFlagFwdDecl)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !505, file: !28, line: 1252, baseType: !3126, size: 256, offset: 7296)
!3126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !435)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !505, file: !28, line: 1253, baseType: !3128, size: 128, offset: 7552)
!3128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3129, line: 21, baseType: !3130)
!3129 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3129, line: 19, size: 128, elements: !3131)
!3131 = !{!3132}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3130, file: !3129, line: 20, baseType: !3133, size: 128)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 128, elements: !2333)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !505, file: !28, line: 1255, baseType: !7, size: 32, offset: 7680)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !505, file: !28, line: 1261, baseType: !653, size: 256, offset: 7744)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !505, file: !28, line: 1267, baseType: !192, size: 64, offset: 8000)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !505, file: !28, line: 1269, baseType: !451, size: 64, offset: 8064)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !505, file: !28, line: 1271, baseType: !3139, size: 448, offset: 8128)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !715, line: 63, size: 448, elements: !3140)
!3140 = !{!3141, !3146, !3147, !3148, !3149, !3150, !3151}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3139, file: !715, line: 64, baseType: !3142, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!323, !3145, !713}
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3139, file: !715, line: 66, baseType: !3142, size: 64, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3139, file: !715, line: 69, baseType: !309, size: 64, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3139, file: !715, line: 70, baseType: !103, size: 32, offset: 192)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3139, file: !715, line: 71, baseType: !7, size: 32, offset: 224)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3139, file: !715, line: 74, baseType: !173, size: 128, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3139, file: !715, line: 85, baseType: !3152, size: 64, offset: 384)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !505, file: !28, line: 1274, baseType: !657, size: 64, offset: 8576)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !505, file: !28, line: 1280, baseType: !657, size: 64, offset: 8640)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !505, file: !28, line: 1283, baseType: !103, size: 32, offset: 8704)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !505, file: !28, line: 1286, baseType: !2052, size: 32, offset: 8736)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !505, file: !28, line: 1289, baseType: !3158, size: 64, offset: 8768)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2181, line: 18, flags: DIFlagFwdDecl)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !505, file: !28, line: 1290, baseType: !545, size: 64, offset: 8832)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !505, file: !28, line: 1297, baseType: !1556, size: 64, offset: 8896)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !505, file: !28, line: 1304, baseType: !3163, size: 64, offset: 8960)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3164, line: 49, size: 64, elements: !3165)
!3164 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3165 = !{!3166}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3163, file: !3164, line: 50, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3164, line: 41, size: 512, align: 512, elements: !3169)
!3169 = !{!3170, !3171, !3176}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3168, file: !3164, line: 43, baseType: !203, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3168, file: !3164, line: 45, baseType: !3172, size: 192, offset: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3164, line: 29, size: 192, elements: !3173)
!3173 = !{!3174, !3175}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3172, file: !3164, line: 30, baseType: !173, size: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3172, file: !3164, line: 32, baseType: !309, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3168, file: !3164, line: 46, baseType: !309, size: 64, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !505, file: !28, line: 1305, baseType: !3163, size: 64, offset: 9024)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !505, file: !28, line: 1306, baseType: !966, size: 128, align: 64, offset: 9088)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !505, file: !28, line: 1307, baseType: !2180, size: 256, offset: 9216)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !505, file: !28, line: 1309, baseType: !653, size: 256, offset: 9472)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !505, file: !28, line: 1314, baseType: !103, size: 32, offset: 9728)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !505, file: !28, line: 1317, baseType: !203, size: 32, align: 512, offset: 10240)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !505, file: !28, line: 1318, baseType: !173, size: 128, offset: 10304)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !505, file: !28, line: 1320, baseType: !203, size: 32, offset: 10432)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !505, file: !28, line: 1321, baseType: !173, size: 128, offset: 10496)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !499, file: !500, line: 73, baseType: !103, size: 32, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !499, file: !500, line: 74, baseType: !3188, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1398, line: 42, flags: DIFlagFwdDecl)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !453, file: !390, line: 141, baseType: !3192, size: 64, offset: 704)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!103, !776, !1473}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !453, file: !390, line: 142, baseType: !3196, size: 64, offset: 768)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!388, !388, !3199}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !389, file: !390, line: 96, baseType: !504, size: 64, offset: 832)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !389, file: !390, line: 97, baseType: !323, size: 64, offset: 896)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !389, file: !390, line: 98, baseType: !167, size: 64, offset: 960)
!3204 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !390, line: 100, baseType: !3205, size: 128, offset: 1024)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !390, line: 100, size: 128, elements: !3206)
!3206 = !{!3207, !3208}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3205, file: !390, line: 101, baseType: !173, size: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3205, file: !390, line: 102, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !389, file: !390, line: 104, baseType: !173, size: 128, offset: 1152)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !389, file: !390, line: 105, baseType: !173, size: 128, offset: 1280)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !389, file: !390, line: 113, baseType: !3213, size: 128, offset: 1408)
!3213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !390, line: 109, size: 128, elements: !3214)
!3214 = !{!3215, !3216, !3217}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3213, file: !390, line: 110, baseType: !549, size: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3213, file: !390, line: 111, baseType: !404, size: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3213, file: !390, line: 112, baseType: !966, size: 128, align: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !382, file: !28, line: 1968, baseType: !3219, size: 64, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!192, !388, !353, !3222}
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3224, line: 10, size: 128, elements: !3225)
!3224 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3225 = !{!3226, !3230}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3223, file: !3224, line: 11, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{null, !167}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3223, file: !3224, line: 12, baseType: !167, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !382, file: !28, line: 1969, baseType: !3232, size: 64, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!103, !3188, !353, !103}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !382, file: !28, line: 1970, baseType: !3236, size: 64, offset: 192)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!376, !353, !103, !1473}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !382, file: !28, line: 1972, baseType: !3240, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!103, !388, !273, !103}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !382, file: !28, line: 1974, baseType: !3244, size: 64, offset: 320)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!103, !3188, !353, !388, !315, !1473}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !382, file: !28, line: 1976, baseType: !3248, size: 64, offset: 384)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!103, !388, !353, !388}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !382, file: !28, line: 1977, baseType: !3252, size: 64, offset: 448)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!103, !353, !388}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !382, file: !28, line: 1978, baseType: !3256, size: 64, offset: 512)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!103, !3188, !353, !388, !192}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !382, file: !28, line: 1980, baseType: !3260, size: 64, offset: 576)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!103, !3188, !353, !388, !315}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !382, file: !28, line: 1982, baseType: !3252, size: 64, offset: 640)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !382, file: !28, line: 1983, baseType: !3265, size: 64, offset: 704)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!103, !3188, !353, !388, !315, !509}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !382, file: !28, line: 1985, baseType: !3269, size: 64, offset: 768)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!103, !3188, !353, !388, !353, !388, !7}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !382, file: !28, line: 1987, baseType: !3273, size: 64, offset: 832)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!103, !3188, !388, !3276}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !28, line: 226, size: 640, elements: !3278)
!3278 = !{!3279, !3280, !3281, !3291, !3300, !3301, !3306, !3307, !3308}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3277, file: !28, line: 227, baseType: !7, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3277, file: !28, line: 228, baseType: !315, size: 16, offset: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !28, line: 241, baseType: !3282, size: 32, offset: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3277, file: !28, line: 241, size: 32, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3282, file: !28, line: 242, baseType: !359, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3282, file: !28, line: 243, baseType: !3286, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3287, line: 16, baseType: !3288)
!3287 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3287, line: 14, size: 32, elements: !3289)
!3289 = !{!3290}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3288, file: !3287, line: 15, baseType: !364, size: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !28, line: 245, baseType: !3292, size: 32, offset: 96)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3277, file: !28, line: 245, size: 32, elements: !3293)
!3293 = !{!3294, !3295}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3292, file: !28, line: 246, baseType: !368, size: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3292, file: !28, line: 247, baseType: !3296, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3287, line: 20, baseType: !3297)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3287, line: 18, size: 32, elements: !3298)
!3298 = !{!3299}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3297, file: !3287, line: 19, baseType: !372, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3277, file: !28, line: 249, baseType: !514, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3277, file: !28, line: 250, baseType: !3302, size: 128, offset: 192)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !707, line: 13, size: 128, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3302, file: !707, line: 14, baseType: !706, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3302, file: !707, line: 15, baseType: !309, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3277, file: !28, line: 251, baseType: !3302, size: 128, offset: 320)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3277, file: !28, line: 252, baseType: !3302, size: 128, offset: 448)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3277, file: !28, line: 259, baseType: !1312, size: 64, offset: 576)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !382, file: !28, line: 1988, baseType: !3310, size: 64, offset: 896)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!103, !3188, !776, !3313, !422, !7}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3315, line: 22, size: 1280, elements: !3316)
!3315 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3314, file: !3315, line: 23, baseType: !422, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3314, file: !3315, line: 24, baseType: !315, size: 16, offset: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3314, file: !3315, line: 25, baseType: !7, size: 32, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3314, file: !3315, line: 26, baseType: !1438, size: 32, offset: 96)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3314, file: !3315, line: 27, baseType: !426, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3314, file: !3315, line: 28, baseType: !426, size: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3314, file: !3315, line: 41, baseType: !426, size: 64, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3314, file: !3315, line: 42, baseType: !509, size: 32, offset: 320)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3314, file: !3315, line: 43, baseType: !509, size: 32, offset: 352)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3314, file: !3315, line: 44, baseType: !359, size: 32, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3314, file: !3315, line: 45, baseType: !368, size: 32, offset: 416)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3314, file: !3315, line: 46, baseType: !514, size: 64, offset: 448)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3314, file: !3315, line: 47, baseType: !3302, size: 128, offset: 512)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3314, file: !3315, line: 48, baseType: !3302, size: 128, offset: 640)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3314, file: !3315, line: 49, baseType: !3302, size: 128, offset: 768)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3314, file: !3315, line: 50, baseType: !3302, size: 128, offset: 896)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3314, file: !3315, line: 51, baseType: !426, size: 64, offset: 1024)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3314, file: !3315, line: 52, baseType: !426, size: 64, offset: 1088)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3314, file: !3315, line: 53, baseType: !422, size: 32, offset: 1152)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3314, file: !3315, line: 54, baseType: !422, size: 32, offset: 1184)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3314, file: !3315, line: 55, baseType: !426, size: 64, offset: 1216)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !382, file: !28, line: 1990, baseType: !3339, size: 64, offset: 960)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!305, !388, !273, !320}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !382, file: !28, line: 1991, baseType: !3343, size: 64, offset: 1024)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!103, !353, !3346, !426, !426}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !28, line: 55, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !382, file: !28, line: 1993, baseType: !3349, size: 64, offset: 1088)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!103, !353, !103}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !382, file: !28, line: 1994, baseType: !3353, size: 64, offset: 1152)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!103, !353, !388, !1312, !7, !315}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !382, file: !28, line: 1997, baseType: !3357, size: 64, offset: 1216)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!103, !3188, !353, !1312, !315}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !382, file: !28, line: 1999, baseType: !3361, size: 64, offset: 1280)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!376, !3188, !388, !103}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !382, file: !28, line: 2001, baseType: !3365, size: 64, offset: 1344)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!103, !3188, !388, !376, !103}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !382, file: !28, line: 2003, baseType: !3369, size: 64, offset: 1408)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!103, !3188, !388, !3372}
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !28, line: 76, flags: DIFlagFwdDecl)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !382, file: !28, line: 2005, baseType: !3375, size: 64, offset: 1472)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!103, !388, !3372}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !382, file: !28, line: 2006, baseType: !3379, size: 64, offset: 1536)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!3382, !353}
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !28, line: 3192, size: 192, elements: !3384)
!3384 = !{!3385, !3392}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3383, file: !28, line: 3193, baseType: !3386, size: 128)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3387, line: 296, size: 128, elements: !3388)
!3387 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3388 = !{!3389, !3390, !3391}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3386, file: !3387, line: 297, baseType: !203, size: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3386, file: !3387, line: 299, baseType: !718, size: 32, offset: 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3386, file: !3387, line: 300, baseType: !167, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3383, file: !28, line: 3194, baseType: !422, size: 32, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !354, file: !28, line: 655, baseType: !504, size: 64, offset: 448)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !354, file: !28, line: 656, baseType: !349, size: 64, offset: 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !354, file: !28, line: 659, baseType: !167, size: 64, offset: 576)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !354, file: !28, line: 663, baseType: !323, size: 64, offset: 640)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !28, line: 671, baseType: !3398, size: 32, offset: 704)
!3398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !28, line: 671, size: 32, elements: !3399)
!3399 = !{!3400, !3402}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3398, file: !28, line: 672, baseType: !3401, size: 32)
!3401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3398, file: !28, line: 673, baseType: !7, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !354, file: !28, line: 675, baseType: !509, size: 32, offset: 736)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !354, file: !28, line: 676, baseType: !514, size: 64, offset: 768)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !354, file: !28, line: 677, baseType: !3302, size: 128, offset: 832)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !354, file: !28, line: 678, baseType: !3302, size: 128, offset: 960)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !354, file: !28, line: 679, baseType: !3302, size: 128, offset: 1088)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !354, file: !28, line: 680, baseType: !203, size: 32, offset: 1216)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !354, file: !28, line: 681, baseType: !243, size: 16, offset: 1248)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !354, file: !28, line: 682, baseType: !231, size: 8, offset: 1264)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !354, file: !28, line: 683, baseType: !231, size: 8, offset: 1272)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !354, file: !28, line: 684, baseType: !854, size: 64, offset: 1280)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !354, file: !28, line: 691, baseType: !323, size: 64, offset: 1344)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !354, file: !28, line: 692, baseType: !866, size: 320, offset: 1408)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !354, file: !28, line: 694, baseType: !323, size: 64, offset: 1728)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !354, file: !28, line: 695, baseType: !323, size: 64, offset: 1792)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !354, file: !28, line: 697, baseType: !549, size: 128, offset: 1856)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !354, file: !28, line: 698, baseType: !173, size: 128, offset: 1984)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !354, file: !28, line: 707, baseType: !173, size: 128, offset: 2112)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !354, file: !28, line: 708, baseType: !173, size: 128, offset: 2240)
!3421 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !28, line: 709, baseType: !3422, size: 128, offset: 2368)
!3422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !28, line: 709, size: 128, elements: !3423)
!3423 = !{!3424, !3425}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3422, file: !28, line: 710, baseType: !545, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3422, file: !28, line: 711, baseType: !966, size: 128, align: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !354, file: !28, line: 713, baseType: !659, size: 64, offset: 2496)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !354, file: !28, line: 714, baseType: !659, size: 64, offset: 2560)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !354, file: !28, line: 715, baseType: !223, size: 32, offset: 2624)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !354, file: !28, line: 716, baseType: !223, size: 32, offset: 2656)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !354, file: !28, line: 717, baseType: !223, size: 32, offset: 2688)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !354, file: !28, line: 719, baseType: !223, size: 32, offset: 2720)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !28, line: 721, baseType: !3433, size: 64, offset: 2752)
!3433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !28, line: 721, size: 64, elements: !3434)
!3434 = !{!3435, !3436}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3433, file: !28, line: 722, baseType: !1587, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3433, file: !28, line: 723, baseType: !576, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !354, file: !28, line: 725, baseType: !3438, size: 64, offset: 2816)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !28, line: 725, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !354, file: !28, line: 726, baseType: !350, size: 1536, align: 64, offset: 2880)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !354, file: !28, line: 727, baseType: !173, size: 128, offset: 4416)
!3442 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !28, line: 728, baseType: !3443, size: 64, offset: 4544)
!3443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !28, line: 728, size: 64, elements: !3444)
!3444 = !{!3445, !3446, !3449, !3450}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3443, file: !28, line: 729, baseType: !2002, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3443, file: !28, line: 730, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !28, line: 730, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3443, file: !28, line: 731, baseType: !273, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3443, file: !28, line: 732, baseType: !7, size: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !354, file: !28, line: 735, baseType: !423, size: 32, offset: 4608)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !354, file: !28, line: 738, baseType: !423, size: 32, offset: 4640)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !354, file: !28, line: 739, baseType: !3123, size: 64, offset: 4672)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !354, file: !28, line: 750, baseType: !167, size: 64, offset: 4736)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !350, file: !28, line: 474, baseType: !3386, size: 128, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !350, file: !28, line: 475, baseType: !866, size: 320, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !350, file: !28, line: 476, baseType: !718, size: 32, offset: 512)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !350, file: !28, line: 477, baseType: !223, size: 32, offset: 544)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !350, file: !28, line: 482, baseType: !1168, size: 128, offset: 576)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !350, file: !28, line: 483, baseType: !323, size: 64, offset: 704)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !350, file: !28, line: 484, baseType: !323, size: 64, offset: 768)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !350, file: !28, line: 485, baseType: !3463, size: 64, offset: 832)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !28, line: 404, size: 1280, elements: !3466)
!3466 = !{!3467, !3471, !3541, !3545, !3549, !3555, !3559, !3563, !3568, !3572, !3576, !3580, !3581, !3585, !3589, !3593, !3598, !3602, !3609, !3610}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3465, file: !28, line: 405, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!103, !1779, !588}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3465, file: !28, line: 406, baseType: !3472, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!103, !1312, !3475}
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !65, line: 293, size: 1536, elements: !3477)
!3477 = !{!3478, !3508, !3522}
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3476, file: !65, line: 295, baseType: !3479, size: 512)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3476, file: !65, line: 295, size: 512, elements: !3480)
!3480 = !{!3481, !3507}
!3481 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !65, line: 296, baseType: !3482, size: 448)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3479, file: !65, line: 296, size: 448, elements: !3483)
!3483 = !{!3484, !3485, !3494, !3495, !3496, !3505, !3506}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3482, file: !65, line: 298, baseType: !323, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, scope: !3482, file: !65, line: 299, baseType: !3486, size: 128, offset: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3482, file: !65, line: 299, size: 128, elements: !3487)
!3487 = !{!3488, !3489}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3486, file: !65, line: 300, baseType: !173, size: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, scope: !3486, file: !65, line: 302, baseType: !3490, size: 128)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3486, file: !65, line: 302, size: 128, elements: !3491)
!3491 = !{!3492, !3493}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3490, file: !65, line: 303, baseType: !167, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3490, file: !65, line: 305, baseType: !7, size: 32, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3482, file: !65, line: 310, baseType: !349, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3482, file: !65, line: 311, baseType: !323, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, scope: !3482, file: !65, line: 312, baseType: !3497, size: 64, offset: 320)
!3497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3482, file: !65, line: 312, size: 64, elements: !3498)
!3498 = !{!3499, !3500}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3497, file: !65, line: 313, baseType: !167, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3497, file: !65, line: 314, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !65, line: 257, baseType: !3502)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 255, size: 64, elements: !3503)
!3503 = !{!3504}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3502, file: !65, line: 256, baseType: !323, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3482, file: !65, line: 316, baseType: !223, size: 32, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3482, file: !65, line: 317, baseType: !223, size: 32, offset: 416)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3479, file: !65, line: 323, baseType: !1780, size: 512, align: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, scope: !3476, file: !65, line: 325, baseType: !3509, size: 512, offset: 512)
!3509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3476, file: !65, line: 325, size: 512, elements: !3510)
!3510 = !{!3511, !3521}
!3511 = !DIDerivedType(tag: DW_TAG_member, scope: !3509, file: !65, line: 326, baseType: !3512, size: 320)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3509, file: !65, line: 326, size: 320, elements: !3513)
!3513 = !{!3514, !3515, !3516, !3517, !3518, !3519, !3520}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3512, file: !65, line: 327, baseType: !323, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3512, file: !65, line: 328, baseType: !323, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3512, file: !65, line: 329, baseType: !323, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3512, file: !65, line: 331, baseType: !223, size: 32, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3512, file: !65, line: 332, baseType: !223, size: 32, offset: 224)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3512, file: !65, line: 333, baseType: !223, size: 32, offset: 256)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3512, file: !65, line: 335, baseType: !7, size: 32, offset: 288)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3509, file: !65, line: 339, baseType: !1780, size: 512, align: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, scope: !3476, file: !65, line: 341, baseType: !3523, size: 512, offset: 1024)
!3523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3476, file: !65, line: 341, size: 512, elements: !3524)
!3524 = !{!3525, !3534, !3540}
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !3523, file: !65, line: 342, baseType: !3526, size: 384)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3523, file: !65, line: 342, size: 384, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3526, file: !65, line: 343, baseType: !323, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3526, file: !65, line: 344, baseType: !323, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3526, file: !65, line: 346, baseType: !167, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3526, file: !65, line: 347, baseType: !167, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3526, file: !65, line: 348, baseType: !167, size: 64, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3526, file: !65, line: 349, baseType: !167, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_member, scope: !3523, file: !65, line: 352, baseType: !3535, size: 256)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3523, file: !65, line: 352, size: 256, elements: !3536)
!3536 = !{!3537, !3538, !3539}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3535, file: !65, line: 353, baseType: !323, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3535, file: !65, line: 354, baseType: !323, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3535, file: !65, line: 356, baseType: !173, size: 128, offset: 128)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3523, file: !65, line: 359, baseType: !1780, size: 512, align: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3465, file: !28, line: 409, baseType: !3542, size: 64, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!103, !349, !588}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3465, file: !28, line: 412, baseType: !3546, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!1473, !349, !3475}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3465, file: !28, line: 414, baseType: !3550, size: 64, offset: 256)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{null, !3553}
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !28, line: 310, flags: DIFlagFwdDecl)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3465, file: !28, line: 416, baseType: !3556, size: 64, offset: 320)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!103, !1312, !349, !514, !7, !2872, !2017}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3465, file: !28, line: 419, baseType: !3560, size: 64, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!103, !1312, !349, !514, !7, !7, !1779, !167}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3465, file: !28, line: 424, baseType: !3564, size: 64, offset: 448)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!3567, !349, !3567}
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !174, line: 131, baseType: !426)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3465, file: !28, line: 425, baseType: !3569, size: 64, offset: 512)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{null, !3475, !320, !320}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3465, file: !28, line: 426, baseType: !3573, size: 64, offset: 576)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!1473, !3475, !718}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3465, file: !28, line: 427, baseType: !3577, size: 64, offset: 640)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{null, !3475}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3465, file: !28, line: 428, baseType: !1606, size: 64, offset: 704)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3465, file: !28, line: 433, baseType: !3582, size: 64, offset: 768)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!103, !349, !3475, !3475, !49}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3465, file: !28, line: 435, baseType: !3586, size: 64, offset: 832)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!103, !3475}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3465, file: !28, line: 436, baseType: !3590, size: 64, offset: 896)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!1473, !3475, !320, !320}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3465, file: !28, line: 438, baseType: !3594, size: 64, offset: 960)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{null, !3475, !3597, !3597}
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3465, file: !28, line: 439, baseType: !3599, size: 64, offset: 1024)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!103, !349, !1779}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3465, file: !28, line: 442, baseType: !3603, size: 64, offset: 1088)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!103, !3606, !1312, !3608}
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !28, line: 66, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3465, file: !28, line: 444, baseType: !2009, size: 64, offset: 1152)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3465, file: !28, line: 445, baseType: !3611, size: 64, offset: 1216)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!103, !1609, !1631}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !350, file: !28, line: 486, baseType: !323, size: 64, offset: 896)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !350, file: !28, line: 487, baseType: !866, size: 320, offset: 960)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !350, file: !28, line: 488, baseType: !2052, size: 32, offset: 1280)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !350, file: !28, line: 489, baseType: !203, size: 32, offset: 1312)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !350, file: !28, line: 490, baseType: !173, size: 128, offset: 1344)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !350, file: !28, line: 491, baseType: !167, size: 64, offset: 1472)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !340, file: !299, line: 180, baseType: !3621, size: 64, offset: 320)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!305, !1312, !196, !339, !273, !514, !320}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !340, file: !299, line: 182, baseType: !3621, size: 64, offset: 384)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !340, file: !299, line: 184, baseType: !3626, size: 64, offset: 448)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!103, !1312, !196, !339, !1670}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !328, file: !299, line: 90, baseType: !3630, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !328, file: !299, line: 91, baseType: !3632, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !289, file: !189, line: 120, baseType: !3634, size: 64, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!3637, !256}
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !3640)
!3640 = !{!3641, !3642, !3646, !3650, !3656, !3660}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3639, file: !6, line: 40, baseType: !5, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3639, file: !6, line: 41, baseType: !3643, size: 64, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!1473}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3639, file: !6, line: 42, baseType: !3647, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!167}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3639, file: !6, line: 43, baseType: !3651, size: 64, offset: 192)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!2141, !3654}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3639, file: !6, line: 44, baseType: !3657, size: 64, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!2141}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3639, file: !6, line: 45, baseType: !3227, size: 64, offset: 320)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !289, file: !189, line: 121, baseType: !3662, size: 64, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!2141, !256}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !289, file: !189, line: 122, baseType: !3666, size: 64, offset: 320)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{null, !256, !3669, !3670}
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !188, file: !189, line: 70, baseType: !3672, size: 64, offset: 384)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !529, line: 190, size: 1152, elements: !3674)
!3674 = !{!3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3766, !3767, !3768, !3769, !3770, !3773}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3673, file: !529, line: 191, baseType: !223, size: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3673, file: !529, line: 192, baseType: !223, size: 32, offset: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3673, file: !529, line: 202, baseType: !3672, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3673, file: !529, line: 203, baseType: !192, size: 64, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3673, file: !529, line: 205, baseType: !1039, size: 192, align: 64, offset: 192)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3673, file: !529, line: 207, baseType: !2141, size: 64, offset: 384)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3673, file: !529, line: 208, baseType: !7, size: 32, offset: 448)
!3682 = !DIDerivedType(tag: DW_TAG_member, scope: !3673, file: !529, line: 209, baseType: !3683, size: 256, offset: 512)
!3683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3673, file: !529, line: 209, size: 256, elements: !3684)
!3684 = !{!3685, !3694, !3698}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3683, file: !529, line: 210, baseType: !3686, size: 256)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !529, line: 153, size: 256, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3693}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3686, file: !529, line: 154, baseType: !323, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3686, file: !529, line: 156, baseType: !1171, size: 64, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3686, file: !529, line: 162, baseType: !3691, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !529, line: 162, flags: DIFlagFwdDecl)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3686, file: !529, line: 167, baseType: !323, size: 64, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3683, file: !529, line: 211, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !529, line: 170, size: 64, elements: !3696)
!3696 = !{!3697}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3695, file: !529, line: 171, baseType: !3672, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3683, file: !529, line: 212, baseType: !3699, size: 256)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !529, line: 174, size: 256, elements: !3700)
!3700 = !{!3701, !3761, !3764, !3765}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3699, file: !529, line: 175, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3704)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !529, line: 271, size: 768, elements: !3705)
!3705 = !{!3706, !3726, !3730, !3734, !3738, !3742, !3746, !3750, !3751, !3752, !3753, !3757}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3704, file: !529, line: 276, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!103, !3710}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !529, line: 251, size: 1216, elements: !3712)
!3712 = !{!3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3711, file: !529, line: 253, baseType: !3672, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3711, file: !529, line: 254, baseType: !1312, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3711, file: !529, line: 255, baseType: !626, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3711, file: !529, line: 256, baseType: !167, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3711, file: !529, line: 259, baseType: !653, size: 256, offset: 256)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3711, file: !529, line: 260, baseType: !653, size: 256, offset: 512)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3711, file: !529, line: 261, baseType: !103, size: 32, offset: 768)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3711, file: !529, line: 262, baseType: !173, size: 128, offset: 832)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3711, file: !529, line: 263, baseType: !273, size: 64, offset: 960)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3711, file: !529, line: 265, baseType: !320, size: 64, offset: 1024)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3711, file: !529, line: 266, baseType: !1473, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3711, file: !529, line: 267, baseType: !1473, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3711, file: !529, line: 268, baseType: !1715, size: 64, offset: 1152)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3704, file: !529, line: 277, baseType: !3727, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{null, !3710}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3704, file: !529, line: 290, baseType: !3731, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!103, !626, !167}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3704, file: !529, line: 292, baseType: !3735, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!167, !626, !1600}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3704, file: !529, line: 293, baseType: !3739, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!167, !626, !167, !1600}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3704, file: !529, line: 294, baseType: !3743, size: 64, offset: 320)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{null, !626, !167}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3704, file: !529, line: 296, baseType: !3747, size: 64, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!305, !3710, !273, !320, !514}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3704, file: !529, line: 306, baseType: !320, size: 64, offset: 448)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3704, file: !529, line: 313, baseType: !1473, size: 8, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3704, file: !529, line: 314, baseType: !3747, size: 64, offset: 576)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3704, file: !529, line: 317, baseType: !3754, size: 64, offset: 640)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!1657, !3710, !1659}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3704, file: !529, line: 320, baseType: !3758, size: 64, offset: 704)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!103, !3710, !1670}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3699, file: !529, line: 176, baseType: !3762, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !529, line: 35, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3699, file: !529, line: 177, baseType: !514, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3699, file: !529, line: 178, baseType: !3672, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3673, file: !529, line: 215, baseType: !167, size: 64, offset: 768)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3673, file: !529, line: 221, baseType: !426, size: 64, offset: 832)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3673, file: !529, line: 223, baseType: !243, size: 16, offset: 896)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3673, file: !529, line: 224, baseType: !315, size: 16, offset: 912)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3673, file: !529, line: 225, baseType: !3771, size: 64, offset: 960)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !529, line: 36, flags: DIFlagFwdDecl)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3673, file: !529, line: 227, baseType: !966, size: 128, align: 64, offset: 1024)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !188, file: !189, line: 71, baseType: !3775, size: 32, offset: 448)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3776, line: 19, size: 32, elements: !3777)
!3776 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3777 = !{!3778}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3775, file: !3776, line: 20, baseType: !995, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !188, file: !189, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !188, file: !189, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !188, file: !189, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !188, file: !189, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !188, file: !189, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !185, file: !21, line: 47, baseType: !168, size: 64, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !185, file: !21, line: 48, baseType: !196, size: 64, offset: 576)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !185, file: !21, line: 49, baseType: !3787, size: 64, offset: 640)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !21, line: 49, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !185, file: !21, line: 50, baseType: !2290, size: 64, offset: 704)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !169, file: !21, line: 418, baseType: !3791, size: 64, offset: 1408)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !21, line: 53, size: 448, elements: !3793)
!3793 = !{!3794, !3795, !3800, !3804, !3808, !3812}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3792, file: !21, line: 54, baseType: !311, size: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3792, file: !21, line: 55, baseType: !3796, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!305, !3791, !3799, !273}
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3792, file: !21, line: 57, baseType: !3801, size: 64, offset: 192)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!305, !3791, !3799, !192, !320}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3792, file: !21, line: 59, baseType: !3805, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !168, !192}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3792, file: !21, line: 60, baseType: !3809, size: 64, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!103, !168}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3792, file: !21, line: 61, baseType: !3813, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{null, !168}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !169, file: !21, line: 419, baseType: !192, size: 64, offset: 1472)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !169, file: !21, line: 420, baseType: !192, size: 64, offset: 1536)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !169, file: !21, line: 421, baseType: !196, size: 64, offset: 1600)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !169, file: !21, line: 424, baseType: !3820, size: 64, offset: 1664)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3822)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !21, line: 424, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !169, file: !21, line: 425, baseType: !3824, size: 64, offset: 1728)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !169, file: !21, line: 426, baseType: !7, size: 32, offset: 1792)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !169, file: !21, line: 435, baseType: !653, size: 256, offset: 1856)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !169, file: !21, line: 437, baseType: !3829, size: 64, offset: 2112)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3831, line: 69, size: 320, elements: !3832)
!3831 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3832 = !{!3833, !3834, !3835, !3852, !3854, !3858, !3859}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3830, file: !3831, line: 70, baseType: !192, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3830, file: !3831, line: 71, baseType: !168, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3830, file: !3831, line: 72, baseType: !3836, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3838)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3831, line: 47, size: 256, elements: !3839)
!3839 = !{!3840, !3841, !3847, !3851}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3838, file: !3831, line: 49, baseType: !7, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3838, file: !3831, line: 51, baseType: !3842, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!103, !192, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3830)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3838, file: !3831, line: 53, baseType: !3848, size: 64, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!103, !273, !3845}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3838, file: !3831, line: 55, baseType: !3227, size: 64, offset: 192)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3830, file: !3831, line: 73, baseType: !3853, size: 16, offset: 192)
!3853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3830, file: !3831, line: 74, baseType: !3855, size: 8, offset: 208)
!3855 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !232, line: 16, baseType: !3856)
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !234, line: 20, baseType: !3857)
!3857 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3830, file: !3831, line: 75, baseType: !231, size: 8, offset: 216)
!3859 = !DIDerivedType(tag: DW_TAG_member, scope: !3830, file: !3831, line: 76, baseType: !3860, size: 64, offset: 256)
!3860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3830, file: !3831, line: 76, size: 64, elements: !3861)
!3861 = !{!3862, !3863, !3870}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3860, file: !3831, line: 77, baseType: !167, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3860, file: !3831, line: 78, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3866)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3831, line: 86, size: 128, elements: !3867)
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3866, file: !3831, line: 87, baseType: !7, size: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3866, file: !3831, line: 88, baseType: !273, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3860, file: !3831, line: 79, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3873)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3831, line: 92, size: 256, elements: !3874)
!3874 = !{!3875, !3876, !3877, !3878, !3879}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3873, file: !3831, line: 94, baseType: !7, size: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3873, file: !3831, line: 95, baseType: !7, size: 32, offset: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3873, file: !3831, line: 96, baseType: !975, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3873, file: !3831, line: 97, baseType: !3836, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3873, file: !3831, line: 98, baseType: !167, size: 64, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !169, file: !21, line: 438, baseType: !7, size: 32, offset: 2176)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !169, file: !21, line: 441, baseType: !7, size: 32, offset: 2208)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !169, file: !21, line: 442, baseType: !3820, size: 64, offset: 2240)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !169, file: !21, line: 443, baseType: !3824, size: 64, offset: 2304)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !169, file: !21, line: 444, baseType: !1473, size: 8, offset: 2368)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !169, file: !21, line: 451, baseType: !1473, size: 8, offset: 2376)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !169, file: !21, line: 454, baseType: !7, size: 32, offset: 2400)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !169, file: !21, line: 455, baseType: !3888, size: 64, offset: 2432)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3890, line: 23, size: 96, elements: !3891)
!3890 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3891 = !{!3892, !3893, !3894}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3889, file: !3890, line: 24, baseType: !103, size: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3889, file: !3890, line: 24, baseType: !103, size: 32, offset: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3889, file: !3890, line: 24, baseType: !103, size: 32, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !169, file: !21, line: 458, baseType: !3896, size: 64, offset: 2496)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!103}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !169, file: !21, line: 460, baseType: !3900, size: 4032, align: 512, offset: 2560)
!3900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3901, size: 4032, elements: !3915)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !21, line: 362, size: 576, elements: !3902)
!3902 = !{!3903, !3904, !3905}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3901, file: !21, line: 363, baseType: !167, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3901, file: !21, line: 364, baseType: !7, size: 32, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3901, file: !21, line: 367, baseType: !3906, size: 448, offset: 128)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !21, line: 319, size: 448, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3906, file: !21, line: 320, baseType: !168, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3906, file: !21, line: 321, baseType: !3910, size: 384, offset: 64)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3911, line: 40, size: 384, elements: !3912)
!3911 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3912 = !{!3913}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3910, file: !3911, line: 41, baseType: !3914, size: 384, align: 64)
!3914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 384, align: 64, elements: !2415)
!3915 = !{!3916}
!3916 = !DISubrange(count: 7)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !169, file: !21, line: 463, baseType: !3918, size: 192, offset: 6592)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3919, line: 8, size: 192, elements: !3920)
!3919 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3920 = !{!3921, !3922, !3923}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3918, file: !3919, line: 10, baseType: !7, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3918, file: !3919, line: 11, baseType: !620, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3918, file: !3919, line: 12, baseType: !3924, size: 64, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3926, line: 59, size: 48, elements: !3927)
!3926 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3925, file: !3926, line: 60, baseType: !2158, size: 16)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3925, file: !3926, line: 61, baseType: !2158, size: 16, offset: 16)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3925, file: !3926, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3925, file: !3926, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3925, file: !3926, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3925, file: !3926, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !169, file: !21, line: 465, baseType: !323, size: 64, offset: 6784)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !169, file: !21, line: 469, baseType: !7, size: 32, offset: 6848)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !169, file: !21, line: 470, baseType: !173, size: 128, offset: 6912)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !169, file: !21, line: 471, baseType: !3938, size: 64, offset: 7040)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3940, line: 33, size: 96, elements: !3941)
!3940 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3941 = !{!3942, !3943, !3944, !3945}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3939, file: !3940, line: 37, baseType: !103, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3939, file: !3940, line: 43, baseType: !103, size: 32, offset: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3939, file: !3940, line: 45, baseType: !243, size: 16, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3939, file: !3940, line: 47, baseType: !243, size: 16, offset: 80)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !169, file: !21, line: 476, baseType: !3947, size: 64, offset: 7104)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !21, line: 378, size: 256, elements: !3949)
!3949 = !{!3950, !3966, !3967, !3968}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3948, file: !21, line: 379, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3953, line: 204, baseType: !3954)
!3953 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3953, line: 197, size: 192, elements: !3955)
!3955 = !{!3956, !3958, !3959, !3960, !3962, !3964}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3954, file: !3953, line: 198, baseType: !3957, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3953, line: 21, baseType: !423)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3954, file: !3953, line: 199, baseType: !235, size: 8, offset: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3954, file: !3953, line: 200, baseType: !235, size: 8, offset: 40)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3954, file: !3953, line: 201, baseType: !3961, size: 16, offset: 48)
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3953, line: 17, baseType: !242)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3954, file: !3953, line: 202, baseType: !3963, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3953, line: 16, baseType: !427)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3954, file: !3953, line: 203, baseType: !3965, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3953, line: 22, baseType: !427)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3948, file: !21, line: 380, baseType: !7, size: 32, offset: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3948, file: !21, line: 381, baseType: !273, size: 64, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3948, file: !21, line: 382, baseType: !273, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !169, file: !21, line: 477, baseType: !3948, size: 256, offset: 7168)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !169, file: !21, line: 480, baseType: !3971, size: 64, offset: 7424)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !21, line: 480, flags: DIFlagFwdDecl)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !169, file: !21, line: 483, baseType: !3974, size: 64, offset: 7488)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !21, line: 483, flags: DIFlagFwdDecl)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !169, file: !21, line: 488, baseType: !273, size: 64, offset: 7552)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !169, file: !21, line: 492, baseType: !167, size: 64, offset: 7616)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !169, file: !21, line: 493, baseType: !7, size: 32, offset: 7680)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !169, file: !21, line: 495, baseType: !167, size: 64, offset: 7744)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !169, file: !21, line: 496, baseType: !7, size: 32, offset: 7808)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !169, file: !21, line: 499, baseType: !7, size: 32, offset: 7840)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !169, file: !21, line: 500, baseType: !3983, size: 64, offset: 7872)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3985, line: 45, baseType: !3986)
!3985 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !169, file: !21, line: 503, baseType: !7, size: 32, offset: 7936)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !169, file: !21, line: 504, baseType: !3989, size: 64, offset: 8000)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3992, line: 96, size: 192, elements: !3993)
!3992 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3993 = !{!3994, !3995, !4038, !4040}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3991, file: !3992, line: 97, baseType: !7, size: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3991, file: !3992, line: 98, baseType: !3996, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3992, line: 24, size: 3072, elements: !3998)
!3998 = !{!3999, !4001, !4002, !4003, !4004, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4035, !4036, !4037}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3997, file: !3992, line: 26, baseType: !4000, size: 128)
!4000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 128, elements: !2415)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3997, file: !3992, line: 27, baseType: !4000, size: 128, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3997, file: !3992, line: 28, baseType: !103, size: 32, offset: 256)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3997, file: !3992, line: 31, baseType: !203, size: 32, align: 512, offset: 512)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3997, file: !3992, line: 32, baseType: !4005, size: 960, offset: 576)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4006, line: 206, size: 960, elements: !4007)
!4006 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4007 = !{!4008, !4009, !4012, !4014, !4015, !4017}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4005, file: !4006, line: 207, baseType: !969, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4005, file: !4006, line: 208, baseType: !4010, size: 256, offset: 64)
!4010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4011, size: 256, elements: !1361)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4005, file: !4006, line: 209, baseType: !4013, size: 256, offset: 320)
!4013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 256, elements: !1361)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4005, file: !4006, line: 213, baseType: !309, size: 64, offset: 576)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4005, file: !4006, line: 215, baseType: !4016, size: 256, offset: 640)
!4016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 256, elements: !1361)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4005, file: !4006, line: 216, baseType: !231, size: 8, offset: 896)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3997, file: !3992, line: 33, baseType: !323, size: 64, offset: 1536)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3997, file: !3992, line: 34, baseType: !323, size: 64, offset: 1600)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3997, file: !3992, line: 35, baseType: !1473, size: 8, offset: 1664)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3997, file: !3992, line: 36, baseType: !2851, size: 320, offset: 1728)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3997, file: !3992, line: 37, baseType: !2180, size: 256, offset: 2048)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3997, file: !3992, line: 38, baseType: !966, size: 128, align: 64, offset: 2304)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3997, file: !3992, line: 39, baseType: !4025, size: 64, offset: 2432)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3992, line: 49, size: 768, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033, !4034}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4026, file: !3992, line: 50, baseType: !203, size: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4026, file: !3992, line: 51, baseType: !4013, size: 256, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4026, file: !3992, line: 53, baseType: !4013, size: 256, offset: 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4026, file: !3992, line: 54, baseType: !323, size: 64, offset: 576)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4026, file: !3992, line: 55, baseType: !4025, size: 64, offset: 640)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4026, file: !3992, line: 56, baseType: !103, size: 32, offset: 704)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4026, file: !3992, line: 57, baseType: !103, size: 32, offset: 736)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3997, file: !3992, line: 40, baseType: !323, size: 64, offset: 2496)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3997, file: !3992, line: 42, baseType: !103, size: 32, offset: 2560)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3997, file: !3992, line: 43, baseType: !3990, size: 64, offset: 2624)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3991, file: !3992, line: 99, baseType: !4039, offset: 128)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !556, line: 211, elements: !557)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3991, file: !3992, line: 100, baseType: !4041, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3992, line: 63, size: 3008, elements: !4043)
!4043 = !{!4044, !4045, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4073}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4042, file: !3992, line: 64, baseType: !4025, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4042, file: !3992, line: 65, baseType: !4046, size: 192, offset: 64)
!4046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4025, size: 192, elements: !274)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4042, file: !3992, line: 67, baseType: !103, size: 32, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4042, file: !3992, line: 68, baseType: !653, size: 256, offset: 320)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4042, file: !3992, line: 69, baseType: !203, size: 32, offset: 576)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4042, file: !3992, line: 70, baseType: !653, size: 256, offset: 640)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4042, file: !3992, line: 71, baseType: !323, size: 64, offset: 896)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4042, file: !3992, line: 72, baseType: !323, size: 64, offset: 960)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4042, file: !3992, line: 73, baseType: !323, size: 64, offset: 1024)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4042, file: !3992, line: 74, baseType: !323, size: 64, offset: 1088)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4042, file: !3992, line: 75, baseType: !323, size: 64, offset: 1152)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4042, file: !3992, line: 76, baseType: !323, size: 64, offset: 1216)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4042, file: !3992, line: 77, baseType: !323, size: 64, offset: 1280)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4042, file: !3992, line: 78, baseType: !323, size: 64, offset: 1344)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4042, file: !3992, line: 79, baseType: !1473, size: 8, offset: 1408)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4042, file: !3992, line: 80, baseType: !323, size: 64, offset: 1472)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4042, file: !3992, line: 81, baseType: !653, size: 256, offset: 1536)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4042, file: !3992, line: 82, baseType: !1864, size: 256, offset: 1792)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4042, file: !3992, line: 84, baseType: !223, size: 32, offset: 2048)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4042, file: !3992, line: 87, baseType: !323, size: 64, offset: 2112)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4042, file: !3992, line: 88, baseType: !323, size: 64, offset: 2176)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4042, file: !3992, line: 89, baseType: !4067, size: 704, offset: 2240)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2181, line: 111, size: 704, elements: !4068)
!4068 = !{!4069, !4070, !4071, !4072}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4067, file: !2181, line: 112, baseType: !2180, size: 256)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4067, file: !2181, line: 113, baseType: !2851, size: 320, offset: 256)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4067, file: !2181, line: 116, baseType: !3158, size: 64, offset: 576)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4067, file: !2181, line: 117, baseType: !103, size: 32, offset: 640)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4042, file: !3992, line: 90, baseType: !3990, size: 64, offset: 2944)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !169, file: !21, line: 515, baseType: !4075, size: 64, offset: 8064)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4077, line: 117, size: 128, elements: !4078)
!4077 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4078 = !{!4079, !4080, !4081}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4076, file: !4077, line: 118, baseType: !1416, size: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4076, file: !4077, line: 119, baseType: !1416, size: 32, offset: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4076, file: !4077, line: 120, baseType: !309, size: 64, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !169, file: !21, line: 516, baseType: !7, size: 32, offset: 8128)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !169, file: !21, line: 519, baseType: !7, size: 32, offset: 8160)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !169, file: !21, line: 520, baseType: !4085, size: 64, offset: 8192)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !169, file: !21, line: 523, baseType: !4087, size: 64, offset: 8256)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !21, line: 523, flags: DIFlagFwdDecl)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !169, file: !21, line: 524, baseType: !7, size: 32, offset: 8320)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !169, file: !21, line: 525, baseType: !4092, size: 64, offset: 8384)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !21, line: 525, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !169, file: !21, line: 526, baseType: !7, size: 32, offset: 8448)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !169, file: !21, line: 533, baseType: !167, size: 64, offset: 8512)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !169, file: !21, line: 534, baseType: !7, size: 32, offset: 8576)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !169, file: !21, line: 535, baseType: !4099, size: 64, offset: 8640)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !169, file: !21, line: 536, baseType: !7, size: 32, offset: 8704)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !169, file: !21, line: 539, baseType: !103, size: 32, offset: 8736)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !169, file: !21, line: 540, baseType: !4103, size: 64, offset: 8768)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4105, line: 32, size: 64, elements: !4106)
!4105 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4106 = !{!4107, !4108}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4104, file: !4105, line: 33, baseType: !1416, size: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4104, file: !4105, line: 34, baseType: !1416, size: 32, offset: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !169, file: !21, line: 563, baseType: !173, size: 128, offset: 8832)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !169, file: !21, line: 565, baseType: !173, size: 128, offset: 8960)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !169, file: !21, line: 568, baseType: !4112, size: 64, offset: 9088)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !169, file: !21, line: 570, baseType: !223, size: 32, offset: 9152)
!4114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1658, line: 36, baseType: !242)
!4115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !174, line: 42, baseType: !323)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1658, line: 38, baseType: !423)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !309)
!4120 = !{!0, !4121, !4125, !4130, !4135, !4138, !4143, !4148, !4753, !4756, !4761, !4763, !4768, !4773, !4776, !4778, !5105}
!4121 = !DIGlobalVariableExpression(var: !4122, expr: !DIExpression())
!4122 = distinct !DIGlobalVariable(name: "__exitcall_virtio_input_driver_exit", scope: !2, file: !3, line: 409, type: !4123, isLocal: true, isDefinition: true)
!4123 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4124, line: 120, baseType: !4112)
!4124 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4125 = !DIGlobalVariableExpression(var: !4126, expr: !DIExpression())
!4126 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file298", scope: !2, file: !3, line: 412, type: !4127, isLocal: true, isDefinition: true, align: 8)
!4127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 368, elements: !4128)
!4128 = !{!4129}
!4129 = !DISubrange(count: 46)
!4130 = !DIGlobalVariableExpression(var: !4131, expr: !DIExpression())
!4131 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license299", scope: !2, file: !3, line: 412, type: !4132, isLocal: true, isDefinition: true, align: 8)
!4132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 200, elements: !4133)
!4133 = !{!4134}
!4134 = !DISubrange(count: 25)
!4135 = !DIGlobalVariableExpression(var: !4136, expr: !DIExpression())
!4136 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description300", scope: !2, file: !3, line: 413, type: !4137, isLocal: true, isDefinition: true, align: 8)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 416, elements: !2106)
!4138 = !DIGlobalVariableExpression(var: !4139, expr: !DIExpression())
!4139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author301", scope: !2, file: !3, line: 414, type: !4140, isLocal: true, isDefinition: true, align: 8)
!4140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 432, elements: !4141)
!4141 = !{!4142}
!4142 = !DISubrange(count: 54)
!4143 = !DIGlobalVariableExpression(var: !4144, expr: !DIExpression())
!4144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 396, type: !4145, isLocal: true, isDefinition: true)
!4145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 104, elements: !4146)
!4146 = !{!4147}
!4147 = !DISubrange(count: 13)
!4148 = !DIGlobalVariableExpression(var: !4149, expr: !DIExpression())
!4149 = distinct !DIGlobalVariable(name: "virtio_input_driver", scope: !2, file: !3, line: 395, type: !4150, isLocal: true, isDefinition: true)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_driver", file: !4151, line: 182, size: 1920, elements: !4152)
!4151 = !DIFile(filename: "./include/linux/virtio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e5ffaaf59c73222e5165cb3fb97a1c")
!4152 = !{!4153, !4619, !4626, !4628, !4629, !4630, !4631, !4747, !4748, !4749, !4750, !4751, !4752}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4150, file: !4151, line: 183, baseType: !4154, size: 1152)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !136, line: 96, size: 1152, elements: !4155)
!4155 = !{!4156, !4157, !4579, !4580, !4581, !4582, !4583, !4596, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4154, file: !136, line: 97, baseType: !192, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4154, file: !136, line: 98, baseType: !4158, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4160)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4161, line: 80, size: 1344, elements: !4162)
!4161 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4162 = !{!4163, !4164, !4165, !4166, !4167, !4168, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4569, !4570, !4571, !4572, !4573, !4574, !4578}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4160, file: !4161, line: 81, baseType: !192, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4160, file: !4161, line: 82, baseType: !192, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4160, file: !4161, line: 83, baseType: !325, size: 64, offset: 128)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4160, file: !4161, line: 84, baseType: !325, size: 64, offset: 192)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4160, file: !4161, line: 85, baseType: !325, size: 64, offset: 256)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4160, file: !4161, line: 87, baseType: !4169, size: 64, offset: 320)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!103, !4172, !4236}
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !88, line: 705, size: 5824, elements: !4174)
!4174 = !{!4175, !4176, !4177, !4180, !4181, !4234, !4235, !4237, !4238, !4239, !4240, !4247, !4343, !4356, !4366, !4370, !4372, !4373, !4374, !4378, !4385, !4386, !4389, !4392, !4396, !4500, !4501, !4502, !4503, !4504, !4505, !4535, !4536, !4537, !4540, !4543, !4552, !4553, !4554, !4555, !4556, !4557}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4173, file: !88, line: 706, baseType: !188, size: 512)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4173, file: !88, line: 707, baseType: !4172, size: 64, offset: 512)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4173, file: !88, line: 709, baseType: !4178, size: 64, offset: 576)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !88, line: 37, flags: DIFlagFwdDecl)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4173, file: !88, line: 711, baseType: !192, size: 64, offset: 640)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4173, file: !88, line: 712, baseType: !4182, size: 64, offset: 704)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4184)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !88, line: 89, size: 384, elements: !4185)
!4185 = !{!4186, !4187, !4188, !4194, !4199, !4203}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4184, file: !88, line: 90, baseType: !192, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4184, file: !88, line: 91, baseType: !325, size: 64, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4184, file: !88, line: 92, baseType: !4189, size: 64, offset: 128)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!103, !4192, !268}
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4173)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4184, file: !88, line: 93, baseType: !4195, size: 64, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!273, !4192, !4198, !3669, !3670}
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4184, file: !88, line: 95, baseType: !4200, size: 64, offset: 256)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{null, !4172}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4184, file: !88, line: 97, baseType: !4204, size: 64, offset: 320)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4206)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !95, line: 286, size: 1472, elements: !4207)
!4207 = !{!4208, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4206, file: !95, line: 287, baseType: !4209, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!103, !4172}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4206, file: !95, line: 288, baseType: !4200, size: 64, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4206, file: !95, line: 289, baseType: !4209, size: 64, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4206, file: !95, line: 290, baseType: !4209, size: 64, offset: 192)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4206, file: !95, line: 291, baseType: !4209, size: 64, offset: 256)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4206, file: !95, line: 292, baseType: !4209, size: 64, offset: 320)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4206, file: !95, line: 293, baseType: !4209, size: 64, offset: 384)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4206, file: !95, line: 294, baseType: !4209, size: 64, offset: 448)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4206, file: !95, line: 295, baseType: !4209, size: 64, offset: 512)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4206, file: !95, line: 296, baseType: !4209, size: 64, offset: 576)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4206, file: !95, line: 297, baseType: !4209, size: 64, offset: 640)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4206, file: !95, line: 298, baseType: !4209, size: 64, offset: 704)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4206, file: !95, line: 299, baseType: !4209, size: 64, offset: 768)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4206, file: !95, line: 300, baseType: !4209, size: 64, offset: 832)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4206, file: !95, line: 301, baseType: !4209, size: 64, offset: 896)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4206, file: !95, line: 302, baseType: !4209, size: 64, offset: 960)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4206, file: !95, line: 303, baseType: !4209, size: 64, offset: 1024)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4206, file: !95, line: 304, baseType: !4209, size: 64, offset: 1088)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4206, file: !95, line: 305, baseType: !4209, size: 64, offset: 1152)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4206, file: !95, line: 306, baseType: !4209, size: 64, offset: 1216)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4206, file: !95, line: 307, baseType: !4209, size: 64, offset: 1280)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4206, file: !95, line: 308, baseType: !4209, size: 64, offset: 1344)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4206, file: !95, line: 309, baseType: !4209, size: 64, offset: 1408)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4173, file: !88, line: 714, baseType: !4158, size: 64, offset: 768)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4173, file: !88, line: 715, baseType: !4236, size: 64, offset: 832)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4173, file: !88, line: 717, baseType: !167, size: 64, offset: 896)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4173, file: !88, line: 719, baseType: !167, size: 64, offset: 960)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4173, file: !88, line: 721, baseType: !653, size: 256, offset: 1024)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4173, file: !88, line: 725, baseType: !4241, size: 448, offset: 1280)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !88, line: 517, size: 448, elements: !4242)
!4242 = !{!4243, !4244, !4245, !4246}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4241, file: !88, line: 518, baseType: !173, size: 128)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4241, file: !88, line: 519, baseType: !173, size: 128, offset: 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4241, file: !88, line: 520, baseType: !173, size: 128, offset: 256)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4241, file: !88, line: 521, baseType: !87, size: 32, offset: 384)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4173, file: !88, line: 726, baseType: !4248, size: 2496, offset: 1728)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !95, line: 663, size: 2496, elements: !4249)
!4249 = !{!4250, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4336, !4340}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4248, file: !95, line: 664, baseType: !4251, size: 32)
!4251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !95, line: 60, baseType: !4252)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !95, line: 58, size: 32, elements: !4253)
!4253 = !{!4254}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4252, file: !95, line: 59, baseType: !103, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4248, file: !95, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4248, file: !95, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4248, file: !95, line: 667, baseType: !1473, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4248, file: !95, line: 668, baseType: !1473, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4248, file: !95, line: 669, baseType: !1473, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4248, file: !95, line: 670, baseType: !1473, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4248, file: !95, line: 671, baseType: !1473, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4248, file: !95, line: 672, baseType: !1473, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4248, file: !95, line: 673, baseType: !1473, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4248, file: !95, line: 674, baseType: !1473, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4248, file: !95, line: 675, baseType: !422, size: 32, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4248, file: !95, line: 676, baseType: !203, size: 32, offset: 96)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4248, file: !95, line: 678, baseType: !173, size: 128, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4248, file: !95, line: 679, baseType: !1864, size: 256, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4248, file: !95, line: 680, baseType: !4270, size: 64, offset: 512)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4272, line: 43, size: 1536, elements: !4273)
!4272 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4273 = !{!4274, !4275, !4276, !4277, !4278, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4271, file: !4272, line: 44, baseType: !192, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4271, file: !4272, line: 45, baseType: !103, size: 32, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4271, file: !4272, line: 46, baseType: !173, size: 128, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4271, file: !4272, line: 47, baseType: !203, size: 32, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4271, file: !4272, line: 48, baseType: !4279, size: 64, offset: 320)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !95, line: 629, flags: DIFlagFwdDecl)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4271, file: !4272, line: 49, baseType: !2851, size: 320, offset: 384)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4271, file: !4272, line: 50, baseType: !323, size: 64, offset: 704)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4271, file: !4272, line: 51, baseType: !1117, size: 64, offset: 768)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4271, file: !4272, line: 52, baseType: !1117, size: 64, offset: 832)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4271, file: !4272, line: 53, baseType: !1117, size: 64, offset: 896)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4271, file: !4272, line: 54, baseType: !1117, size: 64, offset: 960)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4271, file: !4272, line: 55, baseType: !1117, size: 64, offset: 1024)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4271, file: !4272, line: 56, baseType: !323, size: 64, offset: 1088)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4271, file: !4272, line: 57, baseType: !323, size: 64, offset: 1152)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4271, file: !4272, line: 58, baseType: !323, size: 64, offset: 1216)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4271, file: !4272, line: 59, baseType: !323, size: 64, offset: 1280)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4271, file: !4272, line: 60, baseType: !323, size: 64, offset: 1344)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4271, file: !4272, line: 61, baseType: !4172, size: 64, offset: 1408)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4271, file: !4272, line: 62, baseType: !1473, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4271, file: !4272, line: 63, baseType: !1473, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4248, file: !95, line: 681, baseType: !1473, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4248, file: !95, line: 682, baseType: !1473, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4248, file: !95, line: 683, baseType: !1473, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4248, file: !95, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4248, file: !95, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4248, file: !95, line: 690, baseType: !1109, size: 512, offset: 640)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4248, file: !95, line: 691, baseType: !426, size: 64, offset: 1152)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4248, file: !95, line: 692, baseType: !2180, size: 256, offset: 1216)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4248, file: !95, line: 693, baseType: !959, size: 192, offset: 1472)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4248, file: !95, line: 694, baseType: !4279, size: 64, offset: 1664)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4248, file: !95, line: 695, baseType: !223, size: 32, offset: 1728)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4248, file: !95, line: 696, baseType: !223, size: 32, offset: 1760)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4248, file: !95, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4248, file: !95, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4248, file: !95, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4248, file: !95, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4248, file: !95, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4248, file: !95, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4248, file: !95, line: 703, baseType: !1473, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4248, file: !95, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4248, file: !95, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4248, file: !95, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4248, file: !95, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4248, file: !95, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4248, file: !95, line: 709, baseType: !7, size: 32, offset: 1824)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4248, file: !95, line: 710, baseType: !94, size: 32, offset: 1856)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4248, file: !95, line: 711, baseType: !102, size: 32, offset: 1888)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4248, file: !95, line: 712, baseType: !102, size: 32, offset: 1920)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4248, file: !95, line: 713, baseType: !103, size: 32, offset: 1952)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4248, file: !95, line: 714, baseType: !103, size: 32, offset: 1984)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4248, file: !95, line: 715, baseType: !426, size: 64, offset: 2048)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4248, file: !95, line: 716, baseType: !426, size: 64, offset: 2112)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4248, file: !95, line: 717, baseType: !426, size: 64, offset: 2176)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4248, file: !95, line: 718, baseType: !426, size: 64, offset: 2240)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4248, file: !95, line: 720, baseType: !4331, size: 64, offset: 2304)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !95, line: 632, size: 64, elements: !4333)
!4333 = !{!4334, !4335}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4332, file: !95, line: 633, baseType: !203, size: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4332, file: !95, line: 634, baseType: !7, size: 32, offset: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4248, file: !95, line: 721, baseType: !4337, size: 64, offset: 2368)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{null, !4172, !1416}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4248, file: !95, line: 722, baseType: !4341, size: 64, offset: 2432)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !95, line: 722, flags: DIFlagFwdDecl)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4173, file: !88, line: 727, baseType: !4344, size: 64, offset: 4224)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !95, line: 742, size: 1792, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4353, !4354, !4355}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4345, file: !95, line: 743, baseType: !4206, size: 1472)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4345, file: !95, line: 744, baseType: !4209, size: 64, offset: 1472)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4345, file: !95, line: 745, baseType: !4350, size: 64, offset: 1536)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{null, !4172, !1473}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4345, file: !95, line: 746, baseType: !4209, size: 64, offset: 1600)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4345, file: !95, line: 747, baseType: !4200, size: 64, offset: 1664)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4345, file: !95, line: 748, baseType: !4200, size: 64, offset: 1728)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4173, file: !88, line: 736, baseType: !4357, size: 128, offset: 4288)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !88, line: 529, size: 128, elements: !4358)
!4358 = !{!4359, !4363}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4357, file: !88, line: 531, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4362, line: 13, flags: DIFlagFwdDecl)
!4362 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4357, file: !88, line: 532, baseType: !4364, size: 64, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !88, line: 49, flags: DIFlagFwdDecl)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4173, file: !88, line: 738, baseType: !4367, size: 64, offset: 4416)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4369)
!4369 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !88, line: 738, flags: DIFlagFwdDecl)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4173, file: !88, line: 740, baseType: !4371, size: 64, offset: 4480)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4173, file: !88, line: 741, baseType: !426, size: 64, offset: 4544)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4173, file: !88, line: 746, baseType: !426, size: 64, offset: 4608)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4173, file: !88, line: 747, baseType: !4375, size: 64, offset: 4672)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4377)
!4377 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !88, line: 747, flags: DIFlagFwdDecl)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4173, file: !88, line: 749, baseType: !4379, size: 64, offset: 4736)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !88, line: 428, size: 128, elements: !4381)
!4381 = !{!4382, !4383, !4384}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4380, file: !88, line: 433, baseType: !7, size: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4380, file: !88, line: 434, baseType: !7, size: 32, offset: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4380, file: !88, line: 435, baseType: !323, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4173, file: !88, line: 751, baseType: !173, size: 128, offset: 4800)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4173, file: !88, line: 762, baseType: !4387, size: 64, offset: 4928)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !88, line: 762, flags: DIFlagFwdDecl)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4173, file: !88, line: 770, baseType: !4390, offset: 4992)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4391, line: 5, elements: !557)
!4391 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4173, file: !88, line: 772, baseType: !4393, size: 64, offset: 4992)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4395, line: 18, flags: DIFlagFwdDecl)
!4395 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4173, file: !88, line: 773, baseType: !4397, size: 64, offset: 5056)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4399, line: 41, size: 512, elements: !4400)
!4399 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4400 = !{!4401, !4402, !4496, !4497, !4498, !4499}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4398, file: !4399, line: 42, baseType: !4397, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4398, file: !4399, line: 43, baseType: !4403, size: 64, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4405)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4399, line: 125, size: 1408, elements: !4406)
!4406 = !{!4407, !4411, !4415, !4421, !4425, !4426, !4431, !4435, !4439, !4443, !4447, !4448, !4452, !4456, !4460, !4471, !4472, !4473, !4474, !4484, !4488, !4492}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4405, file: !4399, line: 126, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!4397, !4397}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4405, file: !4399, line: 127, baseType: !4412, size: 64, offset: 64)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !4397}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4405, file: !4399, line: 128, baseType: !4416, size: 64, offset: 128)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!1473, !4419}
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4398)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4405, file: !4399, line: 129, baseType: !4422, size: 64, offset: 192)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!2141, !4419, !4192}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4405, file: !4399, line: 131, baseType: !4416, size: 64, offset: 256)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4405, file: !4399, line: 133, baseType: !4427, size: 64, offset: 320)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!4430, !4419}
!4430 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4399, line: 132, flags: DIFlagFwdDecl)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4405, file: !4399, line: 134, baseType: !4432, size: 64, offset: 384)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!1473, !4419, !192}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4405, file: !4399, line: 136, baseType: !4436, size: 64, offset: 448)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!103, !4419, !192, !7, !167, !320}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4405, file: !4399, line: 141, baseType: !4440, size: 64, offset: 512)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!103, !4419, !192, !4085, !320}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4405, file: !4399, line: 144, baseType: !4444, size: 64, offset: 576)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!192, !4419}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4405, file: !4399, line: 145, baseType: !4444, size: 64, offset: 640)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4405, file: !4399, line: 146, baseType: !4449, size: 64, offset: 704)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!4397, !4419}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4405, file: !4399, line: 148, baseType: !4453, size: 64, offset: 768)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!4397, !4419, !4397}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4405, file: !4399, line: 151, baseType: !4457, size: 64, offset: 832)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!4397, !4419, !192}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4405, file: !4399, line: 153, baseType: !4461, size: 64, offset: 896)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!103, !4419, !192, !192, !7, !7, !4464}
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4399, line: 94, size: 640, elements: !4466)
!4466 = !{!4467, !4468, !4469}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4465, file: !4399, line: 95, baseType: !4397, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4465, file: !4399, line: 96, baseType: !7, size: 32, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4465, file: !4399, line: 97, baseType: !4470, size: 512, offset: 128)
!4470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 512, elements: !1152)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4405, file: !4399, line: 158, baseType: !4453, size: 64, offset: 960)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4405, file: !4399, line: 161, baseType: !4449, size: 64, offset: 1024)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4405, file: !4399, line: 163, baseType: !4408, size: 64, offset: 1088)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4405, file: !4399, line: 164, baseType: !4475, size: 64, offset: 1152)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!103, !4419, !4478}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4399, line: 73, size: 128, elements: !4480)
!4480 = !{!4481, !4482, !4483}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4479, file: !4399, line: 74, baseType: !7, size: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4479, file: !4399, line: 75, baseType: !7, size: 32, offset: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4479, file: !4399, line: 76, baseType: !4419, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4405, file: !4399, line: 166, baseType: !4485, size: 64, offset: 1216)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!167, !4397, !103}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4405, file: !4399, line: 167, baseType: !4489, size: 64, offset: 1280)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!103, !4419, !7}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4405, file: !4399, line: 168, baseType: !4493, size: 64, offset: 1344)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!103, !4397}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4398, file: !4399, line: 44, baseType: !4172, size: 64, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4398, file: !4399, line: 45, baseType: !173, size: 128, offset: 192)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4398, file: !4399, line: 46, baseType: !173, size: 128, offset: 320)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4398, file: !4399, line: 47, baseType: !231, size: 8, offset: 448)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4173, file: !88, line: 776, baseType: !103, size: 32, offset: 5120)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4173, file: !88, line: 778, baseType: !509, size: 32, offset: 5152)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4173, file: !88, line: 779, baseType: !422, size: 32, offset: 5184)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4173, file: !88, line: 781, baseType: !203, size: 32, offset: 5216)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4173, file: !88, line: 782, baseType: !173, size: 128, offset: 5248)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4173, file: !88, line: 784, baseType: !4506, size: 64, offset: 5376)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4508)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4509, line: 52, size: 768, elements: !4510)
!4509 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4510 = !{!4511, !4512, !4513, !4514, !4515, !4519, !4523, !4524, !4525, !4526, !4530, !4534}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4508, file: !4509, line: 53, baseType: !192, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4508, file: !4509, line: 55, baseType: !325, size: 64, offset: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4508, file: !4509, line: 56, baseType: !325, size: 64, offset: 128)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4508, file: !4509, line: 58, baseType: !4189, size: 64, offset: 192)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4508, file: !4509, line: 59, baseType: !4516, size: 64, offset: 256)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!273, !4192, !4198}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4508, file: !4509, line: 61, baseType: !4520, size: 64, offset: 320)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{null, !4506}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4508, file: !4509, line: 62, baseType: !4200, size: 64, offset: 384)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4508, file: !4509, line: 64, baseType: !4209, size: 64, offset: 448)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4508, file: !4509, line: 66, baseType: !3637, size: 64, offset: 512)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4508, file: !4509, line: 67, baseType: !4527, size: 64, offset: 576)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!2141, !4192}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4508, file: !4509, line: 69, baseType: !4531, size: 64, offset: 640)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{null, !4192, !3669, !3670}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4508, file: !4509, line: 71, baseType: !4204, size: 64, offset: 704)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4173, file: !88, line: 785, baseType: !325, size: 64, offset: 5440)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4173, file: !88, line: 787, baseType: !4200, size: 64, offset: 5504)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4173, file: !88, line: 788, baseType: !4538, size: 64, offset: 5568)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !88, line: 46, flags: DIFlagFwdDecl)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4173, file: !88, line: 789, baseType: !4541, size: 64, offset: 5632)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !88, line: 48, flags: DIFlagFwdDecl)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4173, file: !88, line: 791, baseType: !4544, size: 64, offset: 5696)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !88, line: 597, size: 128, elements: !4546)
!4546 = !{!4547, !4548, !4549, !4550, !4551}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4545, file: !88, line: 598, baseType: !110, size: 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4545, file: !88, line: 599, baseType: !119, size: 32, offset: 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4545, file: !88, line: 600, baseType: !124, size: 32, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4545, file: !88, line: 601, baseType: !1473, size: 8, offset: 96)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4545, file: !88, line: 602, baseType: !1473, size: 8, offset: 104)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4173, file: !88, line: 793, baseType: !129, size: 32, offset: 5760)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4173, file: !88, line: 795, baseType: !1473, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4173, file: !88, line: 796, baseType: !1473, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4173, file: !88, line: 797, baseType: !1473, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4173, file: !88, line: 798, baseType: !1473, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4173, file: !88, line: 799, baseType: !1473, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4160, file: !4161, line: 88, baseType: !4189, size: 64, offset: 384)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4160, file: !4161, line: 89, baseType: !4209, size: 64, offset: 448)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4160, file: !4161, line: 90, baseType: !4200, size: 64, offset: 512)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4160, file: !4161, line: 91, baseType: !4200, size: 64, offset: 576)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4160, file: !4161, line: 92, baseType: !4200, size: 64, offset: 640)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4160, file: !4161, line: 94, baseType: !4209, size: 64, offset: 704)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4160, file: !4161, line: 95, baseType: !4209, size: 64, offset: 768)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4160, file: !4161, line: 97, baseType: !4566, size: 64, offset: 832)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!103, !4172, !4251}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4160, file: !4161, line: 98, baseType: !4209, size: 64, offset: 896)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4160, file: !4161, line: 100, baseType: !4209, size: 64, offset: 960)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4160, file: !4161, line: 102, baseType: !4209, size: 64, offset: 1024)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4160, file: !4161, line: 103, baseType: !4200, size: 64, offset: 1088)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4160, file: !4161, line: 105, baseType: !4204, size: 64, offset: 1152)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4160, file: !4161, line: 107, baseType: !4575, size: 64, offset: 1216)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4577)
!4577 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4161, line: 107, flags: DIFlagFwdDecl)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4160, file: !4161, line: 109, baseType: !1473, size: 8, offset: 1280)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4154, file: !136, line: 100, baseType: !168, size: 64, offset: 128)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4154, file: !136, line: 101, baseType: !192, size: 64, offset: 192)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4154, file: !136, line: 103, baseType: !1473, size: 8, offset: 256)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4154, file: !136, line: 104, baseType: !135, size: 32, offset: 288)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4154, file: !136, line: 106, baseType: !4584, size: 64, offset: 320)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4586)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4587, line: 282, size: 1600, elements: !4588)
!4587 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4588 = !{!4589, !4590, !4591, !4595}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4586, file: !4587, line: 283, baseType: !3126, size: 256)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4586, file: !4587, line: 284, baseType: !3126, size: 256, offset: 256)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4586, file: !4587, line: 285, baseType: !4592, size: 1024, offset: 512)
!4592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 1024, elements: !4593)
!4593 = !{!4594}
!4594 = !DISubrange(count: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4586, file: !4587, line: 286, baseType: !2141, size: 64, offset: 1536)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4154, file: !136, line: 107, baseType: !4597, size: 64, offset: 384)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4599)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4587, line: 217, size: 256, elements: !4600)
!4600 = !{!4601, !4602, !4604, !4605}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4599, file: !4587, line: 218, baseType: !3133, size: 128)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4599, file: !4587, line: 219, baseType: !4603, size: 64, offset: 128)
!4603 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4587, line: 15, baseType: !323)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4599, file: !4587, line: 220, baseType: !423, size: 32, offset: 192)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4599, file: !4587, line: 221, baseType: !423, size: 32, offset: 224)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4154, file: !136, line: 109, baseType: !4209, size: 64, offset: 448)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4154, file: !136, line: 110, baseType: !4200, size: 64, offset: 512)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4154, file: !136, line: 111, baseType: !4209, size: 64, offset: 576)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4154, file: !136, line: 112, baseType: !4200, size: 64, offset: 640)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4154, file: !136, line: 113, baseType: !4566, size: 64, offset: 704)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4154, file: !136, line: 114, baseType: !4209, size: 64, offset: 768)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4154, file: !136, line: 115, baseType: !325, size: 64, offset: 832)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4154, file: !136, line: 116, baseType: !325, size: 64, offset: 896)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4154, file: !136, line: 118, baseType: !4204, size: 64, offset: 960)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4154, file: !136, line: 119, baseType: !4200, size: 64, offset: 1024)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4154, file: !136, line: 121, baseType: !4617, size: 64, offset: 1088)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !136, line: 121, flags: DIFlagFwdDecl)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4150, file: !4151, line: 184, baseType: !4620, size: 64, offset: 1152)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4622)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device_id", file: !4587, line: 449, size: 64, elements: !4623)
!4623 = !{!4624, !4625}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4622, file: !4587, line: 450, baseType: !423, size: 32)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4622, file: !4587, line: 451, baseType: !423, size: 32, offset: 32)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "feature_table", scope: !4150, file: !4151, line: 185, baseType: !4627, size: 64, offset: 1216)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "feature_table_size", scope: !4150, file: !4151, line: 186, baseType: !7, size: 32, offset: 1280)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "feature_table_legacy", scope: !4150, file: !4151, line: 187, baseType: !4627, size: 64, offset: 1344)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "feature_table_size_legacy", scope: !4150, file: !4151, line: 188, baseType: !7, size: 32, offset: 1408)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !4150, file: !4151, line: 189, baseType: !4632, size: 64, offset: 1472)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!103, !4635}
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device", file: !4151, line: 122, size: 6400, elements: !4637)
!4637 = !{!4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4740, !4744, !4745, !4746}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4636, file: !4151, line: 123, baseType: !103, size: 32)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !4636, file: !4151, line: 124, baseType: !1473, size: 8, offset: 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "config_enabled", scope: !4636, file: !4151, line: 125, baseType: !1473, size: 8, offset: 40)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "config_change_pending", scope: !4636, file: !4151, line: 126, baseType: !1473, size: 8, offset: 48)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "config_lock", scope: !4636, file: !4151, line: 127, baseType: !203, size: 32, offset: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "vqs_list_lock", scope: !4636, file: !4151, line: 128, baseType: !203, size: 32, offset: 96)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4636, file: !4151, line: 129, baseType: !4173, size: 5824, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4636, file: !4151, line: 130, baseType: !4622, size: 64, offset: 5952)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4636, file: !4151, line: 131, baseType: !4647, size: 64, offset: 6016)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4649)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_config_ops", file: !4650, line: 97, size: 1088, elements: !4651)
!4650 = !DIFile(filename: "./include/linux/virtio_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b12f5288db5f9b29a3869a2adb1ae6a1")
!4651 = !{!4652, !4656, !4660, !4664, !4668, !4672, !4676, !4705, !4706, !4707, !4711, !4712, !4716, !4722, !4726, !4735, !4739}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4649, file: !4650, line: 98, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{null, !4635, !7, !167, !7}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4649, file: !4650, line: 100, baseType: !4657, size: 64, offset: 64)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{null, !4635, !7, !2141, !7}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !4649, file: !4650, line: 102, baseType: !4661, size: 64, offset: 128)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!422, !4635}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4649, file: !4650, line: 103, baseType: !4665, size: 64, offset: 192)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!231, !4635}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "set_status", scope: !4649, file: !4650, line: 104, baseType: !4669, size: 64, offset: 256)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{null, !4635, !231}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4649, file: !4650, line: 105, baseType: !4673, size: 64, offset: 320)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{null, !4635}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "find_vqs", scope: !4649, file: !4650, line: 106, baseType: !4677, size: 64, offset: 384)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!103, !4635, !7, !4680, !4696, !4699, !4701, !4703}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtqueue", file: !4151, line: 30, size: 512, elements: !4683)
!4683 = !{!4684, !4685, !4689, !4690, !4691, !4692, !4693, !4694, !4695}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4682, file: !4151, line: 31, baseType: !173, size: 128)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4682, file: !4151, line: 32, baseType: !4686, size: 64, offset: 128)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{null, !4681}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4682, file: !4151, line: 33, baseType: !192, size: 64, offset: 192)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !4682, file: !4151, line: 34, baseType: !4635, size: 64, offset: 256)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4682, file: !4151, line: 35, baseType: !7, size: 32, offset: 320)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "num_free", scope: !4682, file: !4151, line: 36, baseType: !7, size: 32, offset: 352)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "num_max", scope: !4682, file: !4151, line: 37, baseType: !7, size: 32, offset: 384)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4682, file: !4151, line: 38, baseType: !1473, size: 8, offset: 416)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4682, file: !4151, line: 39, baseType: !167, size: 64, offset: 448)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_typedef, name: "vq_callback_t", file: !4650, line: 19, baseType: !4687)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1473)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity", file: !4650, line: 12, flags: DIFlagFwdDecl)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "del_vqs", scope: !4649, file: !4650, line: 110, baseType: !4673, size: 64, offset: 448)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize_cbs", scope: !4649, file: !4650, line: 111, baseType: !4673, size: 64, offset: 512)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !4649, file: !4650, line: 112, baseType: !4708, size: 64, offset: 576)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!426, !4635}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_features", scope: !4649, file: !4650, line: 113, baseType: !4632, size: 64, offset: 640)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !4649, file: !4650, line: 114, baseType: !4713, size: 64, offset: 704)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!192, !4635}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "set_vq_affinity", scope: !4649, file: !4650, line: 115, baseType: !4717, size: 64, offset: 768)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!103, !4681, !4720}
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1233)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "get_vq_affinity", scope: !4649, file: !4650, line: 117, baseType: !4723, size: 64, offset: 832)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!4720, !4635, !103}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "get_shm_region", scope: !4649, file: !4650, line: 119, baseType: !4727, size: 64, offset: 896)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!1473, !4635, !4730, !231}
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_shm_region", file: !4650, line: 14, size: 128, elements: !4732)
!4732 = !{!4733, !4734}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4731, file: !4650, line: 15, baseType: !426, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4731, file: !4650, line: 16, baseType: !426, size: 64, offset: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vq_and_reset", scope: !4649, file: !4650, line: 121, baseType: !4736, size: 64, offset: 960)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!103, !4681}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vq_after_reset", scope: !4649, file: !4650, line: 122, baseType: !4736, size: 64, offset: 1024)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "vringh_config", scope: !4636, file: !4151, line: 132, baseType: !4741, size: 64, offset: 6080)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4743)
!4743 = !DICompositeType(tag: DW_TAG_structure_type, name: "vringh_config_ops", file: !4151, line: 132, flags: DIFlagFwdDecl)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "vqs", scope: !4636, file: !4151, line: 133, baseType: !173, size: 128, offset: 6144)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !4636, file: !4151, line: 134, baseType: !426, size: 64, offset: 6272)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4636, file: !4151, line: 135, baseType: !167, size: 64, offset: 6336)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4150, file: !4151, line: 190, baseType: !4632, size: 64, offset: 1536)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !4150, file: !4151, line: 191, baseType: !4673, size: 64, offset: 1600)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4150, file: !4151, line: 192, baseType: !4673, size: 64, offset: 1664)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "config_changed", scope: !4150, file: !4151, line: 193, baseType: !4673, size: 64, offset: 1728)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4150, file: !4151, line: 194, baseType: !4632, size: 64, offset: 1792)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4150, file: !4151, line: 195, baseType: !4632, size: 64, offset: 1856)
!4753 = !DIGlobalVariableExpression(var: !4754, expr: !DIExpression())
!4754 = distinct !DIGlobalVariable(name: "id_table", scope: !2, file: !3, line: 390, type: !4755, isLocal: true, isDefinition: true)
!4755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4621, size: 128, elements: !2415)
!4756 = !DIGlobalVariableExpression(var: !4757, expr: !DIExpression())
!4757 = distinct !DIGlobalVariable(name: "features", scope: !2, file: !3, line: 387, type: !4758, isLocal: true, isDefinition: true)
!4758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !4759)
!4759 = !{!4760}
!4760 = !DISubrange(count: 0)
!4761 = !DIGlobalVariableExpression(var: !4762, expr: !DIExpression())
!4762 = distinct !DIGlobalVariable(scope: null, file: !3, line: 256, type: !2332, isLocal: true, isDefinition: true)
!4763 = !DIGlobalVariableExpression(var: !4764, expr: !DIExpression())
!4764 = distinct !DIGlobalVariable(scope: null, file: !4650, line: 143, type: !4765, isLocal: true, isDefinition: true)
!4765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 240, elements: !4766)
!4766 = !{!4767}
!4767 = !DISubrange(count: 30)
!4768 = !DIGlobalVariableExpression(var: !4769, expr: !DIExpression())
!4769 = distinct !DIGlobalVariable(scope: null, file: !157, line: 480, type: !4770, isLocal: true, isDefinition: true)
!4770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 168, elements: !4771)
!4771 = !{!4772}
!4772 = !DISubrange(count: 21)
!4773 = !DIGlobalVariableExpression(var: !4774, expr: !DIExpression())
!4774 = distinct !DIGlobalVariable(scope: null, file: !3, line: 191, type: !4775, isLocal: true, isDefinition: true)
!4775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 56, elements: !3915)
!4776 = !DIGlobalVariableExpression(var: !4777, expr: !DIExpression())
!4777 = distinct !DIGlobalVariable(scope: null, file: !3, line: 191, type: !4775, isLocal: true, isDefinition: true)
!4778 = !DIGlobalVariableExpression(var: !4779, expr: !DIExpression())
!4779 = distinct !DIGlobalVariable(name: "names", scope: !4780, file: !3, line: 191, type: !5104, isLocal: true, isDefinition: true)
!4780 = distinct !DISubprogram(name: "virtinput_init_vqs", scope: !3, file: !3, line: 186, type: !4781, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5097)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!103, !4783}
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_input", file: !3, line: 12, size: 5952, elements: !4785)
!4785 = !{!4786, !4787, !5082, !5084, !5085, !5086, !5087, !5088, !5095, !5096}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !4784, file: !3, line: 13, baseType: !4635, size: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "idev", scope: !4784, file: !3, line: 14, baseType: !4788, size: 64, offset: 64)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4790, line: 137, size: 10880, elements: !4791)
!4790 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!4791 = !{!4792, !4793, !4794, !4795, !4803, !4804, !4805, !4807, !4808, !4809, !4810, !4811, !4812, !4814, !4815, !4816, !4817, !4818, !4819, !4833, !4838, !4933, !4936, !4937, !4938, !4940, !4961, !4971, !4972, !4973, !4974, !4975, !4979, !4983, !4987, !4991, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5078, !5079, !5081}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4789, file: !4790, line: 138, baseType: !192, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4789, file: !4790, line: 139, baseType: !192, size: 64, offset: 64)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4789, file: !4790, line: 140, baseType: !192, size: 64, offset: 128)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4789, file: !4790, line: 141, baseType: !4796, size: 64, offset: 192)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4797, line: 59, size: 64, elements: !4798)
!4797 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!4798 = !{!4799, !4800, !4801, !4802}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4796, file: !4797, line: 60, baseType: !242, size: 16)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4796, file: !4797, line: 61, baseType: !242, size: 16, offset: 16)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4796, file: !4797, line: 62, baseType: !242, size: 16, offset: 32)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4796, file: !4797, line: 63, baseType: !242, size: 16, offset: 48)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4789, file: !4790, line: 143, baseType: !1236, size: 64, offset: 256)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4789, file: !4790, line: 145, baseType: !1236, size: 64, offset: 320)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4789, file: !4790, line: 146, baseType: !4806, size: 768, offset: 384)
!4806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 768, elements: !3005)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4789, file: !4790, line: 147, baseType: !1236, size: 64, offset: 1152)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4789, file: !4790, line: 148, baseType: !1236, size: 64, offset: 1216)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4789, file: !4790, line: 149, baseType: !1236, size: 64, offset: 1280)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4789, file: !4790, line: 150, baseType: !1236, size: 64, offset: 1344)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4789, file: !4790, line: 151, baseType: !1236, size: 64, offset: 1408)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4789, file: !4790, line: 152, baseType: !4813, size: 128, offset: 1472)
!4813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 128, elements: !2415)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4789, file: !4790, line: 153, baseType: !1236, size: 64, offset: 1600)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4789, file: !4790, line: 155, baseType: !7, size: 32, offset: 1664)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4789, file: !4790, line: 157, baseType: !7, size: 32, offset: 1696)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4789, file: !4790, line: 158, baseType: !7, size: 32, offset: 1728)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4789, file: !4790, line: 159, baseType: !167, size: 64, offset: 1792)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4789, file: !4790, line: 161, baseType: !4820, size: 64, offset: 1856)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!103, !4788, !4823, !975}
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4825)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4797, line: 117, size: 320, elements: !4826)
!4826 = !{!4827, !4828, !4829, !4830, !4831}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4825, file: !4797, line: 119, baseType: !233, size: 8)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4825, file: !4797, line: 120, baseType: !233, size: 8, offset: 8)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4825, file: !4797, line: 121, baseType: !242, size: 16, offset: 16)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4825, file: !4797, line: 122, baseType: !423, size: 32, offset: 32)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4825, file: !4797, line: 123, baseType: !4832, size: 256, offset: 64)
!4832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !435)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4789, file: !4790, line: 164, baseType: !4834, size: 64, offset: 1920)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!103, !4788, !4837}
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4789, file: !4790, line: 167, baseType: !4839, size: 64, offset: 1984)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4790, line: 546, size: 960, elements: !4841)
!4841 = !{!4842, !4909, !4913, !4917, !4921, !4922, !4926, !4927, !4928, !4929, !4930, !4931}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4840, file: !4790, line: 547, baseType: !4843, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!103, !4788, !4846, !4846}
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4797, line: 454, size: 384, elements: !4848)
!4848 = !{!4849, !4850, !4851, !4852, !4857, !4862}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4847, file: !4797, line: 455, baseType: !242, size: 16)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4847, file: !4797, line: 456, baseType: !2159, size: 16, offset: 16)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4847, file: !4797, line: 457, baseType: !242, size: 16, offset: 32)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4847, file: !4797, line: 458, baseType: !4853, size: 32, offset: 48)
!4853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4797, line: 320, size: 32, elements: !4854)
!4854 = !{!4855, !4856}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4853, file: !4797, line: 321, baseType: !242, size: 16)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4853, file: !4797, line: 322, baseType: !242, size: 16, offset: 16)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4847, file: !4797, line: 459, baseType: !4858, size: 32, offset: 80)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4797, line: 310, size: 32, elements: !4859)
!4859 = !{!4860, !4861}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4858, file: !4797, line: 311, baseType: !242, size: 16)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4858, file: !4797, line: 312, baseType: !242, size: 16, offset: 16)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4847, file: !4797, line: 467, baseType: !4863, size: 256, offset: 128)
!4863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4847, file: !4797, line: 461, size: 256, elements: !4864)
!4864 = !{!4865, !4876, !4882, !4894, !4904}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4863, file: !4797, line: 462, baseType: !4866, size: 80)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4797, line: 349, size: 80, elements: !4867)
!4867 = !{!4868, !4869}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4866, file: !4797, line: 350, baseType: !2159, size: 16)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4866, file: !4797, line: 351, baseType: !4870, size: 64, offset: 16)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4797, line: 337, size: 64, elements: !4871)
!4871 = !{!4872, !4873, !4874, !4875}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4870, file: !4797, line: 338, baseType: !242, size: 16)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4870, file: !4797, line: 339, baseType: !242, size: 16, offset: 16)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4870, file: !4797, line: 340, baseType: !242, size: 16, offset: 32)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4870, file: !4797, line: 341, baseType: !242, size: 16, offset: 48)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4863, file: !4797, line: 463, baseType: !4877, size: 96)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4797, line: 360, size: 96, elements: !4878)
!4878 = !{!4879, !4880, !4881}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4877, file: !4797, line: 361, baseType: !2159, size: 16)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4877, file: !4797, line: 362, baseType: !2159, size: 16, offset: 16)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4877, file: !4797, line: 363, baseType: !4870, size: 64, offset: 32)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4863, file: !4797, line: 464, baseType: !4883, size: 256)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4797, line: 405, size: 256, elements: !4884)
!4884 = !{!4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4883, file: !4797, line: 406, baseType: !242, size: 16)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4883, file: !4797, line: 407, baseType: !242, size: 16, offset: 16)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4883, file: !4797, line: 408, baseType: !2159, size: 16, offset: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4883, file: !4797, line: 409, baseType: !2159, size: 16, offset: 48)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4883, file: !4797, line: 410, baseType: !242, size: 16, offset: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4883, file: !4797, line: 412, baseType: !4870, size: 64, offset: 80)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4883, file: !4797, line: 414, baseType: !423, size: 32, offset: 160)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4883, file: !4797, line: 415, baseType: !4893, size: 64, offset: 192)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4863, file: !4797, line: 465, baseType: !4895, size: 192)
!4895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4896, size: 192, elements: !2415)
!4896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4797, line: 376, size: 96, elements: !4897)
!4897 = !{!4898, !4899, !4900, !4901, !4902, !4903}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4896, file: !4797, line: 377, baseType: !242, size: 16)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4896, file: !4797, line: 378, baseType: !242, size: 16, offset: 16)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4896, file: !4797, line: 380, baseType: !2159, size: 16, offset: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4896, file: !4797, line: 381, baseType: !2159, size: 16, offset: 48)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4896, file: !4797, line: 383, baseType: !242, size: 16, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4896, file: !4797, line: 384, baseType: !2159, size: 16, offset: 80)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4863, file: !4797, line: 466, baseType: !4905, size: 32)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4797, line: 426, size: 32, elements: !4906)
!4906 = !{!4907, !4908}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4905, file: !4797, line: 427, baseType: !242, size: 16)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4905, file: !4797, line: 428, baseType: !242, size: 16, offset: 16)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4840, file: !4790, line: 549, baseType: !4910, size: 64, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!103, !4788, !103}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4840, file: !4790, line: 551, baseType: !4914, size: 64, offset: 128)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!103, !4788, !103, !103}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4840, file: !4790, line: 552, baseType: !4918, size: 64, offset: 192)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{null, !4788, !241}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4840, file: !4790, line: 553, baseType: !4918, size: 64, offset: 256)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4840, file: !4790, line: 555, baseType: !4923, size: 64, offset: 320)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{null, !4839}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4840, file: !4790, line: 557, baseType: !167, size: 64, offset: 384)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4840, file: !4790, line: 559, baseType: !4813, size: 128, offset: 448)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4840, file: !4790, line: 561, baseType: !653, size: 256, offset: 576)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4840, file: !4790, line: 563, baseType: !103, size: 32, offset: 832)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4840, file: !4790, line: 564, baseType: !4846, size: 64, offset: 896)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4840, file: !4790, line: 565, baseType: !4932, offset: 960)
!4932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, elements: !1374)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4789, file: !4790, line: 169, baseType: !4934, size: 64, offset: 2048)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4790, line: 24, flags: DIFlagFwdDecl)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4789, file: !4790, line: 171, baseType: !7, size: 32, offset: 2112)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4789, file: !4790, line: 172, baseType: !2851, size: 320, offset: 2176)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4789, file: !4790, line: 174, baseType: !4939, size: 64, offset: 2496)
!4939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 64, elements: !2415)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4789, file: !4790, line: 176, baseType: !4941, size: 64, offset: 2560)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4943, line: 43, size: 256, elements: !4944)
!4943 = !DIFile(filename: "./include/linux/input/mt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2c012cf1730b90d0f045b3aba026b552")
!4944 = !{!4945, !4946, !4947, !4948, !4949, !4950, !4951}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "trkid", scope: !4942, file: !4943, line: 44, baseType: !103, size: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "num_slots", scope: !4942, file: !4943, line: 45, baseType: !103, size: 32, offset: 32)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4942, file: !4943, line: 46, baseType: !103, size: 32, offset: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4942, file: !4943, line: 47, baseType: !7, size: 32, offset: 96)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4942, file: !4943, line: 48, baseType: !7, size: 32, offset: 128)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4942, file: !4943, line: 49, baseType: !620, size: 64, offset: 192)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4942, file: !4943, line: 50, baseType: !4952, offset: 256)
!4952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4953, elements: !1374)
!4953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt_slot", file: !4943, line: 27, size: 512, elements: !4954)
!4954 = !{!4955, !4959, !4960}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !4953, file: !4943, line: 28, baseType: !4956, size: 448)
!4956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 448, elements: !4957)
!4957 = !{!4958}
!4958 = !DISubrange(count: 14)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4953, file: !4943, line: 29, baseType: !7, size: 32, offset: 448)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4953, file: !4943, line: 30, baseType: !7, size: 32, offset: 480)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4789, file: !4790, line: 178, baseType: !4962, size: 64, offset: 2624)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4797, line: 93, size: 192, elements: !4964)
!4964 = !{!4965, !4966, !4967, !4968, !4969, !4970}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4963, file: !4797, line: 94, baseType: !1417, size: 32)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4963, file: !4797, line: 95, baseType: !1417, size: 32, offset: 32)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4963, file: !4797, line: 96, baseType: !1417, size: 32, offset: 64)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4963, file: !4797, line: 97, baseType: !1417, size: 32, offset: 96)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4963, file: !4797, line: 98, baseType: !1417, size: 32, offset: 128)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4963, file: !4797, line: 99, baseType: !1417, size: 32, offset: 160)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4789, file: !4790, line: 180, baseType: !4806, size: 768, offset: 2688)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4789, file: !4790, line: 181, baseType: !1236, size: 64, offset: 3456)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4789, file: !4790, line: 182, baseType: !1236, size: 64, offset: 3520)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4789, file: !4790, line: 183, baseType: !1236, size: 64, offset: 3584)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4789, file: !4790, line: 185, baseType: !4976, size: 64, offset: 3648)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!103, !4788}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4789, file: !4790, line: 186, baseType: !4980, size: 64, offset: 3712)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{null, !4788}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4789, file: !4790, line: 187, baseType: !4984, size: 64, offset: 3776)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!103, !4788, !1312}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4789, file: !4790, line: 188, baseType: !4988, size: 64, offset: 3840)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!103, !4788, !7, !7, !103}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4789, file: !4790, line: 190, baseType: !4992, size: 64, offset: 3904)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4790, line: 345, size: 576, elements: !4994)
!4994 = !{!4995, !4996, !4997, !4998, !4999, !5065, !5066}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4993, file: !4790, line: 347, baseType: !167, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4993, file: !4790, line: 349, baseType: !103, size: 32, offset: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4993, file: !4790, line: 350, baseType: !192, size: 64, offset: 128)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4993, file: !4790, line: 352, baseType: !4788, size: 64, offset: 192)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4993, file: !4790, line: 353, baseType: !5000, size: 64, offset: 256)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4790, line: 310, size: 960, elements: !5002)
!5002 = !{!5003, !5004, !5008, !5019, !5023, !5027, !5054, !5058, !5059, !5060, !5061, !5062, !5063, !5064}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5001, file: !4790, line: 312, baseType: !167, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5001, file: !4790, line: 314, baseType: !5005, size: 64, offset: 64)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{null, !4992, !7, !7, !103}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5001, file: !4790, line: 315, baseType: !5009, size: 64, offset: 128)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{null, !4992, !5012, !7}
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5014)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4790, line: 32, size: 64, elements: !5015)
!5015 = !{!5016, !5017, !5018}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5014, file: !4790, line: 33, baseType: !242, size: 16)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5014, file: !4790, line: 34, baseType: !242, size: 16, offset: 16)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5014, file: !4790, line: 35, baseType: !1417, size: 32, offset: 32)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5001, file: !4790, line: 317, baseType: !5020, size: 64, offset: 192)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!1473, !4992, !7, !7, !103}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5001, file: !4790, line: 318, baseType: !5024, size: 64, offset: 256)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!1473, !5000, !4788}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !5001, file: !4790, line: 319, baseType: !5028, size: 64, offset: 320)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!103, !5000, !4788, !5031}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5033)
!5033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4587, line: 362, size: 1600, elements: !5034)
!5034 = !{!5035, !5036, !5037, !5038, !5039, !5040, !5042, !5044, !5045, !5046, !5047, !5048, !5049, !5051, !5052, !5053}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5033, file: !4587, line: 364, baseType: !4603, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !5033, file: !4587, line: 366, baseType: !242, size: 16, offset: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5033, file: !4587, line: 367, baseType: !242, size: 16, offset: 80)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5033, file: !4587, line: 368, baseType: !242, size: 16, offset: 96)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5033, file: !4587, line: 369, baseType: !242, size: 16, offset: 112)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !5033, file: !4587, line: 371, baseType: !5041, size: 64, offset: 128)
!5041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4603, size: 64, elements: !1237)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !5033, file: !4587, line: 372, baseType: !5043, size: 768, offset: 192)
!5043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4603, size: 768, elements: !3005)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !5033, file: !4587, line: 373, baseType: !5041, size: 64, offset: 960)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !5033, file: !4587, line: 374, baseType: !5041, size: 64, offset: 1024)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !5033, file: !4587, line: 375, baseType: !5041, size: 64, offset: 1088)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !5033, file: !4587, line: 376, baseType: !5041, size: 64, offset: 1152)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !5033, file: !4587, line: 377, baseType: !5041, size: 64, offset: 1216)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !5033, file: !4587, line: 378, baseType: !5050, size: 128, offset: 1280)
!5050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4603, size: 128, elements: !2415)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !5033, file: !4587, line: 379, baseType: !5041, size: 64, offset: 1408)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !5033, file: !4587, line: 380, baseType: !5041, size: 64, offset: 1472)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !5033, file: !4587, line: 382, baseType: !4603, size: 64, offset: 1536)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5001, file: !4790, line: 320, baseType: !5055, size: 64, offset: 384)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{null, !4992}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5001, file: !4790, line: 321, baseType: !5055, size: 64, offset: 448)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !5001, file: !4790, line: 323, baseType: !1473, size: 8, offset: 512)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5001, file: !4790, line: 324, baseType: !103, size: 32, offset: 544)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5001, file: !4790, line: 325, baseType: !192, size: 64, offset: 576)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5001, file: !4790, line: 327, baseType: !5031, size: 64, offset: 640)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !5001, file: !4790, line: 329, baseType: !173, size: 128, offset: 704)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5001, file: !4790, line: 330, baseType: !173, size: 128, offset: 832)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4993, file: !4790, line: 355, baseType: !173, size: 128, offset: 320)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4993, file: !4790, line: 356, baseType: !173, size: 128, offset: 448)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4789, file: !4790, line: 192, baseType: !203, size: 32, offset: 3968)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4789, file: !4790, line: 193, baseType: !653, size: 256, offset: 4032)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4789, file: !4790, line: 195, baseType: !7, size: 32, offset: 4288)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4789, file: !4790, line: 196, baseType: !1473, size: 8, offset: 4320)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4789, file: !4790, line: 198, baseType: !4173, size: 5824, offset: 4352)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4789, file: !4790, line: 200, baseType: !173, size: 128, offset: 10176)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4789, file: !4790, line: 201, baseType: !173, size: 128, offset: 10304)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4789, file: !4790, line: 203, baseType: !7, size: 32, offset: 10432)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4789, file: !4790, line: 204, baseType: !7, size: 32, offset: 10464)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4789, file: !4790, line: 205, baseType: !5077, size: 64, offset: 10496)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4789, file: !4790, line: 207, baseType: !1473, size: 8, offset: 10560)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4789, file: !4790, line: 209, baseType: !5080, size: 192, offset: 10624)
!5080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1117, size: 192, elements: !274)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !4789, file: !4790, line: 211, baseType: !1473, size: 8, offset: 10816)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4784, file: !3, line: 15, baseType: !5083, size: 512, offset: 128)
!5083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 512, elements: !278)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4784, file: !3, line: 16, baseType: !5083, size: 512, offset: 640)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4784, file: !3, line: 17, baseType: !5083, size: 512, offset: 1152)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "evt", scope: !4784, file: !3, line: 18, baseType: !4681, size: 64, offset: 1664)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "sts", scope: !4784, file: !3, line: 18, baseType: !4681, size: 64, offset: 1728)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "evts", scope: !4784, file: !3, line: 19, baseType: !5089, size: 4096, offset: 1792)
!5089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5090, size: 4096, elements: !278)
!5090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_input_event", file: !142, line: 70, size: 64, elements: !5091)
!5091 = !{!5092, !5093, !5094}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5090, file: !142, line: 71, baseType: !4114, size: 16)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5090, file: !142, line: 72, baseType: !4114, size: 16, offset: 16)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5090, file: !142, line: 73, baseType: !4117, size: 32, offset: 32)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4784, file: !3, line: 20, baseType: !203, size: 32, offset: 5888)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !4784, file: !3, line: 21, baseType: !1473, size: 8, offset: 5920)
!5097 = !{!5098, !5099, !5101, !5103}
!5098 = !DILocalVariable(name: "vi", arg: 1, scope: !4780, file: !3, line: 186, type: !4783)
!5099 = !DILocalVariable(name: "vqs", scope: !4780, file: !3, line: 188, type: !5100)
!5100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4681, size: 128, elements: !2415)
!5101 = !DILocalVariable(name: "cbs", scope: !4780, file: !3, line: 189, type: !5102)
!5102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4697, size: 128, elements: !2415)
!5103 = !DILocalVariable(name: "err", scope: !4780, file: !3, line: 192, type: !103)
!5104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4700, size: 128, elements: !2415)
!5105 = !DIGlobalVariableExpression(var: !5106, expr: !DIExpression())
!5106 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !5107, file: !5108, line: 112, type: !167, isLocal: true, isDefinition: true)
!5107 = distinct !DISubprogram(name: "might_resched", scope: !5108, file: !5108, line: 110, type: !2529, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5108 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5109 = !{i32 7, !"Dwarf Version", i32 5}
!5110 = !{i32 2, !"Debug Info Version", i32 3}
!5111 = !{i32 1, !"wchar_size", i32 2}
!5112 = !{i32 8, !"cf-protection-branch", i32 1}
!5113 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5114 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5115 = !{i32 1, !"Code Model", i32 2}
!5116 = !{i32 1, !"override-stack-alignment", i32 8}
!5117 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5118 = distinct !DISubprogram(name: "__initstub__kmod_virtio_input__296_409_virtio_input_driver_init6", scope: !3, file: !3, line: 409, type: !3897, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5119 = !DILocation(line: 409, column: 1, scope: !5118)
!5120 = distinct !DISubprogram(name: "virtio_input_driver_init", scope: !3, file: !3, line: 409, type: !3897, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5121 = !DILocation(line: 409, column: 1, scope: !5120)
!5122 = distinct !DISubprogram(name: "virtio_input_driver_exit", scope: !3, file: !3, line: 409, type: !2529, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5123 = !DILocation(line: 409, column: 1, scope: !5122)
!5124 = !DISubprogram(name: "unregister_virtio_driver", scope: !4151, file: !4151, line: 204, type: !5125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{null, !5127}
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!5128 = !DISubprogram(name: "register_virtio_driver", scope: !4151, file: !4151, line: 203, type: !5129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!103, !5127}
!5131 = distinct !DISubprogram(name: "virtinput_probe", scope: !3, file: !3, line: 218, type: !4633, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5132)
!5132 = !{!5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5142, !5143, !5145, !5146, !5150, !5152, !5153, !5155, !5157, !5158, !5160, !5162, !5163, !5165, !5167, !5168, !5169, !5173, !5174, !5175, !5176}
!5133 = !DILocalVariable(name: "vdev", arg: 1, scope: !5131, file: !3, line: 218, type: !4635)
!5134 = !DILocalVariable(name: "vi", scope: !5131, file: !3, line: 220, type: !4783)
!5135 = !DILocalVariable(name: "flags", scope: !5131, file: !3, line: 221, type: !323)
!5136 = !DILocalVariable(name: "size", scope: !5131, file: !3, line: 222, type: !320)
!5137 = !DILocalVariable(name: "abs", scope: !5131, file: !3, line: 223, type: !103)
!5138 = !DILocalVariable(name: "err", scope: !5131, file: !3, line: 223, type: !103)
!5139 = !DILocalVariable(name: "nslots", scope: !5131, file: !3, line: 223, type: !103)
!5140 = !DILocalVariable(name: "__UNIQUE_ID___x292", scope: !5141, file: !3, line: 250, type: !320)
!5141 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 250, column: 17)
!5142 = !DILocalVariable(name: "__UNIQUE_ID___y293", scope: !5141, file: !3, line: 250, type: !323)
!5143 = !DILocalVariable(name: "__UNIQUE_ID___x294", scope: !5144, file: !3, line: 254, type: !320)
!5144 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 254, column: 19)
!5145 = !DILocalVariable(name: "__UNIQUE_ID___y295", scope: !5144, file: !3, line: 254, type: !323)
!5146 = !DILocalVariable(name: "virtio_cread_v", scope: !5147, file: !3, line: 263, type: !4114)
!5147 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 263, column: 3)
!5148 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 262, column: 50)
!5149 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 262, column: 6)
!5150 = !DILocalVariable(name: "__dummy", scope: !5151, file: !3, line: 263, type: !241)
!5151 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 263, column: 3)
!5152 = !DILocalVariable(name: "__dummy2", scope: !5151, file: !3, line: 263, type: !242)
!5153 = !DILocalVariable(name: "virtio_cread_v", scope: !5154, file: !3, line: 265, type: !4114)
!5154 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 265, column: 3)
!5155 = !DILocalVariable(name: "__dummy", scope: !5156, file: !3, line: 265, type: !241)
!5156 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 265, column: 3)
!5157 = !DILocalVariable(name: "__dummy2", scope: !5156, file: !3, line: 265, type: !242)
!5158 = !DILocalVariable(name: "virtio_cread_v", scope: !5159, file: !3, line: 267, type: !4114)
!5159 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 267, column: 3)
!5160 = !DILocalVariable(name: "__dummy", scope: !5161, file: !3, line: 267, type: !241)
!5161 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 267, column: 3)
!5162 = !DILocalVariable(name: "__dummy2", scope: !5161, file: !3, line: 267, type: !242)
!5163 = !DILocalVariable(name: "virtio_cread_v", scope: !5164, file: !3, line: 269, type: !4114)
!5164 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 269, column: 3)
!5165 = !DILocalVariable(name: "__dummy", scope: !5166, file: !3, line: 269, type: !241)
!5166 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 269, column: 3)
!5167 = !DILocalVariable(name: "__dummy2", scope: !5166, file: !3, line: 269, type: !242)
!5168 = !DILabel(scope: !5131, name: "err_input_register", file: !3, line: 326)
!5169 = !DILocalVariable(name: "__dummy", scope: !5170, file: !3, line: 327, type: !323)
!5170 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 327, column: 2)
!5171 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 327, column: 2)
!5172 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 327, column: 2)
!5173 = !DILocalVariable(name: "__dummy2", scope: !5170, file: !3, line: 327, type: !323)
!5174 = !DILabel(scope: !5131, name: "err_mt_init_slots", file: !3, line: 330)
!5175 = !DILabel(scope: !5131, name: "err_input_alloc", file: !3, line: 332)
!5176 = !DILabel(scope: !5131, name: "err_init_vq", file: !3, line: 334)
!5177 = !DILocation(line: 218, column: 50, scope: !5131)
!5178 = !DILocation(line: 220, column: 2, scope: !5131)
!5179 = !DILocation(line: 220, column: 23, scope: !5131)
!5180 = !DILocation(line: 221, column: 2, scope: !5131)
!5181 = !DILocation(line: 221, column: 16, scope: !5131)
!5182 = !DILocation(line: 222, column: 2, scope: !5131)
!5183 = !DILocation(line: 222, column: 9, scope: !5131)
!5184 = !DILocation(line: 223, column: 2, scope: !5131)
!5185 = !DILocation(line: 223, column: 6, scope: !5131)
!5186 = !DILocation(line: 223, column: 11, scope: !5131)
!5187 = !DILocation(line: 223, column: 16, scope: !5131)
!5188 = !DILocation(line: 225, column: 26, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 225, column: 6)
!5190 = !DILocation(line: 225, column: 7, scope: !5189)
!5191 = !DILocation(line: 225, column: 6, scope: !5131)
!5192 = !DILocation(line: 226, column: 3, scope: !5189)
!5193 = !DILocation(line: 228, column: 7, scope: !5131)
!5194 = !DILocation(line: 228, column: 5, scope: !5131)
!5195 = !DILocation(line: 229, column: 7, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 229, column: 6)
!5197 = !DILocation(line: 229, column: 6, scope: !5131)
!5198 = !DILocation(line: 230, column: 3, scope: !5196)
!5199 = !DILocation(line: 232, column: 15, scope: !5131)
!5200 = !DILocation(line: 232, column: 2, scope: !5131)
!5201 = !DILocation(line: 232, column: 8, scope: !5131)
!5202 = !DILocation(line: 232, column: 13, scope: !5131)
!5203 = !DILocation(line: 233, column: 13, scope: !5131)
!5204 = !DILocation(line: 233, column: 2, scope: !5131)
!5205 = !DILocation(line: 233, column: 6, scope: !5131)
!5206 = !DILocation(line: 233, column: 11, scope: !5131)
!5207 = !DILocation(line: 234, column: 2, scope: !5131)
!5208 = !DILocation(line: 234, column: 2, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 234, column: 2)
!5210 = !DILocation(line: 236, column: 27, scope: !5131)
!5211 = !DILocation(line: 236, column: 8, scope: !5131)
!5212 = !DILocation(line: 236, column: 6, scope: !5131)
!5213 = !DILocation(line: 237, column: 6, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 237, column: 6)
!5215 = !DILocation(line: 237, column: 6, scope: !5131)
!5216 = !DILocation(line: 238, column: 3, scope: !5214)
!5217 = !DILocation(line: 240, column: 13, scope: !5131)
!5218 = !DILocation(line: 240, column: 2, scope: !5131)
!5219 = !DILocation(line: 240, column: 6, scope: !5131)
!5220 = !DILocation(line: 240, column: 11, scope: !5131)
!5221 = !DILocation(line: 241, column: 7, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 241, column: 6)
!5223 = !DILocation(line: 241, column: 11, scope: !5222)
!5224 = !DILocation(line: 241, column: 6, scope: !5131)
!5225 = !DILocation(line: 242, column: 7, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 241, column: 17)
!5227 = !DILocation(line: 243, column: 3, scope: !5226)
!5228 = !DILocation(line: 245, column: 20, scope: !5131)
!5229 = !DILocation(line: 245, column: 24, scope: !5131)
!5230 = !DILocation(line: 245, column: 30, scope: !5131)
!5231 = !DILocation(line: 245, column: 2, scope: !5131)
!5232 = !DILocation(line: 247, column: 30, scope: !5131)
!5233 = !DILocation(line: 247, column: 9, scope: !5131)
!5234 = !DILocation(line: 247, column: 7, scope: !5131)
!5235 = !DILocation(line: 248, column: 21, scope: !5131)
!5236 = !DILocation(line: 248, column: 25, scope: !5131)
!5237 = !DILocation(line: 250, column: 7, scope: !5131)
!5238 = !DILocation(line: 250, column: 11, scope: !5131)
!5239 = !DILocation(line: 250, column: 17, scope: !5141)
!5240 = !DILocation(line: 250, column: 17, scope: !5131)
!5241 = !DILocation(line: 248, column: 2, scope: !5131)
!5242 = !DILocation(line: 251, column: 30, scope: !5131)
!5243 = !DILocation(line: 251, column: 9, scope: !5131)
!5244 = !DILocation(line: 251, column: 7, scope: !5131)
!5245 = !DILocation(line: 252, column: 21, scope: !5131)
!5246 = !DILocation(line: 252, column: 25, scope: !5131)
!5247 = !DILocation(line: 254, column: 7, scope: !5131)
!5248 = !DILocation(line: 254, column: 11, scope: !5131)
!5249 = !DILocation(line: 254, column: 19, scope: !5144)
!5250 = !DILocation(line: 254, column: 19, scope: !5131)
!5251 = !DILocation(line: 252, column: 2, scope: !5131)
!5252 = !DILocation(line: 255, column: 11, scope: !5131)
!5253 = !DILocation(line: 255, column: 15, scope: !5131)
!5254 = !DILocation(line: 256, column: 23, scope: !5131)
!5255 = !DILocation(line: 256, column: 29, scope: !5131)
!5256 = !DILocation(line: 255, column: 2, scope: !5131)
!5257 = !DILocation(line: 257, column: 19, scope: !5131)
!5258 = !DILocation(line: 257, column: 23, scope: !5131)
!5259 = !DILocation(line: 257, column: 2, scope: !5131)
!5260 = !DILocation(line: 257, column: 6, scope: !5131)
!5261 = !DILocation(line: 257, column: 12, scope: !5131)
!5262 = !DILocation(line: 257, column: 17, scope: !5131)
!5263 = !DILocation(line: 258, column: 19, scope: !5131)
!5264 = !DILocation(line: 258, column: 23, scope: !5131)
!5265 = !DILocation(line: 258, column: 2, scope: !5131)
!5266 = !DILocation(line: 258, column: 6, scope: !5131)
!5267 = !DILocation(line: 258, column: 12, scope: !5131)
!5268 = !DILocation(line: 258, column: 17, scope: !5131)
!5269 = !DILocation(line: 259, column: 19, scope: !5131)
!5270 = !DILocation(line: 259, column: 23, scope: !5131)
!5271 = !DILocation(line: 259, column: 2, scope: !5131)
!5272 = !DILocation(line: 259, column: 6, scope: !5131)
!5273 = !DILocation(line: 259, column: 12, scope: !5131)
!5274 = !DILocation(line: 259, column: 17, scope: !5131)
!5275 = !DILocation(line: 261, column: 30, scope: !5131)
!5276 = !DILocation(line: 261, column: 9, scope: !5131)
!5277 = !DILocation(line: 261, column: 7, scope: !5131)
!5278 = !DILocation(line: 262, column: 6, scope: !5149)
!5279 = !DILocation(line: 262, column: 11, scope: !5149)
!5280 = !DILocation(line: 262, column: 6, scope: !5131)
!5281 = !DILocation(line: 263, column: 3, scope: !5148)
!5282 = !DILocation(line: 263, column: 3, scope: !5147)
!5283 = !DILocation(line: 263, column: 3, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 263, column: 3)
!5285 = !DILocation(line: 263, column: 3, scope: !5151)
!5286 = !DILocation(line: 265, column: 3, scope: !5148)
!5287 = !DILocation(line: 265, column: 3, scope: !5154)
!5288 = !DILocation(line: 265, column: 3, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 265, column: 3)
!5290 = !DILocation(line: 265, column: 3, scope: !5156)
!5291 = !DILocation(line: 267, column: 3, scope: !5148)
!5292 = !DILocation(line: 267, column: 3, scope: !5159)
!5293 = !DILocation(line: 267, column: 3, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 267, column: 3)
!5295 = !DILocation(line: 267, column: 3, scope: !5161)
!5296 = !DILocation(line: 269, column: 3, scope: !5148)
!5297 = !DILocation(line: 269, column: 3, scope: !5164)
!5298 = !DILocation(line: 269, column: 3, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 269, column: 3)
!5300 = !DILocation(line: 269, column: 3, scope: !5166)
!5301 = !DILocation(line: 271, column: 2, scope: !5148)
!5302 = !DILocation(line: 272, column: 3, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 271, column: 9)
!5304 = !DILocation(line: 272, column: 7, scope: !5303)
!5305 = !DILocation(line: 272, column: 13, scope: !5303)
!5306 = !DILocation(line: 272, column: 16, scope: !5303)
!5307 = !DILocation(line: 272, column: 24, scope: !5303)
!5308 = !DILocation(line: 275, column: 21, scope: !5131)
!5309 = !DILocation(line: 276, column: 7, scope: !5131)
!5310 = !DILocation(line: 276, column: 11, scope: !5131)
!5311 = !DILocation(line: 276, column: 17, scope: !5131)
!5312 = !DILocation(line: 275, column: 2, scope: !5131)
!5313 = !DILocation(line: 277, column: 30, scope: !5131)
!5314 = !DILocation(line: 277, column: 9, scope: !5131)
!5315 = !DILocation(line: 277, column: 7, scope: !5131)
!5316 = !DILocation(line: 278, column: 6, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 278, column: 6)
!5318 = !DILocation(line: 278, column: 6, scope: !5131)
!5319 = !DILocation(line: 279, column: 3, scope: !5317)
!5320 = !DILocation(line: 281, column: 26, scope: !5131)
!5321 = !DILocation(line: 281, column: 32, scope: !5131)
!5322 = !DILocation(line: 281, column: 2, scope: !5131)
!5323 = !DILocation(line: 281, column: 6, scope: !5131)
!5324 = !DILocation(line: 281, column: 12, scope: !5131)
!5325 = !DILocation(line: 281, column: 16, scope: !5131)
!5326 = !DILocation(line: 281, column: 23, scope: !5131)
!5327 = !DILocation(line: 282, column: 2, scope: !5131)
!5328 = !DILocation(line: 282, column: 6, scope: !5131)
!5329 = !DILocation(line: 282, column: 12, scope: !5131)
!5330 = !DILocation(line: 282, column: 18, scope: !5131)
!5331 = !DILocation(line: 285, column: 21, scope: !5131)
!5332 = !DILocation(line: 286, column: 7, scope: !5131)
!5333 = !DILocation(line: 286, column: 11, scope: !5131)
!5334 = !DILocation(line: 286, column: 17, scope: !5131)
!5335 = !DILocation(line: 285, column: 2, scope: !5131)
!5336 = !DILocation(line: 287, column: 21, scope: !5131)
!5337 = !DILocation(line: 288, column: 7, scope: !5131)
!5338 = !DILocation(line: 288, column: 11, scope: !5131)
!5339 = !DILocation(line: 288, column: 17, scope: !5131)
!5340 = !DILocation(line: 287, column: 2, scope: !5131)
!5341 = !DILocation(line: 289, column: 21, scope: !5131)
!5342 = !DILocation(line: 290, column: 7, scope: !5131)
!5343 = !DILocation(line: 290, column: 11, scope: !5131)
!5344 = !DILocation(line: 290, column: 17, scope: !5131)
!5345 = !DILocation(line: 289, column: 2, scope: !5131)
!5346 = !DILocation(line: 291, column: 21, scope: !5131)
!5347 = !DILocation(line: 292, column: 7, scope: !5131)
!5348 = !DILocation(line: 292, column: 11, scope: !5131)
!5349 = !DILocation(line: 292, column: 17, scope: !5131)
!5350 = !DILocation(line: 291, column: 2, scope: !5131)
!5351 = !DILocation(line: 293, column: 21, scope: !5131)
!5352 = !DILocation(line: 294, column: 7, scope: !5131)
!5353 = !DILocation(line: 294, column: 11, scope: !5131)
!5354 = !DILocation(line: 294, column: 17, scope: !5131)
!5355 = !DILocation(line: 293, column: 2, scope: !5131)
!5356 = !DILocation(line: 297, column: 21, scope: !5131)
!5357 = !DILocation(line: 298, column: 7, scope: !5131)
!5358 = !DILocation(line: 298, column: 11, scope: !5131)
!5359 = !DILocation(line: 298, column: 17, scope: !5131)
!5360 = !DILocation(line: 297, column: 2, scope: !5131)
!5361 = !DILocation(line: 299, column: 21, scope: !5131)
!5362 = !DILocation(line: 300, column: 7, scope: !5131)
!5363 = !DILocation(line: 300, column: 11, scope: !5131)
!5364 = !DILocation(line: 300, column: 17, scope: !5131)
!5365 = !DILocation(line: 299, column: 2, scope: !5131)
!5366 = !DILocation(line: 302, column: 6, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 302, column: 6)
!5368 = !DILocation(line: 302, column: 6, scope: !5131)
!5369 = !DILocation(line: 303, column: 12, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 303, column: 3)
!5371 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 302, column: 41)
!5372 = !DILocation(line: 303, column: 8, scope: !5370)
!5373 = !DILocation(line: 303, column: 17, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5370, file: !3, line: 303, column: 3)
!5375 = !DILocation(line: 303, column: 21, scope: !5374)
!5376 = !DILocation(line: 303, column: 3, scope: !5370)
!5377 = !DILocation(line: 304, column: 9, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 304, column: 8)
!5379 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 303, column: 39)
!5380 = !DILocation(line: 304, column: 8, scope: !5379)
!5381 = !DILocation(line: 305, column: 5, scope: !5378)
!5382 = !DILocation(line: 306, column: 22, scope: !5379)
!5383 = !DILocation(line: 306, column: 26, scope: !5379)
!5384 = !DILocation(line: 306, column: 4, scope: !5379)
!5385 = !DILocation(line: 307, column: 3, scope: !5379)
!5386 = !DILocation(line: 303, column: 35, scope: !5374)
!5387 = !DILocation(line: 303, column: 3, scope: !5374)
!5388 = distinct !{!5388, !5376, !5389, !5390, !5391}
!5389 = !DILocation(line: 307, column: 3, scope: !5370)
!5390 = !{!"llvm.loop.mustprogress"}
!5391 = !{!"llvm.loop.unroll.disable"}
!5392 = !DILocation(line: 309, column: 7, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 309, column: 7)
!5394 = !DILocation(line: 309, column: 7, scope: !5371)
!5395 = !DILocation(line: 310, column: 31, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 309, column: 48)
!5397 = !DILocation(line: 310, column: 35, scope: !5396)
!5398 = !DILocation(line: 310, column: 13, scope: !5396)
!5399 = !DILocation(line: 310, column: 54, scope: !5396)
!5400 = !DILocation(line: 310, column: 11, scope: !5396)
!5401 = !DILocation(line: 311, column: 30, scope: !5396)
!5402 = !DILocation(line: 311, column: 34, scope: !5396)
!5403 = !DILocation(line: 311, column: 40, scope: !5396)
!5404 = !DILocation(line: 311, column: 10, scope: !5396)
!5405 = !DILocation(line: 311, column: 8, scope: !5396)
!5406 = !DILocation(line: 312, column: 8, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 312, column: 8)
!5408 = !DILocation(line: 312, column: 8, scope: !5396)
!5409 = !DILocation(line: 313, column: 5, scope: !5407)
!5410 = !DILocation(line: 314, column: 3, scope: !5396)
!5411 = !DILocation(line: 315, column: 2, scope: !5371)
!5412 = !DILocation(line: 317, column: 22, scope: !5131)
!5413 = !DILocation(line: 317, column: 2, scope: !5131)
!5414 = !DILocation(line: 318, column: 2, scope: !5131)
!5415 = !DILocation(line: 318, column: 6, scope: !5131)
!5416 = !DILocation(line: 318, column: 12, scope: !5131)
!5417 = !DILocation(line: 319, column: 30, scope: !5131)
!5418 = !DILocation(line: 319, column: 34, scope: !5131)
!5419 = !DILocation(line: 319, column: 8, scope: !5131)
!5420 = !DILocation(line: 319, column: 6, scope: !5131)
!5421 = !DILocation(line: 320, column: 6, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 320, column: 6)
!5423 = !DILocation(line: 320, column: 6, scope: !5131)
!5424 = !DILocation(line: 321, column: 3, scope: !5422)
!5425 = !DILocation(line: 323, column: 21, scope: !5131)
!5426 = !DILocation(line: 323, column: 2, scope: !5131)
!5427 = !DILocation(line: 324, column: 2, scope: !5131)
!5428 = !DILocation(line: 326, column: 1, scope: !5131)
!5429 = !DILocation(line: 327, column: 2, scope: !5131)
!5430 = !DILocation(line: 327, column: 2, scope: !5172)
!5431 = !DILocation(line: 327, column: 2, scope: !5170)
!5432 = !DILocation(line: 327, column: 2, scope: !5171)
!5433 = !DILocation(line: 328, column: 2, scope: !5131)
!5434 = !DILocation(line: 328, column: 6, scope: !5131)
!5435 = !DILocation(line: 328, column: 12, scope: !5131)
!5436 = !DILocation(line: 329, column: 26, scope: !5131)
!5437 = !DILocation(line: 329, column: 30, scope: !5131)
!5438 = !DILocation(line: 329, column: 36, scope: !5131)
!5439 = !DILocation(line: 329, column: 2, scope: !5131)
!5440 = !DILocation(line: 330, column: 1, scope: !5131)
!5441 = !DILocation(line: 331, column: 20, scope: !5131)
!5442 = !DILocation(line: 331, column: 24, scope: !5131)
!5443 = !DILocation(line: 331, column: 2, scope: !5131)
!5444 = !DILocation(line: 332, column: 1, scope: !5131)
!5445 = !DILocation(line: 333, column: 2, scope: !5131)
!5446 = !DILocation(line: 333, column: 8, scope: !5131)
!5447 = !DILocation(line: 333, column: 16, scope: !5131)
!5448 = !DILocation(line: 333, column: 24, scope: !5131)
!5449 = !DILocation(line: 334, column: 1, scope: !5131)
!5450 = !DILocation(line: 335, column: 8, scope: !5131)
!5451 = !DILocation(line: 335, column: 2, scope: !5131)
!5452 = !DILocation(line: 336, column: 9, scope: !5131)
!5453 = !DILocation(line: 336, column: 2, scope: !5131)
!5454 = !DILocation(line: 337, column: 1, scope: !5131)
!5455 = distinct !DISubprogram(name: "virtinput_remove", scope: !3, file: !3, line: 339, type: !4674, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5456)
!5456 = !{!5457, !5458, !5459, !5460, !5461, !5465}
!5457 = !DILocalVariable(name: "vdev", arg: 1, scope: !5455, file: !3, line: 339, type: !4635)
!5458 = !DILocalVariable(name: "vi", scope: !5455, file: !3, line: 341, type: !4783)
!5459 = !DILocalVariable(name: "buf", scope: !5455, file: !3, line: 342, type: !167)
!5460 = !DILocalVariable(name: "flags", scope: !5455, file: !3, line: 343, type: !323)
!5461 = !DILocalVariable(name: "__dummy", scope: !5462, file: !3, line: 345, type: !323)
!5462 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 345, column: 2)
!5463 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 345, column: 2)
!5464 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 345, column: 2)
!5465 = !DILocalVariable(name: "__dummy2", scope: !5462, file: !3, line: 345, type: !323)
!5466 = !DILocation(line: 339, column: 52, scope: !5455)
!5467 = !DILocation(line: 341, column: 2, scope: !5455)
!5468 = !DILocation(line: 341, column: 23, scope: !5455)
!5469 = !DILocation(line: 341, column: 28, scope: !5455)
!5470 = !DILocation(line: 341, column: 34, scope: !5455)
!5471 = !DILocation(line: 342, column: 2, scope: !5455)
!5472 = !DILocation(line: 342, column: 8, scope: !5455)
!5473 = !DILocation(line: 343, column: 2, scope: !5455)
!5474 = !DILocation(line: 343, column: 16, scope: !5455)
!5475 = !DILocation(line: 345, column: 2, scope: !5455)
!5476 = !DILocation(line: 345, column: 2, scope: !5464)
!5477 = !DILocation(line: 345, column: 2, scope: !5462)
!5478 = !DILocation(line: 345, column: 2, scope: !5463)
!5479 = !DILocation(line: 346, column: 2, scope: !5455)
!5480 = !DILocation(line: 346, column: 6, scope: !5455)
!5481 = !DILocation(line: 346, column: 12, scope: !5455)
!5482 = !DILocation(line: 347, column: 26, scope: !5455)
!5483 = !DILocation(line: 347, column: 30, scope: !5455)
!5484 = !DILocation(line: 347, column: 36, scope: !5455)
!5485 = !DILocation(line: 347, column: 2, scope: !5455)
!5486 = !DILocation(line: 349, column: 26, scope: !5455)
!5487 = !DILocation(line: 349, column: 30, scope: !5455)
!5488 = !DILocation(line: 349, column: 2, scope: !5455)
!5489 = !DILocation(line: 350, column: 22, scope: !5455)
!5490 = !DILocation(line: 350, column: 2, scope: !5455)
!5491 = !DILocation(line: 351, column: 2, scope: !5455)
!5492 = !DILocation(line: 351, column: 44, scope: !5455)
!5493 = !DILocation(line: 351, column: 48, scope: !5455)
!5494 = !DILocation(line: 351, column: 16, scope: !5455)
!5495 = !DILocation(line: 351, column: 14, scope: !5455)
!5496 = !DILocation(line: 351, column: 54, scope: !5455)
!5497 = !DILocation(line: 352, column: 9, scope: !5455)
!5498 = !DILocation(line: 352, column: 3, scope: !5455)
!5499 = distinct !{!5499, !5491, !5500, !5390, !5391}
!5500 = !DILocation(line: 352, column: 12, scope: !5455)
!5501 = !DILocation(line: 353, column: 2, scope: !5455)
!5502 = !DILocation(line: 353, column: 8, scope: !5455)
!5503 = !DILocation(line: 353, column: 16, scope: !5455)
!5504 = !DILocation(line: 353, column: 24, scope: !5455)
!5505 = !DILocation(line: 354, column: 8, scope: !5455)
!5506 = !DILocation(line: 354, column: 2, scope: !5455)
!5507 = !DILocation(line: 355, column: 1, scope: !5455)
!5508 = distinct !DISubprogram(name: "virtinput_freeze", scope: !3, file: !3, line: 358, type: !4633, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5509)
!5509 = !{!5510, !5511, !5512, !5513, !5517}
!5510 = !DILocalVariable(name: "vdev", arg: 1, scope: !5508, file: !3, line: 358, type: !4635)
!5511 = !DILocalVariable(name: "vi", scope: !5508, file: !3, line: 360, type: !4783)
!5512 = !DILocalVariable(name: "flags", scope: !5508, file: !3, line: 361, type: !323)
!5513 = !DILocalVariable(name: "__dummy", scope: !5514, file: !3, line: 363, type: !323)
!5514 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 363, column: 2)
!5515 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 363, column: 2)
!5516 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 363, column: 2)
!5517 = !DILocalVariable(name: "__dummy2", scope: !5514, file: !3, line: 363, type: !323)
!5518 = !DILocation(line: 358, column: 51, scope: !5508)
!5519 = !DILocation(line: 360, column: 2, scope: !5508)
!5520 = !DILocation(line: 360, column: 23, scope: !5508)
!5521 = !DILocation(line: 360, column: 28, scope: !5508)
!5522 = !DILocation(line: 360, column: 34, scope: !5508)
!5523 = !DILocation(line: 361, column: 2, scope: !5508)
!5524 = !DILocation(line: 361, column: 16, scope: !5508)
!5525 = !DILocation(line: 363, column: 2, scope: !5508)
!5526 = !DILocation(line: 363, column: 2, scope: !5516)
!5527 = !DILocation(line: 363, column: 2, scope: !5514)
!5528 = !DILocation(line: 363, column: 2, scope: !5515)
!5529 = !DILocation(line: 364, column: 2, scope: !5508)
!5530 = !DILocation(line: 364, column: 6, scope: !5508)
!5531 = !DILocation(line: 364, column: 12, scope: !5508)
!5532 = !DILocation(line: 365, column: 26, scope: !5508)
!5533 = !DILocation(line: 365, column: 30, scope: !5508)
!5534 = !DILocation(line: 365, column: 36, scope: !5508)
!5535 = !DILocation(line: 365, column: 2, scope: !5508)
!5536 = !DILocation(line: 367, column: 2, scope: !5508)
!5537 = !DILocation(line: 367, column: 8, scope: !5508)
!5538 = !DILocation(line: 367, column: 16, scope: !5508)
!5539 = !DILocation(line: 367, column: 24, scope: !5508)
!5540 = !DILocation(line: 369, column: 1, scope: !5508)
!5541 = !DILocation(line: 368, column: 2, scope: !5508)
!5542 = distinct !DISubprogram(name: "virtinput_restore", scope: !3, file: !3, line: 371, type: !4633, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5543)
!5543 = !{!5544, !5545, !5546}
!5544 = !DILocalVariable(name: "vdev", arg: 1, scope: !5542, file: !3, line: 371, type: !4635)
!5545 = !DILocalVariable(name: "vi", scope: !5542, file: !3, line: 373, type: !4783)
!5546 = !DILocalVariable(name: "err", scope: !5542, file: !3, line: 374, type: !103)
!5547 = !DILocation(line: 371, column: 52, scope: !5542)
!5548 = !DILocation(line: 373, column: 2, scope: !5542)
!5549 = !DILocation(line: 373, column: 23, scope: !5542)
!5550 = !DILocation(line: 373, column: 28, scope: !5542)
!5551 = !DILocation(line: 373, column: 34, scope: !5542)
!5552 = !DILocation(line: 374, column: 2, scope: !5542)
!5553 = !DILocation(line: 374, column: 6, scope: !5542)
!5554 = !DILocation(line: 376, column: 27, scope: !5542)
!5555 = !DILocation(line: 376, column: 8, scope: !5542)
!5556 = !DILocation(line: 376, column: 6, scope: !5542)
!5557 = !DILocation(line: 377, column: 6, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 377, column: 6)
!5559 = !DILocation(line: 377, column: 6, scope: !5542)
!5560 = !DILocation(line: 378, column: 10, scope: !5558)
!5561 = !DILocation(line: 378, column: 3, scope: !5558)
!5562 = !DILocation(line: 380, column: 22, scope: !5542)
!5563 = !DILocation(line: 380, column: 2, scope: !5542)
!5564 = !DILocation(line: 381, column: 2, scope: !5542)
!5565 = !DILocation(line: 381, column: 6, scope: !5542)
!5566 = !DILocation(line: 381, column: 12, scope: !5542)
!5567 = !DILocation(line: 382, column: 21, scope: !5542)
!5568 = !DILocation(line: 382, column: 2, scope: !5542)
!5569 = !DILocation(line: 383, column: 2, scope: !5542)
!5570 = !DILocation(line: 384, column: 1, scope: !5542)
!5571 = distinct !DISubprogram(name: "virtio_has_feature", scope: !4650, file: !4650, line: 187, type: !5572, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5576)
!5572 = !DISubroutineType(types: !5573)
!5573 = !{!1473, !5574, !7}
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5575, size: 64)
!5575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4636)
!5576 = !{!5577, !5578}
!5577 = !DILocalVariable(name: "vdev", arg: 1, scope: !5571, file: !4650, line: 187, type: !5574)
!5578 = !DILocalVariable(name: "fbit", arg: 2, scope: !5571, file: !4650, line: 188, type: !7)
!5579 = !DILocation(line: 187, column: 67, scope: !5571)
!5580 = !DILocation(line: 188, column: 24, scope: !5571)
!5581 = !DILocation(line: 190, column: 6, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5571, file: !4650, line: 190, column: 6)
!5583 = !DILocation(line: 190, column: 11, scope: !5582)
!5584 = !DILocation(line: 190, column: 6, scope: !5571)
!5585 = !DILocation(line: 191, column: 39, scope: !5582)
!5586 = !DILocation(line: 191, column: 45, scope: !5582)
!5587 = !DILocation(line: 191, column: 3, scope: !5582)
!5588 = !DILocation(line: 193, column: 27, scope: !5571)
!5589 = !DILocation(line: 193, column: 33, scope: !5571)
!5590 = !DILocation(line: 193, column: 9, scope: !5571)
!5591 = !DILocation(line: 193, column: 2, scope: !5571)
!5592 = distinct !DISubprogram(name: "kzalloc", scope: !157, file: !157, line: 719, type: !5593, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5595)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{!167, !320, !718}
!5595 = !{!5596, !5597}
!5596 = !DILocalVariable(name: "size", arg: 1, scope: !5592, file: !157, line: 719, type: !320)
!5597 = !DILocalVariable(name: "flags", arg: 2, scope: !5592, file: !157, line: 719, type: !718)
!5598 = !DILocation(line: 719, column: 52, scope: !5592)
!5599 = !DILocation(line: 719, column: 64, scope: !5592)
!5600 = !DILocation(line: 721, column: 17, scope: !5592)
!5601 = !DILocation(line: 721, column: 23, scope: !5592)
!5602 = !DILocation(line: 721, column: 29, scope: !5592)
!5603 = !DILocation(line: 721, column: 9, scope: !5592)
!5604 = !DILocation(line: 721, column: 2, scope: !5592)
!5605 = distinct !DISubprogram(name: "spinlock_check", scope: !5606, file: !5606, line: 324, type: !5607, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5610)
!5606 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5607 = !DISubroutineType(types: !5608)
!5608 = !{!5609, !1921}
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!5610 = !{!5611}
!5611 = !DILocalVariable(name: "lock", arg: 1, scope: !5605, file: !5606, line: 324, type: !1921)
!5612 = !DILocation(line: 324, column: 67, scope: !5605)
!5613 = !DILocation(line: 326, column: 10, scope: !5605)
!5614 = !DILocation(line: 326, column: 16, scope: !5605)
!5615 = !DILocation(line: 326, column: 2, scope: !5605)
!5616 = !DILocation(line: 186, column: 52, scope: !4780)
!5617 = !DILocation(line: 188, column: 2, scope: !4780)
!5618 = !DILocation(line: 188, column: 20, scope: !4780)
!5619 = !DILocation(line: 189, column: 2, scope: !4780)
!5620 = !DILocation(line: 189, column: 17, scope: !4780)
!5621 = !DILocation(line: 192, column: 2, scope: !4780)
!5622 = !DILocation(line: 192, column: 6, scope: !4780)
!5623 = !DILocation(line: 194, column: 24, scope: !4780)
!5624 = !DILocation(line: 194, column: 28, scope: !4780)
!5625 = !DILocation(line: 194, column: 37, scope: !4780)
!5626 = !DILocation(line: 194, column: 42, scope: !4780)
!5627 = !DILocation(line: 194, column: 8, scope: !4780)
!5628 = !DILocation(line: 194, column: 6, scope: !4780)
!5629 = !DILocation(line: 195, column: 6, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 195, column: 6)
!5631 = !DILocation(line: 195, column: 6, scope: !4780)
!5632 = !DILocation(line: 196, column: 10, scope: !5630)
!5633 = !DILocation(line: 196, column: 3, scope: !5630)
!5634 = !DILocation(line: 197, column: 12, scope: !4780)
!5635 = !DILocation(line: 197, column: 2, scope: !4780)
!5636 = !DILocation(line: 197, column: 6, scope: !4780)
!5637 = !DILocation(line: 197, column: 10, scope: !4780)
!5638 = !DILocation(line: 198, column: 12, scope: !4780)
!5639 = !DILocation(line: 198, column: 2, scope: !4780)
!5640 = !DILocation(line: 198, column: 6, scope: !4780)
!5641 = !DILocation(line: 198, column: 10, scope: !4780)
!5642 = !DILocation(line: 200, column: 2, scope: !4780)
!5643 = !DILocation(line: 201, column: 1, scope: !4780)
!5644 = !DISubprogram(name: "input_allocate_device", scope: !4790, file: !4790, line: 359, type: !5645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5645 = !DISubroutineType(types: !5646)
!5646 = !{!4788}
!5647 = distinct !DISubprogram(name: "input_set_drvdata", scope: !4790, file: !4790, line: 379, type: !5648, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5650)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !4788, !167}
!5650 = !{!5651, !5652}
!5651 = !DILocalVariable(name: "dev", arg: 1, scope: !5647, file: !4790, line: 379, type: !4788)
!5652 = !DILocalVariable(name: "data", arg: 2, scope: !5647, file: !4790, line: 379, type: !167)
!5653 = !DILocation(line: 379, column: 56, scope: !5647)
!5654 = !DILocation(line: 379, column: 67, scope: !5647)
!5655 = !DILocation(line: 381, column: 19, scope: !5647)
!5656 = !DILocation(line: 381, column: 24, scope: !5647)
!5657 = !DILocation(line: 381, column: 29, scope: !5647)
!5658 = !DILocation(line: 381, column: 2, scope: !5647)
!5659 = !DILocation(line: 382, column: 1, scope: !5647)
!5660 = distinct !DISubprogram(name: "virtinput_cfg_select", scope: !3, file: !3, line: 127, type: !5661, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5663)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!231, !4783, !231, !231}
!5663 = !{!5664, !5665, !5666, !5667, !5668, !5670, !5672, !5673, !5675, !5677, !5678, !5680, !5682}
!5664 = !DILocalVariable(name: "vi", arg: 1, scope: !5660, file: !3, line: 127, type: !4783)
!5665 = !DILocalVariable(name: "select", arg: 2, scope: !5660, file: !3, line: 128, type: !231)
!5666 = !DILocalVariable(name: "subsel", arg: 3, scope: !5660, file: !3, line: 128, type: !231)
!5667 = !DILocalVariable(name: "size", scope: !5660, file: !3, line: 130, type: !231)
!5668 = !DILocalVariable(name: "virtio_cwrite_v", scope: !5669, file: !3, line: 132, type: !233)
!5669 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 132, column: 2)
!5670 = !DILocalVariable(name: "__dummy", scope: !5671, file: !3, line: 132, type: !231)
!5671 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 132, column: 2)
!5672 = !DILocalVariable(name: "__dummy2", scope: !5671, file: !3, line: 132, type: !231)
!5673 = !DILocalVariable(name: "virtio_cwrite_v", scope: !5674, file: !3, line: 133, type: !233)
!5674 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 133, column: 2)
!5675 = !DILocalVariable(name: "__dummy", scope: !5676, file: !3, line: 133, type: !231)
!5676 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 133, column: 2)
!5677 = !DILocalVariable(name: "__dummy2", scope: !5676, file: !3, line: 133, type: !231)
!5678 = !DILocalVariable(name: "virtio_cread_v", scope: !5679, file: !3, line: 134, type: !233)
!5679 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 134, column: 2)
!5680 = !DILocalVariable(name: "__dummy", scope: !5681, file: !3, line: 134, type: !231)
!5681 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 134, column: 2)
!5682 = !DILocalVariable(name: "__dummy2", scope: !5681, file: !3, line: 134, type: !231)
!5683 = !DILocation(line: 127, column: 53, scope: !5660)
!5684 = !DILocation(line: 128, column: 14, scope: !5660)
!5685 = !DILocation(line: 128, column: 25, scope: !5660)
!5686 = !DILocation(line: 130, column: 2, scope: !5660)
!5687 = !DILocation(line: 130, column: 5, scope: !5660)
!5688 = !DILocation(line: 132, column: 2, scope: !5660)
!5689 = !DILocation(line: 132, column: 2, scope: !5669)
!5690 = !DILocation(line: 132, column: 2, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 132, column: 2)
!5692 = !DILocation(line: 132, column: 2, scope: !5671)
!5693 = !DILocation(line: 133, column: 2, scope: !5660)
!5694 = !DILocation(line: 133, column: 2, scope: !5674)
!5695 = !DILocation(line: 133, column: 2, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 133, column: 2)
!5697 = !DILocation(line: 133, column: 2, scope: !5676)
!5698 = !DILocation(line: 134, column: 2, scope: !5660)
!5699 = !DILocation(line: 134, column: 2, scope: !5679)
!5700 = !DILocation(line: 134, column: 2, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 134, column: 2)
!5702 = !DILocation(line: 134, column: 2, scope: !5681)
!5703 = !DILocation(line: 135, column: 9, scope: !5660)
!5704 = !DILocation(line: 136, column: 1, scope: !5660)
!5705 = !DILocation(line: 135, column: 2, scope: !5660)
!5706 = distinct !DISubprogram(name: "virtio_cread_bytes", scope: !4650, file: !4650, line: 521, type: !5707, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5709)
!5707 = !DISubroutineType(types: !5708)
!5708 = !{null, !4635, !7, !167, !320}
!5709 = !{!5710, !5711, !5712, !5713}
!5710 = !DILocalVariable(name: "vdev", arg: 1, scope: !5706, file: !4650, line: 521, type: !4635)
!5711 = !DILocalVariable(name: "offset", arg: 2, scope: !5706, file: !4650, line: 522, type: !7)
!5712 = !DILocalVariable(name: "buf", arg: 3, scope: !5706, file: !4650, line: 523, type: !167)
!5713 = !DILocalVariable(name: "len", arg: 4, scope: !5706, file: !4650, line: 523, type: !320)
!5714 = !DILocation(line: 521, column: 61, scope: !5706)
!5715 = !DILocation(line: 522, column: 24, scope: !5706)
!5716 = !DILocation(line: 523, column: 17, scope: !5706)
!5717 = !DILocation(line: 523, column: 29, scope: !5706)
!5718 = !DILocation(line: 525, column: 22, scope: !5706)
!5719 = !DILocation(line: 525, column: 28, scope: !5706)
!5720 = !DILocation(line: 525, column: 36, scope: !5706)
!5721 = !DILocation(line: 525, column: 41, scope: !5706)
!5722 = !DILocation(line: 525, column: 2, scope: !5706)
!5723 = !DILocation(line: 526, column: 1, scope: !5706)
!5724 = !DISubprogram(name: "snprintf", scope: !5725, file: !5725, line: 12, type: !5726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5725 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5726 = !DISubroutineType(types: !5727)
!5727 = !{!103, !273, !320, !192, null}
!5728 = !DILocation(line: 112, column: 2, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5107, file: !5108, line: 112, column: 2)
!5730 = !DILocation(line: 112, column: 2, scope: !5107)
!5731 = !DILocation(line: 113, column: 1, scope: !5107)
!5732 = distinct !DISubprogram(name: "virtinput_cfg_bits", scope: !3, file: !3, line: 138, type: !5733, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5735)
!5733 = !DISubroutineType(types: !5734)
!5734 = !{null, !4783, !103, !103, !4099, !7}
!5735 = !{!5736, !5737, !5738, !5739, !5740, !5741, !5742, !5744}
!5736 = !DILocalVariable(name: "vi", arg: 1, scope: !5732, file: !3, line: 138, type: !4783)
!5737 = !DILocalVariable(name: "select", arg: 2, scope: !5732, file: !3, line: 138, type: !103)
!5738 = !DILocalVariable(name: "subsel", arg: 3, scope: !5732, file: !3, line: 138, type: !103)
!5739 = !DILocalVariable(name: "bits", arg: 4, scope: !5732, file: !3, line: 139, type: !4099)
!5740 = !DILocalVariable(name: "bitcount", arg: 5, scope: !5732, file: !3, line: 139, type: !7)
!5741 = !DILocalVariable(name: "bit", scope: !5732, file: !3, line: 141, type: !7)
!5742 = !DILocalVariable(name: "virtio_bits", scope: !5732, file: !3, line: 142, type: !5743)
!5743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!5744 = !DILocalVariable(name: "bytes", scope: !5732, file: !3, line: 143, type: !231)
!5745 = !DILocation(line: 138, column: 53, scope: !5732)
!5746 = !DILocation(line: 138, column: 61, scope: !5732)
!5747 = !DILocation(line: 138, column: 73, scope: !5732)
!5748 = !DILocation(line: 139, column: 26, scope: !5732)
!5749 = !DILocation(line: 139, column: 45, scope: !5732)
!5750 = !DILocation(line: 141, column: 2, scope: !5732)
!5751 = !DILocation(line: 141, column: 15, scope: !5732)
!5752 = !DILocation(line: 142, column: 2, scope: !5732)
!5753 = !DILocation(line: 142, column: 6, scope: !5732)
!5754 = !DILocation(line: 143, column: 2, scope: !5732)
!5755 = !DILocation(line: 143, column: 5, scope: !5732)
!5756 = !DILocation(line: 145, column: 31, scope: !5732)
!5757 = !DILocation(line: 145, column: 35, scope: !5732)
!5758 = !DILocation(line: 145, column: 43, scope: !5732)
!5759 = !DILocation(line: 145, column: 10, scope: !5732)
!5760 = !DILocation(line: 145, column: 8, scope: !5732)
!5761 = !DILocation(line: 146, column: 7, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 146, column: 6)
!5763 = !DILocation(line: 146, column: 6, scope: !5732)
!5764 = !DILocation(line: 147, column: 3, scope: !5762)
!5765 = !DILocation(line: 148, column: 6, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 148, column: 6)
!5767 = !DILocation(line: 148, column: 17, scope: !5766)
!5768 = !DILocation(line: 148, column: 23, scope: !5766)
!5769 = !DILocation(line: 148, column: 15, scope: !5766)
!5770 = !DILocation(line: 148, column: 6, scope: !5732)
!5771 = !DILocation(line: 149, column: 14, scope: !5766)
!5772 = !DILocation(line: 149, column: 20, scope: !5766)
!5773 = !DILocation(line: 149, column: 12, scope: !5766)
!5774 = !DILocation(line: 149, column: 3, scope: !5766)
!5775 = !DILocation(line: 156, column: 24, scope: !5732)
!5776 = !DILocation(line: 156, column: 16, scope: !5732)
!5777 = !DILocation(line: 156, column: 14, scope: !5732)
!5778 = !DILocation(line: 157, column: 7, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 157, column: 6)
!5780 = !DILocation(line: 157, column: 6, scope: !5732)
!5781 = !DILocation(line: 158, column: 3, scope: !5779)
!5782 = !DILocation(line: 159, column: 21, scope: !5732)
!5783 = !DILocation(line: 159, column: 25, scope: !5732)
!5784 = !DILocation(line: 161, column: 7, scope: !5732)
!5785 = !DILocation(line: 161, column: 20, scope: !5732)
!5786 = !DILocation(line: 159, column: 2, scope: !5732)
!5787 = !DILocation(line: 162, column: 11, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 162, column: 2)
!5789 = !DILocation(line: 162, column: 7, scope: !5788)
!5790 = !DILocation(line: 162, column: 16, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 162, column: 2)
!5792 = !DILocation(line: 162, column: 22, scope: !5791)
!5793 = !DILocation(line: 162, column: 20, scope: !5791)
!5794 = !DILocation(line: 162, column: 2, scope: !5788)
!5795 = !DILocation(line: 163, column: 7, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 163, column: 7)
!5797 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 162, column: 39)
!5798 = !DILocation(line: 163, column: 19, scope: !5796)
!5799 = !DILocation(line: 163, column: 23, scope: !5796)
!5800 = !DILocation(line: 163, column: 37, scope: !5796)
!5801 = !DILocation(line: 163, column: 41, scope: !5796)
!5802 = !DILocation(line: 163, column: 33, scope: !5796)
!5803 = !DILocation(line: 163, column: 28, scope: !5796)
!5804 = !DILocation(line: 163, column: 7, scope: !5797)
!5805 = !DILocation(line: 164, column: 4, scope: !5796)
!5806 = !DILocation(line: 165, column: 2, scope: !5797)
!5807 = !DILocation(line: 162, column: 35, scope: !5791)
!5808 = !DILocation(line: 162, column: 2, scope: !5791)
!5809 = distinct !{!5809, !5794, !5810, !5390, !5391}
!5810 = !DILocation(line: 165, column: 2, scope: !5788)
!5811 = !DILocation(line: 166, column: 8, scope: !5732)
!5812 = !DILocation(line: 166, column: 2, scope: !5732)
!5813 = !DILocation(line: 168, column: 6, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 168, column: 6)
!5815 = !DILocation(line: 168, column: 13, scope: !5814)
!5816 = !DILocation(line: 168, column: 6, scope: !5732)
!5817 = !DILocation(line: 169, column: 3, scope: !5814)
!5818 = !DILocation(line: 170, column: 1, scope: !5732)
!5819 = distinct !DISubprogram(name: "generic___set_bit", scope: !5820, file: !5820, line: 28, type: !5821, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5825)
!5820 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5821 = !DISubroutineType(types: !5822)
!5822 = !{null, !323, !5823}
!5823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5824, size: 64)
!5824 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !323)
!5825 = !{!5826, !5827, !5828, !5829}
!5826 = !DILocalVariable(name: "nr", arg: 1, scope: !5819, file: !5820, line: 28, type: !323)
!5827 = !DILocalVariable(name: "addr", arg: 2, scope: !5819, file: !5820, line: 28, type: !5823)
!5828 = !DILocalVariable(name: "mask", scope: !5819, file: !5820, line: 30, type: !323)
!5829 = !DILocalVariable(name: "p", scope: !5819, file: !5820, line: 31, type: !4099)
!5830 = !DILocation(line: 28, column: 33, scope: !5819)
!5831 = !DILocation(line: 28, column: 61, scope: !5819)
!5832 = !DILocation(line: 30, column: 2, scope: !5819)
!5833 = !DILocation(line: 30, column: 16, scope: !5819)
!5834 = !DILocation(line: 30, column: 23, scope: !5819)
!5835 = !DILocation(line: 31, column: 2, scope: !5819)
!5836 = !DILocation(line: 31, column: 17, scope: !5819)
!5837 = !DILocation(line: 31, column: 39, scope: !5819)
!5838 = !DILocation(line: 31, column: 47, scope: !5819)
!5839 = !DILocation(line: 31, column: 45, scope: !5819)
!5840 = !DILocation(line: 33, column: 9, scope: !5819)
!5841 = !DILocation(line: 33, column: 3, scope: !5819)
!5842 = !DILocation(line: 33, column: 6, scope: !5819)
!5843 = !DILocation(line: 34, column: 1, scope: !5819)
!5844 = distinct !DISubprogram(name: "___set_bit", scope: !5845, file: !5845, line: 26, type: !5821, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5846)
!5845 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5846 = !{!5847, !5848}
!5847 = !DILocalVariable(name: "nr", arg: 1, scope: !5844, file: !5845, line: 26, type: !323)
!5848 = !DILocalVariable(name: "addr", arg: 2, scope: !5844, file: !5845, line: 26, type: !5823)
!5849 = !DILocation(line: 26, column: 26, scope: !5844)
!5850 = !DILocation(line: 26, column: 54, scope: !5844)
!5851 = !DILocation(line: 28, column: 19, scope: !5844)
!5852 = !DILocation(line: 28, column: 26, scope: !5844)
!5853 = !DILocation(line: 28, column: 24, scope: !5844)
!5854 = !DILocation(line: 28, column: 2, scope: !5844)
!5855 = !DILocation(line: 29, column: 17, scope: !5844)
!5856 = !DILocation(line: 29, column: 21, scope: !5844)
!5857 = !DILocation(line: 29, column: 2, scope: !5844)
!5858 = !DILocation(line: 30, column: 1, scope: !5844)
!5859 = distinct !DISubprogram(name: "virtinput_status", scope: !3, file: !3, line: 119, type: !4989, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5860)
!5860 = !{!5861, !5862, !5863, !5864, !5865}
!5861 = !DILocalVariable(name: "idev", arg: 1, scope: !5859, file: !3, line: 119, type: !4788)
!5862 = !DILocalVariable(name: "type", arg: 2, scope: !5859, file: !3, line: 119, type: !7)
!5863 = !DILocalVariable(name: "code", arg: 3, scope: !5859, file: !3, line: 120, type: !7)
!5864 = !DILocalVariable(name: "value", arg: 4, scope: !5859, file: !3, line: 120, type: !103)
!5865 = !DILocalVariable(name: "vi", scope: !5859, file: !3, line: 122, type: !4783)
!5866 = !DILocation(line: 119, column: 47, scope: !5859)
!5867 = !DILocation(line: 119, column: 66, scope: !5859)
!5868 = !DILocation(line: 120, column: 21, scope: !5859)
!5869 = !DILocation(line: 120, column: 31, scope: !5859)
!5870 = !DILocation(line: 122, column: 2, scope: !5859)
!5871 = !DILocation(line: 122, column: 23, scope: !5859)
!5872 = !DILocation(line: 122, column: 46, scope: !5859)
!5873 = !DILocation(line: 122, column: 28, scope: !5859)
!5874 = !DILocation(line: 124, column: 31, scope: !5859)
!5875 = !DILocation(line: 124, column: 35, scope: !5859)
!5876 = !DILocation(line: 124, column: 41, scope: !5859)
!5877 = !DILocation(line: 124, column: 47, scope: !5859)
!5878 = !DILocation(line: 124, column: 9, scope: !5859)
!5879 = !DILocation(line: 125, column: 1, scope: !5859)
!5880 = !DILocation(line: 124, column: 2, scope: !5859)
!5881 = distinct !DISubprogram(name: "const_test_bit", scope: !5820, file: !5820, line: 166, type: !5882, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5886)
!5882 = !DISubroutineType(types: !5883)
!5883 = !{!1473, !323, !5884}
!5884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5885, size: 64)
!5885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5824)
!5886 = !{!5887, !5888, !5889, !5890, !5891}
!5887 = !DILocalVariable(name: "nr", arg: 1, scope: !5881, file: !5820, line: 166, type: !323)
!5888 = !DILocalVariable(name: "addr", arg: 2, scope: !5881, file: !5820, line: 166, type: !5884)
!5889 = !DILocalVariable(name: "p", scope: !5881, file: !5820, line: 168, type: !4116)
!5890 = !DILocalVariable(name: "mask", scope: !5881, file: !5820, line: 169, type: !323)
!5891 = !DILocalVariable(name: "val", scope: !5881, file: !5820, line: 170, type: !323)
!5892 = !DILocation(line: 166, column: 30, scope: !5881)
!5893 = !DILocation(line: 166, column: 64, scope: !5881)
!5894 = !DILocation(line: 168, column: 2, scope: !5881)
!5895 = !DILocation(line: 168, column: 23, scope: !5881)
!5896 = !DILocation(line: 168, column: 50, scope: !5881)
!5897 = !DILocation(line: 168, column: 57, scope: !5881)
!5898 = !DILocation(line: 168, column: 55, scope: !5881)
!5899 = !DILocation(line: 169, column: 2, scope: !5881)
!5900 = !DILocation(line: 169, column: 16, scope: !5881)
!5901 = !DILocation(line: 169, column: 23, scope: !5881)
!5902 = !DILocation(line: 170, column: 2, scope: !5881)
!5903 = !DILocation(line: 170, column: 16, scope: !5881)
!5904 = !DILocation(line: 170, column: 23, scope: !5881)
!5905 = !DILocation(line: 170, column: 22, scope: !5881)
!5906 = !DILocation(line: 172, column: 12, scope: !5881)
!5907 = !DILocation(line: 172, column: 18, scope: !5881)
!5908 = !DILocation(line: 172, column: 16, scope: !5881)
!5909 = !DILocation(line: 172, column: 10, scope: !5881)
!5910 = !DILocation(line: 172, column: 9, scope: !5881)
!5911 = !DILocation(line: 173, column: 1, scope: !5881)
!5912 = !DILocation(line: 172, column: 2, scope: !5881)
!5913 = distinct !DISubprogram(name: "_test_bit", scope: !5845, file: !5845, line: 139, type: !5882, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5914)
!5914 = !{!5915, !5916}
!5915 = !DILocalVariable(name: "nr", arg: 1, scope: !5913, file: !5845, line: 139, type: !323)
!5916 = !DILocalVariable(name: "addr", arg: 2, scope: !5913, file: !5845, line: 139, type: !5884)
!5917 = !DILocation(line: 139, column: 25, scope: !5913)
!5918 = !DILocation(line: 139, column: 59, scope: !5913)
!5919 = !DILocation(line: 141, column: 25, scope: !5913)
!5920 = !DILocation(line: 141, column: 32, scope: !5913)
!5921 = !DILocation(line: 141, column: 30, scope: !5913)
!5922 = !DILocation(line: 141, column: 2, scope: !5913)
!5923 = !DILocation(line: 142, column: 23, scope: !5913)
!5924 = !DILocation(line: 142, column: 27, scope: !5913)
!5925 = !DILocation(line: 142, column: 9, scope: !5913)
!5926 = !DILocation(line: 142, column: 2, scope: !5913)
!5927 = distinct !DISubprogram(name: "virtinput_cfg_abs", scope: !3, file: !3, line: 172, type: !5928, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5930)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{null, !4783, !103}
!5930 = !{!5931, !5932, !5933, !5934, !5935, !5936, !5937, !5938, !5940, !5942, !5943, !5945, !5947, !5948, !5950, !5952, !5953, !5955, !5957, !5958, !5960, !5962}
!5931 = !DILocalVariable(name: "vi", arg: 1, scope: !5927, file: !3, line: 172, type: !4783)
!5932 = !DILocalVariable(name: "abs", arg: 2, scope: !5927, file: !3, line: 172, type: !103)
!5933 = !DILocalVariable(name: "mi", scope: !5927, file: !3, line: 174, type: !422)
!5934 = !DILocalVariable(name: "ma", scope: !5927, file: !3, line: 174, type: !422)
!5935 = !DILocalVariable(name: "re", scope: !5927, file: !3, line: 174, type: !422)
!5936 = !DILocalVariable(name: "fu", scope: !5927, file: !3, line: 174, type: !422)
!5937 = !DILocalVariable(name: "fl", scope: !5927, file: !3, line: 174, type: !422)
!5938 = !DILocalVariable(name: "virtio_cread_v", scope: !5939, file: !3, line: 177, type: !4117)
!5939 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 177, column: 2)
!5940 = !DILocalVariable(name: "__dummy", scope: !5941, file: !3, line: 177, type: !422)
!5941 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 177, column: 2)
!5942 = !DILocalVariable(name: "__dummy2", scope: !5941, file: !3, line: 177, type: !422)
!5943 = !DILocalVariable(name: "virtio_cread_v", scope: !5944, file: !3, line: 178, type: !4117)
!5944 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 178, column: 2)
!5945 = !DILocalVariable(name: "__dummy", scope: !5946, file: !3, line: 178, type: !422)
!5946 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 178, column: 2)
!5947 = !DILocalVariable(name: "__dummy2", scope: !5946, file: !3, line: 178, type: !422)
!5948 = !DILocalVariable(name: "virtio_cread_v", scope: !5949, file: !3, line: 179, type: !4117)
!5949 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 179, column: 2)
!5950 = !DILocalVariable(name: "__dummy", scope: !5951, file: !3, line: 179, type: !422)
!5951 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 179, column: 2)
!5952 = !DILocalVariable(name: "__dummy2", scope: !5951, file: !3, line: 179, type: !422)
!5953 = !DILocalVariable(name: "virtio_cread_v", scope: !5954, file: !3, line: 180, type: !4117)
!5954 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 180, column: 2)
!5955 = !DILocalVariable(name: "__dummy", scope: !5956, file: !3, line: 180, type: !422)
!5956 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 180, column: 2)
!5957 = !DILocalVariable(name: "__dummy2", scope: !5956, file: !3, line: 180, type: !422)
!5958 = !DILocalVariable(name: "virtio_cread_v", scope: !5959, file: !3, line: 181, type: !4117)
!5959 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 181, column: 2)
!5960 = !DILocalVariable(name: "__dummy", scope: !5961, file: !3, line: 181, type: !422)
!5961 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 181, column: 2)
!5962 = !DILocalVariable(name: "__dummy2", scope: !5961, file: !3, line: 181, type: !422)
!5963 = !DILocation(line: 172, column: 52, scope: !5927)
!5964 = !DILocation(line: 172, column: 60, scope: !5927)
!5965 = !DILocation(line: 174, column: 2, scope: !5927)
!5966 = !DILocation(line: 174, column: 6, scope: !5927)
!5967 = !DILocation(line: 174, column: 10, scope: !5927)
!5968 = !DILocation(line: 174, column: 14, scope: !5927)
!5969 = !DILocation(line: 174, column: 18, scope: !5927)
!5970 = !DILocation(line: 174, column: 22, scope: !5927)
!5971 = !DILocation(line: 176, column: 23, scope: !5927)
!5972 = !DILocation(line: 176, column: 54, scope: !5927)
!5973 = !DILocation(line: 176, column: 2, scope: !5927)
!5974 = !DILocation(line: 177, column: 2, scope: !5927)
!5975 = !DILocation(line: 177, column: 2, scope: !5939)
!5976 = !DILocation(line: 177, column: 2, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 177, column: 2)
!5978 = !DILocation(line: 177, column: 2, scope: !5941)
!5979 = !DILocation(line: 178, column: 2, scope: !5927)
!5980 = !DILocation(line: 178, column: 2, scope: !5944)
!5981 = !DILocation(line: 178, column: 2, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 178, column: 2)
!5983 = !DILocation(line: 178, column: 2, scope: !5946)
!5984 = !DILocation(line: 179, column: 2, scope: !5927)
!5985 = !DILocation(line: 179, column: 2, scope: !5949)
!5986 = !DILocation(line: 179, column: 2, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 179, column: 2)
!5988 = !DILocation(line: 179, column: 2, scope: !5951)
!5989 = !DILocation(line: 180, column: 2, scope: !5927)
!5990 = !DILocation(line: 180, column: 2, scope: !5954)
!5991 = !DILocation(line: 180, column: 2, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 180, column: 2)
!5993 = !DILocation(line: 180, column: 2, scope: !5956)
!5994 = !DILocation(line: 181, column: 2, scope: !5927)
!5995 = !DILocation(line: 181, column: 2, scope: !5959)
!5996 = !DILocation(line: 181, column: 2, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 181, column: 2)
!5998 = !DILocation(line: 181, column: 2, scope: !5961)
!5999 = !DILocation(line: 182, column: 23, scope: !5927)
!6000 = !DILocation(line: 182, column: 27, scope: !5927)
!6001 = !DILocation(line: 182, column: 33, scope: !5927)
!6002 = !DILocation(line: 182, column: 38, scope: !5927)
!6003 = !DILocation(line: 182, column: 42, scope: !5927)
!6004 = !DILocation(line: 182, column: 46, scope: !5927)
!6005 = !DILocation(line: 182, column: 50, scope: !5927)
!6006 = !DILocation(line: 182, column: 2, scope: !5927)
!6007 = !DILocation(line: 183, column: 20, scope: !5927)
!6008 = !DILocation(line: 183, column: 24, scope: !5927)
!6009 = !DILocation(line: 183, column: 30, scope: !5927)
!6010 = !DILocation(line: 183, column: 35, scope: !5927)
!6011 = !DILocation(line: 183, column: 2, scope: !5927)
!6012 = !DILocation(line: 184, column: 1, scope: !5927)
!6013 = distinct !DISubprogram(name: "input_abs_get_max", scope: !4790, file: !4790, line: 498, type: !6014, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6016)
!6014 = !DISubroutineType(types: !6015)
!6015 = !{!103, !4788, !7}
!6016 = !{!6017, !6018}
!6017 = !DILocalVariable(name: "dev", arg: 1, scope: !6013, file: !4790, line: 498, type: !4788)
!6018 = !DILocalVariable(name: "axis", arg: 2, scope: !6013, file: !4790, line: 498, type: !7)
!6019 = !DILocation(line: 498, column: 1, scope: !6013)
!6020 = !DISubprogram(name: "input_mt_init_slots", scope: !4943, file: !4943, line: 76, type: !6021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6021 = !DISubroutineType(types: !6022)
!6022 = !{!103, !4788, !7, !7}
!6023 = distinct !DISubprogram(name: "virtio_device_ready", scope: !4650, file: !4650, line: 270, type: !4674, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6024)
!6024 = !{!6025, !6026, !6027, !6029}
!6025 = !DILocalVariable(name: "dev", arg: 1, scope: !6023, file: !4650, line: 270, type: !4635)
!6026 = !DILocalVariable(name: "status", scope: !6023, file: !4650, line: 272, type: !7)
!6027 = !DILocalVariable(name: "__ret_warn_on", scope: !6028, file: !4650, line: 274, type: !103)
!6028 = distinct !DILexicalBlock(scope: !6023, file: !4650, line: 274, column: 2)
!6029 = !DILocalVariable(name: "__flags", scope: !6030, file: !4650, line: 274, type: !103)
!6030 = distinct !DILexicalBlock(scope: !6031, file: !4650, line: 274, column: 2)
!6031 = distinct !DILexicalBlock(scope: !6028, file: !4650, line: 274, column: 2)
!6032 = !DILocation(line: 270, column: 48, scope: !6023)
!6033 = !DILocation(line: 272, column: 2, scope: !6023)
!6034 = !DILocation(line: 272, column: 11, scope: !6023)
!6035 = !DILocation(line: 272, column: 20, scope: !6023)
!6036 = !DILocation(line: 272, column: 25, scope: !6023)
!6037 = !DILocation(line: 272, column: 33, scope: !6023)
!6038 = !DILocation(line: 272, column: 44, scope: !6023)
!6039 = !DILocation(line: 274, column: 2, scope: !6028)
!6040 = !DILocation(line: 274, column: 2, scope: !6031)
!6041 = !DILocation(line: 274, column: 2, scope: !6030)
!6042 = !DILocation(line: 274, column: 2, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6030, file: !4650, line: 274, column: 2)
!6044 = !DILocation(line: 274, column: 2, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !6030, file: !4650, line: 274, column: 2)
!6046 = !{i64 2154609347, i64 2154609376, i64 2154609422, i64 2154609480, i64 2154609534, i64 2154609588, i64 2154609643, i64 2154609674, i64 2154609982, i64 2154609988, i64 2154610035, i64 2154610058, i64 2154610084}
!6047 = !DILocation(line: 274, column: 2, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6030, file: !4650, line: 274, column: 2)
!6049 = !DILocation(line: 274, column: 2, scope: !6023)
!6050 = !DILocation(line: 297, column: 2, scope: !6023)
!6051 = !DILocation(line: 297, column: 7, scope: !6023)
!6052 = !DILocation(line: 297, column: 15, scope: !6023)
!6053 = !DILocation(line: 297, column: 26, scope: !6023)
!6054 = !DILocation(line: 297, column: 31, scope: !6023)
!6055 = !DILocation(line: 297, column: 38, scope: !6023)
!6056 = !DILocation(line: 298, column: 1, scope: !6023)
!6057 = !DISubprogram(name: "input_register_device", scope: !4790, file: !4790, line: 384, type: !4977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6058 = distinct !DISubprogram(name: "virtinput_fill_evt", scope: !3, file: !3, line: 203, type: !6059, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6061)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{null, !4783}
!6061 = !{!6062, !6063, !6064, !6065, !6066, !6070}
!6062 = !DILocalVariable(name: "vi", arg: 1, scope: !6058, file: !3, line: 203, type: !4783)
!6063 = !DILocalVariable(name: "flags", scope: !6058, file: !3, line: 205, type: !323)
!6064 = !DILocalVariable(name: "i", scope: !6058, file: !3, line: 206, type: !103)
!6065 = !DILocalVariable(name: "size", scope: !6058, file: !3, line: 206, type: !103)
!6066 = !DILocalVariable(name: "__dummy", scope: !6067, file: !3, line: 208, type: !323)
!6067 = distinct !DILexicalBlock(scope: !6068, file: !3, line: 208, column: 2)
!6068 = distinct !DILexicalBlock(scope: !6069, file: !3, line: 208, column: 2)
!6069 = distinct !DILexicalBlock(scope: !6058, file: !3, line: 208, column: 2)
!6070 = !DILocalVariable(name: "__dummy2", scope: !6067, file: !3, line: 208, type: !323)
!6071 = !DILocation(line: 203, column: 53, scope: !6058)
!6072 = !DILocation(line: 205, column: 2, scope: !6058)
!6073 = !DILocation(line: 205, column: 16, scope: !6058)
!6074 = !DILocation(line: 206, column: 2, scope: !6058)
!6075 = !DILocation(line: 206, column: 6, scope: !6058)
!6076 = !DILocation(line: 206, column: 9, scope: !6058)
!6077 = !DILocation(line: 208, column: 2, scope: !6058)
!6078 = !DILocation(line: 208, column: 2, scope: !6069)
!6079 = !DILocation(line: 208, column: 2, scope: !6067)
!6080 = !DILocation(line: 208, column: 2, scope: !6068)
!6081 = !DILocation(line: 209, column: 34, scope: !6058)
!6082 = !DILocation(line: 209, column: 38, scope: !6058)
!6083 = !DILocation(line: 209, column: 9, scope: !6058)
!6084 = !DILocation(line: 209, column: 7, scope: !6058)
!6085 = !DILocation(line: 210, column: 6, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6058, file: !3, line: 210, column: 6)
!6087 = !DILocation(line: 210, column: 11, scope: !6086)
!6088 = !DILocation(line: 210, column: 6, scope: !6058)
!6089 = !DILocation(line: 211, column: 8, scope: !6086)
!6090 = !DILocation(line: 211, column: 3, scope: !6086)
!6091 = !DILocation(line: 212, column: 9, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6058, file: !3, line: 212, column: 2)
!6093 = !DILocation(line: 212, column: 7, scope: !6092)
!6094 = !DILocation(line: 212, column: 14, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6092, file: !3, line: 212, column: 2)
!6096 = !DILocation(line: 212, column: 18, scope: !6095)
!6097 = !DILocation(line: 212, column: 16, scope: !6095)
!6098 = !DILocation(line: 212, column: 2, scope: !6092)
!6099 = !DILocation(line: 213, column: 26, scope: !6095)
!6100 = !DILocation(line: 213, column: 31, scope: !6095)
!6101 = !DILocation(line: 213, column: 35, scope: !6095)
!6102 = !DILocation(line: 213, column: 40, scope: !6095)
!6103 = !DILocation(line: 213, column: 3, scope: !6095)
!6104 = !DILocation(line: 212, column: 25, scope: !6095)
!6105 = !DILocation(line: 212, column: 2, scope: !6095)
!6106 = distinct !{!6106, !6098, !6107, !5390, !5391}
!6107 = !DILocation(line: 213, column: 42, scope: !6092)
!6108 = !DILocation(line: 214, column: 17, scope: !6058)
!6109 = !DILocation(line: 214, column: 21, scope: !6058)
!6110 = !DILocation(line: 214, column: 2, scope: !6058)
!6111 = !DILocation(line: 215, column: 26, scope: !6058)
!6112 = !DILocation(line: 215, column: 30, scope: !6058)
!6113 = !DILocation(line: 215, column: 36, scope: !6058)
!6114 = !DILocation(line: 215, column: 2, scope: !6058)
!6115 = !DILocation(line: 216, column: 1, scope: !6058)
!6116 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6117, file: !6117, line: 32, type: !6118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6117 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6118 = !DISubroutineType(types: !6119)
!6119 = !{!323, !5609}
!6120 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5606, file: !5606, line: 404, type: !6121, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6123)
!6121 = !DISubroutineType(types: !6122)
!6122 = !{null, !1921, !323}
!6123 = !{!6124, !6125, !6126, !6129}
!6124 = !DILocalVariable(name: "lock", arg: 1, scope: !6120, file: !5606, line: 404, type: !1921)
!6125 = !DILocalVariable(name: "flags", arg: 2, scope: !6120, file: !5606, line: 404, type: !323)
!6126 = !DILocalVariable(name: "__dummy", scope: !6127, file: !5606, line: 406, type: !323)
!6127 = distinct !DILexicalBlock(scope: !6128, file: !5606, line: 406, column: 2)
!6128 = distinct !DILexicalBlock(scope: !6120, file: !5606, line: 406, column: 2)
!6129 = !DILocalVariable(name: "__dummy2", scope: !6127, file: !5606, line: 406, type: !323)
!6130 = !DILocation(line: 404, column: 64, scope: !6120)
!6131 = !DILocation(line: 404, column: 84, scope: !6120)
!6132 = !DILocation(line: 406, column: 2, scope: !6120)
!6133 = !DILocation(line: 406, column: 2, scope: !6127)
!6134 = !DILocation(line: 406, column: 2, scope: !6128)
!6135 = !DILocation(line: 407, column: 1, scope: !6120)
!6136 = !DISubprogram(name: "input_free_device", scope: !4790, file: !4790, line: 361, type: !4981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6137 = !DISubprogram(name: "kfree", scope: !157, file: !157, line: 227, type: !6138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6138 = !DISubroutineType(types: !6139)
!6139 = !{null, !2141}
!6140 = !DISubprogram(name: "virtio_check_driver_offered_feature", scope: !4650, file: !4650, line: 126, type: !6141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6141 = !DISubroutineType(types: !6142)
!6142 = !{null, !5574, !7}
!6143 = distinct !DISubprogram(name: "__virtio_test_bit", scope: !4650, file: !4650, line: 136, type: !5572, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6144)
!6144 = !{!6145, !6146}
!6145 = !DILocalVariable(name: "vdev", arg: 1, scope: !6143, file: !4650, line: 136, type: !5574)
!6146 = !DILocalVariable(name: "fbit", arg: 2, scope: !6143, file: !4650, line: 137, type: !7)
!6147 = !DILocation(line: 136, column: 66, scope: !6143)
!6148 = !DILocation(line: 137, column: 23, scope: !6143)
!6149 = !DILocation(line: 140, column: 27, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6143, file: !4650, line: 140, column: 6)
!6151 = !DILocation(line: 140, column: 6, scope: !6150)
!6152 = !DILocation(line: 140, column: 6, scope: !6143)
!6153 = !DILocation(line: 141, column: 3, scope: !6150)
!6154 = !DILocation(line: 141, column: 3, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6156, file: !4650, line: 141, column: 3)
!6156 = distinct !DILexicalBlock(scope: !6150, file: !4650, line: 141, column: 3)
!6157 = !DILocation(line: 141, column: 3, scope: !6156)
!6158 = !{i32 -2140365322}
!6159 = !DILocation(line: 143, column: 3, scope: !6150)
!6160 = !DILocation(line: 143, column: 3, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6162, file: !4650, line: 143, column: 3)
!6162 = distinct !DILexicalBlock(scope: !6150, file: !4650, line: 143, column: 3)
!6163 = !DILocation(line: 143, column: 3, scope: !6162)
!6164 = !DILocation(line: 143, column: 3, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6161, file: !4650, line: 143, column: 3)
!6166 = !DILocation(line: 143, column: 3, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6165, file: !4650, line: 143, column: 3)
!6168 = !DILocation(line: 143, column: 3, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6165, file: !4650, line: 143, column: 3)
!6170 = !{i64 2154602275, i64 2154602304, i64 2154602350, i64 2154602408, i64 2154602462, i64 2154602516, i64 2154602571, i64 2154602602}
!6171 = !DILocation(line: 145, column: 9, scope: !6143)
!6172 = !DILocation(line: 145, column: 15, scope: !6143)
!6173 = !DILocation(line: 145, column: 26, scope: !6143)
!6174 = !DILocation(line: 145, column: 24, scope: !6143)
!6175 = !DILocation(line: 145, column: 2, scope: !6143)
!6176 = !DISubprogram(name: "__compiletime_assert_289", scope: !4650, file: !4650, line: 141, type: !2529, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6177 = distinct !DISubprogram(name: "kmalloc", scope: !157, file: !157, line: 591, type: !5593, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6178)
!6178 = !{!6179, !6180, !6181}
!6179 = !DILocalVariable(name: "size", arg: 1, scope: !6177, file: !157, line: 591, type: !320)
!6180 = !DILocalVariable(name: "flags", arg: 2, scope: !6177, file: !157, line: 591, type: !718)
!6181 = !DILocalVariable(name: "index", scope: !6182, file: !157, line: 594, type: !7)
!6182 = distinct !DILexicalBlock(scope: !6183, file: !157, line: 593, column: 42)
!6183 = distinct !DILexicalBlock(scope: !6177, file: !157, line: 593, column: 6)
!6184 = !DILocation(line: 591, column: 61, scope: !6177)
!6185 = !DILocation(line: 591, column: 73, scope: !6177)
!6186 = !DILocation(line: 593, column: 27, scope: !6183)
!6187 = !DILocation(line: 593, column: 6, scope: !6183)
!6188 = !DILocation(line: 593, column: 33, scope: !6183)
!6189 = !DILocation(line: 593, column: 36, scope: !6183)
!6190 = !DILocation(line: 593, column: 6, scope: !6177)
!6191 = !DILocation(line: 594, column: 3, scope: !6182)
!6192 = !DILocation(line: 594, column: 16, scope: !6182)
!6193 = !DILocation(line: 596, column: 7, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6182, file: !157, line: 596, column: 7)
!6195 = !DILocation(line: 596, column: 12, scope: !6194)
!6196 = !DILocation(line: 596, column: 7, scope: !6182)
!6197 = !DILocation(line: 597, column: 25, scope: !6194)
!6198 = !DILocation(line: 597, column: 31, scope: !6194)
!6199 = !DILocation(line: 597, column: 11, scope: !6194)
!6200 = !DILocation(line: 597, column: 4, scope: !6194)
!6201 = !DILocation(line: 599, column: 11, scope: !6182)
!6202 = !DILocation(line: 599, column: 9, scope: !6182)
!6203 = !DILocation(line: 601, column: 33, scope: !6182)
!6204 = !DILocation(line: 601, column: 40, scope: !6182)
!6205 = !DILocation(line: 601, column: 20, scope: !6182)
!6206 = !DILocation(line: 601, column: 5, scope: !6182)
!6207 = !DILocation(line: 601, column: 51, scope: !6182)
!6208 = !DILocation(line: 602, column: 5, scope: !6182)
!6209 = !DILocation(line: 602, column: 12, scope: !6182)
!6210 = !DILocation(line: 600, column: 10, scope: !6182)
!6211 = !DILocation(line: 600, column: 3, scope: !6182)
!6212 = !DILocation(line: 603, column: 2, scope: !6183)
!6213 = !DILocation(line: 604, column: 19, scope: !6177)
!6214 = !DILocation(line: 604, column: 25, scope: !6177)
!6215 = !DILocation(line: 604, column: 9, scope: !6177)
!6216 = !DILocation(line: 604, column: 2, scope: !6177)
!6217 = !DILocation(line: 605, column: 1, scope: !6177)
!6218 = !DISubprogram(name: "kmalloc_large", scope: !157, file: !157, line: 531, type: !5593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6219 = distinct !DISubprogram(name: "__kmalloc_index", scope: !157, file: !157, line: 444, type: !6220, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6222)
!6220 = !DISubroutineType(types: !6221)
!6221 = !{!7, !320, !1473}
!6222 = !{!6223, !6224}
!6223 = !DILocalVariable(name: "size", arg: 1, scope: !6219, file: !157, line: 444, type: !320)
!6224 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6219, file: !157, line: 445, type: !1473)
!6225 = !DILocation(line: 444, column: 60, scope: !6219)
!6226 = !DILocation(line: 445, column: 16, scope: !6219)
!6227 = !DILocation(line: 447, column: 7, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 447, column: 6)
!6229 = !DILocation(line: 447, column: 6, scope: !6219)
!6230 = !DILocation(line: 448, column: 3, scope: !6228)
!6231 = !DILocation(line: 450, column: 6, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 450, column: 6)
!6233 = !DILocation(line: 450, column: 11, scope: !6232)
!6234 = !DILocation(line: 450, column: 6, scope: !6219)
!6235 = !DILocation(line: 451, column: 3, scope: !6232)
!6236 = !DILocation(line: 453, column: 32, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 453, column: 6)
!6238 = !DILocation(line: 453, column: 37, scope: !6237)
!6239 = !DILocation(line: 453, column: 42, scope: !6237)
!6240 = !DILocation(line: 453, column: 45, scope: !6237)
!6241 = !DILocation(line: 453, column: 50, scope: !6237)
!6242 = !DILocation(line: 453, column: 6, scope: !6219)
!6243 = !DILocation(line: 454, column: 3, scope: !6237)
!6244 = !DILocation(line: 455, column: 32, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 455, column: 6)
!6246 = !DILocation(line: 455, column: 37, scope: !6245)
!6247 = !DILocation(line: 455, column: 43, scope: !6245)
!6248 = !DILocation(line: 455, column: 46, scope: !6245)
!6249 = !DILocation(line: 455, column: 51, scope: !6245)
!6250 = !DILocation(line: 455, column: 6, scope: !6219)
!6251 = !DILocation(line: 456, column: 3, scope: !6245)
!6252 = !DILocation(line: 457, column: 6, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 457, column: 6)
!6254 = !DILocation(line: 457, column: 11, scope: !6253)
!6255 = !DILocation(line: 457, column: 6, scope: !6219)
!6256 = !DILocation(line: 457, column: 26, scope: !6253)
!6257 = !DILocation(line: 458, column: 6, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 458, column: 6)
!6259 = !DILocation(line: 458, column: 11, scope: !6258)
!6260 = !DILocation(line: 458, column: 6, scope: !6219)
!6261 = !DILocation(line: 458, column: 26, scope: !6258)
!6262 = !DILocation(line: 459, column: 6, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 459, column: 6)
!6264 = !DILocation(line: 459, column: 11, scope: !6263)
!6265 = !DILocation(line: 459, column: 6, scope: !6219)
!6266 = !DILocation(line: 459, column: 26, scope: !6263)
!6267 = !DILocation(line: 460, column: 6, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 460, column: 6)
!6269 = !DILocation(line: 460, column: 11, scope: !6268)
!6270 = !DILocation(line: 460, column: 6, scope: !6219)
!6271 = !DILocation(line: 460, column: 26, scope: !6268)
!6272 = !DILocation(line: 461, column: 6, scope: !6273)
!6273 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 461, column: 6)
!6274 = !DILocation(line: 461, column: 11, scope: !6273)
!6275 = !DILocation(line: 461, column: 6, scope: !6219)
!6276 = !DILocation(line: 461, column: 26, scope: !6273)
!6277 = !DILocation(line: 462, column: 6, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 462, column: 6)
!6279 = !DILocation(line: 462, column: 11, scope: !6278)
!6280 = !DILocation(line: 462, column: 6, scope: !6219)
!6281 = !DILocation(line: 462, column: 26, scope: !6278)
!6282 = !DILocation(line: 463, column: 6, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 463, column: 6)
!6284 = !DILocation(line: 463, column: 11, scope: !6283)
!6285 = !DILocation(line: 463, column: 6, scope: !6219)
!6286 = !DILocation(line: 463, column: 26, scope: !6283)
!6287 = !DILocation(line: 464, column: 6, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 464, column: 6)
!6289 = !DILocation(line: 464, column: 11, scope: !6288)
!6290 = !DILocation(line: 464, column: 6, scope: !6219)
!6291 = !DILocation(line: 464, column: 26, scope: !6288)
!6292 = !DILocation(line: 465, column: 6, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 465, column: 6)
!6294 = !DILocation(line: 465, column: 11, scope: !6293)
!6295 = !DILocation(line: 465, column: 6, scope: !6219)
!6296 = !DILocation(line: 465, column: 26, scope: !6293)
!6297 = !DILocation(line: 466, column: 6, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 466, column: 6)
!6299 = !DILocation(line: 466, column: 11, scope: !6298)
!6300 = !DILocation(line: 466, column: 6, scope: !6219)
!6301 = !DILocation(line: 466, column: 26, scope: !6298)
!6302 = !DILocation(line: 467, column: 6, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 467, column: 6)
!6304 = !DILocation(line: 467, column: 11, scope: !6303)
!6305 = !DILocation(line: 467, column: 6, scope: !6219)
!6306 = !DILocation(line: 467, column: 26, scope: !6303)
!6307 = !DILocation(line: 468, column: 6, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 468, column: 6)
!6309 = !DILocation(line: 468, column: 11, scope: !6308)
!6310 = !DILocation(line: 468, column: 6, scope: !6219)
!6311 = !DILocation(line: 468, column: 26, scope: !6308)
!6312 = !DILocation(line: 469, column: 6, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 469, column: 6)
!6314 = !DILocation(line: 469, column: 11, scope: !6313)
!6315 = !DILocation(line: 469, column: 6, scope: !6219)
!6316 = !DILocation(line: 469, column: 26, scope: !6313)
!6317 = !DILocation(line: 470, column: 6, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 470, column: 6)
!6319 = !DILocation(line: 470, column: 11, scope: !6318)
!6320 = !DILocation(line: 470, column: 6, scope: !6219)
!6321 = !DILocation(line: 470, column: 26, scope: !6318)
!6322 = !DILocation(line: 471, column: 6, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 471, column: 6)
!6324 = !DILocation(line: 471, column: 11, scope: !6323)
!6325 = !DILocation(line: 471, column: 6, scope: !6219)
!6326 = !DILocation(line: 471, column: 26, scope: !6323)
!6327 = !DILocation(line: 472, column: 6, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 472, column: 6)
!6329 = !DILocation(line: 472, column: 11, scope: !6328)
!6330 = !DILocation(line: 472, column: 6, scope: !6219)
!6331 = !DILocation(line: 472, column: 26, scope: !6328)
!6332 = !DILocation(line: 473, column: 6, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 473, column: 6)
!6334 = !DILocation(line: 473, column: 11, scope: !6333)
!6335 = !DILocation(line: 473, column: 6, scope: !6219)
!6336 = !DILocation(line: 473, column: 26, scope: !6333)
!6337 = !DILocation(line: 474, column: 6, scope: !6338)
!6338 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 474, column: 6)
!6339 = !DILocation(line: 474, column: 11, scope: !6338)
!6340 = !DILocation(line: 474, column: 6, scope: !6219)
!6341 = !DILocation(line: 474, column: 27, scope: !6338)
!6342 = !DILocation(line: 475, column: 6, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 475, column: 6)
!6344 = !DILocation(line: 475, column: 11, scope: !6343)
!6345 = !DILocation(line: 475, column: 6, scope: !6219)
!6346 = !DILocation(line: 475, column: 32, scope: !6343)
!6347 = !DILocation(line: 477, column: 50, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6219, file: !157, line: 477, column: 6)
!6349 = !{i8 0, i8 2}
!6350 = !DILocation(line: 477, column: 6, scope: !6219)
!6351 = !DILocation(line: 478, column: 3, scope: !6348)
!6352 = !DILocation(line: 478, column: 3, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6354, file: !157, line: 478, column: 3)
!6354 = distinct !DILexicalBlock(scope: !6348, file: !157, line: 478, column: 3)
!6355 = !{i32 -2141823928}
!6356 = !DILocation(line: 478, column: 3, scope: !6354)
!6357 = !DILocation(line: 480, column: 3, scope: !6348)
!6358 = !DILocation(line: 480, column: 3, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6348, file: !157, line: 480, column: 3)
!6360 = !DILocation(line: 480, column: 3, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6359, file: !157, line: 480, column: 3)
!6362 = !DILocation(line: 480, column: 3, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6359, file: !157, line: 480, column: 3)
!6364 = !{i64 2153143571, i64 2153143600, i64 2153143646, i64 2153143704, i64 2153143758, i64 2153143812, i64 2153143867, i64 2153143898}
!6365 = !DILocation(line: 483, column: 2, scope: !6219)
!6366 = !DILocation(line: 484, column: 1, scope: !6219)
!6367 = !DISubprogram(name: "kmalloc_trace", scope: !157, file: !157, line: 525, type: !6368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6368 = !DISubroutineType(types: !6369)
!6369 = !{!167, !6370, !718, !320}
!6370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6371, size: 64)
!6371 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6372, line: 11, flags: DIFlagFwdDecl)
!6372 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6373 = distinct !DISubprogram(name: "kmalloc_type", scope: !157, file: !157, line: 401, type: !6374, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6376)
!6374 = !DISubroutineType(types: !6375)
!6375 = !{!156, !718, !323}
!6376 = !{!6377, !6378}
!6377 = !DILocalVariable(name: "flags", arg: 1, scope: !6373, file: !157, line: 401, type: !718)
!6378 = !DILocalVariable(name: "caller", arg: 2, scope: !6373, file: !157, line: 401, type: !323)
!6379 = !DILocation(line: 401, column: 67, scope: !6373)
!6380 = !DILocation(line: 401, column: 88, scope: !6373)
!6381 = !DILocation(line: 407, column: 6, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6373, file: !157, line: 407, column: 6)
!6383 = !DILocation(line: 407, column: 6, scope: !6373)
!6384 = !DILocation(line: 413, column: 3, scope: !6382)
!6385 = !DILocation(line: 423, column: 38, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6373, file: !157, line: 423, column: 6)
!6387 = !DILocation(line: 423, column: 44, scope: !6386)
!6388 = !DILocation(line: 423, column: 6, scope: !6373)
!6389 = !DILocation(line: 424, column: 3, scope: !6386)
!6390 = !DILocation(line: 426, column: 3, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6373, file: !157, line: 425, column: 6)
!6392 = !DILocation(line: 429, column: 1, scope: !6373)
!6393 = !DISubprogram(name: "__kmalloc", scope: !157, file: !157, line: 488, type: !5593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6394 = !DISubprogram(name: "__compiletime_assert_229", scope: !157, file: !157, line: 478, type: !2529, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6395 = distinct !DISubprogram(name: "virtinput_recv_events", scope: !3, file: !3, line: 33, type: !4687, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6396)
!6396 = !{!6397, !6398, !6399, !6401, !6402, !6403, !6407, !6408, !6415}
!6397 = !DILocalVariable(name: "vq", arg: 1, scope: !6395, file: !3, line: 33, type: !4681)
!6398 = !DILocalVariable(name: "vi", scope: !6395, file: !3, line: 35, type: !4783)
!6399 = !DILocalVariable(name: "event", scope: !6395, file: !3, line: 36, type: !6400)
!6400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!6401 = !DILocalVariable(name: "flags", scope: !6395, file: !3, line: 37, type: !323)
!6402 = !DILocalVariable(name: "len", scope: !6395, file: !3, line: 38, type: !7)
!6403 = !DILocalVariable(name: "__dummy", scope: !6404, file: !3, line: 40, type: !323)
!6404 = distinct !DILexicalBlock(scope: !6405, file: !3, line: 40, column: 2)
!6405 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 40, column: 2)
!6406 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 40, column: 2)
!6407 = !DILocalVariable(name: "__dummy2", scope: !6404, file: !3, line: 40, type: !323)
!6408 = !DILocalVariable(name: "__dummy", scope: !6409, file: !3, line: 48, type: !323)
!6409 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 48, column: 4)
!6410 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 48, column: 4)
!6411 = distinct !DILexicalBlock(scope: !6412, file: !3, line: 48, column: 4)
!6412 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 42, column: 62)
!6413 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 41, column: 17)
!6414 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 41, column: 6)
!6415 = !DILocalVariable(name: "__dummy2", scope: !6409, file: !3, line: 48, type: !323)
!6416 = !DILocation(line: 33, column: 53, scope: !6395)
!6417 = !DILocation(line: 35, column: 2, scope: !6395)
!6418 = !DILocation(line: 35, column: 23, scope: !6395)
!6419 = !DILocation(line: 35, column: 28, scope: !6395)
!6420 = !DILocation(line: 35, column: 32, scope: !6395)
!6421 = !DILocation(line: 35, column: 38, scope: !6395)
!6422 = !DILocation(line: 36, column: 2, scope: !6395)
!6423 = !DILocation(line: 36, column: 29, scope: !6395)
!6424 = !DILocation(line: 37, column: 2, scope: !6395)
!6425 = !DILocation(line: 37, column: 16, scope: !6395)
!6426 = !DILocation(line: 38, column: 2, scope: !6395)
!6427 = !DILocation(line: 38, column: 15, scope: !6395)
!6428 = !DILocation(line: 40, column: 2, scope: !6395)
!6429 = !DILocation(line: 40, column: 2, scope: !6406)
!6430 = !DILocation(line: 40, column: 2, scope: !6404)
!6431 = !DILocation(line: 40, column: 2, scope: !6405)
!6432 = !DILocation(line: 41, column: 6, scope: !6414)
!6433 = !DILocation(line: 41, column: 10, scope: !6414)
!6434 = !DILocation(line: 41, column: 6, scope: !6395)
!6435 = !DILocation(line: 42, column: 3, scope: !6413)
!6436 = !DILocation(line: 42, column: 37, scope: !6413)
!6437 = !DILocation(line: 42, column: 41, scope: !6413)
!6438 = !DILocation(line: 42, column: 19, scope: !6413)
!6439 = !DILocation(line: 42, column: 17, scope: !6413)
!6440 = !DILocation(line: 42, column: 53, scope: !6413)
!6441 = !DILocation(line: 43, column: 28, scope: !6412)
!6442 = !DILocation(line: 43, column: 32, scope: !6412)
!6443 = !DILocation(line: 43, column: 38, scope: !6412)
!6444 = !DILocation(line: 43, column: 4, scope: !6412)
!6445 = !DILocation(line: 44, column: 16, scope: !6412)
!6446 = !DILocation(line: 44, column: 20, scope: !6412)
!6447 = !DILocation(line: 45, column: 9, scope: !6412)
!6448 = !DILocation(line: 46, column: 9, scope: !6412)
!6449 = !DILocation(line: 47, column: 9, scope: !6412)
!6450 = !DILocation(line: 44, column: 4, scope: !6412)
!6451 = !DILocation(line: 48, column: 4, scope: !6412)
!6452 = !DILocation(line: 48, column: 4, scope: !6411)
!6453 = !DILocation(line: 48, column: 4, scope: !6409)
!6454 = !DILocation(line: 48, column: 4, scope: !6410)
!6455 = !DILocation(line: 49, column: 27, scope: !6412)
!6456 = !DILocation(line: 49, column: 31, scope: !6412)
!6457 = !DILocation(line: 49, column: 4, scope: !6412)
!6458 = distinct !{!6458, !6435, !6459, !5390, !5391}
!6459 = !DILocation(line: 50, column: 3, scope: !6413)
!6460 = !DILocation(line: 51, column: 18, scope: !6413)
!6461 = !DILocation(line: 51, column: 3, scope: !6413)
!6462 = !DILocation(line: 52, column: 2, scope: !6413)
!6463 = !DILocation(line: 53, column: 26, scope: !6395)
!6464 = !DILocation(line: 53, column: 30, scope: !6395)
!6465 = !DILocation(line: 53, column: 36, scope: !6395)
!6466 = !DILocation(line: 53, column: 2, scope: !6395)
!6467 = !DILocation(line: 54, column: 1, scope: !6395)
!6468 = distinct !DISubprogram(name: "virtinput_recv_status", scope: !3, file: !3, line: 106, type: !4687, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6469)
!6469 = !{!6470, !6471, !6472, !6473, !6474, !6475, !6479}
!6470 = !DILocalVariable(name: "vq", arg: 1, scope: !6468, file: !3, line: 106, type: !4681)
!6471 = !DILocalVariable(name: "vi", scope: !6468, file: !3, line: 108, type: !4783)
!6472 = !DILocalVariable(name: "stsbuf", scope: !6468, file: !3, line: 109, type: !6400)
!6473 = !DILocalVariable(name: "flags", scope: !6468, file: !3, line: 110, type: !323)
!6474 = !DILocalVariable(name: "len", scope: !6468, file: !3, line: 111, type: !7)
!6475 = !DILocalVariable(name: "__dummy", scope: !6476, file: !3, line: 113, type: !323)
!6476 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 113, column: 2)
!6477 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 113, column: 2)
!6478 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 113, column: 2)
!6479 = !DILocalVariable(name: "__dummy2", scope: !6476, file: !3, line: 113, type: !323)
!6480 = !DILocation(line: 106, column: 53, scope: !6468)
!6481 = !DILocation(line: 108, column: 2, scope: !6468)
!6482 = !DILocation(line: 108, column: 23, scope: !6468)
!6483 = !DILocation(line: 108, column: 28, scope: !6468)
!6484 = !DILocation(line: 108, column: 32, scope: !6468)
!6485 = !DILocation(line: 108, column: 38, scope: !6468)
!6486 = !DILocation(line: 109, column: 2, scope: !6468)
!6487 = !DILocation(line: 109, column: 29, scope: !6468)
!6488 = !DILocation(line: 110, column: 2, scope: !6468)
!6489 = !DILocation(line: 110, column: 16, scope: !6468)
!6490 = !DILocation(line: 111, column: 2, scope: !6468)
!6491 = !DILocation(line: 111, column: 15, scope: !6468)
!6492 = !DILocation(line: 113, column: 2, scope: !6468)
!6493 = !DILocation(line: 113, column: 2, scope: !6478)
!6494 = !DILocation(line: 113, column: 2, scope: !6476)
!6495 = !DILocation(line: 113, column: 2, scope: !6477)
!6496 = !DILocation(line: 114, column: 2, scope: !6468)
!6497 = !DILocation(line: 114, column: 37, scope: !6468)
!6498 = !DILocation(line: 114, column: 41, scope: !6468)
!6499 = !DILocation(line: 114, column: 19, scope: !6468)
!6500 = !DILocation(line: 114, column: 17, scope: !6468)
!6501 = !DILocation(line: 114, column: 53, scope: !6468)
!6502 = !DILocation(line: 115, column: 9, scope: !6468)
!6503 = !DILocation(line: 115, column: 3, scope: !6468)
!6504 = distinct !{!6504, !6496, !6505, !5390, !5391}
!6505 = !DILocation(line: 115, column: 15, scope: !6468)
!6506 = !DILocation(line: 116, column: 26, scope: !6468)
!6507 = !DILocation(line: 116, column: 30, scope: !6468)
!6508 = !DILocation(line: 116, column: 36, scope: !6468)
!6509 = !DILocation(line: 116, column: 2, scope: !6468)
!6510 = !DILocation(line: 117, column: 1, scope: !6468)
!6511 = distinct !DISubprogram(name: "virtio_find_vqs", scope: !4650, file: !4650, line: 224, type: !6512, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6514)
!6512 = !DISubroutineType(types: !6513)
!6513 = !{!103, !4635, !7, !4680, !4696, !4699, !4703}
!6514 = !{!6515, !6516, !6517, !6518, !6519, !6520}
!6515 = !DILocalVariable(name: "vdev", arg: 1, scope: !6511, file: !4650, line: 224, type: !4635)
!6516 = !DILocalVariable(name: "nvqs", arg: 2, scope: !6511, file: !4650, line: 224, type: !7)
!6517 = !DILocalVariable(name: "vqs", arg: 3, scope: !6511, file: !4650, line: 225, type: !4680)
!6518 = !DILocalVariable(name: "callbacks", arg: 4, scope: !6511, file: !4650, line: 225, type: !4696)
!6519 = !DILocalVariable(name: "names", arg: 5, scope: !6511, file: !4650, line: 226, type: !4699)
!6520 = !DILocalVariable(name: "desc", arg: 6, scope: !6511, file: !4650, line: 227, type: !4703)
!6521 = !DILocation(line: 224, column: 43, scope: !6511)
!6522 = !DILocation(line: 224, column: 58, scope: !6511)
!6523 = !DILocation(line: 225, column: 22, scope: !6511)
!6524 = !DILocation(line: 225, column: 44, scope: !6511)
!6525 = !DILocation(line: 226, column: 23, scope: !6511)
!6526 = !DILocation(line: 227, column: 25, scope: !6511)
!6527 = !DILocation(line: 229, column: 9, scope: !6511)
!6528 = !DILocation(line: 229, column: 15, scope: !6511)
!6529 = !DILocation(line: 229, column: 23, scope: !6511)
!6530 = !DILocation(line: 229, column: 32, scope: !6511)
!6531 = !DILocation(line: 229, column: 38, scope: !6511)
!6532 = !DILocation(line: 229, column: 44, scope: !6511)
!6533 = !DILocation(line: 229, column: 49, scope: !6511)
!6534 = !DILocation(line: 229, column: 60, scope: !6511)
!6535 = !DILocation(line: 229, column: 73, scope: !6511)
!6536 = !DILocation(line: 229, column: 2, scope: !6511)
!6537 = !DISubprogram(name: "virtqueue_get_buf", scope: !4151, file: !4151, line: 73, type: !6538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6538 = !DISubroutineType(types: !6539)
!6539 = !{!167, !4681, !975}
!6540 = !DISubprogram(name: "input_event", scope: !4790, file: !4790, line: 420, type: !6541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6541 = !DISubroutineType(types: !6542)
!6542 = !{null, !4788, !7, !7, !103}
!6543 = distinct !DISubprogram(name: "virtinput_queue_evtbuf", scope: !3, file: !3, line: 24, type: !6544, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6546)
!6544 = !DISubroutineType(types: !6545)
!6545 = !{null, !4783, !6400}
!6546 = !{!6547, !6548, !6549}
!6547 = !DILocalVariable(name: "vi", arg: 1, scope: !6543, file: !3, line: 24, type: !4783)
!6548 = !DILocalVariable(name: "evtbuf", arg: 2, scope: !6543, file: !3, line: 25, type: !6400)
!6549 = !DILocalVariable(name: "sg", scope: !6543, file: !3, line: 27, type: !6550)
!6550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6551, size: 256, elements: !1237)
!6551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6552, line: 11, size: 256, elements: !6553)
!6552 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!6553 = !{!6554, !6555, !6556, !6557, !6559, !6560}
!6554 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !6551, file: !6552, line: 12, baseType: !323, size: 64)
!6555 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6551, file: !6552, line: 13, baseType: !7, size: 32, offset: 64)
!6556 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6551, file: !6552, line: 14, baseType: !7, size: 32, offset: 96)
!6557 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !6551, file: !6552, line: 15, baseType: !6558, size: 64, offset: 128)
!6558 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !174, line: 149, baseType: !426)
!6559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !6551, file: !6552, line: 17, baseType: !7, size: 32, offset: 192)
!6560 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !6551, file: !6552, line: 20, baseType: !7, size: 32, offset: 224)
!6561 = !DILocation(line: 24, column: 57, scope: !6543)
!6562 = !DILocation(line: 25, column: 35, scope: !6543)
!6563 = !DILocation(line: 27, column: 2, scope: !6543)
!6564 = !DILocation(line: 27, column: 21, scope: !6543)
!6565 = !DILocation(line: 29, column: 14, scope: !6543)
!6566 = !DILocation(line: 29, column: 18, scope: !6543)
!6567 = !DILocation(line: 29, column: 2, scope: !6543)
!6568 = !DILocation(line: 30, column: 22, scope: !6543)
!6569 = !DILocation(line: 30, column: 26, scope: !6543)
!6570 = !DILocation(line: 30, column: 31, scope: !6543)
!6571 = !DILocation(line: 30, column: 38, scope: !6543)
!6572 = !DILocation(line: 30, column: 2, scope: !6543)
!6573 = !DILocation(line: 31, column: 1, scope: !6543)
!6574 = !DISubprogram(name: "virtqueue_kick", scope: !4151, file: !4151, line: 67, type: !6575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6575 = !DISubroutineType(types: !6576)
!6576 = !{!1473, !4681}
!6577 = !DISubprogram(name: "sg_init_one", scope: !6552, file: !6552, line: 424, type: !6578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6578 = !DISubroutineType(types: !6579)
!6579 = !{null, !6580, !2141, !7}
!6580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6551, size: 64)
!6581 = !DISubprogram(name: "virtqueue_add_inbuf", scope: !4151, file: !4151, line: 47, type: !6582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6582 = !DISubroutineType(types: !6583)
!6583 = !{!103, !4681, !6580, !7, !167, !718}
!6584 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !88, file: !88, line: 921, type: !6585, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6587)
!6585 = !DISubroutineType(types: !6586)
!6586 = !{null, !4172, !167}
!6587 = !{!6588, !6589}
!6588 = !DILocalVariable(name: "dev", arg: 1, scope: !6584, file: !88, line: 921, type: !4172)
!6589 = !DILocalVariable(name: "data", arg: 2, scope: !6584, file: !88, line: 921, type: !167)
!6590 = !DILocation(line: 921, column: 51, scope: !6584)
!6591 = !DILocation(line: 921, column: 62, scope: !6584)
!6592 = !DILocation(line: 923, column: 21, scope: !6584)
!6593 = !DILocation(line: 923, column: 2, scope: !6584)
!6594 = !DILocation(line: 923, column: 7, scope: !6584)
!6595 = !DILocation(line: 923, column: 19, scope: !6584)
!6596 = !DILocation(line: 924, column: 1, scope: !6584)
!6597 = distinct !DISubprogram(name: "__virtio_cread_many", scope: !4650, file: !4650, line: 500, type: !6598, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6600)
!6598 = !DISubroutineType(types: !6599)
!6599 = !{null, !4635, !7, !167, !320, !320}
!6600 = !{!6601, !6602, !6603, !6604, !6605, !6606, !6607, !6608}
!6601 = !DILocalVariable(name: "vdev", arg: 1, scope: !6597, file: !4650, line: 500, type: !4635)
!6602 = !DILocalVariable(name: "offset", arg: 2, scope: !6597, file: !4650, line: 501, type: !7)
!6603 = !DILocalVariable(name: "buf", arg: 3, scope: !6597, file: !4650, line: 502, type: !167)
!6604 = !DILocalVariable(name: "count", arg: 4, scope: !6597, file: !4650, line: 502, type: !320)
!6605 = !DILocalVariable(name: "bytes", arg: 5, scope: !6597, file: !4650, line: 502, type: !320)
!6606 = !DILocalVariable(name: "old", scope: !6597, file: !4650, line: 504, type: !422)
!6607 = !DILocalVariable(name: "gen", scope: !6597, file: !4650, line: 504, type: !422)
!6608 = !DILocalVariable(name: "i", scope: !6597, file: !4650, line: 506, type: !103)
!6609 = !DILocation(line: 500, column: 62, scope: !6597)
!6610 = !DILocation(line: 501, column: 25, scope: !6597)
!6611 = !DILocation(line: 502, column: 18, scope: !6597)
!6612 = !DILocation(line: 502, column: 30, scope: !6597)
!6613 = !DILocation(line: 502, column: 44, scope: !6597)
!6614 = !DILocation(line: 504, column: 2, scope: !6597)
!6615 = !DILocation(line: 504, column: 6, scope: !6597)
!6616 = !DILocation(line: 504, column: 11, scope: !6597)
!6617 = !DILocation(line: 504, column: 17, scope: !6597)
!6618 = !DILocation(line: 504, column: 23, scope: !6597)
!6619 = !DILocation(line: 504, column: 31, scope: !6597)
!6620 = !DILocation(line: 505, column: 3, scope: !6597)
!6621 = !DILocation(line: 505, column: 9, scope: !6597)
!6622 = !DILocation(line: 505, column: 17, scope: !6597)
!6623 = !DILocation(line: 505, column: 28, scope: !6597)
!6624 = !DILocation(line: 506, column: 2, scope: !6597)
!6625 = !DILocation(line: 506, column: 6, scope: !6597)
!6626 = !DILocation(line: 508, column: 2, scope: !6597)
!6627 = !DILocation(line: 508, column: 2, scope: !6628)
!6628 = distinct !DILexicalBlock(scope: !6597, file: !4650, line: 508, column: 2)
!6629 = !DILocation(line: 509, column: 2, scope: !6597)
!6630 = !DILocation(line: 510, column: 9, scope: !6631)
!6631 = distinct !DILexicalBlock(scope: !6597, file: !4650, line: 509, column: 5)
!6632 = !DILocation(line: 510, column: 7, scope: !6631)
!6633 = !DILocation(line: 512, column: 10, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6631, file: !4650, line: 512, column: 3)
!6635 = !DILocation(line: 512, column: 8, scope: !6634)
!6636 = !DILocation(line: 512, column: 15, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6634, file: !4650, line: 512, column: 3)
!6638 = !DILocation(line: 512, column: 19, scope: !6637)
!6639 = !DILocation(line: 512, column: 17, scope: !6637)
!6640 = !DILocation(line: 512, column: 3, scope: !6634)
!6641 = !DILocation(line: 513, column: 4, scope: !6637)
!6642 = !DILocation(line: 513, column: 10, scope: !6637)
!6643 = !DILocation(line: 513, column: 18, scope: !6637)
!6644 = !DILocation(line: 513, column: 22, scope: !6637)
!6645 = !DILocation(line: 513, column: 28, scope: !6637)
!6646 = !DILocation(line: 513, column: 37, scope: !6637)
!6647 = !DILocation(line: 513, column: 45, scope: !6637)
!6648 = !DILocation(line: 513, column: 43, scope: !6637)
!6649 = !DILocation(line: 513, column: 35, scope: !6637)
!6650 = !DILocation(line: 514, column: 8, scope: !6637)
!6651 = !DILocation(line: 514, column: 14, scope: !6637)
!6652 = !DILocation(line: 514, column: 18, scope: !6637)
!6653 = !DILocation(line: 514, column: 16, scope: !6637)
!6654 = !DILocation(line: 514, column: 12, scope: !6637)
!6655 = !DILocation(line: 514, column: 25, scope: !6637)
!6656 = !DILocation(line: 512, column: 27, scope: !6637)
!6657 = !DILocation(line: 512, column: 3, scope: !6637)
!6658 = distinct !{!6658, !6640, !6659, !5390, !5391}
!6659 = !DILocation(line: 514, column: 30, scope: !6634)
!6660 = !DILocation(line: 516, column: 9, scope: !6631)
!6661 = !DILocation(line: 516, column: 15, scope: !6631)
!6662 = !DILocation(line: 516, column: 23, scope: !6631)
!6663 = !DILocation(line: 517, column: 4, scope: !6631)
!6664 = !DILocation(line: 517, column: 10, scope: !6631)
!6665 = !DILocation(line: 517, column: 18, scope: !6631)
!6666 = !DILocation(line: 517, column: 29, scope: !6631)
!6667 = !DILocation(line: 516, column: 7, scope: !6631)
!6668 = !DILocation(line: 518, column: 2, scope: !6631)
!6669 = !DILocation(line: 518, column: 11, scope: !6597)
!6670 = !DILocation(line: 518, column: 18, scope: !6597)
!6671 = !DILocation(line: 518, column: 15, scope: !6597)
!6672 = distinct !{!6672, !6629, !6673, !5390, !5391}
!6673 = !DILocation(line: 518, column: 21, scope: !6597)
!6674 = !DILocation(line: 519, column: 1, scope: !6597)
!6675 = distinct !DISubprogram(name: "instrument_write", scope: !6676, file: !6676, line: 38, type: !6677, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6682)
!6676 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6677 = !DISubroutineType(types: !6678)
!6678 = !{null, !6679, !320}
!6679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6680, size: 64)
!6680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6681)
!6681 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6682 = !{!6683, !6684}
!6683 = !DILocalVariable(name: "v", arg: 1, scope: !6675, file: !6676, line: 38, type: !6679)
!6684 = !DILocalVariable(name: "size", arg: 2, scope: !6675, file: !6676, line: 38, type: !320)
!6685 = !DILocation(line: 38, column: 67, scope: !6675)
!6686 = !DILocation(line: 38, column: 77, scope: !6675)
!6687 = !DILocation(line: 40, column: 20, scope: !6675)
!6688 = !DILocation(line: 40, column: 23, scope: !6675)
!6689 = !DILocation(line: 40, column: 2, scope: !6675)
!6690 = !DILocation(line: 41, column: 2, scope: !6675)
!6691 = !DILocation(line: 42, column: 1, scope: !6675)
!6692 = distinct !DISubprogram(name: "arch___set_bit", scope: !6693, file: !6693, line: 66, type: !5821, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6694)
!6693 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6694 = !{!6695, !6696}
!6695 = !DILocalVariable(name: "nr", arg: 1, scope: !6692, file: !6693, line: 66, type: !323)
!6696 = !DILocalVariable(name: "addr", arg: 2, scope: !6692, file: !6693, line: 66, type: !5823)
!6697 = !DILocation(line: 66, column: 30, scope: !6692)
!6698 = !DILocation(line: 66, column: 58, scope: !6692)
!6699 = !DILocation(line: 68, column: 44, scope: !6692)
!6700 = !DILocation(line: 68, column: 56, scope: !6692)
!6701 = !DILocation(line: 68, column: 2, scope: !6692)
!6702 = !{i64 2148339133}
!6703 = !DILocation(line: 69, column: 1, scope: !6692)
!6704 = distinct !DISubprogram(name: "kasan_check_write", scope: !6705, file: !6705, line: 44, type: !6706, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6708)
!6705 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6706 = !DISubroutineType(types: !6707)
!6707 = !{!1473, !6679, !7}
!6708 = !{!6709, !6710}
!6709 = !DILocalVariable(name: "p", arg: 1, scope: !6704, file: !6705, line: 44, type: !6679)
!6710 = !DILocalVariable(name: "size", arg: 2, scope: !6704, file: !6705, line: 44, type: !7)
!6711 = !DILocation(line: 44, column: 59, scope: !6704)
!6712 = !DILocation(line: 44, column: 75, scope: !6704)
!6713 = !DILocation(line: 46, column: 2, scope: !6704)
!6714 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6715, file: !6715, line: 229, type: !6716, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6718)
!6715 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6716 = !DISubroutineType(types: !6717)
!6717 = !{null, !6679, !320, !103}
!6718 = !{!6719, !6720, !6721}
!6719 = !DILocalVariable(name: "ptr", arg: 1, scope: !6714, file: !6715, line: 229, type: !6679)
!6720 = !DILocalVariable(name: "size", arg: 2, scope: !6714, file: !6715, line: 229, type: !320)
!6721 = !DILocalVariable(name: "type", arg: 3, scope: !6714, file: !6715, line: 230, type: !103)
!6722 = !DILocation(line: 229, column: 60, scope: !6714)
!6723 = !DILocation(line: 229, column: 72, scope: !6714)
!6724 = !DILocation(line: 230, column: 15, scope: !6714)
!6725 = !DILocation(line: 230, column: 23, scope: !6714)
!6726 = distinct !DISubprogram(name: "input_get_drvdata", scope: !4790, file: !4790, line: 374, type: !6727, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6729)
!6727 = !DISubroutineType(types: !6728)
!6728 = !{!167, !4788}
!6729 = !{!6730}
!6730 = !DILocalVariable(name: "dev", arg: 1, scope: !6726, file: !4790, line: 374, type: !4788)
!6731 = !DILocation(line: 374, column: 57, scope: !6726)
!6732 = !DILocation(line: 376, column: 26, scope: !6726)
!6733 = !DILocation(line: 376, column: 31, scope: !6726)
!6734 = !DILocation(line: 376, column: 9, scope: !6726)
!6735 = !DILocation(line: 376, column: 2, scope: !6726)
!6736 = distinct !DISubprogram(name: "virtinput_send_status", scope: !3, file: !3, line: 60, type: !6737, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6739)
!6737 = !DISubroutineType(types: !6738)
!6738 = !{!103, !4783, !241, !241, !1416}
!6739 = !{!6740, !6741, !6742, !6743, !6744, !6745, !6746, !6747, !6748, !6752}
!6740 = !DILocalVariable(name: "vi", arg: 1, scope: !6736, file: !3, line: 60, type: !4783)
!6741 = !DILocalVariable(name: "type", arg: 2, scope: !6736, file: !3, line: 61, type: !241)
!6742 = !DILocalVariable(name: "code", arg: 3, scope: !6736, file: !3, line: 61, type: !241)
!6743 = !DILocalVariable(name: "value", arg: 4, scope: !6736, file: !3, line: 61, type: !1416)
!6744 = !DILocalVariable(name: "stsbuf", scope: !6736, file: !3, line: 63, type: !6400)
!6745 = !DILocalVariable(name: "sg", scope: !6736, file: !3, line: 64, type: !6550)
!6746 = !DILocalVariable(name: "flags", scope: !6736, file: !3, line: 65, type: !323)
!6747 = !DILocalVariable(name: "rc", scope: !6736, file: !3, line: 66, type: !103)
!6748 = !DILocalVariable(name: "__dummy", scope: !6749, file: !3, line: 92, type: !323)
!6749 = distinct !DILexicalBlock(scope: !6750, file: !3, line: 92, column: 2)
!6750 = distinct !DILexicalBlock(scope: !6751, file: !3, line: 92, column: 2)
!6751 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 92, column: 2)
!6752 = !DILocalVariable(name: "__dummy2", scope: !6749, file: !3, line: 92, type: !323)
!6753 = !DILocation(line: 60, column: 55, scope: !6736)
!6754 = !DILocation(line: 61, column: 10, scope: !6736)
!6755 = !DILocation(line: 61, column: 20, scope: !6736)
!6756 = !DILocation(line: 61, column: 30, scope: !6736)
!6757 = !DILocation(line: 63, column: 2, scope: !6736)
!6758 = !DILocation(line: 63, column: 29, scope: !6736)
!6759 = !DILocation(line: 64, column: 2, scope: !6736)
!6760 = !DILocation(line: 64, column: 21, scope: !6736)
!6761 = !DILocation(line: 65, column: 2, scope: !6736)
!6762 = !DILocation(line: 65, column: 16, scope: !6736)
!6763 = !DILocation(line: 66, column: 2, scope: !6736)
!6764 = !DILocation(line: 66, column: 6, scope: !6736)
!6765 = !DILocation(line: 80, column: 6, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 80, column: 6)
!6767 = !DILocation(line: 80, column: 10, scope: !6766)
!6768 = !DILocation(line: 80, column: 16, scope: !6766)
!6769 = !DILocation(line: 80, column: 19, scope: !6766)
!6770 = !DILocation(line: 80, column: 22, scope: !6766)
!6771 = !DILocation(line: 80, column: 27, scope: !6766)
!6772 = !DILocation(line: 80, column: 37, scope: !6766)
!6773 = !DILocation(line: 80, column: 40, scope: !6766)
!6774 = !DILocation(line: 80, column: 45, scope: !6766)
!6775 = !DILocation(line: 80, column: 6, scope: !6736)
!6776 = !DILocation(line: 81, column: 3, scope: !6766)
!6777 = !DILocation(line: 83, column: 11, scope: !6736)
!6778 = !DILocation(line: 83, column: 9, scope: !6736)
!6779 = !DILocation(line: 84, column: 7, scope: !6780)
!6780 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 84, column: 6)
!6781 = !DILocation(line: 84, column: 6, scope: !6736)
!6782 = !DILocation(line: 85, column: 3, scope: !6780)
!6783 = !DILocation(line: 87, column: 18, scope: !6736)
!6784 = !DILocation(line: 87, column: 2, scope: !6736)
!6785 = !DILocation(line: 87, column: 10, scope: !6736)
!6786 = !DILocation(line: 87, column: 16, scope: !6736)
!6787 = !DILocation(line: 88, column: 18, scope: !6736)
!6788 = !DILocation(line: 88, column: 2, scope: !6736)
!6789 = !DILocation(line: 88, column: 10, scope: !6736)
!6790 = !DILocation(line: 88, column: 16, scope: !6736)
!6791 = !DILocation(line: 89, column: 18, scope: !6736)
!6792 = !DILocation(line: 89, column: 2, scope: !6736)
!6793 = !DILocation(line: 89, column: 10, scope: !6736)
!6794 = !DILocation(line: 89, column: 16, scope: !6736)
!6795 = !DILocation(line: 90, column: 14, scope: !6736)
!6796 = !DILocation(line: 90, column: 18, scope: !6736)
!6797 = !DILocation(line: 90, column: 2, scope: !6736)
!6798 = !DILocation(line: 92, column: 2, scope: !6736)
!6799 = !DILocation(line: 92, column: 2, scope: !6751)
!6800 = !DILocation(line: 92, column: 2, scope: !6749)
!6801 = !DILocation(line: 92, column: 2, scope: !6750)
!6802 = !DILocation(line: 93, column: 6, scope: !6803)
!6803 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 93, column: 6)
!6804 = !DILocation(line: 93, column: 10, scope: !6803)
!6805 = !DILocation(line: 93, column: 6, scope: !6736)
!6806 = !DILocation(line: 94, column: 29, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6803, file: !3, line: 93, column: 17)
!6808 = !DILocation(line: 94, column: 33, scope: !6807)
!6809 = !DILocation(line: 94, column: 38, scope: !6807)
!6810 = !DILocation(line: 94, column: 45, scope: !6807)
!6811 = !DILocation(line: 94, column: 8, scope: !6807)
!6812 = !DILocation(line: 94, column: 6, scope: !6807)
!6813 = !DILocation(line: 95, column: 18, scope: !6807)
!6814 = !DILocation(line: 95, column: 22, scope: !6807)
!6815 = !DILocation(line: 95, column: 3, scope: !6807)
!6816 = !DILocation(line: 96, column: 2, scope: !6807)
!6817 = !DILocation(line: 97, column: 6, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6803, file: !3, line: 96, column: 9)
!6819 = !DILocation(line: 99, column: 26, scope: !6736)
!6820 = !DILocation(line: 99, column: 30, scope: !6736)
!6821 = !DILocation(line: 99, column: 36, scope: !6736)
!6822 = !DILocation(line: 99, column: 2, scope: !6736)
!6823 = !DILocation(line: 101, column: 6, scope: !6824)
!6824 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 101, column: 6)
!6825 = !DILocation(line: 101, column: 9, scope: !6824)
!6826 = !DILocation(line: 101, column: 6, scope: !6736)
!6827 = !DILocation(line: 102, column: 9, scope: !6824)
!6828 = !DILocation(line: 102, column: 3, scope: !6824)
!6829 = !DILocation(line: 103, column: 9, scope: !6736)
!6830 = !DILocation(line: 103, column: 2, scope: !6736)
!6831 = !DILocation(line: 104, column: 1, scope: !6736)
!6832 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !88, file: !88, line: 916, type: !6833, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6835)
!6833 = !DISubroutineType(types: !6834)
!6834 = !{!167, !4192}
!6835 = !{!6836}
!6836 = !DILocalVariable(name: "dev", arg: 1, scope: !6832, file: !88, line: 916, type: !4192)
!6837 = !DILocation(line: 916, column: 58, scope: !6832)
!6838 = !DILocation(line: 918, column: 9, scope: !6832)
!6839 = !DILocation(line: 918, column: 14, scope: !6832)
!6840 = !DILocation(line: 918, column: 2, scope: !6832)
!6841 = !DISubprogram(name: "virtqueue_add_outbuf", scope: !4151, file: !4151, line: 42, type: !6582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6842 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6676, file: !6676, line: 66, type: !6677, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6843)
!6843 = !{!6844, !6845}
!6844 = !DILocalVariable(name: "v", arg: 1, scope: !6842, file: !6676, line: 66, type: !6679)
!6845 = !DILocalVariable(name: "size", arg: 2, scope: !6842, file: !6676, line: 66, type: !320)
!6846 = !DILocation(line: 66, column: 73, scope: !6842)
!6847 = !DILocation(line: 66, column: 83, scope: !6842)
!6848 = !DILocation(line: 68, column: 19, scope: !6842)
!6849 = !DILocation(line: 68, column: 22, scope: !6842)
!6850 = !DILocation(line: 68, column: 2, scope: !6842)
!6851 = !DILocation(line: 69, column: 2, scope: !6842)
!6852 = !DILocation(line: 70, column: 1, scope: !6842)
!6853 = distinct !DISubprogram(name: "arch_test_bit", scope: !6693, file: !6693, line: 237, type: !5882, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6854)
!6854 = !{!6855, !6856}
!6855 = !DILocalVariable(name: "nr", arg: 1, scope: !6853, file: !6693, line: 237, type: !323)
!6856 = !DILocalVariable(name: "addr", arg: 2, scope: !6853, file: !6693, line: 237, type: !5884)
!6857 = !DILocation(line: 237, column: 29, scope: !6853)
!6858 = !DILocation(line: 237, column: 63, scope: !6853)
!6859 = !DILocation(line: 239, column: 30, scope: !6853)
!6860 = !DILocation(line: 239, column: 9, scope: !6853)
!6861 = !DILocation(line: 239, column: 54, scope: !6853)
!6862 = !DILocation(line: 239, column: 58, scope: !6853)
!6863 = !DILocation(line: 239, column: 36, scope: !6853)
!6864 = !DILocation(line: 240, column: 26, scope: !6853)
!6865 = !DILocation(line: 240, column: 30, scope: !6853)
!6866 = !DILocation(line: 240, column: 8, scope: !6853)
!6867 = !DILocation(line: 239, column: 2, scope: !6853)
!6868 = distinct !DISubprogram(name: "kasan_check_read", scope: !6705, file: !6705, line: 40, type: !6706, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6869)
!6869 = !{!6870, !6871}
!6870 = !DILocalVariable(name: "p", arg: 1, scope: !6868, file: !6705, line: 40, type: !6679)
!6871 = !DILocalVariable(name: "size", arg: 2, scope: !6868, file: !6705, line: 40, type: !7)
!6872 = !DILocation(line: 40, column: 58, scope: !6868)
!6873 = !DILocation(line: 40, column: 74, scope: !6868)
!6874 = !DILocation(line: 42, column: 2, scope: !6868)
!6875 = distinct !DISubprogram(name: "constant_test_bit", scope: !6693, file: !6693, line: 204, type: !6876, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6878)
!6876 = !DISubroutineType(types: !6877)
!6877 = !{!1473, !309, !5884}
!6878 = !{!6879, !6880}
!6879 = !DILocalVariable(name: "nr", arg: 1, scope: !6875, file: !6693, line: 204, type: !309)
!6880 = !DILocalVariable(name: "addr", arg: 2, scope: !6875, file: !6693, line: 204, type: !5884)
!6881 = !DILocation(line: 204, column: 52, scope: !6875)
!6882 = !DILocation(line: 204, column: 86, scope: !6875)
!6883 = !DILocation(line: 206, column: 19, scope: !6875)
!6884 = !DILocation(line: 206, column: 22, scope: !6875)
!6885 = !DILocation(line: 206, column: 15, scope: !6875)
!6886 = !DILocation(line: 207, column: 4, scope: !6875)
!6887 = !DILocation(line: 207, column: 9, scope: !6875)
!6888 = !DILocation(line: 207, column: 12, scope: !6875)
!6889 = !DILocation(line: 206, column: 44, scope: !6875)
!6890 = !DILocation(line: 207, column: 37, scope: !6875)
!6891 = !DILocation(line: 206, column: 2, scope: !6875)
!6892 = distinct !DISubprogram(name: "variable_test_bit", scope: !6693, file: !6693, line: 224, type: !6876, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6893)
!6893 = !{!6894, !6895, !6896}
!6894 = !DILocalVariable(name: "nr", arg: 1, scope: !6892, file: !6693, line: 224, type: !309)
!6895 = !DILocalVariable(name: "addr", arg: 2, scope: !6892, file: !6693, line: 224, type: !5884)
!6896 = !DILocalVariable(name: "oldbit", scope: !6892, file: !6693, line: 226, type: !1473)
!6897 = !DILocation(line: 224, column: 52, scope: !6892)
!6898 = !DILocation(line: 224, column: 86, scope: !6892)
!6899 = !DILocation(line: 226, column: 2, scope: !6892)
!6900 = !DILocation(line: 226, column: 7, scope: !6892)
!6901 = !DILocation(line: 231, column: 33, scope: !6892)
!6902 = !DILocation(line: 231, column: 46, scope: !6892)
!6903 = !DILocation(line: 228, column: 2, scope: !6892)
!6904 = !{i64 2148351819, i64 2148351893}
!6905 = !DILocation(line: 233, column: 9, scope: !6892)
!6906 = !DILocation(line: 234, column: 1, scope: !6892)
!6907 = !DILocation(line: 233, column: 2, scope: !6892)
!6908 = !DISubprogram(name: "input_set_abs_params", scope: !4790, file: !4790, line: 476, type: !6909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6909 = !DISubroutineType(types: !6910)
!6910 = !{null, !4788, !7, !103, !103, !103, !103}
!6911 = distinct !DISubprogram(name: "input_abs_set_res", scope: !4790, file: !4790, line: 501, type: !6912, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6914)
!6912 = !DISubroutineType(types: !6913)
!6913 = !{null, !4788, !7, !103}
!6914 = !{!6915, !6916, !6917}
!6915 = !DILocalVariable(name: "dev", arg: 1, scope: !6911, file: !4790, line: 501, type: !4788)
!6916 = !DILocalVariable(name: "axis", arg: 2, scope: !6911, file: !4790, line: 501, type: !7)
!6917 = !DILocalVariable(name: "val", arg: 3, scope: !6911, file: !4790, line: 501, type: !103)
!6918 = !DILocation(line: 501, column: 1, scope: !6911)
!6919 = !DILocation(line: 501, column: 1, scope: !6920)
!6920 = distinct !DILexicalBlock(scope: !6911, file: !4790, line: 501, column: 1)
!6921 = !DISubprogram(name: "input_alloc_absinfo", scope: !4790, file: !4790, line: 475, type: !4981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6922 = !DISubprogram(name: "virtqueue_get_vring_size", scope: !4151, file: !4151, line: 92, type: !6923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6923 = !DISubroutineType(types: !6924)
!6924 = !{!7, !6925}
!6925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6926, size: 64)
!6926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4682)
!6927 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6117, file: !6117, line: 43, type: !6928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6928 = !DISubroutineType(types: !6929)
!6929 = !{null, !5609, !323}
!6930 = !DISubprogram(name: "input_unregister_device", scope: !4790, file: !4790, line: 385, type: !4981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6931 = !DISubprogram(name: "virtio_reset_device", scope: !4151, file: !4151, line: 156, type: !4674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6932 = !DISubprogram(name: "virtqueue_detach_unused_buf", scope: !4151, file: !4151, line: 90, type: !6933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6933 = !DISubroutineType(types: !6934)
!6934 = !{!167, !4681}
