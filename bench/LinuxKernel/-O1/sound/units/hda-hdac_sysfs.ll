; ModuleID = 'sound/hda/hdac_sysfs.c'
source_filename = "sound/hda/hdac_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.widget_attribute = type { %struct.attribute, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hdac_widget_tree = type { ptr, ptr, ptr }

@hdac_dev_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hdac_dev_attrs, ptr null }, align 8, !dbg !0
@hdac_dev_attr_groups = hidden global [2 x ptr] [ptr @hdac_dev_attr_group, ptr null], align 16, !dbg !4976
@widget_node_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @widget_node_attrs, ptr null }, align 8, !dbg !5092
@hdac_dev_attrs = internal global [10 x ptr] [ptr @dev_attr_type, ptr @dev_attr_vendor_id, ptr @dev_attr_subsystem_id, ptr @dev_attr_revision_id, ptr @dev_attr_afg, ptr @dev_attr_mfg, ptr @dev_attr_vendor_name, ptr @dev_attr_chip_name, ptr @dev_attr_modalias, ptr null], align 16, !dbg !4979
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @type_show, ptr null }, align 8, !dbg !4989
@dev_attr_vendor_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @vendor_id_show, ptr null }, align 8, !dbg !5008
@dev_attr_subsystem_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @subsystem_id_show, ptr null }, align 8, !dbg !5015
@dev_attr_revision_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @revision_id_show, ptr null }, align 8, !dbg !5020
@dev_attr_afg = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @afg_show, ptr null }, align 8, !dbg !5025
@dev_attr_mfg = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @mfg_show, ptr null }, align 8, !dbg !5029
@dev_attr_vendor_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @vendor_name_show, ptr null }, align 8, !dbg !5033
@dev_attr_chip_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @chip_name_show, ptr null }, align 8, !dbg !5042
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @modalias_show, ptr null }, align 8, !dbg !5049
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !4984
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1, !dbg !5003
@.str.2 = private unnamed_addr constant [10 x i8] c"vendor_id\00", align 1, !dbg !5005
@.str.3 = private unnamed_addr constant [13 x i8] c"subsystem_id\00", align 1, !dbg !5010
@.str.4 = private unnamed_addr constant [12 x i8] c"revision_id\00", align 1, !dbg !5017
@.str.5 = private unnamed_addr constant [4 x i8] c"afg\00", align 1, !dbg !5022
@.str.6 = private unnamed_addr constant [4 x i8] c"mfg\00", align 1, !dbg !5027
@.str.7 = private unnamed_addr constant [12 x i8] c"vendor_name\00", align 1, !dbg !5031
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !5035
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !5037
@.str.10 = private unnamed_addr constant [10 x i8] c"chip_name\00", align 1, !dbg !5040
@.str.11 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1, !dbg !5044
@.str.12 = private unnamed_addr constant [8 x i8] c"widgets\00", align 1, !dbg !5051
@widget_afg_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @widget_afg_attrs, ptr null }, align 8, !dbg !5058
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.13 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5053
@widget_afg_attrs = internal global [7 x ptr] [ptr @wid_attr_pcm_caps, ptr @wid_attr_pcm_formats, ptr @wid_attr_amp_in_caps, ptr @wid_attr_amp_out_caps, ptr @wid_attr_power_caps, ptr @wid_attr_gpio_caps, ptr null], align 16, !dbg !5060
@wid_attr_pcm_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @pcm_caps_show, ptr null }, align 8, !dbg !5065
@wid_attr_pcm_formats = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @pcm_formats_show, ptr null }, align 8, !dbg !5071
@wid_attr_amp_in_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @amp_in_caps_show, ptr null }, align 8, !dbg !5075
@wid_attr_amp_out_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @amp_out_caps_show, ptr null }, align 8, !dbg !5079
@wid_attr_power_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @power_caps_show, ptr null }, align 8, !dbg !5086
@wid_attr_gpio_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @gpio_caps_show, ptr null }, align 8, !dbg !5090
@.str.14 = private unnamed_addr constant [9 x i8] c"pcm_caps\00", align 1, !dbg !5063
@.str.15 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1, !dbg !5067
@.str.16 = private unnamed_addr constant [12 x i8] c"pcm_formats\00", align 1, !dbg !5069
@.str.17 = private unnamed_addr constant [12 x i8] c"amp_in_caps\00", align 1, !dbg !5073
@.str.18 = private unnamed_addr constant [13 x i8] c"amp_out_caps\00", align 1, !dbg !5077
@.str.19 = private unnamed_addr constant [11 x i8] c"power_caps\00", align 1, !dbg !5081
@.str.20 = private unnamed_addr constant [10 x i8] c"gpio_caps\00", align 1, !dbg !5088
@widget_node_attrs = internal global [10 x ptr] [ptr @wid_attr_caps, ptr @wid_attr_pin_caps, ptr @wid_attr_pin_cfg, ptr @wid_attr_pcm_caps, ptr @wid_attr_pcm_formats, ptr @wid_attr_amp_in_caps, ptr @wid_attr_amp_out_caps, ptr @wid_attr_power_caps, ptr @wid_attr_connections, ptr null], align 16, !dbg !5094
@wid_attr_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @caps_show, ptr null }, align 8, !dbg !5098
@wid_attr_pin_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @pin_caps_show, ptr null }, align 8, !dbg !5102
@wid_attr_pin_cfg = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @pin_cfg_show, ptr null }, align 8, !dbg !5106
@wid_attr_connections = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @connections_show, ptr null }, align 8, !dbg !5110
@.str.21 = private unnamed_addr constant [5 x i8] c"caps\00", align 1, !dbg !5096
@.str.22 = private unnamed_addr constant [9 x i8] c"pin_caps\00", align 1, !dbg !5100
@.str.23 = private unnamed_addr constant [8 x i8] c"pin_cfg\00", align 1, !dbg !5104
@.str.24 = private unnamed_addr constant [12 x i8] c"connections\00", align 1, !dbg !5108
@.str.25 = private unnamed_addr constant [9 x i8] c"%s0x%02x\00", align 1, !dbg !5112
@.str.26 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !5114
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !5117
@widget_ktype = internal constant %struct.kobj_type { ptr @widget_release, ptr @widget_sysfs_ops, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5121
@.str.28 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1, !dbg !5119
@widget_sysfs_ops = internal constant %struct.sysfs_ops { ptr @widget_attr_show, ptr @widget_attr_store }, align 8, !dbg !5123

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hda_widget_sysfs_init(ptr noundef %codec) #0 align 16 !dbg !5134 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5136, metadata !DIExpression()), !dbg !5138
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5139
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5137, metadata !DIExpression()), !dbg !5140
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5141
  %widgets = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 22, !dbg !5143
  %1 = load ptr, ptr %widgets, align 8, !dbg !5143
  %tobool = icmp ne ptr %1, null, !dbg !5141
  br i1 %tobool, label %if.then, label %if.end, !dbg !5144

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5145

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %codec.addr, align 8, !dbg !5146
  %call = call i32 @widget_tree_create(ptr noundef %2) #16, !dbg !5147
  store i32 %call, ptr %err, align 4, !dbg !5148
  %3 = load i32, ptr %err, align 4, !dbg !5149
  %cmp = icmp slt i32 %3, 0, !dbg !5151
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5152

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %codec.addr, align 8, !dbg !5153
  call void @widget_tree_free(ptr noundef %4) #16, !dbg !5155
  %5 = load i32, ptr %err, align 4, !dbg !5156
  store i32 %5, ptr %retval, align 4, !dbg !5157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5157

if.end2:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5158

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5159
  %6 = load i32, ptr %retval, align 4, !dbg !5159
  ret i32 %6, !dbg !5159
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @widget_tree_create(ptr noundef %codec) #0 align 16 !dbg !5160 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %tree = alloca ptr, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %nid = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5162, metadata !DIExpression()), !dbg !5167
  call void @llvm.lifetime.start.p0(i64 8, ptr %tree) #15, !dbg !5168
  call void @llvm.dbg.declare(metadata ptr %tree, metadata !5163, metadata !DIExpression()), !dbg !5169
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5164, metadata !DIExpression()), !dbg !5171
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5165, metadata !DIExpression()), !dbg !5172
  call void @llvm.lifetime.start.p0(i64 2, ptr %nid) #15, !dbg !5173
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !5166, metadata !DIExpression()), !dbg !5174
  %call = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #17, !dbg !5175
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5176
  %widgets = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 22, !dbg !5177
  store ptr %call, ptr %widgets, align 8, !dbg !5178
  store ptr %call, ptr %tree, align 8, !dbg !5179
  %1 = load ptr, ptr %tree, align 8, !dbg !5180
  %tobool = icmp ne ptr %1, null, !dbg !5180
  br i1 %tobool, label %if.end, label %if.then, !dbg !5182

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5183

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %codec.addr, align 8, !dbg !5184
  %dev = getelementptr inbounds %struct.hdac_device, ptr %2, i32 0, i32 0, !dbg !5185
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !5186
  %call1 = call ptr @kobject_create_and_add(ptr noundef @.str.12, ptr noundef %kobj) #16, !dbg !5187
  %3 = load ptr, ptr %tree, align 8, !dbg !5188
  %root = getelementptr inbounds %struct.hdac_widget_tree, ptr %3, i32 0, i32 0, !dbg !5189
  store ptr %call1, ptr %root, align 8, !dbg !5190
  %4 = load ptr, ptr %tree, align 8, !dbg !5191
  %root2 = getelementptr inbounds %struct.hdac_widget_tree, ptr %4, i32 0, i32 0, !dbg !5193
  %5 = load ptr, ptr %root2, align 8, !dbg !5193
  %tobool3 = icmp ne ptr %5, null, !dbg !5191
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5194

if.then4:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5195

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %codec.addr, align 8, !dbg !5196
  %num_nodes = getelementptr inbounds %struct.hdac_device, ptr %6, i32 0, i32 17, !dbg !5197
  %7 = load i32, ptr %num_nodes, align 8, !dbg !5197
  %add = add i32 %7, 1, !dbg !5198
  %conv = zext i32 %add to i64, !dbg !5196
  %call6 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #18, !dbg !5199
  %8 = load ptr, ptr %tree, align 8, !dbg !5200
  %nodes = getelementptr inbounds %struct.hdac_widget_tree, ptr %8, i32 0, i32 2, !dbg !5201
  store ptr %call6, ptr %nodes, align 8, !dbg !5202
  %9 = load ptr, ptr %tree, align 8, !dbg !5203
  %nodes7 = getelementptr inbounds %struct.hdac_widget_tree, ptr %9, i32 0, i32 2, !dbg !5205
  %10 = load ptr, ptr %nodes7, align 8, !dbg !5205
  %tobool8 = icmp ne ptr %10, null, !dbg !5203
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5206

if.then9:                                         ; preds = %if.end5
  store i32 -12, ptr %retval, align 4, !dbg !5207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5207

if.end10:                                         ; preds = %if.end5
  store i32 0, ptr %i, align 4, !dbg !5208
  %11 = load ptr, ptr %codec.addr, align 8, !dbg !5210
  %start_nid = getelementptr inbounds %struct.hdac_device, ptr %11, i32 0, i32 18, !dbg !5211
  %12 = load i16, ptr %start_nid, align 4, !dbg !5211
  store i16 %12, ptr %nid, align 2, !dbg !5212
  br label %for.cond, !dbg !5213

for.cond:                                         ; preds = %for.inc, %if.end10
  %13 = load i32, ptr %i, align 4, !dbg !5214
  %14 = load ptr, ptr %codec.addr, align 8, !dbg !5216
  %num_nodes11 = getelementptr inbounds %struct.hdac_device, ptr %14, i32 0, i32 17, !dbg !5217
  %15 = load i32, ptr %num_nodes11, align 8, !dbg !5217
  %cmp = icmp ult i32 %13, %15, !dbg !5218
  br i1 %cmp, label %for.body, label %for.end, !dbg !5219

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %tree, align 8, !dbg !5220
  %root13 = getelementptr inbounds %struct.hdac_widget_tree, ptr %16, i32 0, i32 0, !dbg !5222
  %17 = load ptr, ptr %root13, align 8, !dbg !5222
  %18 = load i16, ptr %nid, align 2, !dbg !5223
  %19 = load ptr, ptr %tree, align 8, !dbg !5224
  %nodes14 = getelementptr inbounds %struct.hdac_widget_tree, ptr %19, i32 0, i32 2, !dbg !5225
  %20 = load ptr, ptr %nodes14, align 8, !dbg !5225
  %21 = load i32, ptr %i, align 4, !dbg !5226
  %idxprom = sext i32 %21 to i64, !dbg !5224
  %arrayidx = getelementptr ptr, ptr %20, i64 %idxprom, !dbg !5224
  %call15 = call i32 @add_widget_node(ptr noundef %17, i16 noundef zeroext %18, ptr noundef @widget_node_group, ptr noundef %arrayidx) #16, !dbg !5227
  store i32 %call15, ptr %err, align 4, !dbg !5228
  %22 = load i32, ptr %err, align 4, !dbg !5229
  %cmp16 = icmp slt i32 %22, 0, !dbg !5231
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5232

if.then18:                                        ; preds = %for.body
  %23 = load i32, ptr %err, align 4, !dbg !5233
  store i32 %23, ptr %retval, align 4, !dbg !5234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5234

if.end19:                                         ; preds = %for.body
  br label %for.inc, !dbg !5235

for.inc:                                          ; preds = %if.end19
  %24 = load i32, ptr %i, align 4, !dbg !5236
  %inc = add i32 %24, 1, !dbg !5236
  store i32 %inc, ptr %i, align 4, !dbg !5236
  %25 = load i16, ptr %nid, align 2, !dbg !5237
  %inc20 = add i16 %25, 1, !dbg !5237
  store i16 %inc20, ptr %nid, align 2, !dbg !5237
  br label %for.cond, !dbg !5238, !llvm.loop !5239

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %codec.addr, align 8, !dbg !5243
  %afg = getelementptr inbounds %struct.hdac_device, ptr %26, i32 0, i32 5, !dbg !5245
  %27 = load i16, ptr %afg, align 8, !dbg !5245
  %tobool21 = icmp ne i16 %27, 0, !dbg !5243
  br i1 %tobool21, label %if.then22, label %if.end31, !dbg !5246

if.then22:                                        ; preds = %for.end
  %28 = load ptr, ptr %tree, align 8, !dbg !5247
  %root23 = getelementptr inbounds %struct.hdac_widget_tree, ptr %28, i32 0, i32 0, !dbg !5249
  %29 = load ptr, ptr %root23, align 8, !dbg !5249
  %30 = load ptr, ptr %codec.addr, align 8, !dbg !5250
  %afg24 = getelementptr inbounds %struct.hdac_device, ptr %30, i32 0, i32 5, !dbg !5251
  %31 = load i16, ptr %afg24, align 8, !dbg !5251
  %32 = load ptr, ptr %tree, align 8, !dbg !5252
  %afg25 = getelementptr inbounds %struct.hdac_widget_tree, ptr %32, i32 0, i32 1, !dbg !5253
  %call26 = call i32 @add_widget_node(ptr noundef %29, i16 noundef zeroext %31, ptr noundef @widget_afg_group, ptr noundef %afg25) #16, !dbg !5254
  store i32 %call26, ptr %err, align 4, !dbg !5255
  %33 = load i32, ptr %err, align 4, !dbg !5256
  %cmp27 = icmp slt i32 %33, 0, !dbg !5258
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !5259

if.then29:                                        ; preds = %if.then22
  %34 = load i32, ptr %err, align 4, !dbg !5260
  store i32 %34, ptr %retval, align 4, !dbg !5261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5261

if.end30:                                         ; preds = %if.then22
  br label %if.end31, !dbg !5262

if.end31:                                         ; preds = %if.end30, %for.end
  %35 = load ptr, ptr %tree, align 8, !dbg !5263
  %root32 = getelementptr inbounds %struct.hdac_widget_tree, ptr %35, i32 0, i32 0, !dbg !5264
  %36 = load ptr, ptr %root32, align 8, !dbg !5264
  %call33 = call i32 @kobject_uevent(ptr noundef %36, i32 noundef 2) #16, !dbg !5265
  store i32 0, ptr %retval, align 4, !dbg !5266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5266

cleanup:                                          ; preds = %if.end31, %if.then29, %if.then18, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %nid) #15, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 8, ptr %tree) #15, !dbg !5267
  %37 = load i32, ptr %retval, align 4, !dbg !5267
  ret i32 %37, !dbg !5267
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @widget_tree_free(ptr noundef %codec) #0 align 16 !dbg !5268 {
entry:
  %codec.addr = alloca ptr, align 8
  %tree = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5272, metadata !DIExpression()), !dbg !5275
  call void @llvm.lifetime.start.p0(i64 8, ptr %tree) #15, !dbg !5276
  call void @llvm.dbg.declare(metadata ptr %tree, metadata !5273, metadata !DIExpression()), !dbg !5277
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5278
  %widgets = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 22, !dbg !5279
  %1 = load ptr, ptr %widgets, align 8, !dbg !5279
  store ptr %1, ptr %tree, align 8, !dbg !5277
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !5280
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5274, metadata !DIExpression()), !dbg !5281
  %2 = load ptr, ptr %tree, align 8, !dbg !5282
  %tobool = icmp ne ptr %2, null, !dbg !5282
  br i1 %tobool, label %if.end, label %if.then, !dbg !5284

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5285

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tree, align 8, !dbg !5286
  %afg = getelementptr inbounds %struct.hdac_widget_tree, ptr %3, i32 0, i32 1, !dbg !5287
  %4 = load ptr, ptr %afg, align 8, !dbg !5287
  call void @free_widget_node(ptr noundef %4, ptr noundef @widget_afg_group) #16, !dbg !5288
  %5 = load ptr, ptr %tree, align 8, !dbg !5289
  %nodes = getelementptr inbounds %struct.hdac_widget_tree, ptr %5, i32 0, i32 2, !dbg !5291
  %6 = load ptr, ptr %nodes, align 8, !dbg !5291
  %tobool1 = icmp ne ptr %6, null, !dbg !5289
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !5292

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %tree, align 8, !dbg !5293
  %nodes3 = getelementptr inbounds %struct.hdac_widget_tree, ptr %7, i32 0, i32 2, !dbg !5296
  %8 = load ptr, ptr %nodes3, align 8, !dbg !5296
  store ptr %8, ptr %p, align 8, !dbg !5297
  br label %for.cond, !dbg !5298

for.cond:                                         ; preds = %for.inc, %if.then2
  %9 = load ptr, ptr %p, align 8, !dbg !5299
  %10 = load ptr, ptr %9, align 8, !dbg !5301
  %tobool4 = icmp ne ptr %10, null, !dbg !5302
  br i1 %tobool4, label %for.body, label %for.end, !dbg !5302

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %p, align 8, !dbg !5303
  %12 = load ptr, ptr %11, align 8, !dbg !5304
  call void @free_widget_node(ptr noundef %12, ptr noundef @widget_node_group) #16, !dbg !5305
  br label %for.inc, !dbg !5305

for.inc:                                          ; preds = %for.body
  %13 = load ptr, ptr %p, align 8, !dbg !5306
  %incdec.ptr = getelementptr ptr, ptr %13, i32 1, !dbg !5306
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !5306
  br label %for.cond, !dbg !5307, !llvm.loop !5308

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %tree, align 8, !dbg !5310
  %nodes5 = getelementptr inbounds %struct.hdac_widget_tree, ptr %14, i32 0, i32 2, !dbg !5311
  %15 = load ptr, ptr %nodes5, align 8, !dbg !5311
  call void @kfree(ptr noundef %15) #16, !dbg !5312
  br label %if.end6, !dbg !5313

if.end6:                                          ; preds = %for.end, %if.end
  %16 = load ptr, ptr %tree, align 8, !dbg !5314
  %root = getelementptr inbounds %struct.hdac_widget_tree, ptr %16, i32 0, i32 0, !dbg !5315
  %17 = load ptr, ptr %root, align 8, !dbg !5315
  call void @kobject_put(ptr noundef %17) #16, !dbg !5316
  %18 = load ptr, ptr %tree, align 8, !dbg !5317
  call void @kfree(ptr noundef %18) #16, !dbg !5318
  %19 = load ptr, ptr %codec.addr, align 8, !dbg !5319
  %widgets7 = getelementptr inbounds %struct.hdac_device, ptr %19, i32 0, i32 22, !dbg !5320
  store ptr null, ptr %widgets7, align 8, !dbg !5321
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5322
  br label %cleanup, !dbg !5322

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !5322
  call void @llvm.lifetime.end.p0(i64 8, ptr %tree) #15, !dbg !5322
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5322

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @hda_widget_sysfs_exit(ptr noundef %codec) #0 align 16 !dbg !5323 {
entry:
  %codec.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5327
  call void @widget_tree_free(ptr noundef %0) #16, !dbg !5328
  ret void, !dbg !5329
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hda_widget_sysfs_reinit(ptr noundef %codec, i16 noundef zeroext %start_nid, i32 noundef %num_nodes) #0 align 16 !dbg !5330 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %start_nid.addr = alloca i16, align 2
  %num_nodes.addr = alloca i32, align 4
  %tree = alloca ptr, align 8
  %end_nid = alloca i16, align 2
  %nid = alloca i16, align 2
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5334, metadata !DIExpression()), !dbg !5341
  store i16 %start_nid, ptr %start_nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %start_nid.addr, metadata !5335, metadata !DIExpression()), !dbg !5342
  store i32 %num_nodes, ptr %num_nodes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_nodes.addr, metadata !5336, metadata !DIExpression()), !dbg !5343
  call void @llvm.lifetime.start.p0(i64 8, ptr %tree) #15, !dbg !5344
  call void @llvm.dbg.declare(metadata ptr %tree, metadata !5337, metadata !DIExpression()), !dbg !5345
  call void @llvm.lifetime.start.p0(i64 2, ptr %end_nid) #15, !dbg !5346
  call void @llvm.dbg.declare(metadata ptr %end_nid, metadata !5338, metadata !DIExpression()), !dbg !5347
  %0 = load i16, ptr %start_nid.addr, align 2, !dbg !5348
  %conv = zext i16 %0 to i32, !dbg !5348
  %1 = load i32, ptr %num_nodes.addr, align 4, !dbg !5349
  %add = add i32 %conv, %1, !dbg !5350
  %conv1 = trunc i32 %add to i16, !dbg !5348
  store i16 %conv1, ptr %end_nid, align 2, !dbg !5347
  call void @llvm.lifetime.start.p0(i64 2, ptr %nid) #15, !dbg !5351
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !5339, metadata !DIExpression()), !dbg !5352
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5353
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5340, metadata !DIExpression()), !dbg !5354
  %2 = load ptr, ptr %codec.addr, align 8, !dbg !5355
  %widgets = getelementptr inbounds %struct.hdac_device, ptr %2, i32 0, i32 22, !dbg !5357
  %3 = load ptr, ptr %widgets, align 8, !dbg !5357
  %tobool = icmp ne ptr %3, null, !dbg !5355
  br i1 %tobool, label %if.end, label %if.then, !dbg !5358

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5359

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %codec.addr, align 8, !dbg !5360
  %widgets2 = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 22, !dbg !5361
  %5 = load ptr, ptr %widgets2, align 8, !dbg !5361
  %call = call ptr @kmemdup(ptr noundef %5, i64 noundef 24, i32 noundef 3264) #19, !dbg !5362
  store ptr %call, ptr %tree, align 8, !dbg !5363
  %6 = load ptr, ptr %tree, align 8, !dbg !5364
  %tobool3 = icmp ne ptr %6, null, !dbg !5364
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5366

if.then4:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5367

if.end5:                                          ; preds = %if.end
  %7 = load i32, ptr %num_nodes.addr, align 4, !dbg !5368
  %add6 = add i32 %7, 1, !dbg !5369
  %conv7 = sext i32 %add6 to i64, !dbg !5368
  %call8 = call noalias ptr @kcalloc(i64 noundef %conv7, i64 noundef 8, i32 noundef 3264) #18, !dbg !5370
  %8 = load ptr, ptr %tree, align 8, !dbg !5371
  %nodes = getelementptr inbounds %struct.hdac_widget_tree, ptr %8, i32 0, i32 2, !dbg !5372
  store ptr %call8, ptr %nodes, align 8, !dbg !5373
  %9 = load ptr, ptr %tree, align 8, !dbg !5374
  %nodes9 = getelementptr inbounds %struct.hdac_widget_tree, ptr %9, i32 0, i32 2, !dbg !5376
  %10 = load ptr, ptr %nodes9, align 8, !dbg !5376
  %tobool10 = icmp ne ptr %10, null, !dbg !5374
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5377

if.then11:                                        ; preds = %if.end5
  %11 = load ptr, ptr %tree, align 8, !dbg !5378
  call void @kfree(ptr noundef %11) #16, !dbg !5380
  store i32 -12, ptr %retval, align 4, !dbg !5381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5381

if.end12:                                         ; preds = %if.end5
  store i32 0, ptr %i, align 4, !dbg !5382
  %12 = load ptr, ptr %codec.addr, align 8, !dbg !5384
  %start_nid13 = getelementptr inbounds %struct.hdac_device, ptr %12, i32 0, i32 18, !dbg !5385
  %13 = load i16, ptr %start_nid13, align 4, !dbg !5385
  store i16 %13, ptr %nid, align 2, !dbg !5386
  br label %for.cond, !dbg !5387

for.cond:                                         ; preds = %for.inc, %if.end12
  %14 = load i32, ptr %i, align 4, !dbg !5388
  %15 = load ptr, ptr %codec.addr, align 8, !dbg !5390
  %num_nodes14 = getelementptr inbounds %struct.hdac_device, ptr %15, i32 0, i32 17, !dbg !5391
  %16 = load i32, ptr %num_nodes14, align 8, !dbg !5391
  %cmp = icmp ult i32 %14, %16, !dbg !5392
  br i1 %cmp, label %for.body, label %for.end, !dbg !5393

for.body:                                         ; preds = %for.cond
  %17 = load i16, ptr %nid, align 2, !dbg !5394
  %conv16 = zext i16 %17 to i32, !dbg !5394
  %18 = load i16, ptr %start_nid.addr, align 2, !dbg !5397
  %conv17 = zext i16 %18 to i32, !dbg !5397
  %cmp18 = icmp slt i32 %conv16, %conv17, !dbg !5398
  br i1 %cmp18, label %if.then24, label %lor.lhs.false, !dbg !5399

lor.lhs.false:                                    ; preds = %for.body
  %19 = load i16, ptr %nid, align 2, !dbg !5400
  %conv20 = zext i16 %19 to i32, !dbg !5400
  %20 = load i16, ptr %end_nid, align 2, !dbg !5401
  %conv21 = zext i16 %20 to i32, !dbg !5401
  %cmp22 = icmp sge i32 %conv20, %conv21, !dbg !5402
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !5403

if.then24:                                        ; preds = %lor.lhs.false, %for.body
  %21 = load ptr, ptr %codec.addr, align 8, !dbg !5404
  %widgets25 = getelementptr inbounds %struct.hdac_device, ptr %21, i32 0, i32 22, !dbg !5405
  %22 = load ptr, ptr %widgets25, align 8, !dbg !5405
  %nodes26 = getelementptr inbounds %struct.hdac_widget_tree, ptr %22, i32 0, i32 2, !dbg !5406
  %23 = load ptr, ptr %nodes26, align 8, !dbg !5406
  %24 = load i32, ptr %i, align 4, !dbg !5407
  %idxprom = sext i32 %24 to i64, !dbg !5404
  %arrayidx = getelementptr ptr, ptr %23, i64 %idxprom, !dbg !5404
  %25 = load ptr, ptr %arrayidx, align 8, !dbg !5404
  call void @free_widget_node(ptr noundef %25, ptr noundef @widget_node_group) #16, !dbg !5408
  br label %if.end27, !dbg !5408

if.end27:                                         ; preds = %if.then24, %lor.lhs.false
  br label %for.inc, !dbg !5409

for.inc:                                          ; preds = %if.end27
  %26 = load i32, ptr %i, align 4, !dbg !5410
  %inc = add i32 %26, 1, !dbg !5410
  store i32 %inc, ptr %i, align 4, !dbg !5410
  %27 = load i16, ptr %nid, align 2, !dbg !5411
  %inc28 = add i16 %27, 1, !dbg !5411
  store i16 %inc28, ptr %nid, align 2, !dbg !5411
  br label %for.cond, !dbg !5412, !llvm.loop !5413

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !5415
  %28 = load i16, ptr %start_nid.addr, align 2, !dbg !5417
  store i16 %28, ptr %nid, align 2, !dbg !5418
  br label %for.cond29, !dbg !5419

for.cond29:                                       ; preds = %for.inc60, %for.end
  %29 = load i32, ptr %i, align 4, !dbg !5420
  %30 = load i32, ptr %num_nodes.addr, align 4, !dbg !5422
  %cmp30 = icmp slt i32 %29, %30, !dbg !5423
  br i1 %cmp30, label %for.body32, label %for.end63, !dbg !5424

for.body32:                                       ; preds = %for.cond29
  %31 = load i16, ptr %nid, align 2, !dbg !5425
  %conv33 = zext i16 %31 to i32, !dbg !5425
  %32 = load ptr, ptr %codec.addr, align 8, !dbg !5428
  %start_nid34 = getelementptr inbounds %struct.hdac_device, ptr %32, i32 0, i32 18, !dbg !5429
  %33 = load i16, ptr %start_nid34, align 4, !dbg !5429
  %conv35 = zext i16 %33 to i32, !dbg !5428
  %cmp36 = icmp slt i32 %conv33, %conv35, !dbg !5430
  br i1 %cmp36, label %if.then44, label %lor.lhs.false38, !dbg !5431

lor.lhs.false38:                                  ; preds = %for.body32
  %34 = load i16, ptr %nid, align 2, !dbg !5432
  %conv39 = zext i16 %34 to i32, !dbg !5432
  %35 = load ptr, ptr %codec.addr, align 8, !dbg !5433
  %end_nid40 = getelementptr inbounds %struct.hdac_device, ptr %35, i32 0, i32 19, !dbg !5434
  %36 = load i16, ptr %end_nid40, align 2, !dbg !5434
  %conv41 = zext i16 %36 to i32, !dbg !5433
  %cmp42 = icmp sge i32 %conv39, %conv41, !dbg !5435
  br i1 %cmp42, label %if.then44, label %if.else, !dbg !5436

if.then44:                                        ; preds = %lor.lhs.false38, %for.body32
  %37 = load ptr, ptr %tree, align 8, !dbg !5437
  %root = getelementptr inbounds %struct.hdac_widget_tree, ptr %37, i32 0, i32 0, !dbg !5438
  %38 = load ptr, ptr %root, align 8, !dbg !5438
  %39 = load i16, ptr %nid, align 2, !dbg !5439
  %40 = load ptr, ptr %tree, align 8, !dbg !5440
  %nodes45 = getelementptr inbounds %struct.hdac_widget_tree, ptr %40, i32 0, i32 2, !dbg !5441
  %41 = load ptr, ptr %nodes45, align 8, !dbg !5441
  %42 = load i32, ptr %i, align 4, !dbg !5442
  %idxprom46 = sext i32 %42 to i64, !dbg !5440
  %arrayidx47 = getelementptr ptr, ptr %41, i64 %idxprom46, !dbg !5440
  %call48 = call i32 @add_widget_node(ptr noundef %38, i16 noundef zeroext %39, ptr noundef @widget_node_group, ptr noundef %arrayidx47) #16, !dbg !5443
  br label %if.end59, !dbg !5443

if.else:                                          ; preds = %lor.lhs.false38
  %43 = load ptr, ptr %codec.addr, align 8, !dbg !5444
  %widgets49 = getelementptr inbounds %struct.hdac_device, ptr %43, i32 0, i32 22, !dbg !5445
  %44 = load ptr, ptr %widgets49, align 8, !dbg !5445
  %nodes50 = getelementptr inbounds %struct.hdac_widget_tree, ptr %44, i32 0, i32 2, !dbg !5446
  %45 = load ptr, ptr %nodes50, align 8, !dbg !5446
  %46 = load i16, ptr %nid, align 2, !dbg !5447
  %conv51 = zext i16 %46 to i32, !dbg !5447
  %47 = load ptr, ptr %codec.addr, align 8, !dbg !5448
  %start_nid52 = getelementptr inbounds %struct.hdac_device, ptr %47, i32 0, i32 18, !dbg !5449
  %48 = load i16, ptr %start_nid52, align 4, !dbg !5449
  %conv53 = zext i16 %48 to i32, !dbg !5448
  %sub = sub i32 %conv51, %conv53, !dbg !5450
  %idxprom54 = sext i32 %sub to i64, !dbg !5444
  %arrayidx55 = getelementptr ptr, ptr %45, i64 %idxprom54, !dbg !5444
  %49 = load ptr, ptr %arrayidx55, align 8, !dbg !5444
  %50 = load ptr, ptr %tree, align 8, !dbg !5451
  %nodes56 = getelementptr inbounds %struct.hdac_widget_tree, ptr %50, i32 0, i32 2, !dbg !5452
  %51 = load ptr, ptr %nodes56, align 8, !dbg !5452
  %52 = load i32, ptr %i, align 4, !dbg !5453
  %idxprom57 = sext i32 %52 to i64, !dbg !5451
  %arrayidx58 = getelementptr ptr, ptr %51, i64 %idxprom57, !dbg !5451
  store ptr %49, ptr %arrayidx58, align 8, !dbg !5454
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then44
  br label %for.inc60, !dbg !5455

for.inc60:                                        ; preds = %if.end59
  %53 = load i32, ptr %i, align 4, !dbg !5456
  %inc61 = add i32 %53, 1, !dbg !5456
  store i32 %inc61, ptr %i, align 4, !dbg !5456
  %54 = load i16, ptr %nid, align 2, !dbg !5457
  %inc62 = add i16 %54, 1, !dbg !5457
  store i16 %inc62, ptr %nid, align 2, !dbg !5457
  br label %for.cond29, !dbg !5458, !llvm.loop !5459

for.end63:                                        ; preds = %for.cond29
  %55 = load ptr, ptr %codec.addr, align 8, !dbg !5461
  %widgets64 = getelementptr inbounds %struct.hdac_device, ptr %55, i32 0, i32 22, !dbg !5462
  %56 = load ptr, ptr %widgets64, align 8, !dbg !5462
  %nodes65 = getelementptr inbounds %struct.hdac_widget_tree, ptr %56, i32 0, i32 2, !dbg !5463
  %57 = load ptr, ptr %nodes65, align 8, !dbg !5463
  call void @kfree(ptr noundef %57) #16, !dbg !5464
  %58 = load ptr, ptr %codec.addr, align 8, !dbg !5465
  %widgets66 = getelementptr inbounds %struct.hdac_device, ptr %58, i32 0, i32 22, !dbg !5466
  %59 = load ptr, ptr %widgets66, align 8, !dbg !5466
  call void @kfree(ptr noundef %59) #16, !dbg !5467
  %60 = load ptr, ptr %tree, align 8, !dbg !5468
  %61 = load ptr, ptr %codec.addr, align 8, !dbg !5469
  %widgets67 = getelementptr inbounds %struct.hdac_device, ptr %61, i32 0, i32 22, !dbg !5470
  store ptr %60, ptr %widgets67, align 8, !dbg !5471
  %62 = load ptr, ptr %tree, align 8, !dbg !5472
  %root68 = getelementptr inbounds %struct.hdac_widget_tree, ptr %62, i32 0, i32 0, !dbg !5473
  %63 = load ptr, ptr %root68, align 8, !dbg !5473
  %call69 = call i32 @kobject_uevent(ptr noundef %63, i32 noundef 2) #16, !dbg !5474
  store i32 0, ptr %retval, align 4, !dbg !5475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5475

cleanup:                                          ; preds = %for.end63, %if.then11, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5476
  call void @llvm.lifetime.end.p0(i64 2, ptr %nid) #15, !dbg !5476
  call void @llvm.lifetime.end.p0(i64 2, ptr %end_nid) #15, !dbg !5476
  call void @llvm.lifetime.end.p0(i64 8, ptr %tree) #15, !dbg !5476
  %64 = load i32, ptr %retval, align 4, !dbg !5476
  ret i32 %64, !dbg !5476
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !5477 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !5481 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5485, metadata !DIExpression()), !dbg !5488
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5486, metadata !DIExpression()), !dbg !5489
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5487, metadata !DIExpression()), !dbg !5490
  %0 = load i64, ptr %n.addr, align 8, !dbg !5491
  %1 = load i64, ptr %size.addr, align 8, !dbg !5492
  %2 = load i32, ptr %flags.addr, align 4, !dbg !5493
  %or = or i32 %2, 256, !dbg !5494
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #18, !dbg !5495
  ret ptr %call, !dbg !5496
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5497 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_widget_node(ptr noundef %kobj, ptr noundef %group) #0 align 16 !dbg !5500 {
entry:
  %kobj.addr = alloca ptr, align 8
  %group.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5504, metadata !DIExpression()), !dbg !5506
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !5505, metadata !DIExpression()), !dbg !5507
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5508
  %tobool = icmp ne ptr %0, null, !dbg !5508
  br i1 %tobool, label %if.then, label %if.end, !dbg !5510

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !5511
  %2 = load ptr, ptr %group.addr, align 8, !dbg !5513
  call void @sysfs_remove_group(ptr noundef %1, ptr noundef %2) #16, !dbg !5514
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !5515
  call void @kobject_put(ptr noundef %3) #16, !dbg !5516
  br label %if.end, !dbg !5517

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5518
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_widget_node(ptr noundef %parent, i16 noundef zeroext %nid, ptr noundef %group, ptr noundef %res) #0 align 16 !dbg !5519 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %group.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5523, metadata !DIExpression()), !dbg !5529
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5524, metadata !DIExpression()), !dbg !5530
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !5525, metadata !DIExpression()), !dbg !5531
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5526, metadata !DIExpression()), !dbg !5532
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #15, !dbg !5533
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !5527, metadata !DIExpression()), !dbg !5534
  %call = call noalias ptr @kzalloc(i64 noundef 64, i32 noundef 3264) #17, !dbg !5535
  store ptr %call, ptr %kobj, align 8, !dbg !5534
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5536
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5528, metadata !DIExpression()), !dbg !5537
  %0 = load ptr, ptr %kobj, align 8, !dbg !5538
  %tobool = icmp ne ptr %0, null, !dbg !5538
  br i1 %tobool, label %if.end, label %if.then, !dbg !5540

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5541

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %kobj, align 8, !dbg !5542
  call void @kobject_init(ptr noundef %1, ptr noundef @widget_ktype) #16, !dbg !5543
  %2 = load ptr, ptr %kobj, align 8, !dbg !5544
  %3 = load ptr, ptr %parent.addr, align 8, !dbg !5545
  %4 = load i16, ptr %nid.addr, align 2, !dbg !5546
  %conv = zext i16 %4 to i32, !dbg !5546
  %call1 = call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %2, ptr noundef %3, ptr noundef @.str.28, i32 noundef %conv) #16, !dbg !5547
  store i32 %call1, ptr %err, align 4, !dbg !5548
  %5 = load i32, ptr %err, align 4, !dbg !5549
  %cmp = icmp slt i32 %5, 0, !dbg !5551
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5552

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %kobj, align 8, !dbg !5553
  call void @kobject_put(ptr noundef %6) #16, !dbg !5555
  %7 = load i32, ptr %err, align 4, !dbg !5556
  store i32 %7, ptr %retval, align 4, !dbg !5557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5557

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %kobj, align 8, !dbg !5558
  %9 = load ptr, ptr %group.addr, align 8, !dbg !5559
  %call5 = call i32 @sysfs_create_group(ptr noundef %8, ptr noundef %9) #16, !dbg !5560
  store i32 %call5, ptr %err, align 4, !dbg !5561
  %10 = load i32, ptr %err, align 4, !dbg !5562
  %cmp6 = icmp slt i32 %10, 0, !dbg !5564
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !5565

if.then8:                                         ; preds = %if.end4
  %11 = load ptr, ptr %kobj, align 8, !dbg !5566
  call void @kobject_put(ptr noundef %11) #16, !dbg !5568
  %12 = load i32, ptr %err, align 4, !dbg !5569
  store i32 %12, ptr %retval, align 4, !dbg !5570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5570

if.end9:                                          ; preds = %if.end4
  %13 = load ptr, ptr %kobj, align 8, !dbg !5571
  %14 = load ptr, ptr %res.addr, align 8, !dbg !5572
  store ptr %13, ptr %14, align 8, !dbg !5573
  store i32 0, ptr %retval, align 4, !dbg !5574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5574

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5575
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #15, !dbg !5575
  %15 = load i32, ptr %retval, align 4, !dbg !5575
  ret i32 %15, !dbg !5575
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5576 dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @type_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5579 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5581, metadata !DIExpression()), !dbg !5587
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5582, metadata !DIExpression()), !dbg !5587
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5583, metadata !DIExpression()), !dbg !5587
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #15, !dbg !5587
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5584, metadata !DIExpression()), !dbg !5587
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5588
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5585, metadata !DIExpression()), !dbg !5588
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5588
  store ptr %0, ptr %__mptr, align 8, !dbg !5588
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5588
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5588
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5588
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5587
  %2 = load ptr, ptr %tmp, align 8, !dbg !5588
  store ptr %2, ptr %codec, align 8, !dbg !5587
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5587
  %4 = load ptr, ptr %codec, align 8, !dbg !5587
  %type = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 1, !dbg !5587
  %5 = load i32, ptr %type, align 8, !dbg !5587
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.1, i32 noundef %5) #16, !dbg !5587
  %conv = sext i32 %call to i64, !dbg !5587
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #15, !dbg !5587
  ret i64 %conv, !dbg !5587
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5589 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vendor_id_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5592 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5594, metadata !DIExpression()), !dbg !5600
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5595, metadata !DIExpression()), !dbg !5600
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5596, metadata !DIExpression()), !dbg !5600
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #15, !dbg !5600
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5597, metadata !DIExpression()), !dbg !5600
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5598, metadata !DIExpression()), !dbg !5601
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5601
  store ptr %0, ptr %__mptr, align 8, !dbg !5601
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5601
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5601
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5601
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5600
  %2 = load ptr, ptr %tmp, align 8, !dbg !5601
  store ptr %2, ptr %codec, align 8, !dbg !5600
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5600
  %4 = load ptr, ptr %codec, align 8, !dbg !5600
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 7, !dbg !5600
  %5 = load i32, ptr %vendor_id, align 4, !dbg !5600
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.1, i32 noundef %5) #16, !dbg !5600
  %conv = sext i32 %call to i64, !dbg !5600
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #15, !dbg !5600
  ret i64 %conv, !dbg !5600
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @subsystem_id_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5602 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5604, metadata !DIExpression()), !dbg !5610
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5605, metadata !DIExpression()), !dbg !5610
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5606, metadata !DIExpression()), !dbg !5610
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #15, !dbg !5610
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5607, metadata !DIExpression()), !dbg !5610
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5611
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5608, metadata !DIExpression()), !dbg !5611
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5611
  store ptr %0, ptr %__mptr, align 8, !dbg !5611
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5611
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5611
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5611
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5610
  %2 = load ptr, ptr %tmp, align 8, !dbg !5611
  store ptr %2, ptr %codec, align 8, !dbg !5610
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5610
  %4 = load ptr, ptr %codec, align 8, !dbg !5610
  %subsystem_id = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 8, !dbg !5610
  %5 = load i32, ptr %subsystem_id, align 8, !dbg !5610
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.1, i32 noundef %5) #16, !dbg !5610
  %conv = sext i32 %call to i64, !dbg !5610
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #15, !dbg !5610
  ret i64 %conv, !dbg !5610
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @revision_id_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5612 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5614, metadata !DIExpression()), !dbg !5620
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5615, metadata !DIExpression()), !dbg !5620
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5616, metadata !DIExpression()), !dbg !5620
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #15, !dbg !5620
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5617, metadata !DIExpression()), !dbg !5620
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5621
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5618, metadata !DIExpression()), !dbg !5621
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5621
  store ptr %0, ptr %__mptr, align 8, !dbg !5621
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5621
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5621
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5621
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5620
  %2 = load ptr, ptr %tmp, align 8, !dbg !5621
  store ptr %2, ptr %codec, align 8, !dbg !5620
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5620
  %4 = load ptr, ptr %codec, align 8, !dbg !5620
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 9, !dbg !5620
  %5 = load i32, ptr %revision_id, align 4, !dbg !5620
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.1, i32 noundef %5) #16, !dbg !5620
  %conv = sext i32 %call to i64, !dbg !5620
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #15, !dbg !5620
  ret i64 %conv, !dbg !5620
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @afg_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5622 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5624, metadata !DIExpression()), !dbg !5630
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5625, metadata !DIExpression()), !dbg !5630
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5626, metadata !DIExpression()), !dbg !5630
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #15, !dbg !5630
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5627, metadata !DIExpression()), !dbg !5630
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5628, metadata !DIExpression()), !dbg !5631
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5631
  store ptr %0, ptr %__mptr, align 8, !dbg !5631
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5631
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5631
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5631
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5630
  %2 = load ptr, ptr %tmp, align 8, !dbg !5631
  store ptr %2, ptr %codec, align 8, !dbg !5630
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5630
  %4 = load ptr, ptr %codec, align 8, !dbg !5630
  %afg = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 5, !dbg !5630
  %5 = load i16, ptr %afg, align 8, !dbg !5630
  %conv = zext i16 %5 to i32, !dbg !5630
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.1, i32 noundef %conv) #16, !dbg !5630
  %conv1 = sext i32 %call to i64, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #15, !dbg !5630
  ret i64 %conv1, !dbg !5630
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mfg_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5632 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5634, metadata !DIExpression()), !dbg !5640
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5635, metadata !DIExpression()), !dbg !5640
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5636, metadata !DIExpression()), !dbg !5640
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #15, !dbg !5640
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5637, metadata !DIExpression()), !dbg !5640
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5641
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5638, metadata !DIExpression()), !dbg !5641
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5641
  store ptr %0, ptr %__mptr, align 8, !dbg !5641
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5641
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5641
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5641
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5640
  %2 = load ptr, ptr %tmp, align 8, !dbg !5641
  store ptr %2, ptr %codec, align 8, !dbg !5640
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5640
  %4 = load ptr, ptr %codec, align 8, !dbg !5640
  %mfg = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 6, !dbg !5640
  %5 = load i16, ptr %mfg, align 2, !dbg !5640
  %conv = zext i16 %5 to i32, !dbg !5640
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.1, i32 noundef %conv) #16, !dbg !5640
  %conv1 = sext i32 %call to i64, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #15, !dbg !5640
  ret i64 %conv1, !dbg !5640
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vendor_name_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5642 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5644, metadata !DIExpression()), !dbg !5650
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5645, metadata !DIExpression()), !dbg !5650
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5646, metadata !DIExpression()), !dbg !5650
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #15, !dbg !5650
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5647, metadata !DIExpression()), !dbg !5650
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5651
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5648, metadata !DIExpression()), !dbg !5651
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5651
  store ptr %0, ptr %__mptr, align 8, !dbg !5651
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5651
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5651
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5651
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5650
  %2 = load ptr, ptr %tmp, align 8, !dbg !5651
  store ptr %2, ptr %codec, align 8, !dbg !5650
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5650
  %4 = load ptr, ptr %codec, align 8, !dbg !5650
  %vendor_name = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 14, !dbg !5650
  %5 = load ptr, ptr %vendor_name, align 8, !dbg !5650
  %tobool = icmp ne ptr %5, null, !dbg !5650
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5650

cond.true:                                        ; preds = %entry
  %6 = load ptr, ptr %codec, align 8, !dbg !5650
  %vendor_name1 = getelementptr inbounds %struct.hdac_device, ptr %6, i32 0, i32 14, !dbg !5650
  %7 = load ptr, ptr %vendor_name1, align 8, !dbg !5650
  br label %cond.end, !dbg !5650

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5650

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ @.str.9, %cond.false ], !dbg !5650
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.8, ptr noundef %cond) #16, !dbg !5650
  %conv = sext i32 %call to i64, !dbg !5650
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #15, !dbg !5650
  ret i64 %conv, !dbg !5650
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @chip_name_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5652 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5654, metadata !DIExpression()), !dbg !5660
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5655, metadata !DIExpression()), !dbg !5660
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5656, metadata !DIExpression()), !dbg !5660
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #15, !dbg !5660
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5657, metadata !DIExpression()), !dbg !5660
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5661
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5658, metadata !DIExpression()), !dbg !5661
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5661
  store ptr %0, ptr %__mptr, align 8, !dbg !5661
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5661
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5661
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5661
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5660
  %2 = load ptr, ptr %tmp, align 8, !dbg !5661
  store ptr %2, ptr %codec, align 8, !dbg !5660
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5660
  %4 = load ptr, ptr %codec, align 8, !dbg !5660
  %chip_name = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 15, !dbg !5660
  %5 = load ptr, ptr %chip_name, align 8, !dbg !5660
  %tobool = icmp ne ptr %5, null, !dbg !5660
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5660

cond.true:                                        ; preds = %entry
  %6 = load ptr, ptr %codec, align 8, !dbg !5660
  %chip_name1 = getelementptr inbounds %struct.hdac_device, ptr %6, i32 0, i32 15, !dbg !5660
  %7 = load ptr, ptr %chip_name1, align 8, !dbg !5660
  br label %cond.end, !dbg !5660

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5660

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ @.str.9, %cond.false ], !dbg !5660
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.8, ptr noundef %cond) #16, !dbg !5660
  %conv = sext i32 %call to i64, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #15, !dbg !5660
  ret i64 %conv, !dbg !5660
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @modalias_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5662 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5664, metadata !DIExpression()), !dbg !5669
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5665, metadata !DIExpression()), !dbg !5670
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5666, metadata !DIExpression()), !dbg !5671
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5672
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5667, metadata !DIExpression()), !dbg !5672
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5672
  store ptr %0, ptr %__mptr, align 8, !dbg !5672
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5672
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5672
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5673
  %2 = load ptr, ptr %tmp, align 8, !dbg !5672
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5674
  %call = call i32 @snd_hdac_codec_modalias(ptr noundef %2, ptr noundef %3, i64 noundef 256) #16, !dbg !5675
  %conv = sext i32 %call to i64, !dbg !5675
  ret i64 %conv, !dbg !5676
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5677 dso_local i32 @snd_hdac_codec_modalias(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5682 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5686, metadata !DIExpression()), !dbg !5688
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5687, metadata !DIExpression()), !dbg !5689
  %0 = load i64, ptr %size.addr, align 8, !dbg !5690
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5691
  %or = or i32 %1, 256, !dbg !5692
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !5693
  ret ptr %call, !dbg !5694
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5695 dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5698 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5700, metadata !DIExpression()), !dbg !5705
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5701, metadata !DIExpression()), !dbg !5706
  %0 = load i64, ptr %size.addr, align 8, !dbg !5707
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5708
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5709

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5710
  %tobool = icmp ne i64 %2, 0, !dbg !5710
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5711

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5712
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5702, metadata !DIExpression()), !dbg !5713
  %3 = load i64, ptr %size.addr, align 8, !dbg !5714
  %cmp = icmp ugt i64 %3, 8192, !dbg !5716
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5717

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5718
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5719
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5720
  store ptr %call, ptr %retval, align 8, !dbg !5721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5721

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5722
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5722
  store i32 %call2, ptr %index, align 4, !dbg !5723
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5724
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5725
  %9 = ptrtoint ptr %8 to i64, !dbg !5725
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5726
  %idxprom = zext i32 %call3 to i64, !dbg !5727
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5727
  %10 = load i32, ptr %index, align 4, !dbg !5728
  %idxprom4 = zext i32 %10 to i64, !dbg !5727
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5727
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5727
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5729
  %13 = load i64, ptr %size.addr, align 8, !dbg !5730
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5731
  store ptr %call6, ptr %retval, align 8, !dbg !5732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5732

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5733
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5734
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5735
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5736
  store ptr %call8, ptr %retval, align 8, !dbg !5737
  br label %return, !dbg !5737

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5738
  ret ptr %16, !dbg !5738
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5739 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !5740 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5744, metadata !DIExpression()), !dbg !5746
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5745, metadata !DIExpression()), !dbg !5747
  %0 = load i64, ptr %size.addr, align 8, !dbg !5748
  %tobool = icmp ne i64 %0, 0, !dbg !5748
  br i1 %tobool, label %if.end, label %if.then, !dbg !5750

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5751
  br label %return, !dbg !5751

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5752
  %cmp = icmp ule i64 %1, 8, !dbg !5754
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5755

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5756
  br label %return, !dbg !5756

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5757
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5759
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5760

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5761
  %cmp4 = icmp ule i64 %3, 96, !dbg !5762
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5763

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5764
  br label %return, !dbg !5764

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5765
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5767
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5768

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5769
  %cmp9 = icmp ule i64 %5, 192, !dbg !5770
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5771

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5772
  br label %return, !dbg !5772

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5773
  %cmp12 = icmp ule i64 %6, 8, !dbg !5775
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5776

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5777
  br label %return, !dbg !5777

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5778
  %cmp15 = icmp ule i64 %7, 16, !dbg !5780
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5781

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5782
  br label %return, !dbg !5782

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5783
  %cmp18 = icmp ule i64 %8, 32, !dbg !5785
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5786

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5787
  br label %return, !dbg !5787

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5788
  %cmp21 = icmp ule i64 %9, 64, !dbg !5790
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5791

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5792
  br label %return, !dbg !5792

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5793
  %cmp24 = icmp ule i64 %10, 128, !dbg !5795
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5796

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5797
  br label %return, !dbg !5797

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5798
  %cmp27 = icmp ule i64 %11, 256, !dbg !5800
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5801

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5802
  br label %return, !dbg !5802

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5803
  %cmp30 = icmp ule i64 %12, 512, !dbg !5805
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5806

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5807
  br label %return, !dbg !5807

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5808
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5810
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5811

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5812
  br label %return, !dbg !5812

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5813
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5815
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5816

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5817
  br label %return, !dbg !5817

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5818
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5820
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5821

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5822
  br label %return, !dbg !5822

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5823
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5825
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5826

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5827
  br label %return, !dbg !5827

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5828
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5830
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5831

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5833
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5835
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5836

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5837
  br label %return, !dbg !5837

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5838
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5840
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5841

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5842
  br label %return, !dbg !5842

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5843
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5845
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5846

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5847
  br label %return, !dbg !5847

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5848
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5850
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5851

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5852
  br label %return, !dbg !5852

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5853
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5855
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5856

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5857
  br label %return, !dbg !5857

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5858
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5860
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5861

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5862
  br label %return, !dbg !5862

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5863
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5865
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5866

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5867
  br label %return, !dbg !5867

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5868, !range !5870, !noundef !935
  %tobool69 = trunc i8 %25 to i1, !dbg !5868
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5871

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5872

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !5873, !srcloc !5876
  unreachable, !dbg !5873

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5877

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5878

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5879

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5881

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5879

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 480, i32 0, i64 12) #15, !dbg !5883, !srcloc !5885
  br label %do.end75, !dbg !5883

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5879

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5886
  br label %return, !dbg !5886

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5887
  ret i32 %26, !dbg !5887
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5888 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !5894 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5898, metadata !DIExpression()), !dbg !5900
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5899, metadata !DIExpression()), !dbg !5901
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5902
  %and = and i32 %0, 17, !dbg !5902
  %cmp = icmp eq i32 %and, 0, !dbg !5902
  %lnot = xor i1 %cmp, true, !dbg !5902
  %lnot1 = xor i1 %lnot, true, !dbg !5902
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5902
  %conv = sext i32 %lnot.ext to i64, !dbg !5902
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5902
  %tobool = icmp ne i64 %expval, 0, !dbg !5902
  br i1 %tobool, label %if.then, label %if.end, !dbg !5904

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5905
  br label %return, !dbg !5905

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5906
  %and2 = and i32 %1, 1, !dbg !5908
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5908
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5909

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5910
  br label %return, !dbg !5910

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5911
  br label %return, !dbg !5911

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5913
  ret i32 %2, !dbg !5913
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5914 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5915 dso_local void @__compiletime_assert_117() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pcm_caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5916 {
entry:
  %retval = alloca i64, align 8
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5918, metadata !DIExpression()), !dbg !5922
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5919, metadata !DIExpression()), !dbg !5923
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5920, metadata !DIExpression()), !dbg !5924
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5921, metadata !DIExpression()), !dbg !5925
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5926
  %1 = load i16, ptr %nid.addr, align 2, !dbg !5928
  %call = call zeroext i1 @has_pcm_cap(ptr noundef %0, i16 noundef zeroext %1) #16, !dbg !5929
  br i1 %call, label %if.end, label %if.then, !dbg !5930

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5931
  br label %return, !dbg !5931

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5932
  %3 = load ptr, ptr %codec.addr, align 8, !dbg !5933
  %4 = load i16, ptr %nid.addr, align 2, !dbg !5934
  %call1 = call i32 @snd_hdac_read_parm(ptr noundef %3, i16 noundef zeroext %4, i32 noundef 10) #16, !dbg !5935
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef @.str.15, i32 noundef %call1) #16, !dbg !5936
  %conv = sext i32 %call2 to i64, !dbg !5936
  store i64 %conv, ptr %retval, align 8, !dbg !5937
  br label %return, !dbg !5937

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !5938
  ret i64 %5, !dbg !5938
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @has_pcm_cap(ptr noundef %codec, i16 noundef zeroext %nid) #0 align 16 !dbg !5939 {
entry:
  %retval = alloca i1, align 1
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5943, metadata !DIExpression()), !dbg !5945
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5944, metadata !DIExpression()), !dbg !5946
  %0 = load i16, ptr %nid.addr, align 2, !dbg !5947
  %conv = zext i16 %0 to i32, !dbg !5947
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !5949
  %afg = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 5, !dbg !5950
  %2 = load i16, ptr %afg, align 8, !dbg !5950
  %conv1 = zext i16 %2 to i32, !dbg !5949
  %cmp = icmp eq i32 %conv, %conv1, !dbg !5951
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5952

lor.lhs.false:                                    ; preds = %entry
  %3 = load i16, ptr %nid.addr, align 2, !dbg !5953
  %conv3 = zext i16 %3 to i32, !dbg !5953
  %4 = load ptr, ptr %codec.addr, align 8, !dbg !5954
  %mfg = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 6, !dbg !5955
  %5 = load i16, ptr %mfg, align 2, !dbg !5955
  %conv4 = zext i16 %5 to i32, !dbg !5954
  %cmp5 = icmp eq i32 %conv3, %conv4, !dbg !5956
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5957

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 true, ptr %retval, align 1, !dbg !5958
  br label %return, !dbg !5958

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %codec.addr, align 8, !dbg !5959
  %7 = load i16, ptr %nid.addr, align 2, !dbg !5959
  %call = call i32 @snd_hdac_read_parm(ptr noundef %6, i16 noundef zeroext %7, i32 noundef 9) #16, !dbg !5959
  %call7 = call i32 @get_wcaps_type(i32 noundef %call) #16, !dbg !5960
  switch i32 %call7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ], !dbg !5961

sw.bb:                                            ; preds = %if.end, %if.end
  store i1 true, ptr %retval, align 1, !dbg !5962
  br label %return, !dbg !5962

sw.default:                                       ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5964
  br label %return, !dbg !5964

return:                                           ; preds = %sw.default, %sw.bb, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !5965
  ret i1 %8, !dbg !5965
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef %parm) #14 align 16 !dbg !5966 {
entry:
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %parm.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5968, metadata !DIExpression()), !dbg !5972
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5969, metadata !DIExpression()), !dbg !5973
  store i32 %parm, ptr %parm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %parm.addr, metadata !5970, metadata !DIExpression()), !dbg !5974
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #15, !dbg !5975
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5971, metadata !DIExpression()), !dbg !5976
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5977
  %1 = load i16, ptr %nid.addr, align 2, !dbg !5978
  %2 = load i32, ptr %parm.addr, align 4, !dbg !5979
  %call = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %val) #16, !dbg !5980
  %cmp = icmp slt i32 %call, 0, !dbg !5981
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5980

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5980

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %val, align 4, !dbg !5982
  br label %cond.end, !dbg !5980

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %3, %cond.false ], !dbg !5980
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #15, !dbg !5983
  ret i32 %cond, !dbg !5984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_wcaps_type(i32 noundef %wcaps) #14 align 16 !dbg !5985 {
entry:
  %retval = alloca i32, align 4
  %wcaps.addr = alloca i32, align 4
  store i32 %wcaps, ptr %wcaps.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wcaps.addr, metadata !5990, metadata !DIExpression()), !dbg !5991
  %0 = load i32, ptr %wcaps.addr, align 4, !dbg !5992
  %tobool = icmp ne i32 %0, 0, !dbg !5992
  br i1 %tobool, label %if.end, label %if.then, !dbg !5994

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5995
  br label %return, !dbg !5995

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %wcaps.addr, align 4, !dbg !5996
  %and = and i32 %1, 15728640, !dbg !5997
  %shr = lshr i32 %and, 20, !dbg !5998
  store i32 %shr, ptr %retval, align 4, !dbg !5999
  br label %return, !dbg !5999

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6000
  ret i32 %2, !dbg !6000
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6001 dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pcm_formats_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6004 {
entry:
  %retval = alloca i64, align 8
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6006, metadata !DIExpression()), !dbg !6010
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6007, metadata !DIExpression()), !dbg !6011
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6008, metadata !DIExpression()), !dbg !6012
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6009, metadata !DIExpression()), !dbg !6013
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !6014
  %1 = load i16, ptr %nid.addr, align 2, !dbg !6016
  %call = call zeroext i1 @has_pcm_cap(ptr noundef %0, i16 noundef zeroext %1) #16, !dbg !6017
  br i1 %call, label %if.end, label %if.then, !dbg !6018

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !6019
  br label %return, !dbg !6019

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !6020
  %3 = load ptr, ptr %codec.addr, align 8, !dbg !6021
  %4 = load i16, ptr %nid.addr, align 2, !dbg !6022
  %call1 = call i32 @snd_hdac_read_parm(ptr noundef %3, i16 noundef zeroext %4, i32 noundef 11) #16, !dbg !6023
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef @.str.15, i32 noundef %call1) #16, !dbg !6024
  %conv = sext i32 %call2 to i64, !dbg !6024
  store i64 %conv, ptr %retval, align 8, !dbg !6025
  br label %return, !dbg !6025

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !6026
  ret i64 %5, !dbg !6026
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @amp_in_caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6027 {
entry:
  %retval = alloca i64, align 8
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6029, metadata !DIExpression()), !dbg !6033
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6030, metadata !DIExpression()), !dbg !6034
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6031, metadata !DIExpression()), !dbg !6035
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6032, metadata !DIExpression()), !dbg !6036
  %0 = load i16, ptr %nid.addr, align 2, !dbg !6037
  %conv = zext i16 %0 to i32, !dbg !6037
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !6039
  %afg = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 5, !dbg !6040
  %2 = load i16, ptr %afg, align 8, !dbg !6040
  %conv1 = zext i16 %2 to i32, !dbg !6039
  %cmp = icmp ne i32 %conv, %conv1, !dbg !6041
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6042

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %codec.addr, align 8, !dbg !6043
  %4 = load i16, ptr %nid.addr, align 2, !dbg !6043
  %call = call i32 @snd_hdac_read_parm(ptr noundef %3, i16 noundef zeroext %4, i32 noundef 9) #16, !dbg !6043
  %and = and i32 %call, 2, !dbg !6044
  %tobool = icmp ne i32 %and, 0, !dbg !6044
  br i1 %tobool, label %if.end, label %if.then, !dbg !6045

if.then:                                          ; preds = %land.lhs.true
  store i64 0, ptr %retval, align 8, !dbg !6046
  br label %return, !dbg !6046

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !6047
  %6 = load ptr, ptr %codec.addr, align 8, !dbg !6048
  %7 = load i16, ptr %nid.addr, align 2, !dbg !6049
  %call3 = call i32 @snd_hdac_read_parm(ptr noundef %6, i16 noundef zeroext %7, i32 noundef 13) #16, !dbg !6050
  %call4 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %5, ptr noundef @.str.15, i32 noundef %call3) #16, !dbg !6051
  %conv5 = sext i32 %call4 to i64, !dbg !6051
  store i64 %conv5, ptr %retval, align 8, !dbg !6052
  br label %return, !dbg !6052

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, ptr %retval, align 8, !dbg !6053
  ret i64 %8, !dbg !6053
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @amp_out_caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6054 {
entry:
  %retval = alloca i64, align 8
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6056, metadata !DIExpression()), !dbg !6060
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6057, metadata !DIExpression()), !dbg !6061
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6058, metadata !DIExpression()), !dbg !6062
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6059, metadata !DIExpression()), !dbg !6063
  %0 = load i16, ptr %nid.addr, align 2, !dbg !6064
  %conv = zext i16 %0 to i32, !dbg !6064
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !6066
  %afg = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 5, !dbg !6067
  %2 = load i16, ptr %afg, align 8, !dbg !6067
  %conv1 = zext i16 %2 to i32, !dbg !6066
  %cmp = icmp ne i32 %conv, %conv1, !dbg !6068
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6069

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %codec.addr, align 8, !dbg !6070
  %4 = load i16, ptr %nid.addr, align 2, !dbg !6070
  %call = call i32 @snd_hdac_read_parm(ptr noundef %3, i16 noundef zeroext %4, i32 noundef 9) #16, !dbg !6070
  %and = and i32 %call, 4, !dbg !6071
  %tobool = icmp ne i32 %and, 0, !dbg !6071
  br i1 %tobool, label %if.end, label %if.then, !dbg !6072

if.then:                                          ; preds = %land.lhs.true
  store i64 0, ptr %retval, align 8, !dbg !6073
  br label %return, !dbg !6073

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !6074
  %6 = load ptr, ptr %codec.addr, align 8, !dbg !6075
  %7 = load i16, ptr %nid.addr, align 2, !dbg !6076
  %call3 = call i32 @snd_hdac_read_parm(ptr noundef %6, i16 noundef zeroext %7, i32 noundef 18) #16, !dbg !6077
  %call4 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %5, ptr noundef @.str.15, i32 noundef %call3) #16, !dbg !6078
  %conv5 = sext i32 %call4 to i64, !dbg !6078
  store i64 %conv5, ptr %retval, align 8, !dbg !6079
  br label %return, !dbg !6079

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, ptr %retval, align 8, !dbg !6080
  ret i64 %8, !dbg !6080
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @power_caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6081 {
entry:
  %retval = alloca i64, align 8
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6083, metadata !DIExpression()), !dbg !6087
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6084, metadata !DIExpression()), !dbg !6088
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6085, metadata !DIExpression()), !dbg !6089
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6086, metadata !DIExpression()), !dbg !6090
  %0 = load i16, ptr %nid.addr, align 2, !dbg !6091
  %conv = zext i16 %0 to i32, !dbg !6091
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !6093
  %afg = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 5, !dbg !6094
  %2 = load i16, ptr %afg, align 8, !dbg !6094
  %conv1 = zext i16 %2 to i32, !dbg !6093
  %cmp = icmp ne i32 %conv, %conv1, !dbg !6095
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6096

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %codec.addr, align 8, !dbg !6097
  %4 = load i16, ptr %nid.addr, align 2, !dbg !6097
  %call = call i32 @snd_hdac_read_parm(ptr noundef %3, i16 noundef zeroext %4, i32 noundef 9) #16, !dbg !6097
  %and = and i32 %call, 1024, !dbg !6098
  %tobool = icmp ne i32 %and, 0, !dbg !6098
  br i1 %tobool, label %if.end, label %if.then, !dbg !6099

if.then:                                          ; preds = %land.lhs.true
  store i64 0, ptr %retval, align 8, !dbg !6100
  br label %return, !dbg !6100

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !6101
  %6 = load ptr, ptr %codec.addr, align 8, !dbg !6102
  %7 = load i16, ptr %nid.addr, align 2, !dbg !6103
  %call3 = call i32 @snd_hdac_read_parm(ptr noundef %6, i16 noundef zeroext %7, i32 noundef 15) #16, !dbg !6104
  %call4 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %5, ptr noundef @.str.15, i32 noundef %call3) #16, !dbg !6105
  %conv5 = sext i32 %call4 to i64, !dbg !6105
  store i64 %conv5, ptr %retval, align 8, !dbg !6106
  br label %return, !dbg !6106

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, ptr %retval, align 8, !dbg !6107
  ret i64 %8, !dbg !6107
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @gpio_caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6108 {
entry:
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6110, metadata !DIExpression()), !dbg !6114
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6111, metadata !DIExpression()), !dbg !6115
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6112, metadata !DIExpression()), !dbg !6116
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6113, metadata !DIExpression()), !dbg !6117
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6118
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !6119
  %2 = load i16, ptr %nid.addr, align 2, !dbg !6120
  %call = call i32 @snd_hdac_read_parm(ptr noundef %1, i16 noundef zeroext %2, i32 noundef 17) #16, !dbg !6121
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.15, i32 noundef %call) #16, !dbg !6122
  %conv = sext i32 %call1 to i64, !dbg !6122
  ret i64 %conv, !dbg !6123
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6124 dso_local void @kobject_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !6125 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6127, metadata !DIExpression()), !dbg !6131
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6128, metadata !DIExpression()), !dbg !6132
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6129, metadata !DIExpression()), !dbg !6133
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !6134
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6130, metadata !DIExpression()), !dbg !6135
  %0 = load i64, ptr %n.addr, align 8, !dbg !6136
  %1 = load i64, ptr %size.addr, align 8, !dbg !6136
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6136
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6136
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6136
  store i64 %4, ptr %bytes, align 8, !dbg !6136
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !6136
  %lnot = xor i1 %call, true, !dbg !6136
  %lnot1 = xor i1 %lnot, true, !dbg !6136
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6136
  %conv = sext i32 %lnot.ext to i64, !dbg !6136
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6136
  %tobool = icmp ne i64 %expval, 0, !dbg !6136
  br i1 %tobool, label %if.then, label %if.end, !dbg !6138

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6139

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6140
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6142
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6143

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6144
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6145
  br i1 %8, label %if.then2, label %if.end4, !dbg !6146

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6147
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6148
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #17, !dbg !6149
  store ptr %call3, ptr %retval, align 8, !dbg !6150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6150

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6151
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6152
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #17, !dbg !6153
  store ptr %call5, ptr %retval, align 8, !dbg !6154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6154

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !6155
  %13 = load ptr, ptr %retval, align 8, !dbg !6155
  ret ptr %13, !dbg !6155
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #14 align 16 !dbg !6156 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6161, metadata !DIExpression()), !dbg !6162
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6163, !range !5870, !noundef !935
  %tobool = trunc i8 %0 to i1, !dbg !6163
  %lnot = xor i1 %tobool, true, !dbg !6163
  %lnot1 = xor i1 %lnot, true, !dbg !6163
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6163
  %conv = sext i32 %lnot.ext to i64, !dbg !6163
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6163
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6163
  ret i1 %tobool2, !dbg !6164
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6165 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6166 {
entry:
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6168, metadata !DIExpression()), !dbg !6172
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6169, metadata !DIExpression()), !dbg !6173
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6170, metadata !DIExpression()), !dbg !6174
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6171, metadata !DIExpression()), !dbg !6175
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6176
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !6177
  %2 = load i16, ptr %nid.addr, align 2, !dbg !6177
  %call = call i32 @snd_hdac_read_parm(ptr noundef %1, i16 noundef zeroext %2, i32 noundef 9) #16, !dbg !6177
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.15, i32 noundef %call) #16, !dbg !6178
  %conv = sext i32 %call1 to i64, !dbg !6178
  ret i64 %conv, !dbg !6179
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pin_caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6180 {
entry:
  %retval = alloca i64, align 8
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6182, metadata !DIExpression()), !dbg !6186
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6183, metadata !DIExpression()), !dbg !6187
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6184, metadata !DIExpression()), !dbg !6188
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6185, metadata !DIExpression()), !dbg !6189
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !6190
  %1 = load i16, ptr %nid.addr, align 2, !dbg !6190
  %call = call i32 @snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 9) #16, !dbg !6190
  %call1 = call i32 @get_wcaps_type(i32 noundef %call) #16, !dbg !6192
  %cmp = icmp ne i32 %call1, 4, !dbg !6193
  br i1 %cmp, label %if.then, label %if.end, !dbg !6194

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !6195
  br label %return, !dbg !6195

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !6196
  %3 = load ptr, ptr %codec.addr, align 8, !dbg !6197
  %4 = load i16, ptr %nid.addr, align 2, !dbg !6198
  %call2 = call i32 @snd_hdac_read_parm(ptr noundef %3, i16 noundef zeroext %4, i32 noundef 12) #16, !dbg !6199
  %call3 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef @.str.15, i32 noundef %call2) #16, !dbg !6200
  %conv = sext i32 %call3 to i64, !dbg !6200
  store i64 %conv, ptr %retval, align 8, !dbg !6201
  br label %return, !dbg !6201

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !6202
  ret i64 %5, !dbg !6202
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pin_cfg_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6203 {
entry:
  %retval = alloca i64, align 8
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6205, metadata !DIExpression()), !dbg !6210
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6206, metadata !DIExpression()), !dbg !6211
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6207, metadata !DIExpression()), !dbg !6212
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6208, metadata !DIExpression()), !dbg !6213
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #15, !dbg !6214
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6209, metadata !DIExpression()), !dbg !6215
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !6216
  %1 = load i16, ptr %nid.addr, align 2, !dbg !6216
  %call = call i32 @snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 9) #16, !dbg !6216
  %call1 = call i32 @get_wcaps_type(i32 noundef %call) #16, !dbg !6218
  %cmp = icmp ne i32 %call1, 4, !dbg !6219
  br i1 %cmp, label %if.then, label %if.end, !dbg !6220

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !6221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6221

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %codec.addr, align 8, !dbg !6222
  %3 = load i16, ptr %nid.addr, align 2, !dbg !6224
  %call2 = call i32 @snd_hdac_read(ptr noundef %2, i16 noundef zeroext %3, i32 noundef 3868, i32 noundef 0, ptr noundef %val) #16, !dbg !6225
  %tobool = icmp ne i32 %call2, 0, !dbg !6225
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !6226

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !6227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6227

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !6228
  %5 = load i32, ptr %val, align 4, !dbg !6229
  %call5 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %4, ptr noundef @.str.15, i32 noundef %5) #16, !dbg !6230
  %conv = sext i32 %call5 to i64, !dbg !6230
  store i64 %conv, ptr %retval, align 8, !dbg !6231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6231

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #15, !dbg !6232
  %6 = load i64, ptr %retval, align 8, !dbg !6232
  ret i64 %6, !dbg !6232
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6233 dso_local i32 @snd_hdac_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @connections_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6236 {
entry:
  %retval = alloca i64, align 8
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %list = alloca [32 x i16], align 16
  %i = alloca i32, align 4
  %nconns = alloca i32, align 4
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6238, metadata !DIExpression()), !dbg !6247
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6239, metadata !DIExpression()), !dbg !6248
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6240, metadata !DIExpression()), !dbg !6249
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6241, metadata !DIExpression()), !dbg !6250
  call void @llvm.lifetime.start.p0(i64 64, ptr %list) #15, !dbg !6251
  call void @llvm.dbg.declare(metadata ptr %list, metadata !6242, metadata !DIExpression()), !dbg !6252
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6253
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6244, metadata !DIExpression()), !dbg !6254
  call void @llvm.lifetime.start.p0(i64 4, ptr %nconns) #15, !dbg !6253
  call void @llvm.dbg.declare(metadata ptr %nconns, metadata !6245, metadata !DIExpression()), !dbg !6255
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !6256
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6246, metadata !DIExpression()), !dbg !6257
  store i64 0, ptr %ret, align 8, !dbg !6257
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !6258
  %1 = load i16, ptr %nid.addr, align 2, !dbg !6259
  %arraydecay = getelementptr inbounds [32 x i16], ptr %list, i64 0, i64 0, !dbg !6260
  %call = call i32 @snd_hdac_get_connections(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %arraydecay, i32 noundef 32) #16, !dbg !6261
  store i32 %call, ptr %nconns, align 4, !dbg !6262
  %2 = load i32, ptr %nconns, align 4, !dbg !6263
  %cmp = icmp sle i32 %2, 0, !dbg !6265
  br i1 %cmp, label %if.then, label %if.end, !dbg !6266

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %nconns, align 4, !dbg !6267
  %conv = sext i32 %3 to i64, !dbg !6267
  store i64 %conv, ptr %retval, align 8, !dbg !6268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6268

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !6269
  br label %for.cond, !dbg !6271

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !6272
  %5 = load i32, ptr %nconns, align 4, !dbg !6274
  %cmp1 = icmp slt i32 %4, %5, !dbg !6275
  br i1 %cmp1, label %for.body, label %for.end, !dbg !6276

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !6277
  %7 = load i64, ptr %ret, align 8, !dbg !6278
  %conv3 = trunc i64 %7 to i32, !dbg !6278
  %8 = load i32, ptr %i, align 4, !dbg !6279
  %tobool = icmp ne i32 %8, 0, !dbg !6279
  %9 = zext i1 %tobool to i64, !dbg !6279
  %cond = select i1 %tobool, ptr @.str.26, ptr @.str.9, !dbg !6279
  %10 = load i32, ptr %i, align 4, !dbg !6280
  %idxprom = sext i32 %10 to i64, !dbg !6281
  %arrayidx = getelementptr [32 x i16], ptr %list, i64 0, i64 %idxprom, !dbg !6281
  %11 = load i16, ptr %arrayidx, align 2, !dbg !6281
  %conv4 = zext i16 %11 to i32, !dbg !6281
  %call5 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %6, i32 noundef %conv3, ptr noundef @.str.25, ptr noundef %cond, i32 noundef %conv4) #16, !dbg !6282
  %conv6 = sext i32 %call5 to i64, !dbg !6282
  %12 = load i64, ptr %ret, align 8, !dbg !6283
  %add = add i64 %12, %conv6, !dbg !6283
  store i64 %add, ptr %ret, align 8, !dbg !6283
  br label %for.inc, !dbg !6284

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !dbg !6285
  %inc = add i32 %13, 1, !dbg !6285
  store i32 %inc, ptr %i, align 4, !dbg !6285
  br label %for.cond, !dbg !6286, !llvm.loop !6287

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !6289
  %15 = load i64, ptr %ret, align 8, !dbg !6290
  %conv7 = trunc i64 %15 to i32, !dbg !6290
  %call8 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %14, i32 noundef %conv7, ptr noundef @.str.27) #16, !dbg !6291
  %conv9 = sext i32 %call8 to i64, !dbg !6291
  %16 = load i64, ptr %ret, align 8, !dbg !6292
  %add10 = add i64 %16, %conv9, !dbg !6292
  store i64 %add10, ptr %ret, align 8, !dbg !6292
  %17 = load i64, ptr %ret, align 8, !dbg !6293
  store i64 %17, ptr %retval, align 8, !dbg !6294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6294

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !6295
  call void @llvm.lifetime.end.p0(i64 4, ptr %nconns) #15, !dbg !6295
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6295
  call void @llvm.lifetime.end.p0(i64 64, ptr %list) #15, !dbg !6295
  %18 = load i64, ptr %retval, align 8, !dbg !6295
  ret i64 %18, !dbg !6295
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6296 dso_local i32 @snd_hdac_get_connections(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6300 dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6303 dso_local void @kobject_init(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6306 dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6309 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @widget_release(ptr noundef %kobj) #0 align 16 !dbg !6312 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6314, metadata !DIExpression()), !dbg !6315
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6316
  call void @kfree(ptr noundef %0) #16, !dbg !6317
  ret void, !dbg !6318
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @widget_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6319 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %wid_attr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %nid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6321, metadata !DIExpression()), !dbg !6329
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6322, metadata !DIExpression()), !dbg !6330
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6323, metadata !DIExpression()), !dbg !6331
  call void @llvm.lifetime.start.p0(i64 8, ptr %wid_attr) #15, !dbg !6332
  call void @llvm.dbg.declare(metadata ptr %wid_attr, metadata !6324, metadata !DIExpression()), !dbg !6333
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6334
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6325, metadata !DIExpression()), !dbg !6334
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !6334
  store ptr %0, ptr %__mptr, align 8, !dbg !6334
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6334
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6334
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6334
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6335
  %2 = load ptr, ptr %tmp, align 8, !dbg !6334
  store ptr %2, ptr %wid_attr, align 8, !dbg !6333
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #15, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !6327, metadata !DIExpression()), !dbg !6337
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid) #15, !dbg !6338
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !6328, metadata !DIExpression()), !dbg !6339
  %3 = load ptr, ptr %wid_attr, align 8, !dbg !6340
  %show = getelementptr inbounds %struct.widget_attribute, ptr %3, i32 0, i32 1, !dbg !6342
  %4 = load ptr, ptr %show, align 8, !dbg !6342
  %tobool = icmp ne ptr %4, null, !dbg !6340
  br i1 %tobool, label %if.end, label %if.then, !dbg !6343

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !6344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6344

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !6345
  %call = call i32 @get_codec_nid(ptr noundef %5, ptr noundef %codec) #16, !dbg !6346
  store i32 %call, ptr %nid, align 4, !dbg !6347
  %6 = load i32, ptr %nid, align 4, !dbg !6348
  %cmp = icmp slt i32 %6, 0, !dbg !6350
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6351

if.then1:                                         ; preds = %if.end
  %7 = load i32, ptr %nid, align 4, !dbg !6352
  %conv = sext i32 %7 to i64, !dbg !6352
  store i64 %conv, ptr %retval, align 8, !dbg !6353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6353

if.end2:                                          ; preds = %if.end
  %8 = load ptr, ptr %wid_attr, align 8, !dbg !6354
  %show3 = getelementptr inbounds %struct.widget_attribute, ptr %8, i32 0, i32 1, !dbg !6355
  %9 = load ptr, ptr %show3, align 8, !dbg !6355
  %10 = load ptr, ptr %codec, align 8, !dbg !6356
  %11 = load i32, ptr %nid, align 4, !dbg !6357
  %conv4 = trunc i32 %11 to i16, !dbg !6357
  %12 = load ptr, ptr %wid_attr, align 8, !dbg !6358
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !6359
  %call5 = call i64 %9(ptr noundef %10, i16 noundef zeroext %conv4, ptr noundef %12, ptr noundef %13) #16, !dbg !6354
  store i64 %call5, ptr %retval, align 8, !dbg !6360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6360

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid) #15, !dbg !6361
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #15, !dbg !6361
  call void @llvm.lifetime.end.p0(i64 8, ptr %wid_attr) #15, !dbg !6361
  %14 = load i64, ptr %retval, align 8, !dbg !6361
  ret i64 %14, !dbg !6361
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @widget_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !6362 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %wid_attr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %nid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6364, metadata !DIExpression()), !dbg !6373
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6365, metadata !DIExpression()), !dbg !6374
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6366, metadata !DIExpression()), !dbg !6375
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6367, metadata !DIExpression()), !dbg !6376
  call void @llvm.lifetime.start.p0(i64 8, ptr %wid_attr) #15, !dbg !6377
  call void @llvm.dbg.declare(metadata ptr %wid_attr, metadata !6368, metadata !DIExpression()), !dbg !6378
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6379
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6369, metadata !DIExpression()), !dbg !6379
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !6379
  store ptr %0, ptr %__mptr, align 8, !dbg !6379
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6379
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6379
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6379
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6380
  %2 = load ptr, ptr %tmp, align 8, !dbg !6379
  store ptr %2, ptr %wid_attr, align 8, !dbg !6378
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #15, !dbg !6381
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !6371, metadata !DIExpression()), !dbg !6382
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid) #15, !dbg !6383
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !6372, metadata !DIExpression()), !dbg !6384
  %3 = load ptr, ptr %wid_attr, align 8, !dbg !6385
  %store = getelementptr inbounds %struct.widget_attribute, ptr %3, i32 0, i32 2, !dbg !6387
  %4 = load ptr, ptr %store, align 8, !dbg !6387
  %tobool = icmp ne ptr %4, null, !dbg !6385
  br i1 %tobool, label %if.end, label %if.then, !dbg !6388

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !6389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6389

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !6390
  %call = call i32 @get_codec_nid(ptr noundef %5, ptr noundef %codec) #16, !dbg !6391
  store i32 %call, ptr %nid, align 4, !dbg !6392
  %6 = load i32, ptr %nid, align 4, !dbg !6393
  %cmp = icmp slt i32 %6, 0, !dbg !6395
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6396

if.then1:                                         ; preds = %if.end
  %7 = load i32, ptr %nid, align 4, !dbg !6397
  %conv = sext i32 %7 to i64, !dbg !6397
  store i64 %conv, ptr %retval, align 8, !dbg !6398
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6398

if.end2:                                          ; preds = %if.end
  %8 = load ptr, ptr %wid_attr, align 8, !dbg !6399
  %store3 = getelementptr inbounds %struct.widget_attribute, ptr %8, i32 0, i32 2, !dbg !6400
  %9 = load ptr, ptr %store3, align 8, !dbg !6400
  %10 = load ptr, ptr %codec, align 8, !dbg !6401
  %11 = load i32, ptr %nid, align 4, !dbg !6402
  %conv4 = trunc i32 %11 to i16, !dbg !6402
  %12 = load ptr, ptr %wid_attr, align 8, !dbg !6403
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !6404
  %14 = load i64, ptr %count.addr, align 8, !dbg !6405
  %call5 = call i64 %9(ptr noundef %10, i16 noundef zeroext %conv4, ptr noundef %12, ptr noundef %13, i64 noundef %14) #16, !dbg !6399
  store i64 %call5, ptr %retval, align 8, !dbg !6406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6406

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid) #15, !dbg !6407
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #15, !dbg !6407
  call void @llvm.lifetime.end.p0(i64 8, ptr %wid_attr) #15, !dbg !6407
  %15 = load i64, ptr %retval, align 8, !dbg !6407
  ret i64 %15, !dbg !6407
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_codec_nid(ptr noundef %kobj, ptr noundef %codecp) #0 align 16 !dbg !6408 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %codecp.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %nid = alloca i32, align 4
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr4 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6413, metadata !DIExpression()), !dbg !6422
  store ptr %codecp, ptr %codecp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codecp.addr, metadata !6414, metadata !DIExpression()), !dbg !6423
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6415, metadata !DIExpression()), !dbg !6425
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6426
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6416, metadata !DIExpression()), !dbg !6426
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6426
  %parent = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2, !dbg !6426
  %1 = load ptr, ptr %parent, align 8, !dbg !6426
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2, !dbg !6426
  %2 = load ptr, ptr %parent1, align 8, !dbg !6426
  store ptr %2, ptr %__mptr, align 8, !dbg !6426
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6426
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !6426
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6426
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6427
  %4 = load ptr, ptr %tmp, align 8, !dbg !6426
  store ptr %4, ptr %dev, align 8, !dbg !6425
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid) #15, !dbg !6428
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !6418, metadata !DIExpression()), !dbg !6429
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !6430
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6419, metadata !DIExpression()), !dbg !6431
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !6432
  %name = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 0, !dbg !6433
  %6 = load ptr, ptr %name, align 8, !dbg !6433
  %call = call i32 @kstrtoint(ptr noundef %6, i32 noundef 16, ptr noundef %nid) #16, !dbg !6434
  %conv = sext i32 %call to i64, !dbg !6434
  store i64 %conv, ptr %ret, align 8, !dbg !6435
  %7 = load i64, ptr %ret, align 8, !dbg !6436
  %cmp = icmp slt i64 %7, 0, !dbg !6438
  br i1 %cmp, label %if.then, label %if.end, !dbg !6439

if.then:                                          ; preds = %entry
  %8 = load i64, ptr %ret, align 8, !dbg !6440
  %conv3 = trunc i64 %8 to i32, !dbg !6440
  store i32 %conv3, ptr %retval, align 4, !dbg !6441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6441

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #15, !dbg !6442
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !6420, metadata !DIExpression()), !dbg !6442
  %9 = load ptr, ptr %dev, align 8, !dbg !6442
  store ptr %9, ptr %__mptr4, align 8, !dbg !6442
  %10 = load ptr, ptr %__mptr4, align 8, !dbg !6442
  %add.ptr6 = getelementptr i8, ptr %10, i64 0, !dbg !6442
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #15, !dbg !6443
  %11 = load ptr, ptr %tmp5, align 8, !dbg !6442
  %12 = load ptr, ptr %codecp.addr, align 8, !dbg !6444
  store ptr %11, ptr %12, align 8, !dbg !6445
  %13 = load i32, ptr %nid, align 4, !dbg !6446
  store i32 %13, ptr %retval, align 4, !dbg !6447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6447

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !6448
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid) #15, !dbg !6448
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !6448
  %14 = load i32, ptr %retval, align 4, !dbg !6448
  ret i32 %14, !dbg !6448
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6449 dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(0,1) }
attributes #19 = { noredzone allocsize(1) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132}
!llvm.ident = !{!5133}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hdac_dev_attr_group", scope: !2, file: !3, line: 69, type: !359, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/hda/.hdac_sysfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/hda/snd-hda-core\22 -D KBUILD_BASENAME=\22hdac_sysfs\22 -D KBUILD_MODNAME=\22snd_hda_core\22 -D __KBUILD_MODNAME=kmod_snd_hda_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/hda/hdac_sysfs.ll sound/hda/hdac_sysfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !203, globals: !4975, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/hda/hdac_sysfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ead64632d1fc90494181b2f06430b287")
!4 = !{!5, !12, !20, !27, !32, !38, !43, !49, !56, !64, !80, !87, !93, !100, !108, !116, !122, !129, !133, !142, !147, !152, !158, !165, !176, !181, !191}
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !117, line: 41, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!120 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!121 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !117, line: 99, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128}
!124 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!125 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!126 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!127 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!128 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !117, line: 80, baseType: !7, size: 32, elements: !130)
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!132 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141}
!135 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!136 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!137 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!138 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!139 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!140 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!141 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!145 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!146 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!150 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!151 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!155 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!156 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!157 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !159, line: 5, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!160 = !{!161, !162, !163, !164}
!161 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!162 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!163 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!164 = !DIEnumerator(name: "DMA_NONE", value: 3)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !166, line: 53, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175}
!168 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!169 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!170 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!171 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!172 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!173 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!174 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!175 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !177, line: 10, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!178 = !{!179, !180}
!179 = !DIEnumerator(name: "false", value: 0)
!180 = !DIEnumerator(name: "true", value: 1)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !182, line: 364, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!183 = !{!184, !185, !186, !187, !188, !189, !190}
!184 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!185 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!186 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!187 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!188 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!189 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!190 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !192, line: 25, baseType: !7, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/sound/hda_verbs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86c5c6ecf5e41424f30ca018275e43de")
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202}
!194 = !DIEnumerator(name: "AC_WID_AUD_OUT", value: 0)
!195 = !DIEnumerator(name: "AC_WID_AUD_IN", value: 1)
!196 = !DIEnumerator(name: "AC_WID_AUD_MIX", value: 2)
!197 = !DIEnumerator(name: "AC_WID_AUD_SEL", value: 3)
!198 = !DIEnumerator(name: "AC_WID_PIN", value: 4)
!199 = !DIEnumerator(name: "AC_WID_POWER", value: 5)
!200 = !DIEnumerator(name: "AC_WID_VOL_KNB", value: 6)
!201 = !DIEnumerator(name: "AC_WID_BEEP", value: 7)
!202 = !DIEnumerator(name: "AC_WID_VENDOR", value: 15)
!203 = !{!204, !205, !207, !355, !109, !4963, !4221}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !206, line: 154, baseType: !7)
!206 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_device", file: !209, line: 52, size: 7616, elements: !210)
!209 = !DIFile(filename: "./include/sound/hdaudio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "507832bfa56b8fb9054739385c0935fd")
!210 = !{!211, !4748, !4749, !4915, !4916, !4917, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4934, !4935, !4936, !4937, !4938, !4939, !4947, !4950, !4951, !4959, !4960, !4961, !4962}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !208, file: !209, line: 53, baseType: !212, size: 5824)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !213)
!213 = !{!214, !4220, !4222, !4225, !4226, !4279, !4364, !4365, !4366, !4367, !4368, !4375, !4533, !4546, !4556, !4560, !4562, !4563, !4564, !4568, !4575, !4576, !4579, !4582, !4586, !4690, !4691, !4692, !4693, !4694, !4695, !4725, !4726, !4727, !4730, !4733, !4742, !4743, !4744, !4745, !4746, !4747}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !212, file: !94, line: 706, baseType: !215, size: 512)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !166, line: 64, size: 512, elements: !216)
!216 = !{!217, !221, !227, !229, !318, !4107, !4210, !4215, !4216, !4217, !4218, !4219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !166, line: 65, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !215, file: !166, line: 66, baseType: !222, size: 128, offset: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !206, line: 190, size: 128, elements: !223)
!223 = !{!224, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !206, line: 191, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !222, file: !206, line: 191, baseType: !225, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !166, line: 67, baseType: !228, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !215, file: !166, line: 68, baseType: !230, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !166, line: 168, size: 768, elements: !232)
!232 = !{!233, !234, !277, !278}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !231, file: !166, line: 169, baseType: !222, size: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !231, file: !166, line: 170, baseType: !235, size: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !236, line: 29, baseType: !237)
!236 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !236, line: 17, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !236, line: 18, baseType: !240, size: 32)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !236, line: 18, size: 32, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !240, file: !236, line: 19, baseType: !243, size: 32)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !244, line: 14, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !243, file: !244, line: 15, baseType: !247, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !248, line: 44, baseType: !249)
!248 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !248, line: 14, size: 32, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !248, line: 15, baseType: !252, size: 32)
!252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !248, line: 15, size: 32, elements: !253)
!253 = !{!254, !259, !269}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !252, file: !248, line: 16, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !206, line: 174, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !206, line: 172, size: 32, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !256, file: !206, line: 173, baseType: !109, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !248, line: 24, baseType: !260, size: 16)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !252, file: !248, line: 24, size: 16, elements: !261)
!261 = !{!262, !268}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !260, file: !248, line: 25, baseType: !263, size: 8)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !264, line: 17, baseType: !265)
!264 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !266, line: 21, baseType: !267)
!266 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!267 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !260, file: !248, line: 26, baseType: !263, size: 8, offset: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !248, line: 28, baseType: !270, size: 32)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !252, file: !248, line: 28, size: 32, elements: !271)
!271 = !{!272, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !270, file: !248, line: 29, baseType: !273, size: 16)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !264, line: 19, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !266, line: 24, baseType: !275)
!275 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !270, file: !248, line: 30, baseType: !273, size: 16, offset: 16)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !231, file: !166, line: 171, baseType: !215, size: 512, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !231, file: !166, line: 172, baseType: !279, size: 64, offset: 704)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !166, line: 133, size: 192, elements: !282)
!282 = !{!283, !290, !295}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !281, file: !166, line: 134, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!109, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !166, line: 135, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!218, !288}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !281, file: !166, line: 136, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!109, !288, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !166, line: 125, size: 20736, elements: !302)
!302 = !{!303, !308, !312, !313, !317}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !301, file: !166, line: 126, baseType: !304, size: 192)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 192, elements: !306)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!306 = !{!307}
!307 = !DISubrange(count: 3)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !301, file: !166, line: 127, baseType: !309, size: 4096, offset: 192)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 4096, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !301, file: !166, line: 128, baseType: !109, size: 32, offset: 4288)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !301, file: !166, line: 129, baseType: !314, size: 16384, offset: 4320)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 16384, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !301, file: !166, line: 130, baseType: !109, size: 32, offset: 20704)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !215, file: !166, line: 69, baseType: !319, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !166, line: 116, size: 384, elements: !322)
!322 = !{!323, !327, !356, !4069, !4097, !4101}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !321, file: !166, line: 117, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !228}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !321, file: !166, line: 118, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !331, line: 254, size: 128, elements: !332)
!331 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!332 = !{!333, !348}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !330, file: !331, line: 255, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!337, !228, !342, !305}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !206, line: 66, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !339, line: 73, baseType: !340)
!339 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !339, line: 15, baseType: !341)
!341 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !331, line: 30, size: 128, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !343, file: !331, line: 31, baseType: !218, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !343, file: !331, line: 32, baseType: !347, size: 16, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !206, line: 24, baseType: !275)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !330, file: !331, line: 256, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!337, !228, !342, !218, !352}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !206, line: 61, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !339, line: 72, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !339, line: 16, baseType: !355)
!355 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !321, file: !166, line: 119, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !331, line: 84, size: 320, elements: !361)
!361 = !{!362, !363, !367, !4065, !4067}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !360, file: !331, line: 85, baseType: !218, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !360, file: !331, line: 86, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!347, !228, !342, !109}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !360, file: !331, line: 88, baseType: !368, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!347, !228, !371, !109}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !331, line: 175, size: 512, elements: !373)
!373 = !{!374, !375, !376, !377, !4056, !4060, !4061}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !372, file: !331, line: 176, baseType: !343, size: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !372, file: !331, line: 177, baseType: !352, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !372, file: !331, line: 178, baseType: !204, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !372, file: !331, line: 179, baseType: !378, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !28, line: 472, size: 1536, align: 64, elements: !383)
!383 = !{!384, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !4050, !4051, !4052, !4053, !4054, !4055}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !382, file: !28, line: 473, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !28, line: 641, size: 4800, elements: !387)
!387 = !{!388, !389, !390, !398, !399, !406, !407, !410, !411, !3829, !3830, !3831, !3832, !3833, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3873, !3876, !3877, !3878, !3887, !3888, !3889, !3890}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !386, file: !28, line: 642, baseType: !347, size: 16)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !386, file: !28, line: 643, baseType: !275, size: 16, offset: 16)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !386, file: !28, line: 644, baseType: !391, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !392, line: 23, baseType: !393)
!392 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 21, size: 32, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !393, file: !392, line: 22, baseType: !396, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !206, line: 37, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !339, line: 49, baseType: !7)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !386, file: !28, line: 645, baseType: !222, size: 128, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !386, file: !28, line: 646, baseType: !400, size: 32, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !392, line: 28, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 26, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !401, file: !392, line: 27, baseType: !404, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !206, line: 38, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !339, line: 50, baseType: !7)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !386, file: !28, line: 647, baseType: !7, size: 32, offset: 224)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !386, file: !28, line: 650, baseType: !408, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !28, line: 607, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !386, file: !28, line: 651, baseType: !408, size: 64, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !386, file: !28, line: 654, baseType: !412, size: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !28, line: 1966, size: 2048, align: 512, elements: !415)
!415 = !{!416, !3663, !3673, !3677, !3681, !3685, !3689, !3693, !3697, !3701, !3705, !3706, !3710, !3714, !3751, !3780, !3784, !3790, !3794, !3798, !3802, !3806, !3810, !3816, !3820}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !414, file: !28, line: 1967, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!420, !385, !420, !7}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !422, line: 82, size: 1536, elements: !423)
!422 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!423 = !{!424, !425, !435, !443, !444, !464, !465, !469, !482, !3647, !3648, !3649, !3650, !3655, !3656, !3657}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !421, file: !422, line: 84, baseType: !7, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !421, file: !422, line: 85, baseType: !426, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !427, line: 275, baseType: !428)
!427 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !427, line: 275, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !428, file: !427, line: 275, baseType: !431, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !427, line: 69, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !427, line: 64, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !432, file: !427, line: 65, baseType: !7, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !421, file: !422, line: 86, baseType: !436, size: 128, offset: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !437, line: 38, size: 128, elements: !438)
!437 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!438 = !{!439, !441}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !437, line: 39, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !436, file: !437, line: 39, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !421, file: !422, line: 87, baseType: !420, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !421, file: !422, line: 88, baseType: !445, size: 128, offset: 256)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !422, line: 49, size: 128, elements: !446)
!446 = !{!447, !461}
!447 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !422, line: 50, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !422, line: 50, size: 64, elements: !449)
!449 = !{!450, !457}
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !422, line: 51, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !422, line: 51, size: 64, elements: !452)
!452 = !{!453, !456}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !451, file: !422, line: 52, baseType: !454, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !264, line: 21, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !266, line: 27, baseType: !7)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !451, file: !422, line: 52, baseType: !454, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !448, file: !422, line: 54, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !264, line: 23, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !266, line: 31, baseType: !460)
!460 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !445, file: !422, line: 56, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !421, file: !422, line: 89, baseType: !385, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !421, file: !422, line: 91, baseType: !466, size: 256, offset: 448)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 256, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !421, file: !422, line: 94, baseType: !470, size: 64, offset: 704)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !471, line: 25, size: 64, elements: !472)
!471 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !471, line: 26, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !471, line: 26, size: 64, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !474, file: !471, line: 28, baseType: !459, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !471, line: 30, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !474, file: !471, line: 30, size: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !478, file: !471, line: 31, baseType: !235, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !478, file: !471, line: 32, baseType: !109, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !421, file: !422, line: 95, baseType: !483, size: 64, offset: 768)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !422, line: 128, size: 1024, align: 512, elements: !486)
!486 = !{!487, !491, !492, !499, !505, !509, !513, !517, !518, !522, !526, !3637, !3641}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !485, file: !422, line: 129, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!109, !420, !7}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !485, file: !422, line: 130, baseType: !488, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !485, file: !422, line: 131, baseType: !493, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!109, !496, !498}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !485, file: !422, line: 132, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!109, !496, !7, !218, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !485, file: !422, line: 134, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!109, !496}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !485, file: !422, line: 135, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!109, !420}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !485, file: !422, line: 136, baseType: !514, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !420}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !485, file: !422, line: 137, baseType: !514, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !485, file: !422, line: 138, baseType: !519, size: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !420, !385}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !485, file: !422, line: 139, baseType: !523, size: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!305, !420, !305, !109}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !485, file: !422, line: 140, baseType: !527, size: 64, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!530, !3636}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !532, line: 70, size: 256, elements: !533)
!532 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!533 = !{!534, !535, !3632, !3633}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !531, file: !532, line: 71, baseType: !420, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !531, file: !532, line: 72, baseType: !536, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !28, line: 1190, size: 10752, elements: !538)
!538 = !{!539, !540, !543, !544, !545, !549, !1029, !1168, !1208, !1298, !1302, !1303, !1304, !1305, !1306, !1315, !1316, !1317, !1318, !1323, !1327, !1328, !1331, !1334, !1337, !1340, !1341, !1342, !1383, !3565, !3566, !3567, !3568, !3569, !3570, !3573, !3575, !3582, !3583, !3584, !3585, !3586, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !537, file: !28, line: 1191, baseType: !222, size: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !537, file: !28, line: 1192, baseType: !541, size: 32, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !206, line: 21, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !206, line: 18, baseType: !454)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !537, file: !28, line: 1193, baseType: !267, size: 8, offset: 160)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !537, file: !28, line: 1194, baseType: !355, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !537, file: !28, line: 1195, baseType: !546, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !206, line: 52, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !339, line: 88, baseType: !548)
!548 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !537, file: !28, line: 1196, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !28, line: 2366, size: 576, elements: !552)
!552 = !{!553, !554, !555, !562, !566, !570, !574, !1014, !1015, !1019, !1021, !1022, !1023, !1025, !1026, !1027, !1028}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !551, file: !28, line: 2367, baseType: !218, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !551, file: !28, line: 2368, baseType: !109, size: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !551, file: !28, line: 2376, baseType: !556, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!109, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !561, line: 32, flags: DIFlagFwdDecl)
!561 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!562 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !551, file: !28, line: 2377, baseType: !563, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !28, line: 75, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !551, file: !28, line: 2378, baseType: !567, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!420, !550, !109, !218, !204}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !551, file: !28, line: 2380, baseType: !571, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !536}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !551, file: !28, line: 2381, baseType: !575, size: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !21, line: 402, size: 9216, align: 512, elements: !577)
!577 = !{!578, !579, !580, !584, !606, !632, !633, !634, !635, !639, !644, !645, !665, !721, !722, !723, !724, !725, !728, !729, !730, !738, !742, !769, !790, !791, !792, !793, !802, !825, !826, !829, !832, !833, !834, !835, !836, !837, !838, !843, !844, !972, !980, !981, !982, !984, !988, !989, !993, !994, !995, !996, !998, !999, !1000, !1007, !1008, !1009, !1013}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !576, file: !21, line: 403, baseType: !20, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !576, file: !21, line: 406, baseType: !222, size: 128, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !576, file: !21, line: 409, baseType: !581, size: 448, offset: 192)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 448, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 56)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !576, file: !21, line: 417, baseType: !585, size: 768, offset: 640)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !21, line: 45, size: 768, elements: !586)
!586 = !{!587, !588, !589, !590, !593}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !585, file: !21, line: 46, baseType: !215, size: 512)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !585, file: !21, line: 47, baseType: !575, size: 64, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !585, file: !21, line: 48, baseType: !228, size: 64, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !585, file: !21, line: 49, baseType: !591, size: 64, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !21, line: 49, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !585, file: !21, line: 50, baseType: !594, size: 64, offset: 704)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !596, line: 26, size: 256, elements: !597)
!596 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !595, file: !596, line: 27, baseType: !7, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !595, file: !596, line: 28, baseType: !600, size: 192, offset: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !601, line: 43, size: 192, elements: !602)
!601 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!602 = !{!603, !605}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !600, file: !601, line: 44, baseType: !604, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !244, line: 23, baseType: !243)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !600, file: !601, line: 45, baseType: !222, size: 128, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !576, file: !21, line: 418, baseType: !607, size: 64, offset: 1408)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !21, line: 53, size: 448, elements: !609)
!609 = !{!610, !611, !616, !620, !624, !628}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !608, file: !21, line: 54, baseType: !343, size: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !608, file: !21, line: 55, baseType: !612, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!337, !607, !615, !305}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !608, file: !21, line: 57, baseType: !617, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!337, !607, !615, !218, !352}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !608, file: !21, line: 59, baseType: !621, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !575, !218}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !608, file: !21, line: 60, baseType: !625, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!109, !575}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !608, file: !21, line: 61, baseType: !629, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !575}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !576, file: !21, line: 419, baseType: !218, size: 64, offset: 1472)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !576, file: !21, line: 420, baseType: !218, size: 64, offset: 1536)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !576, file: !21, line: 421, baseType: !228, size: 64, offset: 1600)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !576, file: !21, line: 424, baseType: !636, size: 64, offset: 1664)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !21, line: 424, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !576, file: !21, line: 425, baseType: !640, size: 64, offset: 1728)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !264, line: 20, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !266, line: 26, baseType: !109)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !576, file: !21, line: 426, baseType: !7, size: 32, offset: 1792)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !576, file: !21, line: 435, baseType: !646, size: 256, offset: 1856)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !647, line: 66, size: 256, elements: !648)
!647 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!648 = !{!649, !658, !659, !664}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !646, file: !647, line: 67, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !651, line: 13, baseType: !652)
!651 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !206, line: 181, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !206, line: 179, size: 64, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !653, file: !206, line: 180, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !264, line: 22, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !266, line: 30, baseType: !548)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !646, file: !647, line: 68, baseType: !604, size: 32, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !646, file: !647, line: 70, baseType: !660, size: 32, offset: 96)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !661, line: 15, size: 32, elements: !662)
!661 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !660, file: !661, line: 20, baseType: !255, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !646, file: !647, line: 72, baseType: !222, size: 128, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !576, file: !21, line: 437, baseType: !666, size: 64, offset: 2112)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !668, line: 69, size: 320, elements: !669)
!668 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!669 = !{!670, !671, !672, !692, !694, !698, !699}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !667, file: !668, line: 70, baseType: !218, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !667, file: !668, line: 71, baseType: !575, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !667, file: !668, line: 72, baseType: !673, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !668, line: 47, size: 256, elements: !676)
!676 = !{!677, !678, !684, !688}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !668, line: 49, baseType: !7, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !675, file: !668, line: 51, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!109, !218, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !675, file: !668, line: 53, baseType: !685, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!109, !305, !682}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !675, file: !668, line: 55, baseType: !689, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !204}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !667, file: !668, line: 73, baseType: !693, size: 16, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !667, file: !668, line: 74, baseType: !695, size: 8, offset: 208)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !264, line: 16, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !266, line: 20, baseType: !697)
!697 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !668, line: 75, baseType: !263, size: 8, offset: 216)
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !667, file: !668, line: 76, baseType: !700, size: 64, offset: 256)
!700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !667, file: !668, line: 76, size: 64, elements: !701)
!701 = !{!702, !703, !710}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !700, file: !668, line: 77, baseType: !204, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !700, file: !668, line: 78, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !668, line: 86, size: 128, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !706, file: !668, line: 87, baseType: !7, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !706, file: !668, line: 88, baseType: !305, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !700, file: !668, line: 79, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !668, line: 92, size: 256, elements: !714)
!714 = !{!715, !716, !717, !719, !720}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !713, file: !668, line: 94, baseType: !7, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !713, file: !668, line: 95, baseType: !7, size: 32, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !713, file: !668, line: 96, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !713, file: !668, line: 97, baseType: !673, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !713, file: !668, line: 98, baseType: !204, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !576, file: !21, line: 438, baseType: !7, size: 32, offset: 2176)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !576, file: !21, line: 441, baseType: !7, size: 32, offset: 2208)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !576, file: !21, line: 442, baseType: !636, size: 64, offset: 2240)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !576, file: !21, line: 443, baseType: !640, size: 64, offset: 2304)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !576, file: !21, line: 444, baseType: !726, size: 8, offset: 2368)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !206, line: 35, baseType: !727)
!727 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !576, file: !21, line: 451, baseType: !726, size: 8, offset: 2376)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !576, file: !21, line: 454, baseType: !7, size: 32, offset: 2400)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !576, file: !21, line: 455, baseType: !731, size: 64, offset: 2432)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !733, line: 23, size: 96, elements: !734)
!733 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !732, file: !733, line: 24, baseType: !109, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !732, file: !733, line: 24, baseType: !109, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !732, file: !733, line: 24, baseType: !109, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !576, file: !21, line: 458, baseType: !739, size: 64, offset: 2496)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!109}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !576, file: !21, line: 460, baseType: !743, size: 4032, align: 512, offset: 2560)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 4032, elements: !767)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !21, line: 362, size: 576, elements: !745)
!745 = !{!746, !747, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !744, file: !21, line: 363, baseType: !204, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !744, file: !21, line: 364, baseType: !7, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !744, file: !21, line: 367, baseType: !749, size: 448, offset: 128)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !21, line: 319, size: 448, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !749, file: !21, line: 320, baseType: !575, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !749, file: !21, line: 321, baseType: !753, size: 384, offset: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !754, line: 40, size: 384, elements: !755)
!754 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !753, file: !754, line: 41, baseType: !757, size: 384, align: 64)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 384, align: 64, elements: !765)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !759, line: 5, size: 192, align: 64, elements: !760)
!759 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!760 = !{!761, !762, !764}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !758, file: !759, line: 6, baseType: !355, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !758, file: !759, line: 7, baseType: !763, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !758, file: !759, line: 8, baseType: !763, size: 64, offset: 128)
!765 = !{!766}
!766 = !DISubrange(count: 2)
!767 = !{!768}
!768 = !DISubrange(count: 7)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !576, file: !21, line: 463, baseType: !770, size: 192, offset: 6592)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !771, line: 8, size: 192, elements: !772)
!771 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!772 = !{!773, !774, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !770, file: !771, line: 10, baseType: !7, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !770, file: !771, line: 11, baseType: !775, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !770, file: !771, line: 12, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !779, line: 59, size: 48, elements: !780)
!779 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!780 = !{!781, !785, !786, !787, !788, !789}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !778, file: !779, line: 60, baseType: !782, size: 16)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !264, line: 18, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !266, line: 23, baseType: !784)
!784 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !778, file: !779, line: 61, baseType: !782, size: 16, offset: 16)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !778, file: !779, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !778, file: !779, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !779, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !778, file: !779, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !576, file: !21, line: 465, baseType: !355, size: 64, offset: 6784)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !576, file: !21, line: 469, baseType: !7, size: 32, offset: 6848)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !576, file: !21, line: 470, baseType: !222, size: 128, offset: 6912)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !576, file: !21, line: 471, baseType: !794, size: 64, offset: 7040)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !796, line: 33, size: 96, elements: !797)
!796 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!797 = !{!798, !799, !800, !801}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !795, file: !796, line: 37, baseType: !109, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !795, file: !796, line: 43, baseType: !109, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !795, file: !796, line: 45, baseType: !275, size: 16, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !796, line: 47, baseType: !275, size: 16, offset: 80)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !576, file: !21, line: 476, baseType: !803, size: 64, offset: 7104)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !21, line: 378, size: 256, elements: !805)
!805 = !{!806, !822, !823, !824}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !804, file: !21, line: 379, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !809, line: 204, baseType: !810)
!809 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !809, line: 197, size: 192, elements: !811)
!811 = !{!812, !814, !815, !816, !818, !820}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !810, file: !809, line: 198, baseType: !813, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !809, line: 21, baseType: !455)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !810, file: !809, line: 199, baseType: !267, size: 8, offset: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !810, file: !809, line: 200, baseType: !267, size: 8, offset: 40)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !810, file: !809, line: 201, baseType: !817, size: 16, offset: 48)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !809, line: 17, baseType: !274)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !810, file: !809, line: 202, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !809, line: 16, baseType: !459)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !810, file: !809, line: 203, baseType: !821, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !809, line: 22, baseType: !459)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !804, file: !21, line: 380, baseType: !7, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !804, file: !21, line: 381, baseType: !305, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !804, file: !21, line: 382, baseType: !305, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !576, file: !21, line: 477, baseType: !804, size: 256, offset: 7168)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !576, file: !21, line: 480, baseType: !827, size: 64, offset: 7424)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !21, line: 480, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !576, file: !21, line: 483, baseType: !830, size: 64, offset: 7488)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !21, line: 483, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !576, file: !21, line: 488, baseType: !305, size: 64, offset: 7552)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !576, file: !21, line: 492, baseType: !204, size: 64, offset: 7616)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !576, file: !21, line: 493, baseType: !7, size: 32, offset: 7680)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !576, file: !21, line: 495, baseType: !204, size: 64, offset: 7744)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !576, file: !21, line: 496, baseType: !7, size: 32, offset: 7808)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !576, file: !21, line: 499, baseType: !7, size: 32, offset: 7840)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !576, file: !21, line: 500, baseType: !839, size: 64, offset: 7872)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !841, line: 45, baseType: !842)
!841 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !576, file: !21, line: 503, baseType: !7, size: 32, offset: 7936)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !576, file: !21, line: 504, baseType: !845, size: 64, offset: 8000)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !848, line: 96, size: 192, elements: !849)
!848 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!849 = !{!850, !851, !932, !936}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !847, file: !848, line: 97, baseType: !7, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !847, file: !848, line: 98, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !848, line: 24, size: 3072, elements: !854)
!854 = !{!855, !857, !858, !859, !860, !884, !885, !886, !887, !905, !917, !918, !929, !930, !931}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !853, file: !848, line: 26, baseType: !856, size: 128)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 128, elements: !765)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !853, file: !848, line: 27, baseType: !856, size: 128, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !853, file: !848, line: 28, baseType: !109, size: 32, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !853, file: !848, line: 31, baseType: !235, size: 32, align: 512, offset: 512)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !853, file: !848, line: 32, baseType: !861, size: 960, offset: 576)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !862, line: 206, size: 960, elements: !863)
!862 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!863 = !{!864, !873, !878, !880, !881, !883}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !861, file: !862, line: 207, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !206, line: 232, size: 128, align: 64, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !866, file: !206, line: 233, baseType: !865, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !866, file: !206, line: 234, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !865}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !861, file: !862, line: 208, baseType: !874, size: 256, offset: 64)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 256, elements: !876)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!876 = !{!877}
!877 = !DISubrange(count: 4)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !861, file: !862, line: 209, baseType: !879, size: 256, offset: 320)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 256, elements: !876)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !861, file: !862, line: 213, baseType: !341, size: 64, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !861, file: !862, line: 215, baseType: !882, size: 256, offset: 640)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 256, elements: !876)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !861, file: !862, line: 216, baseType: !263, size: 8, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !853, file: !848, line: 33, baseType: !355, size: 64, offset: 1536)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !853, file: !848, line: 34, baseType: !355, size: 64, offset: 1600)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !853, file: !848, line: 35, baseType: !726, size: 8, offset: 1664)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !853, file: !848, line: 36, baseType: !888, size: 320, offset: 1728)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !889, line: 11, size: 320, elements: !890)
!889 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!890 = !{!891, !898, !899, !904}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !888, file: !889, line: 16, baseType: !892, size: 128)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !206, line: 198, size: 128, elements: !893)
!893 = !{!894, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !892, file: !206, line: 199, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !892, file: !206, line: 199, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !888, file: !889, line: 17, baseType: !355, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !888, file: !889, line: 18, baseType: !900, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !888, file: !889, line: 19, baseType: !454, size: 32, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !853, file: !848, line: 37, baseType: !906, size: 256, offset: 2048)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !907, line: 98, size: 256, elements: !908)
!907 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!908 = !{!909, !910, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !906, file: !907, line: 99, baseType: !650, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !906, file: !907, line: 100, baseType: !222, size: 128, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !906, file: !907, line: 101, baseType: !912, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !907, line: 21, baseType: !913)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !916}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !853, file: !848, line: 38, baseType: !866, size: 128, align: 64, offset: 2304)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !853, file: !848, line: 39, baseType: !919, size: 64, offset: 2432)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !848, line: 49, size: 768, elements: !921)
!921 = !{!922, !923, !924, !925, !926, !927, !928}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !920, file: !848, line: 50, baseType: !235, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !920, file: !848, line: 51, baseType: !879, size: 256, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !920, file: !848, line: 53, baseType: !879, size: 256, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !920, file: !848, line: 54, baseType: !355, size: 64, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !920, file: !848, line: 55, baseType: !919, size: 64, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !920, file: !848, line: 56, baseType: !109, size: 32, offset: 704)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !920, file: !848, line: 57, baseType: !109, size: 32, offset: 736)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !853, file: !848, line: 40, baseType: !355, size: 64, offset: 2496)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !853, file: !848, line: 42, baseType: !109, size: 32, offset: 2560)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !853, file: !848, line: 43, baseType: !846, size: 64, offset: 2624)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !847, file: !848, line: 99, baseType: !933, offset: 128)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !934, line: 211, elements: !935)
!934 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!935 = !{}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !847, file: !848, line: 100, baseType: !937, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !848, line: 63, size: 3008, elements: !939)
!939 = !{!940, !941, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !971}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !938, file: !848, line: 64, baseType: !919, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !938, file: !848, line: 65, baseType: !942, size: 192, offset: 64)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 192, elements: !306)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !938, file: !848, line: 67, baseType: !109, size: 32, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !938, file: !848, line: 68, baseType: !646, size: 256, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !938, file: !848, line: 69, baseType: !235, size: 32, offset: 576)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !938, file: !848, line: 70, baseType: !646, size: 256, offset: 640)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !938, file: !848, line: 71, baseType: !355, size: 64, offset: 896)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !938, file: !848, line: 72, baseType: !355, size: 64, offset: 960)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !938, file: !848, line: 73, baseType: !355, size: 64, offset: 1024)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !938, file: !848, line: 74, baseType: !355, size: 64, offset: 1088)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !938, file: !848, line: 75, baseType: !355, size: 64, offset: 1152)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !938, file: !848, line: 76, baseType: !355, size: 64, offset: 1216)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !938, file: !848, line: 77, baseType: !355, size: 64, offset: 1280)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !938, file: !848, line: 78, baseType: !355, size: 64, offset: 1344)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !938, file: !848, line: 79, baseType: !726, size: 8, offset: 1408)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !938, file: !848, line: 80, baseType: !355, size: 64, offset: 1472)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !938, file: !848, line: 81, baseType: !646, size: 256, offset: 1536)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !938, file: !848, line: 82, baseType: !595, size: 256, offset: 1792)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !938, file: !848, line: 84, baseType: !255, size: 32, offset: 2048)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !938, file: !848, line: 87, baseType: !355, size: 64, offset: 2112)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !938, file: !848, line: 88, baseType: !355, size: 64, offset: 2176)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !938, file: !848, line: 89, baseType: !963, size: 704, offset: 2240)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !907, line: 111, size: 704, elements: !964)
!964 = !{!965, !966, !967, !970}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !963, file: !907, line: 112, baseType: !906, size: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !963, file: !907, line: 113, baseType: !888, size: 320, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !963, file: !907, line: 116, baseType: !968, size: 64, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !907, line: 18, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !963, file: !907, line: 117, baseType: !109, size: 32, offset: 640)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !938, file: !848, line: 90, baseType: !846, size: 64, offset: 2944)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !576, file: !21, line: 515, baseType: !973, size: 64, offset: 8064)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !975, line: 117, size: 128, elements: !976)
!975 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !974, file: !975, line: 118, baseType: !642, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !974, file: !975, line: 119, baseType: !642, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !974, file: !975, line: 120, baseType: !341, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !576, file: !21, line: 516, baseType: !7, size: 32, offset: 8128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !576, file: !21, line: 519, baseType: !7, size: 32, offset: 8160)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !576, file: !21, line: 520, baseType: !983, size: 64, offset: 8192)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !576, file: !21, line: 523, baseType: !985, size: 64, offset: 8256)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !21, line: 523, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !576, file: !21, line: 524, baseType: !7, size: 32, offset: 8320)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !576, file: !21, line: 525, baseType: !990, size: 64, offset: 8384)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !21, line: 525, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !576, file: !21, line: 526, baseType: !7, size: 32, offset: 8448)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !576, file: !21, line: 533, baseType: !204, size: 64, offset: 8512)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !576, file: !21, line: 534, baseType: !7, size: 32, offset: 8576)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !576, file: !21, line: 535, baseType: !997, size: 64, offset: 8640)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !576, file: !21, line: 536, baseType: !7, size: 32, offset: 8704)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !576, file: !21, line: 539, baseType: !109, size: 32, offset: 8736)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !576, file: !21, line: 540, baseType: !1001, size: 64, offset: 8768)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1003, line: 32, size: 64, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1002, file: !1003, line: 33, baseType: !642, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1002, file: !1003, line: 34, baseType: !642, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !576, file: !21, line: 563, baseType: !222, size: 128, offset: 8832)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !576, file: !21, line: 565, baseType: !222, size: 128, offset: 8960)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !576, file: !21, line: 568, baseType: !1010, size: 64, offset: 9088)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !576, file: !21, line: 570, baseType: !255, size: 32, offset: 9152)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !551, file: !28, line: 2382, baseType: !550, size: 64, offset: 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !551, file: !28, line: 2383, baseType: !1016, size: 64, offset: 512)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !206, line: 194, size: 64, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1016, file: !206, line: 195, baseType: !895, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !551, file: !28, line: 2385, baseType: !1020, offset: 576)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !934, line: 206, elements: !935)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !551, file: !28, line: 2386, baseType: !1020, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !551, file: !28, line: 2387, baseType: !1020, offset: 576)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !551, file: !28, line: 2388, baseType: !1024, offset: 576)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, elements: !306)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !551, file: !28, line: 2390, baseType: !1020, offset: 576)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !551, file: !28, line: 2391, baseType: !1020, offset: 576)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !551, file: !28, line: 2392, baseType: !1020, offset: 576)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !551, file: !28, line: 2393, baseType: !1020, offset: 576)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !537, file: !28, line: 1197, baseType: !1030, size: 64, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !28, line: 2057, size: 1664, elements: !1033)
!1033 = !{!1034, !1038, !1042, !1043, !1047, !1053, !1057, !1058, !1059, !1063, !1067, !1071, !1072, !1073, !1079, !1083, !1084, !1091, !1092, !1093, !1094, !1098, !1102, !1151, !1166, !1167}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1032, file: !28, line: 2058, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!385, !536}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1032, file: !28, line: 2059, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !385}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1032, file: !28, line: 2060, baseType: !1039, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1032, file: !28, line: 2062, baseType: !1044, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !385, !109}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1032, file: !28, line: 2063, baseType: !1048, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!109, !385, !1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !28, line: 309, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1032, file: !28, line: 2064, baseType: !1054, size: 64, offset: 320)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!109, !385}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1032, file: !28, line: 2065, baseType: !1039, size: 64, offset: 384)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1032, file: !28, line: 2066, baseType: !571, size: 64, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1032, file: !28, line: 2067, baseType: !1060, size: 64, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!109, !536, !109}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1032, file: !28, line: 2068, baseType: !1064, size: 64, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!109, !536, !27}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1032, file: !28, line: 2069, baseType: !1068, size: 64, offset: 640)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!109, !536}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1032, file: !28, line: 2070, baseType: !1064, size: 64, offset: 704)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1032, file: !28, line: 2071, baseType: !1068, size: 64, offset: 768)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1032, file: !28, line: 2072, baseType: !1074, size: 64, offset: 832)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!109, !420, !1077}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !28, line: 62, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1032, file: !28, line: 2073, baseType: !1080, size: 64, offset: 896)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!109, !536, !775, !305}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1032, file: !28, line: 2074, baseType: !571, size: 64, offset: 960)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1032, file: !28, line: 2076, baseType: !1085, size: 64, offset: 1024)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!109, !1088, !420}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1090, line: 66, flags: DIFlagFwdDecl)
!1090 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1032, file: !28, line: 2077, baseType: !1085, size: 64, offset: 1088)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1032, file: !28, line: 2078, baseType: !1085, size: 64, offset: 1152)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1032, file: !28, line: 2079, baseType: !1085, size: 64, offset: 1216)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1032, file: !28, line: 2081, baseType: !1095, size: 64, offset: 1280)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!337, !536, !109, !305, !352, !546}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1032, file: !28, line: 2082, baseType: !1099, size: 64, offset: 1344)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!337, !536, !109, !218, !352, !546}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1032, file: !28, line: 2083, baseType: !1103, size: 64, offset: 1408)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!1106, !385}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1134, !1135, !1136}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1108, file: !33, line: 297, baseType: !892, size: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1108, file: !33, line: 298, baseType: !222, size: 128, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1108, file: !33, line: 299, baseType: !222, size: 128, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1108, file: !33, line: 300, baseType: !222, size: 128, offset: 384)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1108, file: !33, line: 301, baseType: !646, size: 256, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1108, file: !33, line: 302, baseType: !235, size: 32, offset: 768)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1108, file: !33, line: 303, baseType: !255, size: 32, offset: 800)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1108, file: !33, line: 304, baseType: !536, size: 64, offset: 832)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1108, file: !33, line: 305, baseType: !1119, size: 64, offset: 896)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !1120)
!1120 = !{!1121, !1133}
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !33, line: 69, baseType: !1122, size: 32)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1119, file: !33, line: 69, size: 32, elements: !1123)
!1123 = !{!1124, !1125, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1122, file: !33, line: 70, baseType: !391, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1122, file: !33, line: 71, baseType: !400, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1122, file: !33, line: 72, baseType: !1127, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1128, line: 24, baseType: !1129)
!1128 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1128, line: 22, size: 32, elements: !1130)
!1130 = !{!1131}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1129, file: !1128, line: 23, baseType: !1132, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1128, line: 20, baseType: !397)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1119, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1108, file: !33, line: 306, baseType: !546, size: 64, offset: 960)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1108, file: !33, line: 307, baseType: !355, size: 64, offset: 1024)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1108, file: !33, line: 308, baseType: !1137, size: 576, offset: 1088)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !1138)
!1138 = !{!1139, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1150}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1137, file: !33, line: 206, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !548)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1137, file: !33, line: 207, baseType: !1140, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1137, file: !33, line: 208, baseType: !1140, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1137, file: !33, line: 209, baseType: !1140, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1137, file: !33, line: 210, baseType: !1140, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1137, file: !33, line: 211, baseType: !1140, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1137, file: !33, line: 212, baseType: !1140, size: 64, offset: 384)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1137, file: !33, line: 213, baseType: !1148, size: 64, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1149, line: 8, baseType: !657)
!1149 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1137, file: !33, line: 214, baseType: !1148, size: 64, offset: 512)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1032, file: !28, line: 2085, baseType: !1152, size: 64, offset: 1472)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!341, !536, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1157, line: 15, size: 256, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1158 = !{!1159, !1160, !1161, !1162, !1163}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1156, file: !1157, line: 16, baseType: !205, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1156, file: !1157, line: 19, baseType: !109, size: 32, offset: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1156, file: !1157, line: 26, baseType: !355, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1156, file: !1157, line: 33, baseType: !355, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1156, file: !1157, line: 36, baseType: !1164, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !65, line: 33, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1032, file: !28, line: 2087, baseType: !1152, size: 64, offset: 1536)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1032, file: !28, line: 2089, baseType: !571, size: 64, offset: 1600)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !537, file: !28, line: 1198, baseType: !1169, size: 64, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !1172)
!1172 = !{!1173, !1177, !1181, !1185, !1186, !1187, !1188, !1189, !1194, !1199, !1203}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1171, file: !33, line: 325, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!109, !1107}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1171, file: !33, line: 326, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1107, !536, !109}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1171, file: !33, line: 327, baseType: !1182, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !1107}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1171, file: !33, line: 328, baseType: !1174, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1171, file: !33, line: 329, baseType: !1174, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1171, file: !33, line: 330, baseType: !1174, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1171, file: !33, line: 331, baseType: !1060, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1171, file: !33, line: 334, baseType: !1190, size: 64, offset: 448)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1193, !385}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1171, file: !33, line: 335, baseType: !1195, size: 64, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!109, !385, !1198}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1171, file: !33, line: 337, baseType: !1200, size: 64, offset: 576)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!109, !385, !1193}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1171, file: !33, line: 339, baseType: !1204, size: 64, offset: 640)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!109, !536, !1207}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !537, file: !28, line: 1199, baseType: !1209, size: 64, offset: 512)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !1212)
!1212 = !{!1213, !1224, !1225, !1229, !1230, !1231, !1246, !1269, !1273, !1274, !1297}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1211, file: !33, line: 431, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!109, !536, !109, !109, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1219)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1220, line: 8, size: 128, elements: !1221)
!1220 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1219, file: !1220, line: 9, baseType: !530, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1219, file: !1220, line: 10, baseType: !420, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1211, file: !33, line: 432, baseType: !1060, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1211, file: !33, line: 433, baseType: !1226, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!109, !536, !7}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1211, file: !33, line: 434, baseType: !1226, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1211, file: !33, line: 435, baseType: !1060, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1211, file: !33, line: 436, baseType: !1232, size: 64, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!109, !536, !109, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1236, file: !33, line: 418, baseType: !109, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1236, file: !33, line: 419, baseType: !7, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1236, file: !33, line: 420, baseType: !7, size: 32, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1236, file: !33, line: 422, baseType: !7, size: 32, offset: 96)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1236, file: !33, line: 423, baseType: !7, size: 32, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1236, file: !33, line: 424, baseType: !7, size: 32, offset: 160)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1236, file: !33, line: 425, baseType: !7, size: 32, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1236, file: !33, line: 426, baseType: !7, size: 32, offset: 224)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1211, file: !33, line: 437, baseType: !1247, size: 64, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!109, !536, !1119, !1250}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1251, file: !33, line: 346, baseType: !109, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1251, file: !33, line: 347, baseType: !458, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1251, file: !33, line: 348, baseType: !458, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1251, file: !33, line: 349, baseType: !458, size: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1251, file: !33, line: 350, baseType: !458, size: 64, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1251, file: !33, line: 351, baseType: !458, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1251, file: !33, line: 352, baseType: !458, size: 64, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1251, file: !33, line: 353, baseType: !656, size: 64, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1251, file: !33, line: 355, baseType: !656, size: 64, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1251, file: !33, line: 356, baseType: !109, size: 32, offset: 576)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1251, file: !33, line: 357, baseType: !109, size: 32, offset: 608)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1251, file: !33, line: 358, baseType: !458, size: 64, offset: 640)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1251, file: !33, line: 359, baseType: !458, size: 64, offset: 704)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1251, file: !33, line: 360, baseType: !458, size: 64, offset: 768)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1251, file: !33, line: 361, baseType: !656, size: 64, offset: 832)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1251, file: !33, line: 362, baseType: !109, size: 32, offset: 896)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1211, file: !33, line: 438, baseType: !1270, size: 64, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!109, !536, !1207, !1250}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1211, file: !33, line: 440, baseType: !1247, size: 64, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1211, file: !33, line: 441, baseType: !1275, size: 64, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!109, !536, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1279, file: !33, line: 412, baseType: !7, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1279, file: !33, line: 413, baseType: !1283, size: 1344, offset: 64)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 1344, elements: !306)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1296}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1284, file: !33, line: 398, baseType: !7, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1284, file: !33, line: 399, baseType: !7, size: 32, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1284, file: !33, line: 401, baseType: !7, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1284, file: !33, line: 402, baseType: !7, size: 32, offset: 96)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1284, file: !33, line: 403, baseType: !7, size: 32, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1284, file: !33, line: 404, baseType: !7, size: 32, offset: 160)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1284, file: !33, line: 405, baseType: !7, size: 32, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1284, file: !33, line: 406, baseType: !460, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1284, file: !33, line: 407, baseType: !1295, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !206, line: 132, baseType: !458)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1284, file: !33, line: 408, baseType: !1295, size: 64, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1211, file: !33, line: 442, baseType: !1226, size: 64, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !537, file: !28, line: 1200, baseType: !1299, size: 64, offset: 576)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !28, line: 54, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !537, file: !28, line: 1201, baseType: !355, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !537, file: !28, line: 1202, baseType: !355, size: 64, offset: 704)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !537, file: !28, line: 1203, baseType: !355, size: 64, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !537, file: !28, line: 1204, baseType: !420, size: 64, offset: 832)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !537, file: !28, line: 1205, baseType: !1307, size: 320, offset: 896)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1308, line: 48, size: 320, elements: !1309)
!1308 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1309 = !{!1310, !1311, !1312, !1313, !1314}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1307, file: !1308, line: 49, baseType: !650, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1307, file: !1308, line: 55, baseType: !650, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1307, file: !1308, line: 57, baseType: !660, size: 32, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1307, file: !1308, line: 59, baseType: !604, size: 32, offset: 160)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1307, file: !1308, line: 60, baseType: !222, size: 128, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !537, file: !28, line: 1206, baseType: !109, size: 32, offset: 1216)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !537, file: !28, line: 1207, baseType: !255, size: 32, offset: 1248)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !537, file: !28, line: 1209, baseType: !204, size: 64, offset: 1280)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !537, file: !28, line: 1211, baseType: !1319, size: 64, offset: 1344)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !28, line: 1211, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !537, file: !28, line: 1223, baseType: !1324, size: 64, offset: 1408)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !437, line: 34, size: 64, elements: !1325)
!1325 = !{!1326}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1324, file: !437, line: 35, baseType: !440, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !537, file: !28, line: 1224, baseType: !222, size: 128, offset: 1472)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !537, file: !28, line: 1225, baseType: !1329, size: 64, offset: 1600)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !28, line: 1225, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !537, file: !28, line: 1226, baseType: !1332, size: 64, offset: 1664)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !28, line: 1226, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !537, file: !28, line: 1227, baseType: !1335, size: 64, offset: 1728)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !28, line: 50, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !537, file: !28, line: 1228, baseType: !1338, size: 64, offset: 1792)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !28, line: 1228, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !537, file: !28, line: 1229, baseType: !892, size: 128, offset: 1856)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !537, file: !28, line: 1230, baseType: !7, size: 32, offset: 1984)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !537, file: !28, line: 1231, baseType: !1343, size: 2496, offset: 2048)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1349, !1381}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1343, file: !33, line: 522, baseType: !7, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1343, file: !33, line: 523, baseType: !1307, size: 320, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1343, file: !33, line: 524, baseType: !1348, size: 192, offset: 384)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 192, elements: !306)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1343, file: !33, line: 525, baseType: !1350, size: 1728, offset: 576)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1351, size: 1728, elements: !306)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !1352)
!1352 = !{!1353, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1351, file: !33, line: 223, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !1356)
!1356 = !{!1357, !1358, !1371, !1372}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1355, file: !33, line: 446, baseType: !109, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1355, file: !33, line: 447, baseType: !1359, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1361, file: !33, line: 313, baseType: !1060, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1361, file: !33, line: 314, baseType: !1060, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1361, file: !33, line: 315, baseType: !1060, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1361, file: !33, line: 316, baseType: !1060, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1361, file: !33, line: 317, baseType: !1174, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1361, file: !33, line: 318, baseType: !1174, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1361, file: !33, line: 319, baseType: !1174, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1361, file: !33, line: 320, baseType: !1204, size: 64, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1355, file: !33, line: 448, baseType: !575, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1355, file: !33, line: 449, baseType: !1354, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1351, file: !33, line: 224, baseType: !109, size: 32, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1351, file: !33, line: 226, baseType: !222, size: 128, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1351, file: !33, line: 227, baseType: !355, size: 64, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1351, file: !33, line: 228, baseType: !7, size: 32, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1351, file: !33, line: 229, baseType: !7, size: 32, offset: 352)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1351, file: !33, line: 230, baseType: !1140, size: 64, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1351, file: !33, line: 231, baseType: !1140, size: 64, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1351, file: !33, line: 232, baseType: !204, size: 64, offset: 512)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1343, file: !33, line: 526, baseType: !1382, size: 192, offset: 2304)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 192, elements: !306)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !537, file: !28, line: 1233, baseType: !1384, size: 2368, offset: 4544)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !28, line: 1184, size: 2368, elements: !1385)
!1385 = !{!1386, !1387, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1384, file: !28, line: 1185, baseType: !275, size: 16)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1384, file: !28, line: 1186, baseType: !275, size: 16, offset: 16)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1384, file: !28, line: 1187, baseType: !1389, size: 2304, offset: 64)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 2304, elements: !306)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1391, line: 12, size: 768, elements: !1392)
!1391 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1392 = !{!1393, !1407, !1408, !3563, !3564}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1390, file: !1391, line: 13, baseType: !1394, size: 384)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1395, line: 17, size: 384, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1396 = !{!1397, !1398, !1399, !1406}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1394, file: !1395, line: 18, baseType: !109, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1394, file: !1395, line: 19, baseType: !109, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1394, file: !1395, line: 20, baseType: !1400, size: 192, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1401, line: 41, baseType: !1402)
!1401 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1401, line: 37, size: 192, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1402, file: !1401, line: 38, baseType: !235, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1402, file: !1401, line: 39, baseType: !222, size: 128, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1394, file: !1395, line: 22, baseType: !866, size: 128, align: 64, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1390, file: !1391, line: 14, baseType: !718, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1390, file: !1391, line: 15, baseType: !1409, size: 64, offset: 448)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1410, line: 16, size: 64, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1409, file: !1410, line: 17, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1090, line: 746, size: 58368, elements: !1415)
!1415 = !{!1416, !1424, !1425, !1426, !1432, !1433, !1434, !1435, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1506, !1517, !1612, !1616, !1619, !1650, !1651, !1652, !1653, !1664, !1666, !1667, !1668, !1669, !1670, !1671, !1682, !1683, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1700, !1701, !1708, !1709, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2737, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2785, !2791, !2792, !2793, !2794, !2795, !2799, !2802, !2809, !2814, !2817, !2820, !2823, !2826, !2964, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3002, !3003, !3004, !3013, !3021, !3022, !3023, !3024, !3025, !3030, !3031, !3032, !3035, !3036, !3039, !3042, !3045, !3053, !3056, !3057, !3143, !3144, !3145, !3146, !3147, !3153, !3154, !3155, !3156, !3159, !3160, !3163, !3166, !3167, !3170, !3171, !3172, !3175, !3176, !3177, !3178, !3179, !3180, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3212, !3213, !3219, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3231, !3303, !3305, !3306, !3307, !3308, !3309, !3310, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3340, !3341, !3342}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1414, file: !1090, line: 752, baseType: !1417, size: 192)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1418, line: 56, size: 192, elements: !1419)
!1418 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1419 = !{!1420, !1421, !1422, !1423}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1417, file: !1418, line: 57, baseType: !355, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1417, file: !1418, line: 58, baseType: !355, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1417, file: !1418, line: 59, baseType: !454, size: 32, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1417, file: !1418, line: 61, baseType: !454, size: 32, offset: 160)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1414, file: !1090, line: 754, baseType: !7, size: 32, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1414, file: !1090, line: 767, baseType: !204, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1414, file: !1090, line: 768, baseType: !1427, size: 32, offset: 320)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1428, line: 113, baseType: !1429)
!1428 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1428, line: 111, size: 32, elements: !1430)
!1430 = !{!1431}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1429, file: !1428, line: 112, baseType: !255, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1414, file: !1090, line: 770, baseType: !7, size: 32, offset: 352)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1414, file: !1090, line: 771, baseType: !7, size: 32, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1414, file: !1090, line: 774, baseType: !109, size: 32, offset: 416)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1414, file: !1090, line: 775, baseType: !1436, size: 128, offset: 448)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1437, line: 58, size: 128, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1438 = !{!1439, !1445, !1450, !1451}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1436, file: !1437, line: 59, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1441, line: 60, size: 64, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1440, file: !1441, line: 61, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1436, file: !1437, line: 60, baseType: !1446, size: 32, offset: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1436, file: !1437, line: 60, size: 32, elements: !1447)
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1446, file: !1437, line: 61, baseType: !7, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1446, file: !1437, line: 62, baseType: !255, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1436, file: !1437, line: 65, baseType: !273, size: 16, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1436, file: !1437, line: 65, baseType: !273, size: 16, offset: 112)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1414, file: !1090, line: 776, baseType: !7, size: 32, offset: 576)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1414, file: !1090, line: 777, baseType: !355, size: 64, offset: 640)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1414, file: !1090, line: 778, baseType: !1413, size: 64, offset: 704)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1414, file: !1090, line: 787, baseType: !109, size: 32, offset: 768)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1414, file: !1090, line: 788, baseType: !109, size: 32, offset: 800)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1414, file: !1090, line: 790, baseType: !109, size: 32, offset: 832)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1414, file: !1090, line: 792, baseType: !109, size: 32, offset: 864)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1414, file: !1090, line: 793, baseType: !109, size: 32, offset: 896)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1414, file: !1090, line: 794, baseType: !109, size: 32, offset: 928)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1414, file: !1090, line: 795, baseType: !7, size: 32, offset: 960)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1414, file: !1090, line: 797, baseType: !1463, size: 2048, offset: 1024)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1090, line: 551, size: 2048, elements: !1464)
!1464 = !{!1465, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1485, !1488, !1489, !1490}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1463, file: !1090, line: 553, baseType: !1466, size: 128)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1090, line: 411, size: 128, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1466, file: !1090, line: 412, baseType: !355, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1466, file: !1090, line: 413, baseType: !454, size: 32, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1463, file: !1090, line: 554, baseType: !758, size: 192, align: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1463, file: !1090, line: 555, baseType: !458, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1463, file: !1090, line: 556, baseType: !458, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1463, file: !1090, line: 558, baseType: !222, size: 128, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1463, file: !1090, line: 559, baseType: !7, size: 32, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1463, file: !1090, line: 561, baseType: !458, size: 64, offset: 640)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1463, file: !1090, line: 562, baseType: !458, size: 64, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1463, file: !1090, line: 563, baseType: !458, size: 64, offset: 768)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1463, file: !1090, line: 564, baseType: !458, size: 64, offset: 832)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1463, file: !1090, line: 565, baseType: !656, size: 64, offset: 896)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1463, file: !1090, line: 566, baseType: !458, size: 64, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1463, file: !1090, line: 568, baseType: !458, size: 64, offset: 1024)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1463, file: !1090, line: 571, baseType: !109, size: 32, offset: 1088)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1463, file: !1090, line: 572, baseType: !1484, size: 64, offset: 1152)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1463, file: !1090, line: 574, baseType: !1486, size: 64, offset: 1216)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1090, line: 49, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1463, file: !1090, line: 576, baseType: !1486, size: 64, offset: 1280)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1463, file: !1090, line: 578, baseType: !355, size: 64, offset: 1344)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1463, file: !1090, line: 588, baseType: !1491, size: 512, align: 512, offset: 1536)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1090, line: 497, size: 512, align: 512, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1491, file: !1090, line: 498, baseType: !458, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1491, file: !1090, line: 499, baseType: !458, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1491, file: !1090, line: 500, baseType: !458, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1491, file: !1090, line: 501, baseType: !454, size: 32, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1491, file: !1090, line: 502, baseType: !454, size: 32, offset: 224)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1491, file: !1090, line: 503, baseType: !355, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1491, file: !1090, line: 504, baseType: !355, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1491, file: !1090, line: 505, baseType: !355, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1491, file: !1090, line: 506, baseType: !1502, size: 64, align: 64, offset: 448)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1090, line: 445, size: 64, align: 64, elements: !1503)
!1503 = !{!1504, !1505}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1502, file: !1090, line: 446, baseType: !7, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1502, file: !1090, line: 447, baseType: !7, size: 32, offset: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1414, file: !1090, line: 798, baseType: !1507, size: 384, offset: 3072)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1090, line: 592, size: 384, elements: !1508)
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514, !1515}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1507, file: !1090, line: 593, baseType: !222, size: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1507, file: !1090, line: 594, baseType: !355, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1507, file: !1090, line: 595, baseType: !355, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1507, file: !1090, line: 596, baseType: !7, size: 32, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1507, file: !1090, line: 597, baseType: !275, size: 16, offset: 288)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1507, file: !1090, line: 598, baseType: !275, size: 16, offset: 304)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1507, file: !1090, line: 600, baseType: !1516, size: 64, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1414, file: !1090, line: 799, baseType: !1518, size: 1792, offset: 3456)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1090, line: 610, size: 1792, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1609, !1610}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1518, file: !1090, line: 611, baseType: !758, size: 192, align: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1518, file: !1090, line: 618, baseType: !458, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1518, file: !1090, line: 619, baseType: !458, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1518, file: !1090, line: 620, baseType: !458, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1518, file: !1090, line: 621, baseType: !458, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1518, file: !1090, line: 622, baseType: !458, size: 64, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1518, file: !1090, line: 629, baseType: !656, size: 64, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1518, file: !1090, line: 630, baseType: !458, size: 64, offset: 576)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1518, file: !1090, line: 631, baseType: !7, size: 32, offset: 640)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1518, file: !1090, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1518, file: !1090, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1518, file: !1090, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1518, file: !1090, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1518, file: !1090, line: 662, baseType: !1534, size: 512, offset: 704)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1535)
!1535 = !{!1536, !1544, !1545, !1550, !1605, !1606, !1607, !1608}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1534, file: !39, line: 119, baseType: !1537, size: 256)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1538, line: 9, size: 256, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1537, file: !1538, line: 10, baseType: !758, size: 192, align: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1537, file: !1538, line: 11, baseType: !1542, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1543, line: 29, baseType: !656)
!1543 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1534, file: !39, line: 120, baseType: !1542, size: 64, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1534, file: !39, line: 121, baseType: !1546, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!38, !1549}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1534, file: !39, line: 122, baseType: !1551, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1553)
!1553 = !{!1554, !1579, !1580, !1583, !1588, !1589, !1600, !1604}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1552, file: !39, line: 160, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1556, file: !39, line: 216, baseType: !604, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1556, file: !39, line: 217, baseType: !7, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1556, file: !39, line: 218, baseType: !7, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1556, file: !39, line: 219, baseType: !7, size: 32, offset: 96)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1556, file: !39, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1556, file: !39, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1556, file: !39, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1556, file: !39, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1556, file: !39, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1556, file: !39, line: 226, baseType: !7, size: 32, offset: 160)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1556, file: !39, line: 227, baseType: !275, size: 16, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1556, file: !39, line: 228, baseType: !275, size: 16, offset: 208)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1556, file: !39, line: 229, baseType: !7, size: 32, offset: 224)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1556, file: !39, line: 235, baseType: !1542, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1556, file: !39, line: 236, baseType: !1549, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1556, file: !39, line: 237, baseType: !1542, size: 64, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1556, file: !39, line: 238, baseType: !1549, size: 64, offset: 448)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1556, file: !39, line: 239, baseType: !1576, size: 4096, align: 512, offset: 512)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1552, size: 4096, align: 512, elements: !1577)
!1577 = !{!1578}
!1578 = !DISubrange(count: 8)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1552, file: !39, line: 161, baseType: !7, size: 32, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1552, file: !39, line: 162, baseType: !1581, size: 32, offset: 96)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !206, line: 32, baseType: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !339, line: 96, baseType: !109)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1552, file: !39, line: 163, baseType: !1584, size: 32, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !427, line: 274, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !427, line: 274, size: 32, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1585, file: !427, line: 274, baseType: !431, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1552, file: !39, line: 164, baseType: !1549, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1552, file: !39, line: 165, baseType: !1590, size: 128, offset: 256)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1538, line: 14, size: 128, elements: !1591)
!1591 = !{!1592}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1590, file: !1538, line: 15, baseType: !1593, size: 128)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !759, line: 26, size: 128, elements: !1594)
!1594 = !{!1595, !1599}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1593, file: !759, line: 27, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !759, line: 12, size: 64, elements: !1597)
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1596, file: !759, line: 13, baseType: !763, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1593, file: !759, line: 28, baseType: !763, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1552, file: !39, line: 166, baseType: !1601, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1542}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1552, file: !39, line: 167, baseType: !1542, size: 64, offset: 448)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1534, file: !39, line: 123, baseType: !263, size: 8, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1534, file: !39, line: 124, baseType: !263, size: 8, offset: 456)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1534, file: !39, line: 125, baseType: !263, size: 8, offset: 464)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1534, file: !39, line: 126, baseType: !263, size: 8, offset: 472)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1518, file: !1090, line: 671, baseType: !1534, size: 512, offset: 1216)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1518, file: !1090, line: 679, baseType: !1611, size: 64, offset: 1728)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1414, file: !1090, line: 800, baseType: !1613, size: 64, offset: 5248)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1615)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1090, line: 800, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1414, file: !1090, line: 809, baseType: !1617, size: 64, offset: 5312)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1090, line: 70, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1414, file: !1090, line: 825, baseType: !1620, size: 2048, align: 512, offset: 5632)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1090, line: 509, size: 2048, align: 512, elements: !1621)
!1621 = !{!1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1620, file: !1090, line: 511, baseType: !458, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1620, file: !1090, line: 512, baseType: !458, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1620, file: !1090, line: 513, baseType: !458, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1620, file: !1090, line: 514, baseType: !458, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1620, file: !1090, line: 515, baseType: !458, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1620, file: !1090, line: 516, baseType: !458, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1620, file: !1090, line: 518, baseType: !458, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1620, file: !1090, line: 519, baseType: !458, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1620, file: !1090, line: 520, baseType: !656, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1620, file: !1090, line: 522, baseType: !458, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1620, file: !1090, line: 523, baseType: !458, size: 64, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1620, file: !1090, line: 524, baseType: !656, size: 64, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1620, file: !1090, line: 526, baseType: !656, size: 64, offset: 768)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1620, file: !1090, line: 527, baseType: !458, size: 64, offset: 832)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1620, file: !1090, line: 529, baseType: !458, size: 64, offset: 896)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1620, file: !1090, line: 530, baseType: !458, size: 64, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1620, file: !1090, line: 531, baseType: !458, size: 64, offset: 1024)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1620, file: !1090, line: 532, baseType: !458, size: 64, offset: 1088)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1620, file: !1090, line: 533, baseType: !458, size: 64, offset: 1152)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1620, file: !1090, line: 535, baseType: !458, size: 64, offset: 1216)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1620, file: !1090, line: 536, baseType: !458, size: 64, offset: 1280)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1620, file: !1090, line: 537, baseType: !458, size: 64, offset: 1344)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1620, file: !1090, line: 538, baseType: !458, size: 64, offset: 1408)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1620, file: !1090, line: 539, baseType: !458, size: 64, offset: 1472)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1620, file: !1090, line: 540, baseType: !458, size: 64, offset: 1536)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1620, file: !1090, line: 541, baseType: !458, size: 64, offset: 1600)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1620, file: !1090, line: 542, baseType: !458, size: 64, offset: 1664)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1620, file: !1090, line: 543, baseType: !458, size: 64, offset: 1728)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1414, file: !1090, line: 833, baseType: !7, size: 32, offset: 7680)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1414, file: !1090, line: 836, baseType: !7, size: 32, offset: 7712)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1414, file: !1090, line: 837, baseType: !109, size: 32, offset: 7744)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1414, file: !1090, line: 838, baseType: !1654, size: 64, offset: 7808)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1657, line: 19, baseType: !1658)
!1657 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1657, line: 19, size: 64, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1658, file: !1657, line: 19, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 64, elements: !1662)
!1662 = !{!1663}
!1663 = !DISubrange(count: 1)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1414, file: !1090, line: 839, baseType: !1665, size: 64, offset: 7872)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1414, file: !1090, line: 840, baseType: !1656, size: 64, offset: 7936)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1414, file: !1090, line: 841, baseType: !204, size: 64, offset: 8000)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1414, file: !1090, line: 843, baseType: !275, size: 16, offset: 8064)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1414, file: !1090, line: 845, baseType: !275, size: 16, offset: 8080)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1414, file: !1090, line: 848, baseType: !109, size: 32, offset: 8096)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1414, file: !1090, line: 849, baseType: !1672, size: 32, offset: 8128)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1090, line: 718, size: 32, elements: !1673)
!1673 = !{!1674, !1681}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1672, file: !1090, line: 724, baseType: !1675, size: 32)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !1090, line: 719, size: 32, elements: !1676)
!1676 = !{!1677, !1678, !1679, !1680}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1675, file: !1090, line: 720, baseType: !263, size: 8)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1675, file: !1090, line: 721, baseType: !263, size: 8, offset: 8)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1675, file: !1090, line: 722, baseType: !263, size: 8, offset: 16)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1675, file: !1090, line: 723, baseType: !263, size: 8, offset: 24)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1672, file: !1090, line: 725, baseType: !454, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1414, file: !1090, line: 850, baseType: !222, size: 128, offset: 8192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1414, file: !1090, line: 851, baseType: !1684, size: 64, offset: 8320)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1090, line: 60, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1414, file: !1090, line: 855, baseType: !355, size: 64, offset: 8384)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1414, file: !1090, line: 856, baseType: !263, size: 8, offset: 8448)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1414, file: !1090, line: 857, baseType: !263, size: 8, offset: 8456)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1414, file: !1090, line: 858, baseType: !109, size: 32, offset: 8480)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1414, file: !1090, line: 859, baseType: !222, size: 128, offset: 8512)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1414, file: !1090, line: 860, baseType: !109, size: 32, offset: 8640)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1414, file: !1090, line: 861, baseType: !222, size: 128, offset: 8704)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1414, file: !1090, line: 873, baseType: !1694, size: 256, offset: 8832)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1090, line: 376, size: 256, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1699}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1694, file: !1090, line: 381, baseType: !355, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1694, file: !1090, line: 384, baseType: !460, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1694, file: !1090, line: 389, baseType: !460, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1694, file: !1090, line: 392, baseType: !460, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1414, file: !1090, line: 875, baseType: !222, size: 128, offset: 9088)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1414, file: !1090, line: 877, baseType: !1702, size: 320, offset: 9216)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1703, line: 86, size: 320, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1704 = !{!1705, !1706, !1707}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1702, file: !1703, line: 87, baseType: !109, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1702, file: !1703, line: 88, baseType: !222, size: 128, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1702, file: !1703, line: 89, baseType: !222, size: 128, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1414, file: !1090, line: 878, baseType: !758, size: 192, align: 64, offset: 9536)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1414, file: !1090, line: 881, baseType: !1710, size: 64, offset: 9728)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !65, line: 733, size: 10240, elements: !1712)
!1712 = !{!1713, !2651}
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !65, line: 734, baseType: !1714, size: 10240)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1711, file: !65, line: 734, size: 10240, elements: !1715)
!1715 = !{!1716, !1720, !1733, !2528, !2529, !2530, !2531, !2532, !2533, !2540, !2541, !2542, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2581, !2583, !2586, !2631, !2632, !2633, !2636, !2637, !2638, !2641, !2642, !2643, !2649, !2650}
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !65, line: 739, baseType: !1717, size: 512, align: 512)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1714, file: !65, line: 739, size: 512, align: 512, elements: !1718)
!1718 = !{!1719}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1717, file: !65, line: 747, baseType: !255, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1714, file: !65, line: 750, baseType: !1721, size: 128, offset: 512)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1722, line: 218, size: 128, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1723 = !{!1724, !1731, !1732}
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !1722, line: 219, baseType: !1725, size: 32)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !1722, line: 219, size: 32, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1725, file: !1722, line: 220, baseType: !235, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1725, file: !1722, line: 221, baseType: !1729)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1722, line: 197, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1722, line: 197, elements: !935)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1721, file: !1722, line: 223, baseType: !7, size: 32, offset: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1721, file: !1722, line: 224, baseType: !204, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1714, file: !65, line: 752, baseType: !1734, size: 64, offset: 640)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!355, !1737, !355, !355, !355, !355}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !28, line: 994, size: 1856, align: 64, elements: !1739)
!1739 = !{!1740, !1746, !1747, !1749, !1750, !1751, !1752, !1753, !1803, !1993, !2002, !2003, !2004, !2518, !2519, !2520, !2521, !2523, !2524, !2527}
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1738, file: !28, line: 995, baseType: !1741, size: 128)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1738, file: !28, line: 995, size: 128, elements: !1742)
!1742 = !{!1743, !1744, !1745}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1741, file: !28, line: 996, baseType: !1440, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1741, file: !28, line: 997, baseType: !866, size: 128, align: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1741, file: !28, line: 998, baseType: !7, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1738, file: !28, line: 1005, baseType: !235, size: 32, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1738, file: !28, line: 1006, baseType: !1748, size: 32, offset: 160)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !206, line: 156, baseType: !7)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1738, file: !28, line: 1007, baseType: !650, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1738, file: !28, line: 1008, baseType: !646, size: 256, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1738, file: !28, line: 1009, baseType: !546, size: 64, offset: 512)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1738, file: !28, line: 1010, baseType: !7, size: 32, offset: 576)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1738, file: !28, line: 1011, baseType: !1754, size: 256, offset: 640)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !28, line: 948, size: 256, elements: !1755)
!1755 = !{!1756, !1777, !1799, !1800, !1801, !1802}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1754, file: !28, line: 949, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1758, line: 34, baseType: !1759)
!1758 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1758, line: 25, size: 64, elements: !1760)
!1760 = !{!1761}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1759, file: !1758, line: 26, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1763, line: 27, baseType: !1764)
!1763 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1763, line: 13, size: 64, elements: !1765)
!1765 = !{!1766, !1776}
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !1763, line: 14, baseType: !1767, size: 32)
!1767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1764, file: !1763, line: 14, size: 32, elements: !1768)
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1767, file: !1763, line: 15, baseType: !255, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !1763, line: 16, baseType: !1771, size: 32)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1763, line: 16, size: 32, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1771, file: !1763, line: 18, baseType: !263, size: 8)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1771, file: !1763, line: 19, baseType: !1775, size: 24, offset: 8)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 24, elements: !306)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1764, file: !1763, line: 26, baseType: !247, size: 32, offset: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1754, file: !28, line: 950, baseType: !1778, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !13, line: 59, size: 768, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1786, !1787, !1788, !1789}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1779, file: !13, line: 61, baseType: !1427, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1779, file: !13, line: 62, baseType: !7, size: 32, offset: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1779, file: !13, line: 63, baseType: !235, size: 32, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1779, file: !13, line: 65, baseType: !1785, size: 256, offset: 128)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 256, elements: !876)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1779, file: !13, line: 66, baseType: !1016, size: 64, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1779, file: !13, line: 68, baseType: !1400, size: 192, offset: 448)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1779, file: !13, line: 69, baseType: !866, size: 128, align: 64, offset: 640)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1779, file: !13, line: 70, baseType: !1790, offset: 768)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1791, elements: !1797)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !13, line: 54, size: 128, elements: !1792)
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1791, file: !13, line: 55, baseType: !109, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1791, file: !13, line: 56, baseType: !1795, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !13, line: 56, flags: DIFlagFwdDecl)
!1797 = !{!1798}
!1798 = !DISubrange(count: -1)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1754, file: !28, line: 951, baseType: !12, size: 32, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1754, file: !28, line: 952, baseType: !391, size: 32, offset: 160)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1754, file: !28, line: 952, baseType: !391, size: 32, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1754, file: !28, line: 953, baseType: !109, size: 32, offset: 224)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1738, file: !28, line: 1012, baseType: !1804, size: 64, offset: 896)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1807, line: 110, size: 1472, elements: !1808)
!1807 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1825, !1826, !1827, !1828, !1829, !1830, !1938, !1939, !1940, !1941, !1942, !1973, !1976, !1980, !1988}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1806, file: !1807, line: 111, baseType: !650, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1806, file: !1807, line: 112, baseType: !391, size: 32, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1806, file: !1807, line: 113, baseType: !400, size: 32, offset: 96)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1806, file: !1807, line: 114, baseType: !391, size: 32, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1806, file: !1807, line: 115, baseType: !400, size: 32, offset: 160)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1806, file: !1807, line: 116, baseType: !391, size: 32, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1806, file: !1807, line: 117, baseType: !400, size: 32, offset: 224)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1806, file: !1807, line: 118, baseType: !391, size: 32, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1806, file: !1807, line: 119, baseType: !400, size: 32, offset: 288)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1806, file: !1807, line: 120, baseType: !7, size: 32, offset: 320)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1806, file: !1807, line: 121, baseType: !1820, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1821, line: 24, baseType: !1822)
!1821 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1821, line: 24, size: 64, elements: !1823)
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1822, file: !1821, line: 24, baseType: !458, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1806, file: !1807, line: 122, baseType: !1820, size: 64, offset: 448)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1806, file: !1807, line: 123, baseType: !1820, size: 64, offset: 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1806, file: !1807, line: 124, baseType: !1820, size: 64, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1806, file: !1807, line: 125, baseType: !1820, size: 64, offset: 640)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1806, file: !1807, line: 127, baseType: !267, size: 8, offset: 704)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1806, file: !1807, line: 129, baseType: !1831, size: 64, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1833, line: 195, size: 1728, elements: !1834)
!1833 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1834 = !{!1835, !1836, !1839, !1844, !1845, !1848, !1849, !1854, !1855, !1856, !1857, !1860, !1861, !1862, !1863, !1864, !1902, !1923}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1832, file: !1833, line: 196, baseType: !1427, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1832, file: !1833, line: 197, baseType: !1837, size: 32, offset: 32)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1833, line: 28, baseType: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !206, line: 104, baseType: !642)
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !1833, line: 198, baseType: !1840, size: 192, offset: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1832, file: !1833, line: 198, size: 192, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1840, file: !1833, line: 199, baseType: !222, size: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1840, file: !1833, line: 200, baseType: !758, size: 192, align: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1832, file: !1833, line: 205, baseType: !1307, size: 320, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1832, file: !1833, line: 206, baseType: !1846, size: 64, offset: 576)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1833, line: 206, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1832, file: !1833, line: 207, baseType: !204, size: 64, offset: 640)
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !1833, line: 208, baseType: !1850, size: 64, offset: 704)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1832, file: !1833, line: 208, size: 64, elements: !1851)
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1850, file: !1833, line: 209, baseType: !1148, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1850, file: !1833, line: 210, baseType: !1148, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1832, file: !1833, line: 212, baseType: !1148, size: 64, offset: 768)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1832, file: !1833, line: 213, baseType: !391, size: 32, offset: 832)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1832, file: !1833, line: 214, baseType: !400, size: 32, offset: 864)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1832, file: !1833, line: 215, baseType: !1858, size: 32, offset: 896)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1833, line: 31, baseType: !1859)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !206, line: 110, baseType: !454)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1832, file: !1833, line: 216, baseType: !275, size: 16, offset: 928)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1832, file: !1833, line: 217, baseType: !275, size: 16, offset: 944)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1832, file: !1833, line: 221, baseType: !784, size: 16, offset: 960)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1832, file: !1833, line: 228, baseType: !355, size: 64, offset: 1024)
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !1833, line: 245, baseType: !1865, size: 320, offset: 1088)
!1865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1832, file: !1833, line: 245, size: 320, elements: !1866)
!1866 = !{!1867, !1894}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1865, file: !1833, line: 246, baseType: !1868, size: 320)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1833, line: 114, size: 320, elements: !1869)
!1869 = !{!1870, !1871, !1883, !1886, !1893}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1868, file: !1833, line: 116, baseType: !355, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !1833, line: 117, baseType: !1872, size: 64, offset: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !1833, line: 117, size: 64, elements: !1873)
!1873 = !{!1874, !1882}
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1833, line: 118, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1872, file: !1833, line: 118, size: 64, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1875, file: !1833, line: 120, baseType: !273, size: 16)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1875, file: !1833, line: 121, baseType: !1879, size: 48, offset: 16)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 48, elements: !1880)
!1880 = !{!1881}
!1881 = !DISubrange(count: 6)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1872, file: !1833, line: 127, baseType: !355, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1868, file: !1833, line: 129, baseType: !1884, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1833, line: 102, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1868, file: !1833, line: 130, baseType: !1887, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1833, line: 108, size: 192, elements: !1889)
!1889 = !{!1890, !1891, !1892}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1888, file: !1833, line: 109, baseType: !866, size: 128, align: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1888, file: !1833, line: 110, baseType: !1427, size: 32, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1888, file: !1833, line: 111, baseType: !726, size: 8, offset: 160)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1868, file: !1833, line: 131, baseType: !218, size: 64, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !1833, line: 247, baseType: !1895, size: 320)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1865, file: !1833, line: 247, size: 320, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900, !1901}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1895, file: !1833, line: 248, baseType: !355, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1895, file: !1833, line: 249, baseType: !355, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1895, file: !1833, line: 250, baseType: !1884, size: 64, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1895, file: !1833, line: 251, baseType: !1887, size: 64, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1895, file: !1833, line: 252, baseType: !305, size: 64, offset: 256)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !1833, line: 260, baseType: !1903, size: 256, offset: 1408)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1832, file: !1833, line: 260, size: 256, elements: !1904)
!1904 = !{!1905, !1911}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1903, file: !1833, line: 261, baseType: !1906, size: 256)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1833, line: 134, size: 256, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1906, file: !1833, line: 135, baseType: !204, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1906, file: !1833, line: 136, baseType: !1910, size: 256)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 256, elements: !876)
!1911 = !DIDerivedType(tag: DW_TAG_member, scope: !1903, file: !1833, line: 262, baseType: !1912, size: 256)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1903, file: !1833, line: 262, size: 256, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1912, file: !1833, line: 264, baseType: !222, size: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1912, file: !1833, line: 265, baseType: !1916, size: 128, offset: 128)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1917, line: 22, size: 128, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1918 = !{!1919, !1922}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1916, file: !1917, line: 23, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1917, line: 23, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1916, file: !1917, line: 24, baseType: !355, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1832, file: !1833, line: 280, baseType: !1924, size: 64, offset: 1664)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1833, line: 176, size: 192, elements: !1926)
!1926 = !{!1927, !1936, !1937}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1925, file: !1833, line: 177, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1833, line: 171, baseType: !1929)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!109, !1831, !1932, !1934, !1831}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1906)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1925, file: !1833, line: 178, baseType: !1831, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1925, file: !1833, line: 179, baseType: !1884, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1806, file: !1807, line: 130, baseType: !1831, size: 64, offset: 832)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1806, file: !1807, line: 131, baseType: !1831, size: 64, offset: 896)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1806, file: !1807, line: 132, baseType: !1831, size: 64, offset: 960)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1806, file: !1807, line: 135, baseType: !204, size: 64, offset: 1024)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1806, file: !1807, line: 137, baseType: !1943, size: 64, offset: 1088)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1945, line: 14, size: 1088, elements: !1946)
!1945 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1946 = !{!1947, !1948, !1957, !1958, !1959, !1960, !1961, !1962}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1944, file: !1945, line: 15, baseType: !1427, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1944, file: !1945, line: 17, baseType: !1949, size: 320, offset: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1950, line: 22, size: 320, elements: !1951)
!1950 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1951 = !{!1952, !1953, !1954, !1955}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1949, file: !1950, line: 23, baseType: !604, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1949, file: !1950, line: 24, baseType: !656, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1949, file: !1950, line: 26, baseType: !222, size: 128, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1949, file: !1950, line: 28, baseType: !1956, size: 64, offset: 256)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1944, file: !1945, line: 19, baseType: !355, size: 64, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1944, file: !1945, line: 20, baseType: !650, size: 64, offset: 448)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1944, file: !1945, line: 23, baseType: !892, size: 128, offset: 512)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1944, file: !1945, line: 24, baseType: !391, size: 32, offset: 640)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1944, file: !1945, line: 29, baseType: !650, size: 64, offset: 704)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1944, file: !1945, line: 36, baseType: !1963, size: 320, offset: 768)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1964, line: 15, size: 320, elements: !1965)
!1964 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971, !1972}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1963, file: !1964, line: 16, baseType: !604, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1963, file: !1964, line: 18, baseType: !109, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1963, file: !1964, line: 19, baseType: !109, size: 32, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1963, file: !1964, line: 20, baseType: !109, size: 32, offset: 96)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1963, file: !1964, line: 21, baseType: !109, size: 32, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1963, file: !1964, line: 22, baseType: !355, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1963, file: !1964, line: 23, baseType: !355, size: 64, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1806, file: !1807, line: 138, baseType: !1974, size: 64, offset: 1152)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !65, line: 901, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1806, file: !1807, line: 139, baseType: !1977, size: 64, offset: 1216)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1979, line: 16, flags: DIFlagFwdDecl)
!1979 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1806, file: !1807, line: 140, baseType: !1981, size: 64, offset: 1280)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1807, line: 25, size: 64, elements: !1983)
!1983 = !{!1984, !1985, !1986}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1982, file: !1807, line: 26, baseType: !255, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1982, file: !1807, line: 27, baseType: !109, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1982, file: !1807, line: 28, baseType: !1987, offset: 64)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, elements: !1797)
!1988 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !1807, line: 142, baseType: !1989, size: 128, offset: 1344)
!1989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1806, file: !1807, line: 142, size: 128, elements: !1990)
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1989, file: !1807, line: 143, baseType: !109, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1989, file: !1807, line: 144, baseType: !866, size: 128, align: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1738, file: !28, line: 1013, baseType: !1994, size: 256, offset: 960)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !28, line: 970, size: 256, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1994, file: !28, line: 971, baseType: !355, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1994, file: !28, line: 972, baseType: !7, size: 32, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1994, file: !28, line: 973, baseType: !7, size: 32, offset: 96)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1994, file: !28, line: 974, baseType: !7, size: 32, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1994, file: !28, line: 975, baseType: !7, size: 32, offset: 160)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1994, file: !28, line: 976, baseType: !546, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1738, file: !28, line: 1014, baseType: !1219, size: 128, offset: 1216)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1738, file: !28, line: 1015, baseType: !385, size: 64, offset: 1344)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1738, file: !28, line: 1016, baseType: !2005, size: 64, offset: 1408)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !28, line: 1914, size: 2112, elements: !2008)
!2008 = !{!2009, !2010, !2014, !2019, !2023, !2107, !2108, !2114, !2127, !2144, !2148, !2149, !2440, !2441, !2445, !2450, !2451, !2455, !2459, !2465, !2466, !2470, !2471, !2477, !2481, !2485, !2491, !2495, !2499, !2503, !2507, !2508, !2514}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2007, file: !28, line: 1915, baseType: !575, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2007, file: !28, line: 1916, baseType: !2011, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!546, !1737, !546, !109}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2007, file: !28, line: 1917, baseType: !2015, size: 64, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!337, !1737, !305, !352, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2007, file: !28, line: 1918, baseType: !2020, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!337, !1737, !218, !352, !2018}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2007, file: !28, line: 1919, baseType: !2024, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!337, !2027, !2049}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !28, line: 373, size: 384, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2036, !2037, !2038, !2039}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2028, file: !28, line: 374, baseType: !1737, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2028, file: !28, line: 375, baseType: !546, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2028, file: !28, line: 376, baseType: !2033, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !2027, !341}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2028, file: !28, line: 377, baseType: !204, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2028, file: !28, line: 378, baseType: !109, size: 32, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2028, file: !28, line: 379, baseType: !273, size: 16, offset: 288)
!2039 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !28, line: 380, baseType: !2040, size: 64, offset: 320)
!2040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !28, line: 380, size: 64, elements: !2041)
!2041 = !{!2042, !2045}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2040, file: !28, line: 386, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !28, line: 386, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2040, file: !28, line: 395, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!337, !204}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2051, line: 41, size: 320, elements: !2052)
!2051 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2052 = !{!2053, !2054, !2055, !2056, !2057, !2058, !2063, !2102}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2050, file: !2051, line: 42, baseType: !263, size: 8)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2050, file: !2051, line: 43, baseType: !726, size: 8, offset: 8)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2050, file: !2051, line: 44, baseType: !726, size: 8, offset: 16)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2050, file: !2051, line: 45, baseType: !726, size: 8, offset: 24)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2050, file: !2051, line: 46, baseType: !726, size: 8, offset: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, scope: !2050, file: !2051, line: 47, baseType: !2059, size: 64, offset: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2050, file: !2051, line: 47, size: 64, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2059, file: !2051, line: 48, baseType: !352, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2059, file: !2051, line: 49, baseType: !109, size: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2050, file: !2051, line: 61, baseType: !2064, size: 128, offset: 128)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2050, file: !2051, line: 61, size: 128, elements: !2065)
!2065 = !{!2066, !2072}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2064, file: !2051, line: 67, baseType: !2067, size: 128)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2068, line: 17, size: 128, elements: !2069)
!2068 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2067, file: !2068, line: 19, baseType: !204, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2067, file: !2068, line: 20, baseType: !353, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2051, line: 68, baseType: !2073, size: 128)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !2051, line: 68, size: 128, elements: !2074)
!2074 = !{!2075, !2101}
!2075 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !2051, line: 69, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2073, file: !2051, line: 69, size: 64, elements: !2077)
!2077 = !{!2078, !2081, !2088, !2092, !2100}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2076, file: !2051, line: 71, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2067)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2076, file: !2051, line: 72, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2084)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2051, line: 17, size: 128, elements: !2085)
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2084, file: !2051, line: 18, baseType: !204, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2084, file: !2051, line: 19, baseType: !352, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2076, file: !2051, line: 73, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2091)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2051, line: 73, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2076, file: !2051, line: 74, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2095, line: 296, size: 128, elements: !2096)
!2095 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2096 = !{!2097, !2098, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2094, file: !2095, line: 297, baseType: !235, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2094, file: !2095, line: 299, baseType: !205, size: 32, offset: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2094, file: !2095, line: 300, baseType: !204, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2076, file: !2051, line: 75, baseType: !204, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2073, file: !2051, line: 77, baseType: !352, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, scope: !2050, file: !2051, line: 80, baseType: !2103, size: 64, offset: 256)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2050, file: !2051, line: 80, size: 64, elements: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2103, file: !2051, line: 81, baseType: !355, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2103, file: !2051, line: 82, baseType: !546, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2007, file: !28, line: 1920, baseType: !2024, size: 64, offset: 320)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2007, file: !28, line: 1921, baseType: !2109, size: 64, offset: 384)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!109, !2027, !2112, !7}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !28, line: 53, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2007, file: !28, line: 1923, baseType: !2115, size: 64, offset: 448)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!109, !1737, !2118}
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !28, line: 1858, size: 128, elements: !2120)
!2120 = !{!2121, !2126}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2119, file: !28, line: 1859, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !28, line: 1855, baseType: !2123)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!726, !2118, !218, !109, !546, !458, !7}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2119, file: !28, line: 1860, baseType: !546, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2007, file: !28, line: 1924, baseType: !2128, size: 64, offset: 512)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!2131, !1737, !2133}
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2132, line: 59, baseType: !7)
!2132 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2135, line: 37, size: 128, elements: !2136)
!2135 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2136 = !{!2137, !2143}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2134, file: !2135, line: 38, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2135, line: 31, baseType: !2139)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !1737, !2142, !2133}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2134, file: !2135, line: 39, baseType: !2131, size: 32, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2007, file: !28, line: 1925, baseType: !2145, size: 64, offset: 576)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!341, !1737, !7, !355}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2007, file: !28, line: 1926, baseType: !2145, size: 64, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2007, file: !28, line: 1927, baseType: !2150, size: 64, offset: 704)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!109, !1737, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !65, line: 625, size: 1344, elements: !2155)
!2155 = !{!2156, !2165, !2166, !2174, !2181, !2182, !2187, !2188, !2193, !2194, !2197, !2433, !2434, !2435, !2436, !2437, !2438}
!2156 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !65, line: 628, baseType: !2157, size: 128)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2154, file: !65, line: 628, size: 128, elements: !2158)
!2158 = !{!2159, !2164}
!2159 = !DIDerivedType(tag: DW_TAG_member, scope: !2157, file: !65, line: 629, baseType: !2160, size: 128)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2157, file: !65, line: 629, size: 128, elements: !2161)
!2161 = !{!2162, !2163}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2160, file: !65, line: 631, baseType: !355, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2160, file: !65, line: 632, baseType: !355, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2157, file: !65, line: 635, baseType: !866, size: 128, align: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2154, file: !65, line: 639, baseType: !1710, size: 64, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2154, file: !65, line: 640, baseType: !2167, size: 64, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2168, line: 297, baseType: !2169)
!2168 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2168, line: 297, size: 64, elements: !2170)
!2170 = !{!2171}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2169, file: !2168, line: 297, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2173, line: 19, baseType: !355)
!2173 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2174 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !65, line: 646, baseType: !2175, size: 64, offset: 256)
!2175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2154, file: !65, line: 646, size: 64, elements: !2176)
!2176 = !{!2177, !2180}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2175, file: !65, line: 647, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2179)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !65, line: 542, baseType: !355)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2175, file: !65, line: 648, baseType: !2179, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2154, file: !65, line: 666, baseType: !109, size: 32, offset: 320)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2154, file: !65, line: 667, baseType: !2183, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !65, line: 579, size: 320, elements: !2185)
!2185 = !{!2186}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2184, file: !65, line: 580, baseType: !1307, size: 320)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2154, file: !65, line: 670, baseType: !726, size: 8, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2154, file: !65, line: 681, baseType: !2189, size: 256, offset: 512)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2154, file: !65, line: 678, size: 256, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2189, file: !65, line: 679, baseType: !758, size: 192, align: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2189, file: !65, line: 680, baseType: !355, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2154, file: !65, line: 689, baseType: !222, size: 128, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2154, file: !65, line: 691, baseType: !2195, size: 64, offset: 896)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !65, line: 691, flags: DIFlagFwdDecl)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2154, file: !65, line: 694, baseType: !2198, size: 64, offset: 960)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2200)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2201, line: 563, size: 1024, elements: !2202)
!2201 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2202 = !{!2203, !2207, !2208, !2212, !2216, !2220, !2397, !2401, !2405, !2409, !2410, !2411, !2415, !2419, !2425, !2429}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2200, file: !2201, line: 564, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !2153}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2200, file: !2201, line: 569, baseType: !2204, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2200, file: !2201, line: 571, baseType: !2209, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!109, !2153, !355}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2200, file: !2201, line: 572, baseType: !2213, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!109, !2153}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2200, file: !2201, line: 578, baseType: !2217, size: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!109, !2153, !355, !355, !355}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2200, file: !2201, line: 580, baseType: !2221, size: 64, offset: 320)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !65, line: 1184, baseType: !7)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2201, line: 512, size: 896, elements: !2227)
!2227 = !{!2228, !2236, !2237, !2244, !2251, !2261, !2390, !2391, !2393, !2395}
!2228 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !2201, line: 513, baseType: !2229, size: 320)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2226, file: !2201, line: 513, size: 320, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2229, file: !2201, line: 514, baseType: !2153, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2229, file: !2201, line: 515, baseType: !205, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2229, file: !2201, line: 516, baseType: !355, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2229, file: !2201, line: 517, baseType: !355, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2229, file: !2201, line: 518, baseType: !355, size: 64, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2226, file: !2201, line: 520, baseType: !64, size: 32, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2226, file: !2201, line: 522, baseType: !2238, size: 64, offset: 384)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2173, line: 22, baseType: !2240)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2173, line: 22, size: 64, elements: !2241)
!2241 = !{!2242}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2240, file: !2173, line: 22, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2173, line: 15, baseType: !355)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2226, file: !2201, line: 524, baseType: !2245, size: 64, offset: 448)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2168, line: 372, baseType: !2247)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2168, line: 372, size: 64, elements: !2248)
!2248 = !{!2249}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2247, file: !2168, line: 372, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2173, line: 16, baseType: !355)
!2251 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !2201, line: 527, baseType: !2252, size: 64, offset: 512)
!2252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !2201, line: 527, size: 64, elements: !2253)
!2253 = !{!2254, !2260}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2252, file: !2201, line: 528, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2173, line: 21, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2173, line: 21, size: 64, elements: !2257)
!2257 = !{!2258}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2256, file: !2173, line: 21, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2173, line: 14, baseType: !355)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2252, file: !2201, line: 529, baseType: !2239, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2226, file: !2201, line: 534, baseType: !2262, size: 64, offset: 576)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !65, line: 74, size: 512, align: 128, elements: !2264)
!2264 = !{!2265, !2266, !2384, !2389}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2263, file: !65, line: 75, baseType: !355, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, scope: !2263, file: !65, line: 83, baseType: !2267, size: 320, offset: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2263, file: !65, line: 83, size: 320, elements: !2268)
!2268 = !{!2269, !2290, !2304, !2308, !2383}
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !65, line: 84, baseType: !2270, size: 320)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2267, file: !65, line: 84, size: 320, elements: !2271)
!2271 = !{!2272, !2283, !2284, !2289}
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !65, line: 90, baseType: !2273, size: 128)
!2273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2270, file: !65, line: 90, size: 128, elements: !2274)
!2274 = !{!2275, !2276, !2281, !2282}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2273, file: !65, line: 91, baseType: !222, size: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2273, file: !65, line: 94, baseType: !2277, size: 128)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2273, file: !65, line: 94, size: 128, elements: !2278)
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2277, file: !65, line: 96, baseType: !204, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2277, file: !65, line: 98, baseType: !7, size: 32, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2273, file: !65, line: 102, baseType: !222, size: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2273, file: !65, line: 103, baseType: !222, size: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2270, file: !65, line: 106, baseType: !381, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !65, line: 107, baseType: !2285, size: 64, offset: 192)
!2285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2270, file: !65, line: 107, size: 64, elements: !2286)
!2286 = !{!2287, !2288}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2285, file: !65, line: 108, baseType: !355, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2285, file: !65, line: 109, baseType: !355, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2270, file: !65, line: 117, baseType: !355, size: 64, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !65, line: 119, baseType: !2291, size: 320)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2267, file: !65, line: 119, size: 320, elements: !2292)
!2292 = !{!2293, !2294, !2297, !2298, !2299}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2291, file: !65, line: 124, baseType: !355, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2291, file: !65, line: 125, baseType: !2295, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !65, line: 125, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2291, file: !65, line: 126, baseType: !355, size: 64, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2291, file: !65, line: 127, baseType: !355, size: 64, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_member, scope: !2291, file: !65, line: 128, baseType: !2300, size: 64, offset: 256)
!2300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2291, file: !65, line: 128, size: 64, elements: !2301)
!2301 = !{!2302, !2303}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2300, file: !65, line: 133, baseType: !355, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2300, file: !65, line: 138, baseType: !650, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !65, line: 141, baseType: !2305, size: 64)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2267, file: !65, line: 141, size: 64, elements: !2306)
!2306 = !{!2307}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2305, file: !65, line: 142, baseType: !355, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !65, line: 144, baseType: !2309, size: 128)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2267, file: !65, line: 144, size: 128, elements: !2310)
!2310 = !{!2311, !2382}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2309, file: !65, line: 146, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !57, line: 126, size: 1216, elements: !2314)
!2314 = !{!2315, !2325, !2346, !2347, !2348, !2349, !2350, !2364, !2365, !2366}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2313, file: !57, line: 127, baseType: !2316, size: 384)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !57, line: 21, size: 384, elements: !2317)
!2317 = !{!2318, !2319, !2321, !2322, !2323, !2324}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2316, file: !57, line: 22, baseType: !355, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2316, file: !57, line: 23, baseType: !2320, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2316, file: !57, line: 24, baseType: !2320, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2316, file: !57, line: 25, baseType: !355, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2316, file: !57, line: 26, baseType: !355, size: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2316, file: !57, line: 27, baseType: !355, size: 64, offset: 320)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2313, file: !57, line: 128, baseType: !2326, size: 128, offset: 384)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2327, line: 105, size: 128, elements: !2328)
!2327 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2328 = !{!2329, !2330}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2326, file: !2327, line: 110, baseType: !355, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2326, file: !2327, line: 118, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2327, line: 95, size: 448, elements: !2333)
!2333 = !{!2334, !2335, !2341, !2342, !2343, !2344, !2345}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2332, file: !2327, line: 96, baseType: !650, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2332, file: !2327, line: 97, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2327, line: 60, baseType: !2338)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !2340}
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2332, file: !2327, line: 98, baseType: !2336, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2332, file: !2327, line: 99, baseType: !726, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2332, file: !2327, line: 100, baseType: !726, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2332, file: !2327, line: 101, baseType: !866, size: 128, align: 64, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2332, file: !2327, line: 102, baseType: !2340, size: 64, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2313, file: !57, line: 129, baseType: !595, size: 256, offset: 512)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2313, file: !57, line: 130, baseType: !56, size: 32, offset: 768)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2313, file: !57, line: 131, baseType: !7, size: 32, offset: 800)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2313, file: !57, line: 132, baseType: !355, size: 64, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2313, file: !57, line: 133, baseType: !2351, size: 64, offset: 896)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2353)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !57, line: 77, size: 192, elements: !2354)
!2354 = !{!2355, !2359, !2360}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2353, file: !57, line: 83, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !2262}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2353, file: !57, line: 89, baseType: !2221, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2353, file: !57, line: 100, baseType: !2361, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!109, !2312, !355, !355, !109}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2313, file: !57, line: 134, baseType: !204, size: 64, offset: 960)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2313, file: !57, line: 135, baseType: !109, size: 32, offset: 1024)
!2366 = !DIDerivedType(tag: DW_TAG_member, scope: !2313, file: !57, line: 136, baseType: !2367, size: 128, offset: 1088)
!2367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2313, file: !57, line: 136, size: 128, elements: !2368)
!2368 = !{!2369, !2375}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2367, file: !57, line: 137, baseType: !2370, size: 128)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2371, line: 6, size: 128, elements: !2372)
!2371 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2370, file: !2371, line: 7, baseType: !458, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2370, file: !2371, line: 8, baseType: !458, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, scope: !2367, file: !57, line: 138, baseType: !2376)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2367, file: !57, line: 138, elements: !2377)
!2377 = !{!2378, !2380}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2376, file: !57, line: 138, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2376, file: !57, line: 138, elements: !935)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2376, file: !57, line: 138, baseType: !2381)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2370, elements: !1797)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2309, file: !65, line: 147, baseType: !204, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2267, file: !65, line: 161, baseType: !866, size: 128, align: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, scope: !2263, file: !65, line: 164, baseType: !2385, size: 32, offset: 384)
!2385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2263, file: !65, line: 164, size: 32, elements: !2386)
!2386 = !{!2387, !2388}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2385, file: !65, line: 169, baseType: !255, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2385, file: !65, line: 177, baseType: !7, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2263, file: !65, line: 181, baseType: !255, size: 32, offset: 416)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2226, file: !2201, line: 535, baseType: !2262, size: 64, offset: 640)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2226, file: !2201, line: 541, baseType: !2392, size: 64, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2226, file: !2201, line: 545, baseType: !2394, size: 64, offset: 768)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2226, file: !2201, line: 549, baseType: !2396, size: 64, offset: 832)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2168, line: 520, baseType: !2262)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2200, file: !2201, line: 581, baseType: !2398, size: 64, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!2224, !2225, !7}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2200, file: !2201, line: 582, baseType: !2402, size: 64, offset: 448)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!2224, !2225, !355, !355}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2200, file: !2201, line: 584, baseType: !2406, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!355, !2153}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2200, file: !2201, line: 588, baseType: !2221, size: 64, offset: 576)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2200, file: !2201, line: 591, baseType: !2221, size: 64, offset: 640)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2200, file: !2201, line: 597, baseType: !2412, size: 64, offset: 704)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!109, !2153, !355, !204, !109, !109}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2200, file: !2201, line: 603, baseType: !2416, size: 64, offset: 768)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!218, !2153}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2200, file: !2201, line: 613, baseType: !2420, size: 64, offset: 832)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!109, !2153, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !65, line: 717, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2200, file: !2201, line: 625, baseType: !2426, size: 64, offset: 896)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!2423, !2153, !355}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2200, file: !2201, line: 633, baseType: !2430, size: 64, offset: 960)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!2262, !2153, !355}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2154, file: !65, line: 697, baseType: !355, size: 64, offset: 1024)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2154, file: !65, line: 699, baseType: !1737, size: 64, offset: 1088)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2154, file: !65, line: 700, baseType: !204, size: 64, offset: 1152)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2154, file: !65, line: 711, baseType: !650, size: 64, offset: 1216)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2154, file: !65, line: 717, baseType: !2423, size: 64, offset: 1280)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2154, file: !65, line: 722, baseType: !2439, offset: 1344)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !65, line: 570, elements: !935)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2007, file: !28, line: 1928, baseType: !355, size: 64, offset: 768)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2007, file: !28, line: 1929, baseType: !2442, size: 64, offset: 832)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!109, !385, !1737}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2007, file: !28, line: 1930, baseType: !2446, size: 64, offset: 896)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!109, !1737, !2449}
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !28, line: 1061, baseType: !204)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2007, file: !28, line: 1931, baseType: !2442, size: 64, offset: 960)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2007, file: !28, line: 1932, baseType: !2452, size: 64, offset: 1024)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!109, !1737, !546, !546, !109}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2007, file: !28, line: 1933, baseType: !2456, size: 64, offset: 1088)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!109, !109, !1737, !109}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2007, file: !28, line: 1934, baseType: !2460, size: 64, offset: 1152)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!109, !1737, !109, !2463}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !28, line: 1063, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2007, file: !28, line: 1935, baseType: !1734, size: 64, offset: 1216)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2007, file: !28, line: 1936, baseType: !2467, size: 64, offset: 1280)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!109, !109}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2007, file: !28, line: 1937, baseType: !2460, size: 64, offset: 1344)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2007, file: !28, line: 1938, baseType: !2472, size: 64, offset: 1408)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!337, !2475, !1737, !2018, !352, !7}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1090, line: 59, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2007, file: !28, line: 1939, baseType: !2478, size: 64, offset: 1472)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!337, !1737, !2018, !2475, !352, !7}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2007, file: !28, line: 1940, baseType: !2482, size: 64, offset: 1536)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{null, !1737}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2007, file: !28, line: 1941, baseType: !2486, size: 64, offset: 1600)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!109, !1737, !109, !2489, !2490}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2007, file: !28, line: 1942, baseType: !2492, size: 64, offset: 1664)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!341, !1737, !109, !546, !546}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2007, file: !28, line: 1944, baseType: !2496, size: 64, offset: 1728)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !1088, !1737}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2007, file: !28, line: 1948, baseType: !2500, size: 64, offset: 1792)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!337, !1737, !546, !1737, !546, !352, !7}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2007, file: !28, line: 1950, baseType: !2504, size: 64, offset: 1856)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!546, !1737, !546, !1737, !546, !546, !7}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2007, file: !28, line: 1953, baseType: !2452, size: 64, offset: 1920)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2007, file: !28, line: 1954, baseType: !2509, size: 64, offset: 1984)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!109, !2512, !7}
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !28, line: 1911, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2007, file: !28, line: 1955, baseType: !2515, size: 64, offset: 2048)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!109, !2512, !2112, !7}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1738, file: !28, line: 1018, baseType: !458, size: 64, offset: 1472)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1738, file: !28, line: 1020, baseType: !204, size: 64, offset: 1536)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1738, file: !28, line: 1023, baseType: !204, size: 64, offset: 1600)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1738, file: !28, line: 1027, baseType: !2522, size: 64, offset: 1664)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1738, file: !28, line: 1029, baseType: !381, size: 64, offset: 1728)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1738, file: !28, line: 1030, baseType: !2525, size: 32, offset: 1792)
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2526, line: 8, baseType: !454)
!2526 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1738, file: !28, line: 1031, baseType: !2525, size: 32, offset: 1824)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1714, file: !65, line: 756, baseType: !355, size: 64, offset: 704)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1714, file: !65, line: 757, baseType: !355, size: 64, offset: 768)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1714, file: !65, line: 760, baseType: !355, size: 64, offset: 832)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1714, file: !65, line: 761, baseType: !355, size: 64, offset: 896)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1714, file: !65, line: 763, baseType: !355, size: 64, offset: 960)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1714, file: !65, line: 764, baseType: !2534, size: 64, offset: 1024)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2168, line: 299, baseType: !2536)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2168, line: 299, size: 64, elements: !2537)
!2537 = !{!2538}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2536, file: !2168, line: 299, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2173, line: 18, baseType: !355)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1714, file: !65, line: 773, baseType: !255, size: 32, offset: 1088)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1714, file: !65, line: 785, baseType: !255, size: 32, offset: 1120)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1714, file: !65, line: 795, baseType: !2543, size: 64, offset: 1152)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !65, line: 726, size: 128, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2544, file: !65, line: 727, baseType: !458, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2544, file: !65, line: 728, baseType: !109, size: 32, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1714, file: !65, line: 801, baseType: !355, size: 64, offset: 1216)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1714, file: !65, line: 804, baseType: !650, size: 64, offset: 1280)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1714, file: !65, line: 806, baseType: !109, size: 32, offset: 1344)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1714, file: !65, line: 808, baseType: !235, size: 32, offset: 1376)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1714, file: !65, line: 823, baseType: !1307, size: 320, offset: 1408)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1714, file: !65, line: 825, baseType: !222, size: 128, offset: 1728)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1714, file: !65, line: 845, baseType: !109, size: 32, offset: 1856)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1714, file: !65, line: 849, baseType: !355, size: 64, offset: 1920)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1714, file: !65, line: 850, baseType: !355, size: 64, offset: 1984)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1714, file: !65, line: 852, baseType: !355, size: 64, offset: 2048)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1714, file: !65, line: 853, baseType: !355, size: 64, offset: 2112)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1714, file: !65, line: 854, baseType: !652, size: 64, offset: 2176)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1714, file: !65, line: 855, baseType: !355, size: 64, offset: 2240)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1714, file: !65, line: 856, baseType: !355, size: 64, offset: 2304)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1714, file: !65, line: 857, baseType: !355, size: 64, offset: 2368)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1714, file: !65, line: 858, baseType: !355, size: 64, offset: 2432)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1714, file: !65, line: 865, baseType: !431, size: 32, offset: 2496)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1714, file: !65, line: 867, baseType: !235, size: 32, offset: 2528)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1714, file: !65, line: 869, baseType: !355, size: 64, offset: 2560)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1714, file: !65, line: 869, baseType: !355, size: 64, offset: 2624)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1714, file: !65, line: 869, baseType: !355, size: 64, offset: 2688)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1714, file: !65, line: 869, baseType: !355, size: 64, offset: 2752)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1714, file: !65, line: 870, baseType: !355, size: 64, offset: 2816)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1714, file: !65, line: 870, baseType: !355, size: 64, offset: 2880)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1714, file: !65, line: 870, baseType: !355, size: 64, offset: 2944)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1714, file: !65, line: 871, baseType: !355, size: 64, offset: 3008)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1714, file: !65, line: 871, baseType: !355, size: 64, offset: 3072)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1714, file: !65, line: 871, baseType: !355, size: 64, offset: 3136)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1714, file: !65, line: 871, baseType: !355, size: 64, offset: 3200)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1714, file: !65, line: 873, baseType: !2578, size: 3328, offset: 3264)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 3328, elements: !2579)
!2579 = !{!2580}
!2580 = !DISubrange(count: 52)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1714, file: !65, line: 875, baseType: !2582, size: 1280, offset: 6592)
!2582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1949, size: 1280, elements: !876)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1714, file: !65, line: 877, baseType: !2584, size: 64, offset: 7872)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !65, line: 877, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1714, file: !65, line: 880, baseType: !2587, size: 1088, offset: 7936)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2588, line: 72, baseType: !2589)
!2588 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2588, line: 23, size: 1088, elements: !2590)
!2590 = !{!2591, !2592, !2593, !2594, !2595, !2598, !2599, !2600, !2601, !2628, !2629, !2630}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2589, file: !2588, line: 28, baseType: !458, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2589, file: !2588, line: 38, baseType: !652, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2589, file: !2588, line: 40, baseType: !355, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2589, file: !2588, line: 43, baseType: !1307, size: 320, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2589, file: !2588, line: 44, baseType: !2596, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2588, line: 44, flags: DIFlagFwdDecl)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2589, file: !2588, line: 48, baseType: !355, size: 64, offset: 576)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2589, file: !2588, line: 59, baseType: !646, size: 256, offset: 640)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2589, file: !2588, line: 60, baseType: !204, size: 64, offset: 896)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2589, file: !2588, line: 61, baseType: !2602, size: 64, offset: 960)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2605, line: 13, size: 1216, elements: !2606)
!2605 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2612, !2613, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2604, file: !2605, line: 14, baseType: !204, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2604, file: !2605, line: 15, baseType: !355, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2604, file: !2605, line: 17, baseType: !355, size: 64, offset: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2604, file: !2605, line: 17, baseType: !355, size: 64, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2604, file: !2605, line: 18, baseType: !355, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2604, file: !2605, line: 18, baseType: !355, size: 64, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2604, file: !2605, line: 19, baseType: !2614, size: 64, offset: 384)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2604, file: !2605, line: 21, baseType: !341, size: 64, offset: 448)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2604, file: !2605, line: 23, baseType: !341, size: 64, offset: 512)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2604, file: !2605, line: 24, baseType: !341, size: 64, offset: 576)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2604, file: !2605, line: 25, baseType: !341, size: 64, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2604, file: !2605, line: 26, baseType: !341, size: 64, offset: 704)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2604, file: !2605, line: 27, baseType: !341, size: 64, offset: 768)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2604, file: !2605, line: 28, baseType: !341, size: 64, offset: 832)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2604, file: !2605, line: 29, baseType: !341, size: 64, offset: 896)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2604, file: !2605, line: 30, baseType: !341, size: 64, offset: 960)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2604, file: !2605, line: 31, baseType: !341, size: 64, offset: 1024)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2604, file: !2605, line: 32, baseType: !341, size: 64, offset: 1088)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2604, file: !2605, line: 33, baseType: !341, size: 64, offset: 1152)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2589, file: !2588, line: 63, baseType: !255, size: 32, offset: 1024)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2589, file: !2588, line: 69, baseType: !273, size: 16, offset: 1056)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2589, file: !2588, line: 70, baseType: !782, size: 16, offset: 1072)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1714, file: !65, line: 882, baseType: !355, size: 64, offset: 9024)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1714, file: !65, line: 885, baseType: !235, size: 32, offset: 9088)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1714, file: !65, line: 886, baseType: !2634, size: 64, offset: 9152)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !65, line: 732, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1714, file: !65, line: 901, baseType: !1974, size: 64, offset: 9216)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1714, file: !65, line: 904, baseType: !1737, size: 64, offset: 9280)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1714, file: !65, line: 906, baseType: !2639, size: 64, offset: 9344)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !65, line: 906, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1714, file: !65, line: 930, baseType: !255, size: 32, offset: 9408)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1714, file: !65, line: 933, baseType: !255, size: 32, offset: 9440)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1714, file: !65, line: 935, baseType: !2644, size: 64, offset: 9472)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !2645)
!2645 = !{!2646}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2644, file: !81, line: 104, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1714, file: !65, line: 940, baseType: !650, size: 64, offset: 9536)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1714, file: !65, line: 942, baseType: !906, size: 256, offset: 9600)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1711, file: !65, line: 986, baseType: !2652, offset: 10240)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, elements: !1797)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1414, file: !1090, line: 882, baseType: !1710, size: 64, offset: 9792)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1414, file: !1090, line: 884, baseType: !109, size: 32, offset: 9856)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1414, file: !1090, line: 885, baseType: !109, size: 32, offset: 9888)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1414, file: !1090, line: 886, baseType: !109, size: 32, offset: 9920)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1414, file: !1090, line: 888, baseType: !109, size: 32, offset: 9952)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1414, file: !1090, line: 890, baseType: !355, size: 64, offset: 9984)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1414, file: !1090, line: 893, baseType: !7, size: 32, offset: 10048)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1414, file: !1090, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1414, file: !1090, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1414, file: !1090, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1414, file: !1090, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1414, file: !1090, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1414, file: !1090, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1414, file: !1090, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1414, file: !1090, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1414, file: !1090, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1414, file: !1090, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1414, file: !1090, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1414, file: !1090, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1414, file: !1090, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1414, file: !1090, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1414, file: !1090, line: 969, baseType: !355, size: 64, offset: 10176)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1414, file: !1090, line: 971, baseType: !2676, size: 448, offset: 10240)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !44, line: 25, size: 448, elements: !2677)
!2677 = !{!2678, !2679, !2684}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2676, file: !44, line: 26, baseType: !355, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2676, file: !44, line: 27, baseType: !2680, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!341, !2683}
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, scope: !2676, file: !44, line: 28, baseType: !2685, size: 320, offset: 128)
!2685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2676, file: !44, line: 28, size: 320, elements: !2686)
!2686 = !{!2687, !2697, !2722}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2685, file: !44, line: 37, baseType: !2688, size: 320)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2685, file: !44, line: 30, size: 320, elements: !2689)
!2689 = !{!2690, !2692, !2693, !2694, !2695, !2696}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2688, file: !44, line: 31, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2688, file: !44, line: 32, baseType: !454, size: 32, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2688, file: !44, line: 33, baseType: !454, size: 32, offset: 96)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2688, file: !44, line: 34, baseType: !454, size: 32, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2688, file: !44, line: 35, baseType: !458, size: 64, offset: 192)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2688, file: !44, line: 36, baseType: !2691, size: 64, offset: 256)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2685, file: !44, line: 47, baseType: !2698, size: 192)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2685, file: !44, line: 39, size: 192, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2721}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2698, file: !44, line: 40, baseType: !1581, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2698, file: !44, line: 41, baseType: !43, size: 32, offset: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, scope: !2698, file: !44, line: 42, baseType: !2703, size: 64, offset: 64)
!2703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2698, file: !44, line: 42, size: 64, elements: !2704)
!2704 = !{!2705, !2713}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2703, file: !44, line: 43, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2708, line: 7, size: 128, elements: !2709)
!2708 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2709 = !{!2710, !2712}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2707, file: !2708, line: 8, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !339, line: 93, baseType: !548)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2707, file: !2708, line: 9, baseType: !548, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2703, file: !44, line: 44, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2716, line: 7, size: 64, elements: !2717)
!2716 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2717 = !{!2718, !2720}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2715, file: !2716, line: 8, baseType: !2719, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2716, line: 5, baseType: !642)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2715, file: !2716, line: 9, baseType: !642, size: 32, offset: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2698, file: !44, line: 46, baseType: !458, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2685, file: !44, line: 55, baseType: !2723, size: 256)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2685, file: !44, line: 49, size: 256, elements: !2724)
!2724 = !{!2725, !2733, !2734, !2735, !2736}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2723, file: !44, line: 50, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2728, line: 36, size: 64, elements: !2729)
!2728 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2729 = !{!2730, !2731, !2732}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2727, file: !2728, line: 37, baseType: !109, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2727, file: !2728, line: 38, baseType: !784, size: 16, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2727, file: !2728, line: 39, baseType: !784, size: 16, offset: 48)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2723, file: !44, line: 51, baseType: !109, size: 32, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2723, file: !44, line: 52, baseType: !109, size: 32, offset: 96)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2723, file: !44, line: 53, baseType: !355, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2723, file: !44, line: 54, baseType: !355, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1414, file: !1090, line: 973, baseType: !2738, size: 32, offset: 10688)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !206, line: 27, baseType: !2739)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !339, line: 28, baseType: !109)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1414, file: !1090, line: 974, baseType: !2738, size: 32, offset: 10720)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1414, file: !1090, line: 978, baseType: !355, size: 64, offset: 10752)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1414, file: !1090, line: 987, baseType: !1413, size: 64, offset: 10816)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1414, file: !1090, line: 990, baseType: !1413, size: 64, offset: 10880)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1414, file: !1090, line: 995, baseType: !222, size: 128, offset: 10944)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1414, file: !1090, line: 996, baseType: !222, size: 128, offset: 11072)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1414, file: !1090, line: 997, baseType: !1413, size: 64, offset: 11200)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1414, file: !1090, line: 1005, baseType: !222, size: 128, offset: 11264)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1414, file: !1090, line: 1006, baseType: !222, size: 128, offset: 11392)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1414, file: !1090, line: 1009, baseType: !1778, size: 64, offset: 11520)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1414, file: !1090, line: 1010, baseType: !2751, size: 512, offset: 11584)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !892, size: 512, elements: !876)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1414, file: !1090, line: 1011, baseType: !222, size: 128, offset: 12096)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1414, file: !1090, line: 1012, baseType: !222, size: 128, offset: 12224)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1414, file: !1090, line: 1014, baseType: !594, size: 64, offset: 12352)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1414, file: !1090, line: 1017, baseType: !775, size: 64, offset: 12416)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1414, file: !1090, line: 1020, baseType: !775, size: 64, offset: 12480)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1414, file: !1090, line: 1023, baseType: !204, size: 64, offset: 12544)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1414, file: !1090, line: 1025, baseType: !458, size: 64, offset: 12608)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1414, file: !1090, line: 1026, baseType: !458, size: 64, offset: 12672)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1414, file: !1090, line: 1031, baseType: !458, size: 64, offset: 12736)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1414, file: !1090, line: 1032, baseType: !2762, size: 192, offset: 12800)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1090, line: 324, size: 192, elements: !2763)
!2763 = !{!2764, !2765, !2766}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2762, file: !1090, line: 326, baseType: !458, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2762, file: !1090, line: 327, baseType: !458, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2762, file: !1090, line: 328, baseType: !604, size: 32, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1414, file: !1090, line: 1041, baseType: !355, size: 64, offset: 12992)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1414, file: !1090, line: 1042, baseType: !355, size: 64, offset: 13056)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1414, file: !1090, line: 1045, baseType: !458, size: 64, offset: 13120)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1414, file: !1090, line: 1048, baseType: !458, size: 64, offset: 13184)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1414, file: !1090, line: 1051, baseType: !355, size: 64, offset: 13248)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1414, file: !1090, line: 1052, baseType: !355, size: 64, offset: 13312)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1414, file: !1090, line: 1055, baseType: !2774, size: 640, offset: 13376)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2775, line: 132, size: 640, elements: !2776)
!2775 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2776 = !{!2777, !2783, !2784}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2774, file: !2775, line: 133, baseType: !2778, size: 576)
!2778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2779, size: 576, elements: !306)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2775, line: 117, size: 192, elements: !2780)
!2780 = !{!2781, !2782}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2779, file: !2775, line: 118, baseType: !458, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2779, file: !2775, line: 119, baseType: !1590, size: 128, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2774, file: !2775, line: 134, baseType: !7, size: 32, offset: 576)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2774, file: !2775, line: 135, baseType: !7, size: 32, offset: 608)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1414, file: !1090, line: 1058, baseType: !2786, size: 448, offset: 14016)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2775, line: 144, size: 448, elements: !2787)
!2787 = !{!2788, !2789, !2790}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2786, file: !2775, line: 145, baseType: !866, size: 128, align: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2786, file: !2775, line: 146, baseType: !646, size: 256, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2786, file: !2775, line: 147, baseType: !7, size: 32, offset: 384)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1414, file: !1090, line: 1064, baseType: !1804, size: 64, offset: 14464)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1414, file: !1090, line: 1067, baseType: !1804, size: 64, offset: 14528)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1414, file: !1090, line: 1070, baseType: !1804, size: 64, offset: 14592)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1414, file: !1090, line: 1074, baseType: !1831, size: 64, offset: 14656)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1414, file: !1090, line: 1084, baseType: !2796, size: 128, offset: 14720)
!2796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !2797)
!2797 = !{!2798}
!2798 = !DISubrange(count: 16)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1414, file: !1090, line: 1086, baseType: !2800, size: 64, offset: 14848)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1090, line: 55, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1414, file: !1090, line: 1089, baseType: !2803, size: 64, offset: 14912)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2804, line: 12, size: 64, elements: !2805)
!2804 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2805 = !{!2806}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2803, file: !2804, line: 13, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2804, line: 8, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1414, file: !1090, line: 1090, baseType: !2810, size: 128, offset: 14976)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2811, line: 13, size: 128, elements: !2812)
!2811 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2812 = !{!2813}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2810, file: !2811, line: 14, baseType: !222, size: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1414, file: !1090, line: 1097, baseType: !2815, size: 64, offset: 15104)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1090, line: 50, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1414, file: !1090, line: 1100, baseType: !2818, size: 64, offset: 15168)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1090, line: 1100, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1414, file: !1090, line: 1103, baseType: !2821, size: 64, offset: 15232)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1090, line: 53, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1414, file: !1090, line: 1107, baseType: !2824, size: 64, offset: 15296)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1090, line: 56, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1414, file: !1090, line: 1110, baseType: !2827, size: 64, offset: 15360)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2829, line: 93, size: 8768, elements: !2830)
!2829 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2830 = !{!2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2878, !2887, !2888, !2890, !2891, !2892, !2895, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2933, !2934, !2941, !2951, !2954, !2955, !2958, !2959, !2960, !2961, !2962, !2963}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2828, file: !2829, line: 94, baseType: !1427, size: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2828, file: !2829, line: 95, baseType: !255, size: 32, offset: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2828, file: !2829, line: 96, baseType: !109, size: 32, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2828, file: !2829, line: 97, baseType: !109, size: 32, offset: 96)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2828, file: !2829, line: 98, baseType: !222, size: 128, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2828, file: !2829, line: 100, baseType: !1400, size: 192, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2828, file: !2829, line: 103, baseType: !1413, size: 64, offset: 448)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2828, file: !2829, line: 106, baseType: !2839, size: 192, offset: 512)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1979, line: 32, size: 192, elements: !2840)
!2840 = !{!2841, !2842}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2839, file: !1979, line: 33, baseType: !222, size: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2839, file: !1979, line: 34, baseType: !2843, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2844, line: 25, baseType: !2845)
!2844 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2844, line: 23, size: 64, elements: !2846)
!2846 = !{!2847}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2845, file: !2844, line: 24, baseType: !1661, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2828, file: !2829, line: 109, baseType: !1016, size: 64, offset: 704)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2828, file: !2829, line: 112, baseType: !109, size: 32, offset: 768)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2828, file: !2829, line: 114, baseType: !109, size: 32, offset: 800)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2828, file: !2829, line: 115, baseType: !1413, size: 64, offset: 832)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2828, file: !2829, line: 118, baseType: !109, size: 32, offset: 896)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2828, file: !2829, line: 119, baseType: !7, size: 32, offset: 928)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2828, file: !2829, line: 121, baseType: !2855, size: 64, offset: 960)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2829, line: 80, size: 448, elements: !2857)
!2857 = !{!2858, !2859, !2865}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2856, file: !2829, line: 81, baseType: !255, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2856, file: !2829, line: 82, baseType: !2860, size: 128, offset: 64)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2829, line: 75, size: 128, elements: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2860, file: !2829, line: 76, baseType: !1413, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2860, file: !2829, line: 77, baseType: !2864, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2856, file: !2829, line: 83, baseType: !595, size: 256, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2828, file: !2829, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2828, file: !2829, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2828, file: !2829, line: 138, baseType: !7, size: 32, offset: 1056)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2828, file: !2829, line: 139, baseType: !222, size: 128, offset: 1088)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2828, file: !2829, line: 142, baseType: !1534, size: 512, offset: 1216)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2828, file: !2829, line: 143, baseType: !1542, size: 64, offset: 1728)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2828, file: !2829, line: 150, baseType: !2873, size: 256, offset: 1792)
!2873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2874, size: 256, elements: !765)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2829, line: 38, size: 128, elements: !2875)
!2875 = !{!2876, !2877}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2874, file: !2829, line: 39, baseType: !458, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2874, file: !2829, line: 40, baseType: !458, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2828, file: !2829, line: 156, baseType: !2879, size: 192, offset: 2048)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2829, line: 66, size: 192, elements: !2880)
!2880 = !{!2881}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2879, file: !2829, line: 67, baseType: !2882, size: 192)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2829, line: 47, size: 192, elements: !2883)
!2883 = !{!2884, !2885, !2886}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2882, file: !2829, line: 48, baseType: !652, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2882, file: !2829, line: 49, baseType: !652, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2882, file: !2829, line: 50, baseType: !652, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2828, file: !2829, line: 160, baseType: !2774, size: 640, offset: 2240)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2828, file: !2829, line: 163, baseType: !2889, size: 256, offset: 2880)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1778, size: 256, elements: !876)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2828, file: !2829, line: 169, baseType: !1778, size: 64, offset: 3136)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2828, file: !2829, line: 172, baseType: !109, size: 32, offset: 3200)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2828, file: !2829, line: 174, baseType: !2893, size: 64, offset: 3264)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2829, line: 174, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2828, file: !2829, line: 185, baseType: !2896, size: 64, offset: 3328)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !427, line: 860, baseType: !2897)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !427, line: 853, size: 64, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2897, file: !427, line: 858, baseType: !426, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2897, file: !427, line: 859, baseType: !235, size: 32, offset: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2828, file: !2829, line: 186, baseType: !458, size: 64, offset: 3392)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2828, file: !2829, line: 186, baseType: !458, size: 64, offset: 3456)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2828, file: !2829, line: 186, baseType: !458, size: 64, offset: 3520)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2828, file: !2829, line: 186, baseType: !458, size: 64, offset: 3584)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2828, file: !2829, line: 187, baseType: !458, size: 64, offset: 3648)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2828, file: !2829, line: 188, baseType: !458, size: 64, offset: 3712)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2828, file: !2829, line: 189, baseType: !2762, size: 192, offset: 3776)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2828, file: !2829, line: 190, baseType: !355, size: 64, offset: 3968)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2828, file: !2829, line: 190, baseType: !355, size: 64, offset: 4032)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2828, file: !2829, line: 190, baseType: !355, size: 64, offset: 4096)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2828, file: !2829, line: 190, baseType: !355, size: 64, offset: 4160)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2828, file: !2829, line: 191, baseType: !355, size: 64, offset: 4224)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2828, file: !2829, line: 191, baseType: !355, size: 64, offset: 4288)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2828, file: !2829, line: 191, baseType: !355, size: 64, offset: 4352)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2828, file: !2829, line: 191, baseType: !355, size: 64, offset: 4416)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2828, file: !2829, line: 192, baseType: !355, size: 64, offset: 4480)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2828, file: !2829, line: 192, baseType: !355, size: 64, offset: 4544)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2828, file: !2829, line: 192, baseType: !355, size: 64, offset: 4608)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2828, file: !2829, line: 192, baseType: !355, size: 64, offset: 4672)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2828, file: !2829, line: 193, baseType: !355, size: 64, offset: 4736)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2828, file: !2829, line: 193, baseType: !355, size: 64, offset: 4800)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2828, file: !2829, line: 194, baseType: !2923, size: 448, offset: 4864)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2924, line: 12, size: 448, elements: !2925)
!2924 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2925 = !{!2926, !2927, !2928, !2929, !2930, !2931, !2932}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2923, file: !2924, line: 15, baseType: !458, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2923, file: !2924, line: 17, baseType: !458, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2923, file: !2924, line: 19, baseType: !458, size: 64, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2923, file: !2924, line: 21, baseType: !458, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2923, file: !2924, line: 29, baseType: !458, size: 64, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2923, file: !2924, line: 35, baseType: !458, size: 64, offset: 320)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2923, file: !2924, line: 44, baseType: !458, size: 64, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2828, file: !2829, line: 202, baseType: !460, size: 64, offset: 5312)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2828, file: !2829, line: 213, baseType: !2935, size: 2048, offset: 5376)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2936, size: 2048, elements: !2797)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2937, line: 43, size: 128, elements: !2938)
!2937 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2938 = !{!2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2936, file: !2937, line: 44, baseType: !354, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2936, file: !2937, line: 45, baseType: !354, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2828, file: !2829, line: 216, baseType: !2942, size: 448, offset: 7424)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2829, line: 30, size: 448, elements: !2943)
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2942, file: !2829, line: 31, baseType: !109, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2942, file: !2829, line: 32, baseType: !341, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2942, file: !2829, line: 33, baseType: !355, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2942, file: !2829, line: 34, baseType: !458, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2942, file: !2829, line: 34, baseType: !458, size: 64, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2942, file: !2829, line: 35, baseType: !355, size: 64, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2942, file: !2829, line: 35, baseType: !355, size: 64, offset: 384)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2828, file: !2829, line: 219, baseType: !2952, size: 64, offset: 7872)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2829, line: 219, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2828, file: !2829, line: 222, baseType: !7, size: 32, offset: 7936)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2828, file: !2829, line: 223, baseType: !2956, size: 64, offset: 8000)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2829, line: 223, flags: DIFlagFwdDecl)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2828, file: !2829, line: 230, baseType: !726, size: 8, offset: 8064)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2828, file: !2829, line: 231, baseType: !784, size: 16, offset: 8080)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2828, file: !2829, line: 232, baseType: !784, size: 16, offset: 8096)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2828, file: !2829, line: 234, baseType: !1710, size: 64, offset: 8128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2828, file: !2829, line: 237, baseType: !646, size: 256, offset: 8192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2828, file: !2829, line: 243, baseType: !1307, size: 320, offset: 8448)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1414, file: !1090, line: 1111, baseType: !2965, size: 64, offset: 15424)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2829, line: 20, size: 16640, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2966, file: !2829, line: 21, baseType: !235, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2966, file: !2829, line: 22, baseType: !1427, size: 32, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2966, file: !2829, line: 23, baseType: !1400, size: 192, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2966, file: !2829, line: 24, baseType: !2972, size: 16384, offset: 256)
!2972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2973, size: 16384, elements: !310)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1979, line: 51, size: 256, elements: !2974)
!2974 = !{!2975}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2973, file: !1979, line: 52, baseType: !2976, size: 256)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1979, line: 37, size: 256, elements: !2977)
!2977 = !{!2978, !2985, !2986, !2990}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2976, file: !1979, line: 39, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2980, line: 83, baseType: !2981)
!2980 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2980, line: 82, baseType: !2983)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !109}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2976, file: !1979, line: 40, baseType: !355, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2976, file: !1979, line: 46, baseType: !2987, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2980, line: 86, baseType: !2988)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2980, line: 85, baseType: !1011)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2976, file: !1979, line: 48, baseType: !2843, size: 64, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1414, file: !1090, line: 1112, baseType: !2843, size: 64, offset: 15488)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1414, file: !1090, line: 1113, baseType: !2843, size: 64, offset: 15552)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1414, file: !1090, line: 1115, baseType: !2843, size: 64, offset: 15616)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1414, file: !1090, line: 1116, baseType: !2839, size: 192, offset: 15680)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1414, file: !1090, line: 1117, baseType: !355, size: 64, offset: 15872)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1414, file: !1090, line: 1118, baseType: !352, size: 64, offset: 15936)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1414, file: !1090, line: 1119, baseType: !7, size: 32, offset: 16000)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1414, file: !1090, line: 1121, baseType: !865, size: 64, offset: 16064)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1414, file: !1090, line: 1125, baseType: !3000, size: 64, offset: 16128)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1090, line: 43, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1414, file: !1090, line: 1127, baseType: !391, size: 32, offset: 16192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1414, file: !1090, line: 1128, baseType: !7, size: 32, offset: 16224)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1414, file: !1090, line: 1130, baseType: !3005, size: 128, offset: 16256)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3006, line: 37, size: 128, elements: !3007)
!3006 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3007 = !{!3008, !3009, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3005, file: !3006, line: 38, baseType: !109, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3005, file: !3006, line: 39, baseType: !255, size: 32, offset: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3005, file: !3006, line: 40, baseType: !3011, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3006, line: 24, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1414, file: !1090, line: 1131, baseType: !3014, size: 256, offset: 16384)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3015, line: 12, size: 256, elements: !3016)
!3015 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3016 = !{!3017, !3018, !3019, !3020}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3014, file: !3015, line: 13, baseType: !305, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3014, file: !3015, line: 14, baseType: !355, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3014, file: !3015, line: 15, baseType: !355, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3014, file: !3015, line: 16, baseType: !726, size: 8, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1414, file: !1090, line: 1134, baseType: !458, size: 64, offset: 16640)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1414, file: !1090, line: 1135, baseType: !458, size: 64, offset: 16704)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1414, file: !1090, line: 1138, baseType: !235, size: 32, offset: 16768)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1414, file: !1090, line: 1141, baseType: !604, size: 32, offset: 16800)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1414, file: !1090, line: 1143, baseType: !3026, size: 64, offset: 16832)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1090, line: 735, size: 64, elements: !3027)
!3027 = !{!3028}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3026, file: !1090, line: 736, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1414, file: !1090, line: 1147, baseType: !1593, size: 128, offset: 16896)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1414, file: !1090, line: 1149, baseType: !1413, size: 64, offset: 17024)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1414, file: !1090, line: 1151, baseType: !3033, size: 64, offset: 17088)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1090, line: 1151, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1414, file: !1090, line: 1188, baseType: !204, size: 64, offset: 17152)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1414, file: !1090, line: 1191, baseType: !3037, size: 64, offset: 17216)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1090, line: 44, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1414, file: !1090, line: 1194, baseType: !3040, size: 64, offset: 17280)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1090, line: 45, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1414, file: !1090, line: 1197, baseType: !3043, size: 64, offset: 17344)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1090, line: 61, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1414, file: !1090, line: 1199, baseType: !3046, size: 64, offset: 17408)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3048, line: 99, size: 128, elements: !3049)
!3048 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3049 = !{!3050, !3051, !3052}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3047, file: !3048, line: 100, baseType: !650, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3047, file: !3048, line: 101, baseType: !255, size: 32, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3047, file: !3048, line: 103, baseType: !275, size: 16, offset: 96)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1414, file: !1090, line: 1202, baseType: !3054, size: 64, offset: 17472)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1090, line: 48, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1414, file: !1090, line: 1205, baseType: !355, size: 64, offset: 17536)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1414, file: !1090, line: 1206, baseType: !3058, size: 64, offset: 17600)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1979, line: 14, baseType: !3060)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1979, line: 12, size: 384, elements: !3061)
!3061 = !{!3062}
!3062 = !DIDerivedType(tag: DW_TAG_member, scope: !3060, file: !1979, line: 13, baseType: !3063, size: 384)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !1979, line: 13, size: 384, elements: !3064)
!3064 = !{!3065, !3066, !3067, !3068}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3063, file: !1979, line: 13, baseType: !109, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3063, file: !1979, line: 13, baseType: !109, size: 32, offset: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3063, file: !1979, line: 13, baseType: !109, size: 32, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3063, file: !1979, line: 13, baseType: !3069, size: 256, offset: 128)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3070, line: 37, size: 256, elements: !3071)
!3070 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3071 = !{!3072, !3077, !3090, !3096, !3105, !3132, !3137}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3069, file: !3070, line: 42, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 39, size: 64, elements: !3074)
!3074 = !{!3075, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3073, file: !3070, line: 40, baseType: !2739, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3073, file: !3070, line: 41, baseType: !397, size: 32, offset: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3069, file: !3070, line: 50, baseType: !3078, size: 192)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 45, size: 192, elements: !3079)
!3079 = !{!3080, !3082, !3083, !3089}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3078, file: !3070, line: 46, baseType: !3081, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !339, line: 95, baseType: !109)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3078, file: !3070, line: 47, baseType: !109, size: 32, offset: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3078, file: !3070, line: 48, baseType: !3084, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3070, line: 11, baseType: !3085)
!3085 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3070, line: 8, size: 64, elements: !3086)
!3086 = !{!3087, !3088}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3085, file: !3070, line: 9, baseType: !109, size: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3085, file: !3070, line: 10, baseType: !204, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3078, file: !3070, line: 49, baseType: !109, size: 32, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3069, file: !3070, line: 57, baseType: !3091, size: 128)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 53, size: 128, elements: !3092)
!3092 = !{!3093, !3094, !3095}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3091, file: !3070, line: 54, baseType: !2739, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3091, file: !3070, line: 55, baseType: !397, size: 32, offset: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3091, file: !3070, line: 56, baseType: !3084, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3069, file: !3070, line: 66, baseType: !3097, size: 256)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 60, size: 256, elements: !3098)
!3098 = !{!3099, !3100, !3101, !3102, !3104}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3097, file: !3070, line: 61, baseType: !2739, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3097, file: !3070, line: 62, baseType: !397, size: 32, offset: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3097, file: !3070, line: 63, baseType: !109, size: 32, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3097, file: !3070, line: 64, baseType: !3103, size: 64, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !339, line: 94, baseType: !340)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3097, file: !3070, line: 65, baseType: !3103, size: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3069, file: !3070, line: 105, baseType: !3106, size: 256)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 69, size: 256, elements: !3107)
!3107 = !{!3108, !3109}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3106, file: !3070, line: 70, baseType: !204, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, scope: !3106, file: !3070, line: 79, baseType: !3110, size: 192, offset: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3106, file: !3070, line: 79, size: 192, elements: !3111)
!3111 = !{!3112, !3113, !3114, !3121, !3126}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3110, file: !3070, line: 81, baseType: !109, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3110, file: !3070, line: 86, baseType: !784, size: 16)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3110, file: !3070, line: 92, baseType: !3115, size: 192)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3110, file: !3070, line: 88, size: 192, elements: !3116)
!3116 = !{!3117, !3119, !3120}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3115, file: !3070, line: 89, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 64, elements: !1577)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3115, file: !3070, line: 90, baseType: !204, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3115, file: !3070, line: 91, baseType: !204, size: 64, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3110, file: !3070, line: 97, baseType: !3122, size: 96)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3110, file: !3070, line: 94, size: 96, elements: !3123)
!3123 = !{!3124, !3125}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3122, file: !3070, line: 95, baseType: !3118, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3122, file: !3070, line: 96, baseType: !455, size: 32, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3110, file: !3070, line: 103, baseType: !3127, size: 128)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3110, file: !3070, line: 99, size: 128, elements: !3128)
!3128 = !{!3129, !3130, !3131}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3127, file: !3070, line: 100, baseType: !355, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3127, file: !3070, line: 101, baseType: !455, size: 32, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3127, file: !3070, line: 102, baseType: !455, size: 32, offset: 96)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3069, file: !3070, line: 111, baseType: !3133, size: 128)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 108, size: 128, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3133, file: !3070, line: 109, baseType: !341, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3133, file: !3070, line: 110, baseType: !109, size: 32, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3069, file: !3070, line: 118, baseType: !3138, size: 128)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3070, line: 114, size: 128, elements: !3139)
!3139 = !{!3140, !3141, !3142}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3138, file: !3070, line: 115, baseType: !204, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3138, file: !3070, line: 116, baseType: !109, size: 32, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3138, file: !3070, line: 117, baseType: !7, size: 32, offset: 96)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1414, file: !1090, line: 1208, baseType: !2923, size: 448, offset: 17664)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1414, file: !1090, line: 1215, baseType: !458, size: 64, offset: 18112)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1414, file: !1090, line: 1217, baseType: !458, size: 64, offset: 18176)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1414, file: !1090, line: 1219, baseType: !458, size: 64, offset: 18240)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1414, file: !1090, line: 1223, baseType: !3148, size: 64, offset: 18304)
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3149, line: 99, baseType: !3150)
!3149 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3149, line: 99, size: 64, elements: !3151)
!3151 = !{!3152}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3150, file: !3149, line: 99, baseType: !1661, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1414, file: !1090, line: 1225, baseType: !426, size: 32, offset: 18368)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1414, file: !1090, line: 1226, baseType: !109, size: 32, offset: 18400)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1414, file: !1090, line: 1227, baseType: !109, size: 32, offset: 18432)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1414, file: !1090, line: 1231, baseType: !3157, size: 64, offset: 18496)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1090, line: 1231, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1414, file: !1090, line: 1233, baseType: !222, size: 128, offset: 18560)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1414, file: !1090, line: 1240, baseType: !3161, size: 64, offset: 18688)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1090, line: 62, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1414, file: !1090, line: 1242, baseType: !3164, size: 64, offset: 18752)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1090, line: 1242, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1414, file: !1090, line: 1244, baseType: !222, size: 128, offset: 18816)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1414, file: !1090, line: 1245, baseType: !3168, size: 64, offset: 18944)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1090, line: 51, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1414, file: !1090, line: 1246, baseType: !646, size: 256, offset: 19008)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1414, file: !1090, line: 1247, baseType: !7, size: 32, offset: 19264)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1414, file: !1090, line: 1250, baseType: !3173, size: 64, offset: 19328)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1090, line: 57, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1414, file: !1090, line: 1251, baseType: !646, size: 256, offset: 19392)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1414, file: !1090, line: 1252, baseType: !222, size: 128, offset: 19648)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1414, file: !1090, line: 1259, baseType: !2423, size: 64, offset: 19776)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1414, file: !1090, line: 1260, baseType: !784, size: 16, offset: 19840)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1414, file: !1090, line: 1261, baseType: !784, size: 16, offset: 19856)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1414, file: !1090, line: 1314, baseType: !3181, size: 64, offset: 19904)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3183, line: 62, size: 256, align: 256, elements: !3184)
!3183 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190, !3191}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3182, file: !3183, line: 75, baseType: !455, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3182, file: !3183, line: 90, baseType: !455, size: 32, offset: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3182, file: !3183, line: 112, baseType: !459, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3182, file: !3183, line: 132, baseType: !455, size: 32, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3182, file: !3183, line: 140, baseType: !455, size: 32, offset: 160)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3182, file: !3183, line: 149, baseType: !455, size: 32, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3182, file: !3183, line: 154, baseType: !3192, offset: 224)
!3192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !1797)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1414, file: !1090, line: 1315, baseType: !454, size: 32, offset: 19968)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1414, file: !1090, line: 1316, baseType: !454, size: 32, offset: 20000)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1414, file: !1090, line: 1321, baseType: !355, size: 64, offset: 20032)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1414, file: !1090, line: 1325, baseType: !109, size: 32, offset: 20096)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1414, file: !1090, line: 1326, baseType: !109, size: 32, offset: 20128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1414, file: !1090, line: 1327, baseType: !109, size: 32, offset: 20160)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1414, file: !1090, line: 1328, baseType: !109, size: 32, offset: 20192)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1414, file: !1090, line: 1329, baseType: !866, size: 128, align: 64, offset: 20224)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1414, file: !1090, line: 1332, baseType: !3202, size: 128, offset: 20352)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3203, line: 51, size: 128, elements: !3204)
!3203 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3204 = !{!3205, !3210, !3211}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3202, file: !3203, line: 60, baseType: !3206, size: 64)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3207, line: 7, size: 64, elements: !3208)
!3207 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3208 = !{!3209}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3206, file: !3207, line: 12, baseType: !1658, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3202, file: !3203, line: 63, baseType: !726, size: 8, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3202, file: !3203, line: 70, baseType: !726, size: 8, offset: 72)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1414, file: !1090, line: 1335, baseType: !2475, size: 64, offset: 20480)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1414, file: !1090, line: 1337, baseType: !3214, size: 128, offset: 20544)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3203, line: 39, size: 128, elements: !3215)
!3215 = !{!3216, !3217, !3218}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3214, file: !3203, line: 40, baseType: !2262, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3214, file: !3203, line: 42, baseType: !455, size: 32, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3214, file: !3203, line: 43, baseType: !455, size: 32, offset: 96)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1414, file: !1090, line: 1340, baseType: !3220, size: 64, offset: 20672)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1090, line: 69, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1414, file: !1090, line: 1351, baseType: !109, size: 32, offset: 20736)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1414, file: !1090, line: 1352, baseType: !109, size: 32, offset: 20768)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1414, file: !1090, line: 1354, baseType: !355, size: 64, offset: 20800)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1414, file: !1090, line: 1364, baseType: !458, size: 64, offset: 20864)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1414, file: !1090, line: 1365, baseType: !458, size: 64, offset: 20928)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1414, file: !1090, line: 1412, baseType: !355, size: 64, offset: 20992)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1414, file: !1090, line: 1453, baseType: !3229, size: 64, offset: 21056)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1090, line: 1453, flags: DIFlagFwdDecl)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1414, file: !1090, line: 1457, baseType: !3232, size: 64, offset: 21120)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3234)
!3234 = !{!3235, !3236, !3255, !3258, !3259, !3292, !3302}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3233, file: !81, line: 62, baseType: !80, size: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, scope: !3233, file: !81, line: 64, baseType: !3237, size: 192, offset: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3233, file: !81, line: 64, size: 192, elements: !3238)
!3238 = !{!3239, !3250}
!3239 = !DIDerivedType(tag: DW_TAG_member, scope: !3237, file: !81, line: 65, baseType: !3240, size: 192)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3237, file: !81, line: 65, size: 192, elements: !3241)
!3241 = !{!3242, !3249}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3240, file: !81, line: 66, baseType: !3243, size: 128)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3244, line: 50, size: 128, elements: !3245)
!3244 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3245 = !{!3246, !3247, !3248}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3243, file: !3244, line: 52, baseType: !355, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3243, file: !3244, line: 54, baseType: !7, size: 32, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3243, file: !3244, line: 55, baseType: !7, size: 32, offset: 96)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3240, file: !81, line: 67, baseType: !355, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, scope: !3237, file: !81, line: 70, baseType: !3251, size: 192)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3237, file: !81, line: 70, size: 192, elements: !3252)
!3252 = !{!3253, !3254}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3251, file: !81, line: 71, baseType: !866, size: 128, align: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3251, file: !81, line: 72, baseType: !355, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3233, file: !81, line: 76, baseType: !3256, size: 64, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3233, file: !81, line: 77, baseType: !355, size: 64, offset: 320)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3233, file: !81, line: 79, baseType: !3260, size: 64, offset: 384)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3244, line: 25, size: 256, elements: !3262)
!3262 = !{!3263, !3269, !3273}
!3263 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !3244, line: 26, baseType: !3264, size: 128)
!3264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3261, file: !3244, line: 26, size: 128, elements: !3265)
!3265 = !{!3266, !3268}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3264, file: !3244, line: 27, baseType: !3267, size: 128)
!3267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 128, elements: !2797)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3264, file: !3244, line: 28, baseType: !3267, size: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3261, file: !3244, line: 31, baseType: !3270, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3272)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3244, line: 23, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !3244, line: 33, baseType: !3274, size: 64, offset: 192)
!3274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3261, file: !3244, line: 33, size: 64, elements: !3275)
!3275 = !{!3276, !3282, !3287}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3274, file: !3244, line: 38, baseType: !3277, size: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3244, line: 34, size: 64, elements: !3278)
!3278 = !{!3279, !3280, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3277, file: !3244, line: 35, baseType: !642, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3277, file: !3244, line: 36, baseType: !263, size: 8, offset: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3277, file: !3244, line: 37, baseType: !263, size: 8, offset: 40)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3274, file: !3244, line: 42, baseType: !3283, size: 16)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3244, line: 39, size: 16, elements: !3284)
!3284 = !{!3285, !3286}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3283, file: !3244, line: 40, baseType: !263, size: 8)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3283, file: !3244, line: 41, baseType: !263, size: 8, offset: 8)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3274, file: !3244, line: 46, baseType: !3288, size: 16)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !3244, line: 43, size: 16, elements: !3289)
!3289 = !{!3290, !3291}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3288, file: !3244, line: 44, baseType: !263, size: 8)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3288, file: !3244, line: 45, baseType: !263, size: 8, offset: 8)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3233, file: !81, line: 81, baseType: !3293, size: 64, offset: 448)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3295)
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3294, file: !81, line: 86, baseType: !3256, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3294, file: !81, line: 87, baseType: !355, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3294, file: !81, line: 88, baseType: !355, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3294, file: !81, line: 89, baseType: !355, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3294, file: !81, line: 90, baseType: !726, size: 8, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3294, file: !81, line: 92, baseType: !3293, size: 64, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3233, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1414, file: !1090, line: 1463, baseType: !3304, offset: 21184)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1090, line: 739, elements: !935)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1414, file: !1090, line: 1470, baseType: !866, size: 128, align: 64, offset: 21184)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1414, file: !1090, line: 1471, baseType: !1427, size: 32, offset: 21312)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1414, file: !1090, line: 1472, baseType: !109, size: 32, offset: 21344)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1414, file: !1090, line: 1474, baseType: !1413, size: 64, offset: 21376)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1414, file: !1090, line: 1475, baseType: !888, size: 320, offset: 21440)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1414, file: !1090, line: 1478, baseType: !3311, size: 64, offset: 21760)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3313, line: 49, size: 512, elements: !3314)
!3313 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3321, !3322, !3323, !3325}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3312, file: !3313, line: 50, baseType: !3311, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3312, file: !3313, line: 51, baseType: !204, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3312, file: !3313, line: 52, baseType: !355, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3312, file: !3313, line: 53, baseType: !355, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3312, file: !3313, line: 54, baseType: !3320, size: 64, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3312, file: !3313, line: 56, baseType: !7, size: 32, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3312, file: !3313, line: 58, baseType: !7, size: 32, offset: 352)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3312, file: !3313, line: 59, baseType: !3324, size: 64, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !206, line: 159, baseType: !458)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3312, file: !3313, line: 60, baseType: !2614, size: 64, offset: 448)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1414, file: !1090, line: 1482, baseType: !1427, size: 32, offset: 21824)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1414, file: !1090, line: 1489, baseType: !204, size: 64, offset: 21888)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1414, file: !1090, line: 1504, baseType: !204, size: 64, offset: 21952)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1414, file: !1090, line: 1505, baseType: !459, size: 64, offset: 22016)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1414, file: !1090, line: 1506, baseType: !458, size: 64, offset: 22080)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1414, file: !1090, line: 1507, baseType: !459, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1414, file: !1090, line: 1508, baseType: !459, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1414, file: !1090, line: 1509, baseType: !459, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1414, file: !1090, line: 1510, baseType: !866, size: 128, align: 64, offset: 22208)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1414, file: !1090, line: 1511, baseType: !109, size: 32, offset: 22336)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1414, file: !1090, line: 1515, baseType: !3337, size: 64, offset: 22400)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1441, line: 56, size: 64, elements: !3338)
!3338 = !{!3339}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3337, file: !1441, line: 57, baseType: !1444, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1414, file: !1090, line: 1518, baseType: !3337, size: 64, offset: 22464)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1414, file: !1090, line: 1528, baseType: !866, size: 128, align: 64, offset: 22528)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1414, file: !1090, line: 1552, baseType: !3343, size: 35328, offset: 23040)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3344, line: 430, size: 35328, elements: !3345)
!3344 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3345 = !{!3346, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3375, !3376, !3377, !3378, !3379, !3380, !3383, !3384, !3385, !3386}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3343, file: !3344, line: 432, baseType: !3347, size: 192)
!3347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3348, size: 192, elements: !306)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3349, line: 16, size: 64, elements: !3350)
!3349 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3350 = !{!3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3348, file: !3349, line: 17, baseType: !273, size: 16)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3348, file: !3349, line: 18, baseType: !273, size: 16, offset: 16)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3348, file: !3349, line: 19, baseType: !273, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3348, file: !3349, line: 19, baseType: !273, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3348, file: !3349, line: 19, baseType: !273, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3348, file: !3349, line: 19, baseType: !273, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3348, file: !3349, line: 19, baseType: !273, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3348, file: !3349, line: 20, baseType: !273, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3348, file: !3349, line: 20, baseType: !273, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3348, file: !3349, line: 20, baseType: !273, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3348, file: !3349, line: 20, baseType: !273, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3348, file: !3349, line: 20, baseType: !273, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3348, file: !3349, line: 20, baseType: !273, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3343, file: !3344, line: 436, baseType: !355, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3343, file: !3344, line: 440, baseType: !275, size: 16, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3343, file: !3344, line: 441, baseType: !275, size: 16, offset: 272)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3343, file: !3344, line: 442, baseType: !275, size: 16, offset: 288)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3343, file: !3344, line: 443, baseType: !275, size: 16, offset: 304)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3343, file: !3344, line: 447, baseType: !355, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3343, file: !3344, line: 448, baseType: !355, size: 64, offset: 384)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3343, file: !3344, line: 459, baseType: !3372, size: 256, offset: 448)
!3372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3373, size: 256, elements: !876)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3344, line: 428, flags: DIFlagFwdDecl)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3343, file: !3344, line: 461, baseType: !355, size: 64, offset: 704)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3343, file: !3344, line: 463, baseType: !355, size: 64, offset: 768)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3343, file: !3344, line: 465, baseType: !355, size: 64, offset: 832)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3343, file: !3344, line: 466, baseType: !355, size: 64, offset: 896)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3343, file: !3344, line: 467, baseType: !355, size: 64, offset: 960)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3343, file: !3344, line: 473, baseType: !3381, size: 64, offset: 1024)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3344, line: 10, flags: DIFlagFwdDecl)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3343, file: !3344, line: 480, baseType: !355, size: 64, offset: 1088)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3343, file: !3344, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3343, file: !3344, line: 491, baseType: !454, size: 32, offset: 1184)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3343, file: !3344, line: 501, baseType: !3387, size: 33792, offset: 1536)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3388, line: 448, size: 33792, elements: !3389)
!3388 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3389 = !{!3390, !3391, !3392, !3554, !3555, !3561, !3562}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3387, file: !3388, line: 461, baseType: !7, size: 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3387, file: !3388, line: 468, baseType: !355, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3387, file: !3388, line: 476, baseType: !3393, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3388, line: 356, size: 33280, align: 512, elements: !3395)
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3394, file: !3388, line: 358, baseType: !7, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3394, file: !3388, line: 361, baseType: !7, size: 32, offset: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3394, file: !3388, line: 364, baseType: !458, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3394, file: !3388, line: 367, baseType: !458, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3394, file: !3388, line: 370, baseType: !458, size: 64, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3394, file: !3388, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3394, file: !3388, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3394, file: !3388, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3394, file: !3388, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3394, file: !3388, line: 397, baseType: !3406, size: 32768, offset: 512)
!3406 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3388, line: 348, size: 32768, elements: !3407)
!3407 = !{!3408, !3423, !3460, !3537, !3550}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3406, file: !3388, line: 349, baseType: !3409, size: 896)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3388, line: 12, size: 896, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3422}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3409, file: !3388, line: 13, baseType: !454, size: 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3409, file: !3388, line: 14, baseType: !454, size: 32, offset: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3409, file: !3388, line: 15, baseType: !454, size: 32, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3409, file: !3388, line: 16, baseType: !454, size: 32, offset: 96)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3409, file: !3388, line: 17, baseType: !454, size: 32, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3409, file: !3388, line: 18, baseType: !454, size: 32, offset: 160)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3409, file: !3388, line: 19, baseType: !454, size: 32, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3409, file: !3388, line: 22, baseType: !3419, size: 640, offset: 224)
!3419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 640, elements: !3420)
!3420 = !{!3421}
!3421 = !DISubrange(count: 20)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3409, file: !3388, line: 25, baseType: !454, size: 32, offset: 864)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3406, file: !3388, line: 350, baseType: !3424, size: 4096, align: 128)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3388, line: 34, size: 4096, align: 128, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429, !3430, !3445, !3446, !3447, !3449, !3451, !3455}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3424, file: !3388, line: 35, baseType: !273, size: 16)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3424, file: !3388, line: 36, baseType: !273, size: 16, offset: 16)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3424, file: !3388, line: 37, baseType: !273, size: 16, offset: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3424, file: !3388, line: 38, baseType: !273, size: 16, offset: 48)
!3430 = !DIDerivedType(tag: DW_TAG_member, scope: !3424, file: !3388, line: 39, baseType: !3431, size: 128, offset: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3424, file: !3388, line: 39, size: 128, elements: !3432)
!3432 = !{!3433, !3438}
!3433 = !DIDerivedType(tag: DW_TAG_member, scope: !3431, file: !3388, line: 40, baseType: !3434, size: 128)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3431, file: !3388, line: 40, size: 128, elements: !3435)
!3435 = !{!3436, !3437}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3434, file: !3388, line: 41, baseType: !458, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3434, file: !3388, line: 42, baseType: !458, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3431, file: !3388, line: 44, baseType: !3439, size: 128)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3431, file: !3388, line: 44, size: 128, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3439, file: !3388, line: 45, baseType: !454, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3439, file: !3388, line: 46, baseType: !454, size: 32, offset: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3439, file: !3388, line: 47, baseType: !454, size: 32, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3439, file: !3388, line: 48, baseType: !454, size: 32, offset: 96)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3424, file: !3388, line: 51, baseType: !454, size: 32, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3424, file: !3388, line: 52, baseType: !454, size: 32, offset: 224)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3424, file: !3388, line: 55, baseType: !3448, size: 1024, offset: 256)
!3448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 1024, elements: !467)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3424, file: !3388, line: 58, baseType: !3450, size: 2048, offset: 1280)
!3450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 2048, elements: !310)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3424, file: !3388, line: 60, baseType: !3452, size: 384, offset: 3328)
!3452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 384, elements: !3453)
!3453 = !{!3454}
!3454 = !DISubrange(count: 12)
!3455 = !DIDerivedType(tag: DW_TAG_member, scope: !3424, file: !3388, line: 62, baseType: !3456, size: 384, offset: 3712)
!3456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3424, file: !3388, line: 62, size: 384, elements: !3457)
!3457 = !{!3458, !3459}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3456, file: !3388, line: 63, baseType: !3452, size: 384)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3456, file: !3388, line: 64, baseType: !3452, size: 384)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3406, file: !3388, line: 351, baseType: !3461, size: 1088)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3388, line: 79, size: 1088, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3536}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3461, file: !3388, line: 80, baseType: !454, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3461, file: !3388, line: 81, baseType: !454, size: 32, offset: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3461, file: !3388, line: 82, baseType: !454, size: 32, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3461, file: !3388, line: 83, baseType: !454, size: 32, offset: 96)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3461, file: !3388, line: 84, baseType: !454, size: 32, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3461, file: !3388, line: 85, baseType: !454, size: 32, offset: 160)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3461, file: !3388, line: 86, baseType: !454, size: 32, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3461, file: !3388, line: 88, baseType: !3419, size: 640, offset: 224)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3461, file: !3388, line: 89, baseType: !263, size: 8, offset: 864)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3461, file: !3388, line: 90, baseType: !263, size: 8, offset: 872)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3461, file: !3388, line: 91, baseType: !263, size: 8, offset: 880)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3461, file: !3388, line: 92, baseType: !263, size: 8, offset: 888)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3461, file: !3388, line: 93, baseType: !263, size: 8, offset: 896)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3461, file: !3388, line: 94, baseType: !263, size: 8, offset: 904)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3461, file: !3388, line: 95, baseType: !3478, size: 64, offset: 960)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3480, line: 11, size: 128, elements: !3481)
!3480 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3481 = !{!3482, !3483}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3479, file: !3480, line: 12, baseType: !341, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3479, file: !3480, line: 13, baseType: !3484, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3486, line: 103, size: 1344, elements: !3487)
!3486 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3487 = !{!3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3516, !3517, !3518}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3485, file: !3486, line: 109, baseType: !355, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3485, file: !3486, line: 110, baseType: !355, size: 64, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3485, file: !3486, line: 111, baseType: !355, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3485, file: !3486, line: 112, baseType: !355, size: 64, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3485, file: !3486, line: 113, baseType: !355, size: 64, offset: 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3485, file: !3486, line: 114, baseType: !355, size: 64, offset: 320)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3485, file: !3486, line: 117, baseType: !355, size: 64, offset: 384)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3485, file: !3486, line: 118, baseType: !355, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3485, file: !3486, line: 119, baseType: !355, size: 64, offset: 512)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3485, file: !3486, line: 120, baseType: !355, size: 64, offset: 576)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3485, file: !3486, line: 121, baseType: !355, size: 64, offset: 640)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3485, file: !3486, line: 122, baseType: !355, size: 64, offset: 704)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3485, file: !3486, line: 123, baseType: !355, size: 64, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3485, file: !3486, line: 124, baseType: !355, size: 64, offset: 832)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3485, file: !3486, line: 125, baseType: !355, size: 64, offset: 896)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3485, file: !3486, line: 139, baseType: !355, size: 64, offset: 960)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3485, file: !3486, line: 142, baseType: !355, size: 64, offset: 1024)
!3505 = !DIDerivedType(tag: DW_TAG_member, scope: !3485, file: !3486, line: 144, baseType: !3506, size: 64, offset: 1088)
!3506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3485, file: !3486, line: 144, size: 64, elements: !3507)
!3507 = !{!3508, !3509, !3510}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3506, file: !3486, line: 146, baseType: !273, size: 16)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3506, file: !3486, line: 148, baseType: !458, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3506, file: !3486, line: 150, baseType: !3511, size: 64)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3486, line: 59, size: 64, elements: !3512)
!3512 = !{!3513, !3514, !3515}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3511, file: !3486, line: 61, baseType: !458, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3511, file: !3486, line: 63, baseType: !458, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3511, file: !3486, line: 65, baseType: !458, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3485, file: !3486, line: 153, baseType: !355, size: 64, offset: 1152)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3485, file: !3486, line: 154, baseType: !355, size: 64, offset: 1216)
!3518 = !DIDerivedType(tag: DW_TAG_member, scope: !3485, file: !3486, line: 156, baseType: !3519, size: 64, offset: 1280)
!3519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3485, file: !3486, line: 156, size: 64, elements: !3520)
!3520 = !{!3521, !3522, !3523}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3519, file: !3486, line: 158, baseType: !273, size: 16)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3519, file: !3486, line: 160, baseType: !458, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3519, file: !3486, line: 162, baseType: !3524, size: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3486, line: 69, size: 64, elements: !3525)
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3524, file: !3486, line: 71, baseType: !458, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3524, file: !3486, line: 73, baseType: !458, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3524, file: !3486, line: 75, baseType: !458, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3524, file: !3486, line: 77, baseType: !458, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3524, file: !3486, line: 80, baseType: !458, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3524, file: !3486, line: 83, baseType: !458, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3524, file: !3486, line: 86, baseType: !458, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3524, file: !3486, line: 88, baseType: !458, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3524, file: !3486, line: 93, baseType: !458, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3524, file: !3486, line: 100, baseType: !458, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3461, file: !3388, line: 96, baseType: !454, size: 32, offset: 1024)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3406, file: !3388, line: 352, baseType: !3538, size: 4608, align: 512)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3388, line: 333, size: 4608, align: 512, elements: !3539)
!3539 = !{!3540, !3541, !3548}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3538, file: !3388, line: 334, baseType: !3424, size: 4096, align: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3538, file: !3388, line: 335, baseType: !3542, size: 512, offset: 4096)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3388, line: 312, size: 512, elements: !3543)
!3543 = !{!3544, !3545, !3546}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3542, file: !3388, line: 313, baseType: !458, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3542, file: !3388, line: 314, baseType: !458, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3542, file: !3388, line: 315, baseType: !3547, size: 384, offset: 128)
!3547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 384, elements: !1880)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3538, file: !3388, line: 336, baseType: !3549, offset: 4608)
!3549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, elements: !1797)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3406, file: !3388, line: 353, baseType: !3551, size: 32768)
!3551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 32768, elements: !3552)
!3552 = !{!3553}
!3553 = !DISubrange(count: 4096)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3387, file: !3388, line: 484, baseType: !3393, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3387, file: !3388, line: 491, baseType: !3556, size: 128, offset: 256)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3388, line: 404, size: 128, elements: !3557)
!3557 = !{!3558, !3559, !3560}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3556, file: !3388, line: 424, baseType: !458, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3556, file: !3388, line: 432, baseType: !7, size: 32, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3556, file: !3388, line: 440, baseType: !7, size: 32, offset: 96)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3387, file: !3388, line: 498, baseType: !3556, size: 128, offset: 384)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3387, file: !3388, line: 508, baseType: !3394, size: 33280, align: 512, offset: 512)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1390, file: !1391, line: 16, baseType: !1400, size: 192, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1390, file: !1391, line: 17, baseType: !255, size: 32, offset: 704)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !537, file: !28, line: 1240, baseType: !204, size: 64, offset: 6912)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !537, file: !28, line: 1243, baseType: !454, size: 32, offset: 6976)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !537, file: !28, line: 1245, baseType: !1148, size: 64, offset: 7040)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !537, file: !28, line: 1246, baseType: !1148, size: 64, offset: 7104)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !537, file: !28, line: 1248, baseType: !455, size: 32, offset: 7168)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !537, file: !28, line: 1249, baseType: !3571, size: 64, offset: 7232)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !28, line: 634, flags: DIFlagFwdDecl)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !537, file: !28, line: 1252, baseType: !3574, size: 256, offset: 7296)
!3574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !467)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !537, file: !28, line: 1253, baseType: !3576, size: 128, offset: 7552)
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3577, line: 21, baseType: !3578)
!3577 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3577, line: 19, size: 128, elements: !3579)
!3579 = !{!3580}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3578, file: !3577, line: 20, baseType: !3581, size: 128)
!3581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 128, elements: !2797)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !537, file: !28, line: 1255, baseType: !7, size: 32, offset: 7680)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !537, file: !28, line: 1261, baseType: !646, size: 256, offset: 7744)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !537, file: !28, line: 1267, baseType: !218, size: 64, offset: 8000)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !537, file: !28, line: 1269, baseType: !483, size: 64, offset: 8064)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !537, file: !28, line: 1271, baseType: !3587, size: 448, offset: 8128)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1157, line: 63, size: 448, elements: !3588)
!3588 = !{!3589, !3594, !3595, !3596, !3597, !3598, !3599}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3587, file: !1157, line: 64, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!355, !3593, !1155}
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3587, file: !1157, line: 66, baseType: !3590, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3587, file: !1157, line: 69, baseType: !341, size: 64, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3587, file: !1157, line: 70, baseType: !109, size: 32, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3587, file: !1157, line: 71, baseType: !7, size: 32, offset: 224)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3587, file: !1157, line: 74, baseType: !222, size: 128, offset: 256)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3587, file: !1157, line: 85, baseType: !3600, size: 64, offset: 384)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !537, file: !28, line: 1274, baseType: !650, size: 64, offset: 8576)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !537, file: !28, line: 1280, baseType: !650, size: 64, offset: 8640)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !537, file: !28, line: 1283, baseType: !109, size: 32, offset: 8704)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !537, file: !28, line: 1286, baseType: !2525, size: 32, offset: 8736)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !537, file: !28, line: 1289, baseType: !968, size: 64, offset: 8768)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !537, file: !28, line: 1290, baseType: !1016, size: 64, offset: 8832)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !537, file: !28, line: 1297, baseType: !1974, size: 64, offset: 8896)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !537, file: !28, line: 1304, baseType: !3609, size: 64, offset: 8960)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3610, line: 49, size: 64, elements: !3611)
!3610 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3611 = !{!3612}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3609, file: !3610, line: 50, baseType: !3613, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3610, line: 41, size: 512, align: 512, elements: !3615)
!3615 = !{!3616, !3617, !3622}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3614, file: !3610, line: 43, baseType: !235, size: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3614, file: !3610, line: 45, baseType: !3618, size: 192, offset: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3610, line: 29, size: 192, elements: !3619)
!3619 = !{!3620, !3621}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3618, file: !3610, line: 30, baseType: !222, size: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3618, file: !3610, line: 32, baseType: !341, size: 64, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3614, file: !3610, line: 46, baseType: !341, size: 64, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !537, file: !28, line: 1305, baseType: !3609, size: 64, offset: 9024)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !537, file: !28, line: 1306, baseType: !866, size: 128, align: 64, offset: 9088)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !537, file: !28, line: 1307, baseType: !906, size: 256, offset: 9216)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !537, file: !28, line: 1309, baseType: !646, size: 256, offset: 9472)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !537, file: !28, line: 1314, baseType: !109, size: 32, offset: 9728)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !537, file: !28, line: 1317, baseType: !235, size: 32, align: 512, offset: 10240)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !537, file: !28, line: 1318, baseType: !222, size: 128, offset: 10304)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !537, file: !28, line: 1320, baseType: !235, size: 32, offset: 10432)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !537, file: !28, line: 1321, baseType: !222, size: 128, offset: 10496)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !531, file: !532, line: 73, baseType: !109, size: 32, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !531, file: !532, line: 74, baseType: !3634, size: 64, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1821, line: 42, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !485, file: !422, line: 141, baseType: !3638, size: 64, offset: 704)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!109, !1217, !726}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !485, file: !422, line: 142, baseType: !3642, size: 64, offset: 768)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!420, !420, !3645}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !421, file: !422, line: 96, baseType: !536, size: 64, offset: 832)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !421, file: !422, line: 97, baseType: !355, size: 64, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !421, file: !422, line: 98, baseType: !204, size: 64, offset: 960)
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !422, line: 100, baseType: !3651, size: 128, offset: 1024)
!3651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !421, file: !422, line: 100, size: 128, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3651, file: !422, line: 101, baseType: !222, size: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3651, file: !422, line: 102, baseType: !2142, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !421, file: !422, line: 104, baseType: !222, size: 128, offset: 1152)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !421, file: !422, line: 105, baseType: !222, size: 128, offset: 1280)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !421, file: !422, line: 113, baseType: !3658, size: 128, offset: 1408)
!3658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !421, file: !422, line: 109, size: 128, elements: !3659)
!3659 = !{!3660, !3661, !3662}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3658, file: !422, line: 110, baseType: !892, size: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3658, file: !422, line: 111, baseType: !436, size: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3658, file: !422, line: 112, baseType: !866, size: 128, align: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !414, file: !28, line: 1968, baseType: !3664, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!218, !420, !385, !3667}
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3669, line: 10, size: 128, elements: !3670)
!3669 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3670 = !{!3671, !3672}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3668, file: !3669, line: 11, baseType: !689, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3668, file: !3669, line: 12, baseType: !204, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !414, file: !28, line: 1969, baseType: !3674, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!109, !3634, !385, !109}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !414, file: !28, line: 1970, baseType: !3678, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!408, !385, !109, !726}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !414, file: !28, line: 1972, baseType: !3682, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!109, !420, !305, !109}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !414, file: !28, line: 1974, baseType: !3686, size: 64, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!109, !3634, !385, !420, !347, !726}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !414, file: !28, line: 1976, baseType: !3690, size: 64, offset: 384)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!109, !420, !385, !420}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !414, file: !28, line: 1977, baseType: !3694, size: 64, offset: 448)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!109, !385, !420}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !414, file: !28, line: 1978, baseType: !3698, size: 64, offset: 512)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!109, !3634, !385, !420, !218}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !414, file: !28, line: 1980, baseType: !3702, size: 64, offset: 576)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!109, !3634, !385, !420, !347}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !414, file: !28, line: 1982, baseType: !3694, size: 64, offset: 640)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !414, file: !28, line: 1983, baseType: !3707, size: 64, offset: 704)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!109, !3634, !385, !420, !347, !541}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !414, file: !28, line: 1985, baseType: !3711, size: 64, offset: 768)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!109, !3634, !385, !420, !385, !420, !7}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !414, file: !28, line: 1987, baseType: !3715, size: 64, offset: 832)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!109, !3634, !420, !3718}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !28, line: 226, size: 640, elements: !3720)
!3720 = !{!3721, !3722, !3723, !3733, !3742, !3743, !3748, !3749, !3750}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3719, file: !28, line: 227, baseType: !7, size: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3719, file: !28, line: 228, baseType: !347, size: 16, offset: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, scope: !3719, file: !28, line: 241, baseType: !3724, size: 32, offset: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3719, file: !28, line: 241, size: 32, elements: !3725)
!3725 = !{!3726, !3727}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3724, file: !28, line: 242, baseType: !391, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3724, file: !28, line: 243, baseType: !3728, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3729, line: 16, baseType: !3730)
!3729 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3729, line: 14, size: 32, elements: !3731)
!3731 = !{!3732}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3730, file: !3729, line: 15, baseType: !396, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, scope: !3719, file: !28, line: 245, baseType: !3734, size: 32, offset: 96)
!3734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3719, file: !28, line: 245, size: 32, elements: !3735)
!3735 = !{!3736, !3737}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3734, file: !28, line: 246, baseType: !400, size: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3734, file: !28, line: 247, baseType: !3738, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3729, line: 20, baseType: !3739)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3729, line: 18, size: 32, elements: !3740)
!3740 = !{!3741}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3739, file: !3729, line: 19, baseType: !404, size: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3719, file: !28, line: 249, baseType: !546, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3719, file: !28, line: 250, baseType: !3744, size: 128, offset: 192)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1149, line: 13, size: 128, elements: !3745)
!3745 = !{!3746, !3747}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3744, file: !1149, line: 14, baseType: !1148, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3744, file: !1149, line: 15, baseType: !341, size: 64, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3719, file: !28, line: 251, baseType: !3744, size: 128, offset: 320)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3719, file: !28, line: 252, baseType: !3744, size: 128, offset: 448)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3719, file: !28, line: 259, baseType: !1737, size: 64, offset: 576)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !414, file: !28, line: 1988, baseType: !3752, size: 64, offset: 896)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!109, !3634, !1217, !3755, !454, !7}
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3757, line: 22, size: 1280, elements: !3758)
!3757 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3756, file: !3757, line: 23, baseType: !454, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3756, file: !3757, line: 24, baseType: !347, size: 16, offset: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3756, file: !3757, line: 25, baseType: !7, size: 32, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3756, file: !3757, line: 26, baseType: !1859, size: 32, offset: 96)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3756, file: !3757, line: 27, baseType: !458, size: 64, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3756, file: !3757, line: 28, baseType: !458, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3756, file: !3757, line: 41, baseType: !458, size: 64, offset: 256)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3756, file: !3757, line: 42, baseType: !541, size: 32, offset: 320)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3756, file: !3757, line: 43, baseType: !541, size: 32, offset: 352)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3756, file: !3757, line: 44, baseType: !391, size: 32, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3756, file: !3757, line: 45, baseType: !400, size: 32, offset: 416)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3756, file: !3757, line: 46, baseType: !546, size: 64, offset: 448)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3756, file: !3757, line: 47, baseType: !3744, size: 128, offset: 512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3756, file: !3757, line: 48, baseType: !3744, size: 128, offset: 640)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3756, file: !3757, line: 49, baseType: !3744, size: 128, offset: 768)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3756, file: !3757, line: 50, baseType: !3744, size: 128, offset: 896)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3756, file: !3757, line: 51, baseType: !458, size: 64, offset: 1024)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3756, file: !3757, line: 52, baseType: !458, size: 64, offset: 1088)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3756, file: !3757, line: 53, baseType: !454, size: 32, offset: 1152)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3756, file: !3757, line: 54, baseType: !454, size: 32, offset: 1184)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3756, file: !3757, line: 55, baseType: !458, size: 64, offset: 1216)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !414, file: !28, line: 1990, baseType: !3781, size: 64, offset: 960)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!337, !420, !305, !352}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !414, file: !28, line: 1991, baseType: !3785, size: 64, offset: 1024)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!109, !385, !3788, !458, !458}
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !28, line: 55, flags: DIFlagFwdDecl)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !414, file: !28, line: 1993, baseType: !3791, size: 64, offset: 1088)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!109, !385, !109}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !414, file: !28, line: 1994, baseType: !3795, size: 64, offset: 1152)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!109, !385, !420, !1737, !7, !347}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !414, file: !28, line: 1997, baseType: !3799, size: 64, offset: 1216)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!109, !3634, !385, !1737, !347}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !414, file: !28, line: 1999, baseType: !3803, size: 64, offset: 1280)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!408, !3634, !420, !109}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !414, file: !28, line: 2001, baseType: !3807, size: 64, offset: 1344)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!109, !3634, !420, !408, !109}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !414, file: !28, line: 2003, baseType: !3811, size: 64, offset: 1408)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!109, !3634, !420, !3814}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !28, line: 76, flags: DIFlagFwdDecl)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !414, file: !28, line: 2005, baseType: !3817, size: 64, offset: 1472)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!109, !420, !3814}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !414, file: !28, line: 2006, baseType: !3821, size: 64, offset: 1536)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!3824, !385}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !28, line: 3192, size: 192, elements: !3826)
!3826 = !{!3827, !3828}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3825, file: !28, line: 3193, baseType: !2094, size: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3825, file: !28, line: 3194, baseType: !454, size: 32, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !386, file: !28, line: 655, baseType: !536, size: 64, offset: 448)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !386, file: !28, line: 656, baseType: !381, size: 64, offset: 512)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !386, file: !28, line: 659, baseType: !204, size: 64, offset: 576)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !386, file: !28, line: 663, baseType: !355, size: 64, offset: 640)
!3833 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !28, line: 671, baseType: !3834, size: 32, offset: 704)
!3834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !28, line: 671, size: 32, elements: !3835)
!3835 = !{!3836, !3838}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3834, file: !28, line: 672, baseType: !3837, size: 32)
!3837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3834, file: !28, line: 673, baseType: !7, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !386, file: !28, line: 675, baseType: !541, size: 32, offset: 736)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !386, file: !28, line: 676, baseType: !546, size: 64, offset: 768)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !386, file: !28, line: 677, baseType: !3744, size: 128, offset: 832)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !386, file: !28, line: 678, baseType: !3744, size: 128, offset: 960)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !386, file: !28, line: 679, baseType: !3744, size: 128, offset: 1088)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !386, file: !28, line: 680, baseType: !235, size: 32, offset: 1216)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !386, file: !28, line: 681, baseType: !275, size: 16, offset: 1248)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !386, file: !28, line: 682, baseType: !263, size: 8, offset: 1264)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !386, file: !28, line: 683, baseType: !263, size: 8, offset: 1272)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !386, file: !28, line: 684, baseType: !1295, size: 64, offset: 1280)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !386, file: !28, line: 691, baseType: !355, size: 64, offset: 1344)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !386, file: !28, line: 692, baseType: !1307, size: 320, offset: 1408)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !386, file: !28, line: 694, baseType: !355, size: 64, offset: 1728)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !386, file: !28, line: 695, baseType: !355, size: 64, offset: 1792)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !386, file: !28, line: 697, baseType: !892, size: 128, offset: 1856)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !386, file: !28, line: 698, baseType: !222, size: 128, offset: 1984)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !386, file: !28, line: 707, baseType: !222, size: 128, offset: 2112)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !386, file: !28, line: 708, baseType: !222, size: 128, offset: 2240)
!3857 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !28, line: 709, baseType: !3858, size: 128, offset: 2368)
!3858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !28, line: 709, size: 128, elements: !3859)
!3859 = !{!3860, !3861}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3858, file: !28, line: 710, baseType: !1016, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3858, file: !28, line: 711, baseType: !866, size: 128, align: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !386, file: !28, line: 713, baseType: !652, size: 64, offset: 2496)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !386, file: !28, line: 714, baseType: !652, size: 64, offset: 2560)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !386, file: !28, line: 715, baseType: !255, size: 32, offset: 2624)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !386, file: !28, line: 716, baseType: !255, size: 32, offset: 2656)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !386, file: !28, line: 717, baseType: !255, size: 32, offset: 2688)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !386, file: !28, line: 719, baseType: !255, size: 32, offset: 2720)
!3868 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !28, line: 721, baseType: !3869, size: 64, offset: 2752)
!3869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !28, line: 721, size: 64, elements: !3870)
!3870 = !{!3871, !3872}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3869, file: !28, line: 722, baseType: !2005, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3869, file: !28, line: 723, baseType: !1039, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !386, file: !28, line: 725, baseType: !3874, size: 64, offset: 2816)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !28, line: 725, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !386, file: !28, line: 726, baseType: !382, size: 1536, align: 64, offset: 2880)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !386, file: !28, line: 727, baseType: !222, size: 128, offset: 4416)
!3878 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !28, line: 728, baseType: !3879, size: 64, offset: 4544)
!3879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !28, line: 728, size: 64, elements: !3880)
!3880 = !{!3881, !3882, !3885, !3886}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3879, file: !28, line: 729, baseType: !2475, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3879, file: !28, line: 730, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !28, line: 730, flags: DIFlagFwdDecl)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3879, file: !28, line: 731, baseType: !305, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3879, file: !28, line: 732, baseType: !7, size: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !386, file: !28, line: 735, baseType: !455, size: 32, offset: 4608)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !386, file: !28, line: 738, baseType: !455, size: 32, offset: 4640)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !386, file: !28, line: 739, baseType: !3571, size: 64, offset: 4672)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !386, file: !28, line: 750, baseType: !204, size: 64, offset: 4736)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !382, file: !28, line: 474, baseType: !2094, size: 128, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !382, file: !28, line: 475, baseType: !1307, size: 320, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !382, file: !28, line: 476, baseType: !205, size: 32, offset: 512)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !382, file: !28, line: 477, baseType: !255, size: 32, offset: 544)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !382, file: !28, line: 482, baseType: !1593, size: 128, offset: 576)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !382, file: !28, line: 483, baseType: !355, size: 64, offset: 704)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !382, file: !28, line: 484, baseType: !355, size: 64, offset: 768)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !382, file: !28, line: 485, baseType: !3899, size: 64, offset: 832)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3901)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !28, line: 404, size: 1280, elements: !3902)
!3902 = !{!3903, !3907, !3977, !3981, !3985, !3991, !3995, !3999, !4004, !4008, !4012, !4016, !4017, !4021, !4025, !4029, !4034, !4038, !4045, !4046}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3901, file: !28, line: 405, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!109, !2262, !1051}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3901, file: !28, line: 406, baseType: !3908, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!109, !1737, !3911}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !65, line: 293, size: 1536, elements: !3913)
!3913 = !{!3914, !3944, !3958}
!3914 = !DIDerivedType(tag: DW_TAG_member, scope: !3912, file: !65, line: 295, baseType: !3915, size: 512)
!3915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3912, file: !65, line: 295, size: 512, elements: !3916)
!3916 = !{!3917, !3943}
!3917 = !DIDerivedType(tag: DW_TAG_member, scope: !3915, file: !65, line: 296, baseType: !3918, size: 448)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3915, file: !65, line: 296, size: 448, elements: !3919)
!3919 = !{!3920, !3921, !3930, !3931, !3932, !3941, !3942}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3918, file: !65, line: 298, baseType: !355, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, scope: !3918, file: !65, line: 299, baseType: !3922, size: 128, offset: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3918, file: !65, line: 299, size: 128, elements: !3923)
!3923 = !{!3924, !3925}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3922, file: !65, line: 300, baseType: !222, size: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !3922, file: !65, line: 302, baseType: !3926, size: 128)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3922, file: !65, line: 302, size: 128, elements: !3927)
!3927 = !{!3928, !3929}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3926, file: !65, line: 303, baseType: !204, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3926, file: !65, line: 305, baseType: !7, size: 32, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3918, file: !65, line: 310, baseType: !381, size: 64, offset: 192)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3918, file: !65, line: 311, baseType: !355, size: 64, offset: 256)
!3932 = !DIDerivedType(tag: DW_TAG_member, scope: !3918, file: !65, line: 312, baseType: !3933, size: 64, offset: 320)
!3933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3918, file: !65, line: 312, size: 64, elements: !3934)
!3934 = !{!3935, !3936}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3933, file: !65, line: 313, baseType: !204, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3933, file: !65, line: 314, baseType: !3937, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !65, line: 257, baseType: !3938)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 255, size: 64, elements: !3939)
!3939 = !{!3940}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3938, file: !65, line: 256, baseType: !355, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3918, file: !65, line: 316, baseType: !255, size: 32, offset: 384)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3918, file: !65, line: 317, baseType: !255, size: 32, offset: 416)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3915, file: !65, line: 323, baseType: !2263, size: 512, align: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, scope: !3912, file: !65, line: 325, baseType: !3945, size: 512, offset: 512)
!3945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3912, file: !65, line: 325, size: 512, elements: !3946)
!3946 = !{!3947, !3957}
!3947 = !DIDerivedType(tag: DW_TAG_member, scope: !3945, file: !65, line: 326, baseType: !3948, size: 320)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3945, file: !65, line: 326, size: 320, elements: !3949)
!3949 = !{!3950, !3951, !3952, !3953, !3954, !3955, !3956}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3948, file: !65, line: 327, baseType: !355, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3948, file: !65, line: 328, baseType: !355, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3948, file: !65, line: 329, baseType: !355, size: 64, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3948, file: !65, line: 331, baseType: !255, size: 32, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3948, file: !65, line: 332, baseType: !255, size: 32, offset: 224)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3948, file: !65, line: 333, baseType: !255, size: 32, offset: 256)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3948, file: !65, line: 335, baseType: !7, size: 32, offset: 288)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3945, file: !65, line: 339, baseType: !2263, size: 512, align: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, scope: !3912, file: !65, line: 341, baseType: !3959, size: 512, offset: 1024)
!3959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3912, file: !65, line: 341, size: 512, elements: !3960)
!3960 = !{!3961, !3970, !3976}
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !65, line: 342, baseType: !3962, size: 384)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3959, file: !65, line: 342, size: 384, elements: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3969}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3962, file: !65, line: 343, baseType: !355, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3962, file: !65, line: 344, baseType: !355, size: 64, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3962, file: !65, line: 346, baseType: !204, size: 64, offset: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3962, file: !65, line: 347, baseType: !204, size: 64, offset: 192)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3962, file: !65, line: 348, baseType: !204, size: 64, offset: 256)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3962, file: !65, line: 349, baseType: !204, size: 64, offset: 320)
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !65, line: 352, baseType: !3971, size: 256)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3959, file: !65, line: 352, size: 256, elements: !3972)
!3972 = !{!3973, !3974, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3971, file: !65, line: 353, baseType: !355, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3971, file: !65, line: 354, baseType: !355, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3971, file: !65, line: 356, baseType: !222, size: 128, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3959, file: !65, line: 359, baseType: !2263, size: 512, align: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3901, file: !28, line: 409, baseType: !3978, size: 64, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!109, !381, !1051}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3901, file: !28, line: 412, baseType: !3982, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!726, !381, !3911}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3901, file: !28, line: 414, baseType: !3986, size: 64, offset: 256)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{null, !3989}
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !28, line: 310, flags: DIFlagFwdDecl)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3901, file: !28, line: 416, baseType: !3992, size: 64, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!109, !1737, !381, !546, !7, !3320, !2490}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3901, file: !28, line: 419, baseType: !3996, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!109, !1737, !381, !546, !7, !7, !2262, !204}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3901, file: !28, line: 424, baseType: !4000, size: 64, offset: 448)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!4003, !381, !4003}
!4003 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !206, line: 131, baseType: !458)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3901, file: !28, line: 425, baseType: !4005, size: 64, offset: 512)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !3911, !352, !352}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3901, file: !28, line: 426, baseType: !4009, size: 64, offset: 576)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!726, !3911, !205}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3901, file: !28, line: 427, baseType: !4013, size: 64, offset: 640)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{null, !3911}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3901, file: !28, line: 428, baseType: !2024, size: 64, offset: 704)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3901, file: !28, line: 433, baseType: !4018, size: 64, offset: 768)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!109, !381, !3911, !3911, !49}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3901, file: !28, line: 435, baseType: !4022, size: 64, offset: 832)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!109, !3911}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3901, file: !28, line: 436, baseType: !4026, size: 64, offset: 896)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!726, !3911, !352, !352}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3901, file: !28, line: 438, baseType: !4030, size: 64, offset: 960)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{null, !3911, !4033, !4033}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3901, file: !28, line: 439, baseType: !4035, size: 64, offset: 1024)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!109, !381, !2262}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3901, file: !28, line: 442, baseType: !4039, size: 64, offset: 1088)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!109, !4042, !1737, !4044}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !28, line: 66, flags: DIFlagFwdDecl)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3901, file: !28, line: 444, baseType: !2482, size: 64, offset: 1152)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3901, file: !28, line: 445, baseType: !4047, size: 64, offset: 1216)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!109, !2027, !2049}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !382, file: !28, line: 486, baseType: !355, size: 64, offset: 896)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !382, file: !28, line: 487, baseType: !1307, size: 320, offset: 960)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !382, file: !28, line: 488, baseType: !2525, size: 32, offset: 1280)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !382, file: !28, line: 489, baseType: !235, size: 32, offset: 1312)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !382, file: !28, line: 490, baseType: !222, size: 128, offset: 1344)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !382, file: !28, line: 491, baseType: !204, size: 64, offset: 1472)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !372, file: !331, line: 180, baseType: !4057, size: 64, offset: 320)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!337, !1737, !228, !371, !305, !546, !352}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !372, file: !331, line: 182, baseType: !4057, size: 64, offset: 384)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !372, file: !331, line: 184, baseType: !4062, size: 64, offset: 448)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!109, !1737, !228, !371, !2153}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !360, file: !331, line: 90, baseType: !4066, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !360, file: !331, line: 91, baseType: !4068, size: 64, offset: 256)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !321, file: !166, line: 120, baseType: !4070, size: 64, offset: 192)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!4073, !288}
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4075)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !4076)
!4076 = !{!4077, !4078, !4082, !4086, !4092, !4096}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4075, file: !6, line: 40, baseType: !5, size: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4075, file: !6, line: 41, baseType: !4079, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!726}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4075, file: !6, line: 42, baseType: !4083, size: 64, offset: 128)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!204}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4075, file: !6, line: 43, baseType: !4087, size: 64, offset: 192)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!2614, !4090}
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4075, file: !6, line: 44, baseType: !4093, size: 64, offset: 256)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!2614}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4075, file: !6, line: 45, baseType: !689, size: 64, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !321, file: !166, line: 121, baseType: !4098, size: 64, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!2614, !288}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !321, file: !166, line: 122, baseType: !4102, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{null, !288, !4105, !4106}
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !215, file: !166, line: 70, baseType: !4108, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !561, line: 190, size: 1152, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4202, !4203, !4204, !4205, !4206, !4209}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4109, file: !561, line: 191, baseType: !255, size: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4109, file: !561, line: 192, baseType: !255, size: 32, offset: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4109, file: !561, line: 202, baseType: !4108, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4109, file: !561, line: 203, baseType: !218, size: 64, offset: 128)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4109, file: !561, line: 205, baseType: !758, size: 192, align: 64, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4109, file: !561, line: 207, baseType: !2614, size: 64, offset: 384)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4109, file: !561, line: 208, baseType: !7, size: 32, offset: 448)
!4118 = !DIDerivedType(tag: DW_TAG_member, scope: !4109, file: !561, line: 209, baseType: !4119, size: 256, offset: 512)
!4119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4109, file: !561, line: 209, size: 256, elements: !4120)
!4120 = !{!4121, !4130, !4134}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4119, file: !561, line: 210, baseType: !4122, size: 256)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !561, line: 153, size: 256, elements: !4123)
!4123 = !{!4124, !4125, !4126, !4129}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4122, file: !561, line: 154, baseType: !355, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4122, file: !561, line: 156, baseType: !1596, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4122, file: !561, line: 162, baseType: !4127, size: 64, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !561, line: 162, flags: DIFlagFwdDecl)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4122, file: !561, line: 167, baseType: !355, size: 64, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4119, file: !561, line: 211, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !561, line: 170, size: 64, elements: !4132)
!4132 = !{!4133}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4131, file: !561, line: 171, baseType: !4108, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4119, file: !561, line: 212, baseType: !4135, size: 256)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !561, line: 174, size: 256, elements: !4136)
!4136 = !{!4137, !4197, !4200, !4201}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4135, file: !561, line: 175, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4140)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !561, line: 271, size: 768, elements: !4141)
!4141 = !{!4142, !4162, !4166, !4170, !4174, !4178, !4182, !4186, !4187, !4188, !4189, !4193}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4140, file: !561, line: 276, baseType: !4143, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!109, !4146}
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !561, line: 251, size: 1216, elements: !4148)
!4148 = !{!4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4147, file: !561, line: 253, baseType: !4108, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4147, file: !561, line: 254, baseType: !1737, size: 64, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4147, file: !561, line: 255, baseType: !1088, size: 64, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4147, file: !561, line: 256, baseType: !204, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4147, file: !561, line: 259, baseType: !646, size: 256, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4147, file: !561, line: 260, baseType: !646, size: 256, offset: 512)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4147, file: !561, line: 261, baseType: !109, size: 32, offset: 768)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4147, file: !561, line: 262, baseType: !222, size: 128, offset: 832)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4147, file: !561, line: 263, baseType: !305, size: 64, offset: 960)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4147, file: !561, line: 265, baseType: !352, size: 64, offset: 1024)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4147, file: !561, line: 266, baseType: !726, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4147, file: !561, line: 267, baseType: !726, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4147, file: !561, line: 268, baseType: !2198, size: 64, offset: 1152)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4140, file: !561, line: 277, baseType: !4163, size: 64, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{null, !4146}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4140, file: !561, line: 290, baseType: !4167, size: 64, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!109, !1088, !204}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4140, file: !561, line: 292, baseType: !4171, size: 64, offset: 192)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!204, !1088, !2018}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4140, file: !561, line: 293, baseType: !4175, size: 64, offset: 256)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!204, !1088, !204, !2018}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4140, file: !561, line: 294, baseType: !4179, size: 64, offset: 320)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{null, !1088, !204}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4140, file: !561, line: 296, baseType: !4183, size: 64, offset: 384)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!337, !4146, !305, !352, !546}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4140, file: !561, line: 306, baseType: !352, size: 64, offset: 448)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4140, file: !561, line: 313, baseType: !726, size: 8, offset: 512)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4140, file: !561, line: 314, baseType: !4183, size: 64, offset: 576)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4140, file: !561, line: 317, baseType: !4190, size: 64, offset: 640)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!2131, !4146, !2133}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4140, file: !561, line: 320, baseType: !4194, size: 64, offset: 704)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!109, !4146, !2153}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4135, file: !561, line: 176, baseType: !4198, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !561, line: 35, flags: DIFlagFwdDecl)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4135, file: !561, line: 177, baseType: !546, size: 64, offset: 128)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4135, file: !561, line: 178, baseType: !4108, size: 64, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4109, file: !561, line: 215, baseType: !204, size: 64, offset: 768)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4109, file: !561, line: 221, baseType: !458, size: 64, offset: 832)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4109, file: !561, line: 223, baseType: !275, size: 16, offset: 896)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4109, file: !561, line: 224, baseType: !347, size: 16, offset: 912)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4109, file: !561, line: 225, baseType: !4207, size: 64, offset: 960)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !561, line: 36, flags: DIFlagFwdDecl)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4109, file: !561, line: 227, baseType: !866, size: 128, align: 64, offset: 1024)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !215, file: !166, line: 71, baseType: !4211, size: 32, offset: 448)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4212, line: 19, size: 32, elements: !4213)
!4212 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4213 = !{!4214}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4211, file: !4212, line: 20, baseType: !1427, size: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !215, file: !166, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !215, file: !166, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !215, file: !166, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !215, file: !166, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !215, file: !166, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !212, file: !94, line: 707, baseType: !4221, size: 64, offset: 512)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !212, file: !94, line: 709, baseType: !4223, size: 64, offset: 576)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !212, file: !94, line: 711, baseType: !218, size: 64, offset: 640)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !212, file: !94, line: 712, baseType: !4227, size: 64, offset: 704)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4229)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4230)
!4230 = !{!4231, !4232, !4233, !4239, !4244, !4248}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4229, file: !94, line: 90, baseType: !218, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4229, file: !94, line: 91, baseType: !357, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4229, file: !94, line: 92, baseType: !4234, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!109, !4237, !300}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4229, file: !94, line: 93, baseType: !4240, size: 64, offset: 192)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!305, !4237, !4243, !4105, !4106}
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4229, file: !94, line: 95, baseType: !4245, size: 64, offset: 256)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{null, !4221}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4229, file: !94, line: 97, baseType: !4249, size: 64, offset: 320)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4251)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4252)
!4252 = !{!4253, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4251, file: !101, line: 287, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!109, !4221}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4251, file: !101, line: 288, baseType: !4245, size: 64, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4251, file: !101, line: 289, baseType: !4254, size: 64, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4251, file: !101, line: 290, baseType: !4254, size: 64, offset: 192)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4251, file: !101, line: 291, baseType: !4254, size: 64, offset: 256)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4251, file: !101, line: 292, baseType: !4254, size: 64, offset: 320)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4251, file: !101, line: 293, baseType: !4254, size: 64, offset: 384)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4251, file: !101, line: 294, baseType: !4254, size: 64, offset: 448)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4251, file: !101, line: 295, baseType: !4254, size: 64, offset: 512)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4251, file: !101, line: 296, baseType: !4254, size: 64, offset: 576)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4251, file: !101, line: 297, baseType: !4254, size: 64, offset: 640)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4251, file: !101, line: 298, baseType: !4254, size: 64, offset: 704)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4251, file: !101, line: 299, baseType: !4254, size: 64, offset: 768)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4251, file: !101, line: 300, baseType: !4254, size: 64, offset: 832)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4251, file: !101, line: 301, baseType: !4254, size: 64, offset: 896)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4251, file: !101, line: 302, baseType: !4254, size: 64, offset: 960)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4251, file: !101, line: 303, baseType: !4254, size: 64, offset: 1024)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4251, file: !101, line: 304, baseType: !4254, size: 64, offset: 1088)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4251, file: !101, line: 305, baseType: !4254, size: 64, offset: 1152)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4251, file: !101, line: 306, baseType: !4254, size: 64, offset: 1216)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4251, file: !101, line: 307, baseType: !4254, size: 64, offset: 1280)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4251, file: !101, line: 308, baseType: !4254, size: 64, offset: 1344)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4251, file: !101, line: 309, baseType: !4254, size: 64, offset: 1408)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !212, file: !94, line: 714, baseType: !4280, size: 64, offset: 768)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4282)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4283, line: 80, size: 1344, elements: !4284)
!4283 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4284 = !{!4285, !4286, !4287, !4288, !4289, !4290, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4363}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4282, file: !4283, line: 81, baseType: !218, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4282, file: !4283, line: 82, baseType: !218, size: 64, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4282, file: !4283, line: 83, baseType: !357, size: 64, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4282, file: !4283, line: 84, baseType: !357, size: 64, offset: 192)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4282, file: !4283, line: 85, baseType: !357, size: 64, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4282, file: !4283, line: 87, baseType: !4291, size: 64, offset: 320)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!109, !4221, !4294}
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4303, !4316, !4326, !4327, !4328, !4329, !4330, !4338, !4339, !4340, !4341, !4342, !4343}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4295, file: !88, line: 97, baseType: !218, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4295, file: !88, line: 98, baseType: !4280, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4295, file: !88, line: 100, baseType: !575, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4295, file: !88, line: 101, baseType: !218, size: 64, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4295, file: !88, line: 103, baseType: !726, size: 8, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4295, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4295, file: !88, line: 106, baseType: !4304, size: 64, offset: 320)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4306)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4307, line: 282, size: 1600, elements: !4308)
!4307 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4308 = !{!4309, !4310, !4311, !4315}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4306, file: !4307, line: 283, baseType: !3574, size: 256)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4306, file: !4307, line: 284, baseType: !3574, size: 256, offset: 256)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4306, file: !4307, line: 285, baseType: !4312, size: 1024, offset: 512)
!4312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1024, elements: !4313)
!4313 = !{!4314}
!4314 = !DISubrange(count: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4306, file: !4307, line: 286, baseType: !2614, size: 64, offset: 1536)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4295, file: !88, line: 107, baseType: !4317, size: 64, offset: 384)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4319)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4307, line: 217, size: 256, elements: !4320)
!4320 = !{!4321, !4322, !4324, !4325}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4319, file: !4307, line: 218, baseType: !3581, size: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4319, file: !4307, line: 219, baseType: !4323, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4307, line: 15, baseType: !355)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4319, file: !4307, line: 220, baseType: !455, size: 32, offset: 192)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4319, file: !4307, line: 221, baseType: !455, size: 32, offset: 224)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4295, file: !88, line: 109, baseType: !4254, size: 64, offset: 448)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4295, file: !88, line: 110, baseType: !4245, size: 64, offset: 512)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4295, file: !88, line: 111, baseType: !4254, size: 64, offset: 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4295, file: !88, line: 112, baseType: !4245, size: 64, offset: 640)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4295, file: !88, line: 113, baseType: !4331, size: 64, offset: 704)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!109, !4221, !4334}
!4334 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4335)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4336)
!4336 = !{!4337}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4335, file: !101, line: 59, baseType: !109, size: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4295, file: !88, line: 114, baseType: !4254, size: 64, offset: 768)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4295, file: !88, line: 115, baseType: !357, size: 64, offset: 832)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4295, file: !88, line: 116, baseType: !357, size: 64, offset: 896)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4295, file: !88, line: 118, baseType: !4249, size: 64, offset: 960)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4295, file: !88, line: 119, baseType: !4245, size: 64, offset: 1024)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4295, file: !88, line: 121, baseType: !4344, size: 64, offset: 1088)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4282, file: !4283, line: 88, baseType: !4234, size: 64, offset: 384)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4282, file: !4283, line: 89, baseType: !4254, size: 64, offset: 448)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4282, file: !4283, line: 90, baseType: !4245, size: 64, offset: 512)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4282, file: !4283, line: 91, baseType: !4245, size: 64, offset: 576)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4282, file: !4283, line: 92, baseType: !4245, size: 64, offset: 640)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4282, file: !4283, line: 94, baseType: !4254, size: 64, offset: 704)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4282, file: !4283, line: 95, baseType: !4254, size: 64, offset: 768)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4282, file: !4283, line: 97, baseType: !4331, size: 64, offset: 832)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4282, file: !4283, line: 98, baseType: !4254, size: 64, offset: 896)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4282, file: !4283, line: 100, baseType: !4254, size: 64, offset: 960)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4282, file: !4283, line: 102, baseType: !4254, size: 64, offset: 1024)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4282, file: !4283, line: 103, baseType: !4245, size: 64, offset: 1088)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4282, file: !4283, line: 105, baseType: !4249, size: 64, offset: 1152)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4282, file: !4283, line: 107, baseType: !4360, size: 64, offset: 1216)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4362)
!4362 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4283, line: 107, flags: DIFlagFwdDecl)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4282, file: !4283, line: 109, baseType: !726, size: 8, offset: 1280)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !212, file: !94, line: 715, baseType: !4294, size: 64, offset: 832)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !212, file: !94, line: 717, baseType: !204, size: 64, offset: 896)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !212, file: !94, line: 719, baseType: !204, size: 64, offset: 960)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !212, file: !94, line: 721, baseType: !646, size: 256, offset: 1024)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !212, file: !94, line: 725, baseType: !4369, size: 448, offset: 1280)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4370)
!4370 = !{!4371, !4372, !4373, !4374}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4369, file: !94, line: 518, baseType: !222, size: 128)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4369, file: !94, line: 519, baseType: !222, size: 128, offset: 128)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4369, file: !94, line: 520, baseType: !222, size: 128, offset: 256)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4369, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !212, file: !94, line: 726, baseType: !4376, size: 2496, offset: 1728)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4377)
!4377 = !{!4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4460, !4464}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4376, file: !101, line: 664, baseType: !4334, size: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4376, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4376, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4376, file: !101, line: 667, baseType: !726, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4376, file: !101, line: 668, baseType: !726, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4376, file: !101, line: 669, baseType: !726, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4376, file: !101, line: 670, baseType: !726, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4376, file: !101, line: 671, baseType: !726, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4376, file: !101, line: 672, baseType: !726, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4376, file: !101, line: 673, baseType: !726, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4376, file: !101, line: 674, baseType: !726, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4376, file: !101, line: 675, baseType: !454, size: 32, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4376, file: !101, line: 676, baseType: !235, size: 32, offset: 96)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4376, file: !101, line: 678, baseType: !222, size: 128, offset: 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4376, file: !101, line: 679, baseType: !595, size: 256, offset: 256)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4376, file: !101, line: 680, baseType: !4394, size: 64, offset: 512)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4396, line: 43, size: 1536, elements: !4397)
!4396 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4397 = !{!4398, !4399, !4400, !4401, !4402, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4395, file: !4396, line: 44, baseType: !218, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4395, file: !4396, line: 45, baseType: !109, size: 32, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4395, file: !4396, line: 46, baseType: !222, size: 128, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4395, file: !4396, line: 47, baseType: !235, size: 32, offset: 256)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4395, file: !4396, line: 48, baseType: !4403, size: 64, offset: 320)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4395, file: !4396, line: 49, baseType: !888, size: 320, offset: 384)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4395, file: !4396, line: 50, baseType: !355, size: 64, offset: 704)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4395, file: !4396, line: 51, baseType: !1542, size: 64, offset: 768)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4395, file: !4396, line: 52, baseType: !1542, size: 64, offset: 832)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4395, file: !4396, line: 53, baseType: !1542, size: 64, offset: 896)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4395, file: !4396, line: 54, baseType: !1542, size: 64, offset: 960)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4395, file: !4396, line: 55, baseType: !1542, size: 64, offset: 1024)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4395, file: !4396, line: 56, baseType: !355, size: 64, offset: 1088)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4395, file: !4396, line: 57, baseType: !355, size: 64, offset: 1152)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4395, file: !4396, line: 58, baseType: !355, size: 64, offset: 1216)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4395, file: !4396, line: 59, baseType: !355, size: 64, offset: 1280)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4395, file: !4396, line: 60, baseType: !355, size: 64, offset: 1344)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4395, file: !4396, line: 61, baseType: !4221, size: 64, offset: 1408)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4395, file: !4396, line: 62, baseType: !726, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4395, file: !4396, line: 63, baseType: !726, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4376, file: !101, line: 681, baseType: !726, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4376, file: !101, line: 682, baseType: !726, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4376, file: !101, line: 683, baseType: !726, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4376, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4376, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4376, file: !101, line: 690, baseType: !1534, size: 512, offset: 640)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4376, file: !101, line: 691, baseType: !458, size: 64, offset: 1152)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4376, file: !101, line: 692, baseType: !906, size: 256, offset: 1216)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4376, file: !101, line: 693, baseType: !1400, size: 192, offset: 1472)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4376, file: !101, line: 694, baseType: !4403, size: 64, offset: 1664)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4376, file: !101, line: 695, baseType: !255, size: 32, offset: 1728)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4376, file: !101, line: 696, baseType: !255, size: 32, offset: 1760)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4376, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4376, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4376, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4376, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4376, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4376, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4376, file: !101, line: 703, baseType: !726, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4376, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4376, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4376, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4376, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4376, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4376, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4376, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4376, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4376, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4376, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4376, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4376, file: !101, line: 715, baseType: !458, size: 64, offset: 2048)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4376, file: !101, line: 716, baseType: !458, size: 64, offset: 2112)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4376, file: !101, line: 717, baseType: !458, size: 64, offset: 2176)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4376, file: !101, line: 718, baseType: !458, size: 64, offset: 2240)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4376, file: !101, line: 720, baseType: !4455, size: 64, offset: 2304)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4457)
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4456, file: !101, line: 633, baseType: !235, size: 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4456, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4376, file: !101, line: 721, baseType: !4461, size: 64, offset: 2368)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{null, !4221, !642}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4376, file: !101, line: 722, baseType: !4465, size: 64, offset: 2432)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !117, line: 117, size: 2432, elements: !4467)
!4467 = !{!4468, !4496, !4497, !4504, !4509, !4531, !4532}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !4466, file: !117, line: 118, baseType: !4469, size: 320)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !117, line: 52, size: 320, elements: !4470)
!4470 = !{!4471, !4475, !4476, !4477, !4478, !4479}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4469, file: !117, line: 53, baseType: !4472, size: 128)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1703, line: 82, size: 128, elements: !4473)
!4473 = !{!4474}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4472, file: !1703, line: 83, baseType: !222, size: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !4469, file: !117, line: 54, baseType: !642, size: 32, offset: 128)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4469, file: !117, line: 55, baseType: !642, size: 32, offset: 160)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !4469, file: !117, line: 56, baseType: !642, size: 32, offset: 192)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4469, file: !117, line: 57, baseType: !116, size: 32, offset: 224)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !4469, file: !117, line: 58, baseType: !4480, size: 64, offset: 256)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4482, line: 65, size: 384, elements: !4483)
!4482 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4483 = !{!4484, !4485}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4481, file: !4482, line: 66, baseType: !1307, size: 320)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4481, file: !4482, line: 67, baseType: !4486, size: 64, offset: 320)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4482, line: 54, size: 192, elements: !4488)
!4488 = !{!4489, !4494, !4495}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4487, file: !4482, line: 55, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4482, line: 51, baseType: !4491)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!109, !4486, !355, !204}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4487, file: !4482, line: 56, baseType: !4486, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4487, file: !4482, line: 57, baseType: !109, size: 32, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !4466, file: !117, line: 119, baseType: !4469, size: 320, offset: 320)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4466, file: !117, line: 120, baseType: !4498, size: 1408, offset: 640)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !117, line: 85, size: 1408, elements: !4499)
!4499 = !{!4500, !4501, !4502, !4503}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !4498, file: !117, line: 86, baseType: !4469, size: 320)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !4498, file: !117, line: 87, baseType: !4481, size: 384, offset: 320)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !4498, file: !117, line: 88, baseType: !4469, size: 320, offset: 704)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !4498, file: !117, line: 89, baseType: !4481, size: 384, offset: 1024)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4466, file: !117, line: 121, baseType: !4505, size: 192, offset: 2048)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !117, line: 71, size: 192, elements: !4506)
!4506 = !{!4507, !4508}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4505, file: !117, line: 72, baseType: !222, size: 128)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !4505, file: !117, line: 73, baseType: !642, size: 32, offset: 128)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !4466, file: !117, line: 122, baseType: !4510, size: 64, offset: 2240)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !117, line: 107, size: 576, elements: !4512)
!4512 = !{!4513, !4514, !4530}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4511, file: !117, line: 108, baseType: !122, size: 32)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4511, file: !117, line: 113, baseType: !4515, size: 448, offset: 64)
!4515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4511, file: !117, line: 109, size: 448, elements: !4516)
!4516 = !{!4517, !4518, !4523}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4515, file: !117, line: 110, baseType: !1702, size: 320)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !4515, file: !117, line: 111, baseType: !4519, size: 192)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !117, line: 66, size: 192, elements: !4520)
!4520 = !{!4521, !4522}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4519, file: !117, line: 67, baseType: !222, size: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4519, file: !117, line: 68, baseType: !642, size: 32, offset: 128)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4515, file: !117, line: 112, baseType: !4524, size: 448)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !117, line: 92, size: 448, elements: !4525)
!4525 = !{!4526, !4527, !4528}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4524, file: !117, line: 93, baseType: !129, size: 32)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4524, file: !117, line: 94, baseType: !1702, size: 320, offset: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4524, file: !117, line: 95, baseType: !4529, size: 64, offset: 384)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4511, file: !117, line: 114, baseType: !4221, size: 64, offset: 512)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !4466, file: !117, line: 123, baseType: !4510, size: 64, offset: 2304)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !4466, file: !117, line: 124, baseType: !4510, size: 64, offset: 2368)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !212, file: !94, line: 727, baseType: !4534, size: 64, offset: 4224)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4536)
!4536 = !{!4537, !4538, !4539, !4543, !4544, !4545}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4535, file: !101, line: 743, baseType: !4251, size: 1472)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4535, file: !101, line: 744, baseType: !4254, size: 64, offset: 1472)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4535, file: !101, line: 745, baseType: !4540, size: 64, offset: 1536)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{null, !4221, !726}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4535, file: !101, line: 746, baseType: !4254, size: 64, offset: 1600)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4535, file: !101, line: 747, baseType: !4245, size: 64, offset: 1664)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4535, file: !101, line: 748, baseType: !4245, size: 64, offset: 1728)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !212, file: !94, line: 736, baseType: !4547, size: 128, offset: 4288)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4548)
!4548 = !{!4549, !4553}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4547, file: !94, line: 531, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4552, line: 13, flags: DIFlagFwdDecl)
!4552 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4547, file: !94, line: 532, baseType: !4554, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !212, file: !94, line: 738, baseType: !4557, size: 64, offset: 4416)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4559)
!4559 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !212, file: !94, line: 740, baseType: !4561, size: 64, offset: 4480)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !212, file: !94, line: 741, baseType: !458, size: 64, offset: 4544)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !212, file: !94, line: 746, baseType: !458, size: 64, offset: 4608)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !212, file: !94, line: 747, baseType: !4565, size: 64, offset: 4672)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4567)
!4567 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !212, file: !94, line: 749, baseType: !4569, size: 64, offset: 4736)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4571)
!4571 = !{!4572, !4573, !4574}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4570, file: !94, line: 433, baseType: !7, size: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4570, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4570, file: !94, line: 435, baseType: !355, size: 64, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !212, file: !94, line: 751, baseType: !222, size: 128, offset: 4800)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !212, file: !94, line: 762, baseType: !4577, size: 64, offset: 4928)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !212, file: !94, line: 770, baseType: !4580, offset: 4992)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4581, line: 5, elements: !935)
!4581 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !212, file: !94, line: 772, baseType: !4583, size: 64, offset: 4992)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4585, line: 18, flags: DIFlagFwdDecl)
!4585 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !212, file: !94, line: 773, baseType: !4587, size: 64, offset: 5056)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4589, line: 41, size: 512, elements: !4590)
!4589 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4590 = !{!4591, !4592, !4686, !4687, !4688, !4689}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4588, file: !4589, line: 42, baseType: !4587, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4588, file: !4589, line: 43, baseType: !4593, size: 64, offset: 64)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4595)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4589, line: 125, size: 1408, elements: !4596)
!4596 = !{!4597, !4601, !4605, !4611, !4615, !4616, !4621, !4625, !4629, !4633, !4637, !4638, !4642, !4646, !4650, !4661, !4662, !4663, !4664, !4674, !4678, !4682}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4595, file: !4589, line: 126, baseType: !4598, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!4587, !4587}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4595, file: !4589, line: 127, baseType: !4602, size: 64, offset: 64)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{null, !4587}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4595, file: !4589, line: 128, baseType: !4606, size: 64, offset: 128)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!726, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4588)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4595, file: !4589, line: 129, baseType: !4612, size: 64, offset: 192)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!2614, !4609, !4237}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4595, file: !4589, line: 131, baseType: !4606, size: 64, offset: 256)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4595, file: !4589, line: 133, baseType: !4617, size: 64, offset: 320)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!4620, !4609}
!4620 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4589, line: 132, flags: DIFlagFwdDecl)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4595, file: !4589, line: 134, baseType: !4622, size: 64, offset: 384)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!726, !4609, !218}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4595, file: !4589, line: 136, baseType: !4626, size: 64, offset: 448)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!109, !4609, !218, !7, !204, !352}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4595, file: !4589, line: 141, baseType: !4630, size: 64, offset: 512)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!109, !4609, !218, !983, !352}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4595, file: !4589, line: 144, baseType: !4634, size: 64, offset: 576)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!218, !4609}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4595, file: !4589, line: 145, baseType: !4634, size: 64, offset: 640)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4595, file: !4589, line: 146, baseType: !4639, size: 64, offset: 704)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!4587, !4609}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4595, file: !4589, line: 148, baseType: !4643, size: 64, offset: 768)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!4587, !4609, !4587}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4595, file: !4589, line: 151, baseType: !4647, size: 64, offset: 832)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!4587, !4609, !218}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4595, file: !4589, line: 153, baseType: !4651, size: 64, offset: 896)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!109, !4609, !218, !218, !7, !7, !4654}
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4589, line: 94, size: 640, elements: !4656)
!4656 = !{!4657, !4658, !4659}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4655, file: !4589, line: 95, baseType: !4587, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4655, file: !4589, line: 96, baseType: !7, size: 32, offset: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4655, file: !4589, line: 97, baseType: !4660, size: 512, offset: 128)
!4660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 512, elements: !1577)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4595, file: !4589, line: 158, baseType: !4643, size: 64, offset: 960)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4595, file: !4589, line: 161, baseType: !4639, size: 64, offset: 1024)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4595, file: !4589, line: 163, baseType: !4598, size: 64, offset: 1088)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4595, file: !4589, line: 164, baseType: !4665, size: 64, offset: 1152)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!109, !4609, !4668}
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4589, line: 73, size: 128, elements: !4670)
!4670 = !{!4671, !4672, !4673}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4669, file: !4589, line: 74, baseType: !7, size: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4669, file: !4589, line: 75, baseType: !7, size: 32, offset: 32)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4669, file: !4589, line: 76, baseType: !4609, size: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4595, file: !4589, line: 166, baseType: !4675, size: 64, offset: 1216)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!204, !4587, !109}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4595, file: !4589, line: 167, baseType: !4679, size: 64, offset: 1280)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!109, !4609, !7}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4595, file: !4589, line: 168, baseType: !4683, size: 64, offset: 1344)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!109, !4587}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4588, file: !4589, line: 44, baseType: !4221, size: 64, offset: 128)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4588, file: !4589, line: 45, baseType: !222, size: 128, offset: 192)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4588, file: !4589, line: 46, baseType: !222, size: 128, offset: 320)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4588, file: !4589, line: 47, baseType: !263, size: 8, offset: 448)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !212, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !212, file: !94, line: 778, baseType: !541, size: 32, offset: 5152)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !212, file: !94, line: 779, baseType: !454, size: 32, offset: 5184)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !212, file: !94, line: 781, baseType: !235, size: 32, offset: 5216)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !212, file: !94, line: 782, baseType: !222, size: 128, offset: 5248)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !212, file: !94, line: 784, baseType: !4696, size: 64, offset: 5376)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4698)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4699, line: 52, size: 768, elements: !4700)
!4699 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4700 = !{!4701, !4702, !4703, !4704, !4705, !4709, !4713, !4714, !4715, !4716, !4720, !4724}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4698, file: !4699, line: 53, baseType: !218, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4698, file: !4699, line: 55, baseType: !357, size: 64, offset: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4698, file: !4699, line: 56, baseType: !357, size: 64, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4698, file: !4699, line: 58, baseType: !4234, size: 64, offset: 192)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4698, file: !4699, line: 59, baseType: !4706, size: 64, offset: 256)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!305, !4237, !4243}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4698, file: !4699, line: 61, baseType: !4710, size: 64, offset: 320)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{null, !4696}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4698, file: !4699, line: 62, baseType: !4245, size: 64, offset: 384)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4698, file: !4699, line: 64, baseType: !4254, size: 64, offset: 448)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4698, file: !4699, line: 66, baseType: !4073, size: 64, offset: 512)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4698, file: !4699, line: 67, baseType: !4717, size: 64, offset: 576)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!2614, !4237}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4698, file: !4699, line: 69, baseType: !4721, size: 64, offset: 640)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{null, !4237, !4105, !4106}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4698, file: !4699, line: 71, baseType: !4249, size: 64, offset: 704)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !212, file: !94, line: 785, baseType: !357, size: 64, offset: 5440)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !212, file: !94, line: 787, baseType: !4245, size: 64, offset: 5504)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !212, file: !94, line: 788, baseType: !4728, size: 64, offset: 5568)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !212, file: !94, line: 789, baseType: !4731, size: 64, offset: 5632)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !212, file: !94, line: 791, baseType: !4734, size: 64, offset: 5696)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4736)
!4736 = !{!4737, !4738, !4739, !4740, !4741}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4735, file: !94, line: 598, baseType: !133, size: 32)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4735, file: !94, line: 599, baseType: !142, size: 32, offset: 32)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4735, file: !94, line: 600, baseType: !147, size: 32, offset: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4735, file: !94, line: 601, baseType: !726, size: 8, offset: 96)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4735, file: !94, line: 602, baseType: !726, size: 8, offset: 104)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !212, file: !94, line: 793, baseType: !152, size: 32, offset: 5760)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !212, file: !94, line: 795, baseType: !726, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !212, file: !94, line: 796, baseType: !726, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !212, file: !94, line: 797, baseType: !726, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !212, file: !94, line: 798, baseType: !726, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !212, file: !94, line: 799, baseType: !726, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !208, file: !209, line: 54, baseType: !109, size: 32, offset: 5824)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !208, file: !209, line: 55, baseType: !4750, size: 64, offset: 5888)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_bus", file: !209, line: 290, size: 10560, elements: !4752)
!4752 = !{!4753, !4754, !4771, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4793, !4795, !4796, !4797, !4798, !4799, !4800, !4814, !4815, !4817, !4818, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4908, !4909, !4910, !4911, !4912, !4913, !4914}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4751, file: !209, line: 291, baseType: !4221, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4751, file: !209, line: 292, baseType: !4755, size: 64, offset: 64)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4757)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_bus_ops", file: !209, line: 242, size: 192, elements: !4758)
!4758 = !{!4759, !4763, !4767}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4757, file: !209, line: 244, baseType: !4760, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!109, !4750, !7}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "get_response", scope: !4757, file: !209, line: 246, baseType: !4764, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!109, !4750, !7, !718}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "link_power", scope: !4757, file: !209, line: 249, baseType: !4768, size: 64, offset: 128)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !207, !726}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ops", scope: !4751, file: !209, line: 293, baseType: !4772, size: 64, offset: 128)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4774)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_ext_bus_ops", file: !209, line: 255, size: 128, elements: !4775)
!4775 = !{!4776, !4780}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "hdev_attach", scope: !4774, file: !209, line: 256, baseType: !4777, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!109, !207}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "hdev_detach", scope: !4774, file: !209, line: 257, baseType: !4777, size: 64, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4751, file: !209, line: 296, baseType: !355, size: 64, offset: 192)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "remap_addr", scope: !4751, file: !209, line: 297, baseType: !204, size: 64, offset: 256)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4751, file: !209, line: 298, baseType: !109, size: 32, offset: 320)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "ppcap", scope: !4751, file: !209, line: 300, baseType: !204, size: 64, offset: 384)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "spbcap", scope: !4751, file: !209, line: 301, baseType: !204, size: 64, offset: 448)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "mlcap", scope: !4751, file: !209, line: 302, baseType: !204, size: 64, offset: 512)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "gtscap", scope: !4751, file: !209, line: 303, baseType: !204, size: 64, offset: 576)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "drsmcap", scope: !4751, file: !209, line: 304, baseType: !204, size: 64, offset: 640)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "codec_list", scope: !4751, file: !209, line: 307, baseType: !222, size: 128, offset: 704)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "num_codecs", scope: !4751, file: !209, line: 308, baseType: !7, size: 32, offset: 832)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "caddr_tbl", scope: !4751, file: !209, line: 311, baseType: !4792, size: 1024, offset: 896)
!4792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 1024, elements: !2797)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_queue", scope: !4751, file: !209, line: 314, baseType: !4794, size: 4096, offset: 1920)
!4794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 4096, elements: !4313)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_rp", scope: !4751, file: !209, line: 315, baseType: !7, size: 32, offset: 6016)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_wp", scope: !4751, file: !209, line: 315, baseType: !7, size: 32, offset: 6048)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_work", scope: !4751, file: !209, line: 316, baseType: !906, size: 256, offset: 6080)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "codec_mask", scope: !4751, file: !209, line: 319, baseType: !355, size: 64, offset: 6336)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "codec_powered", scope: !4751, file: !209, line: 322, baseType: !355, size: 64, offset: 6400)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "corb", scope: !4751, file: !209, line: 325, baseType: !4801, size: 704, offset: 6464)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_rb", file: !209, line: 268, size: 704, elements: !4802)
!4802 = !{!4803, !4806, !4808, !4809, !4810, !4812}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4801, file: !209, line: 269, baseType: !4804, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2132, line: 38, baseType: !455)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4801, file: !209, line: 270, baseType: !4807, size: 64, offset: 64)
!4807 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !206, line: 149, baseType: !458)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !4801, file: !209, line: 271, baseType: !275, size: 16, offset: 128)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4801, file: !209, line: 271, baseType: !275, size: 16, offset: 144)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !4801, file: !209, line: 272, baseType: !4811, size: 256, offset: 160)
!4811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !1577)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4801, file: !209, line: 273, baseType: !4813, size: 256, offset: 416)
!4813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 256, elements: !1577)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "rirb", scope: !4751, file: !209, line: 326, baseType: !4801, size: 704, offset: 7168)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !4751, file: !209, line: 327, baseType: !4816, size: 256, offset: 7872)
!4816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !1577)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "rirb_wq", scope: !4751, file: !209, line: 328, baseType: !1400, size: 192, offset: 8128)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4751, file: !209, line: 331, baseType: !4819, size: 448, offset: 8320)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_buffer", file: !4820, line: 60, size: 448, elements: !4821)
!4820 = !DIFile(filename: "./include/sound/memalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5a311c7e83a04625a087234f49540c88")
!4821 = !{!4822, !4829, !4831, !4832, !4833}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4819, file: !4820, line: 61, baseType: !4823, size: 192)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_device", file: !4820, line: 22, size: 192, elements: !4824)
!4824 = !{!4825, !4826, !4827, !4828}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4823, file: !4820, line: 23, baseType: !109, size: 32)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4823, file: !4820, line: 24, baseType: !158, size: 32, offset: 32)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "need_sync", scope: !4823, file: !4820, line: 25, baseType: !726, size: 8, offset: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4823, file: !4820, line: 26, baseType: !4221, size: 64, offset: 128)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !4819, file: !4820, line: 62, baseType: !4830, size: 64, offset: 192)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4819, file: !4820, line: 63, baseType: !4807, size: 64, offset: 256)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4819, file: !4820, line: 64, baseType: !352, size: 64, offset: 320)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4819, file: !4820, line: 65, baseType: !204, size: 64, offset: 384)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "posbuf", scope: !4751, file: !209, line: 332, baseType: !4819, size: 448, offset: 8768)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "dma_type", scope: !4751, file: !209, line: 333, baseType: !109, size: 32, offset: 9216)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "stream_list", scope: !4751, file: !209, line: 336, baseType: !222, size: 128, offset: 9280)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "chip_init", scope: !4751, file: !209, line: 339, baseType: !726, size: 1, offset: 9408, flags: DIFlagBitField, extraData: i64 9408)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_mmio", scope: !4751, file: !209, line: 342, baseType: !726, size: 1, offset: 9409, flags: DIFlagBitField, extraData: i64 9408)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !4751, file: !209, line: 343, baseType: !726, size: 1, offset: 9410, flags: DIFlagBitField, extraData: i64 9408)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "use_posbuf", scope: !4751, file: !209, line: 344, baseType: !726, size: 1, offset: 9411, flags: DIFlagBitField, extraData: i64 9408)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "snoop", scope: !4751, file: !209, line: 345, baseType: !726, size: 1, offset: 9412, flags: DIFlagBitField, extraData: i64 9408)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "align_bdle_4k", scope: !4751, file: !209, line: 346, baseType: !726, size: 1, offset: 9413, flags: DIFlagBitField, extraData: i64 9408)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "reverse_assign", scope: !4751, file: !209, line: 347, baseType: !726, size: 1, offset: 9414, flags: DIFlagBitField, extraData: i64 9408)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "corbrp_self_clear", scope: !4751, file: !209, line: 348, baseType: !726, size: 1, offset: 9415, flags: DIFlagBitField, extraData: i64 9408)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "polling_mode", scope: !4751, file: !209, line: 349, baseType: !726, size: 1, offset: 9416, flags: DIFlagBitField, extraData: i64 9408)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "needs_damn_long_delay", scope: !4751, file: !209, line: 350, baseType: !726, size: 1, offset: 9417, flags: DIFlagBitField, extraData: i64 9408)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "not_use_interrupts", scope: !4751, file: !209, line: 351, baseType: !726, size: 1, offset: 9418, flags: DIFlagBitField, extraData: i64 9408)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "access_sdnctl_in_dword", scope: !4751, file: !209, line: 352, baseType: !726, size: 1, offset: 9419, flags: DIFlagBitField, extraData: i64 9408)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "poll_count", scope: !4751, file: !209, line: 354, baseType: !109, size: 32, offset: 9440)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "bdl_pos_adj", scope: !4751, file: !209, line: 356, baseType: !109, size: 32, offset: 9472)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "dma_stop_delay", scope: !4751, file: !209, line: 359, baseType: !7, size: 32, offset: 9504)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "reg_lock", scope: !4751, file: !209, line: 362, baseType: !235, size: 32, offset: 9536)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !4751, file: !209, line: 363, baseType: !646, size: 256, offset: 9600)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4751, file: !209, line: 364, baseType: !646, size: 256, offset: 9856)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "audio_component", scope: !4751, file: !209, line: 367, baseType: !4856, size: 64, offset: 10112)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component", file: !4858, line: 110, size: 448, elements: !4859)
!4858 = !DIFile(filename: "./include/drm/drm_audio_component.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5876290eae632618019af7818f71dd5e")
!4859 = !{!4860, !4861, !4885, !4907}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4857, file: !4858, line: 114, baseType: !4221, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4857, file: !4858, line: 118, baseType: !4862, size: 64, offset: 64)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4864)
!4864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component_ops", file: !4858, line: 16, size: 448, elements: !4865)
!4865 = !{!4866, !4867, !4871, !4875, !4876, !4877, !4881}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4864, file: !4858, line: 20, baseType: !575, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "get_power", scope: !4864, file: !4858, line: 29, baseType: !4868, size: 64, offset: 64)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!355, !4221}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "put_power", scope: !4864, file: !4858, line: 35, baseType: !4872, size: 64, offset: 128)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{null, !4221, !355}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "codec_wake_override", scope: !4864, file: !4858, line: 39, baseType: !4540, size: 64, offset: 192)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "get_cdclk_freq", scope: !4864, file: !4858, line: 43, baseType: !4254, size: 64, offset: 256)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "sync_audio_rate", scope: !4864, file: !4858, line: 50, baseType: !4878, size: 64, offset: 320)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!109, !4221, !109, !109, !109}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "get_eld", scope: !4864, file: !4858, line: 63, baseType: !4882, size: 64, offset: 384)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!109, !4221, !109, !109, !4033, !4830, !109}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ops", scope: !4857, file: !4858, line: 122, baseType: !4886, size: 64, offset: 128)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4888)
!4888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component_audio_ops", file: !4858, line: 70, size: 320, elements: !4889)
!4889 = !{!4890, !4891, !4895, !4899, !4903}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ptr", scope: !4888, file: !4858, line: 74, baseType: !204, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "pin_eld_notify", scope: !4888, file: !4858, line: 83, baseType: !4892, size: 64, offset: 64)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{null, !204, !109, !109}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "pin2port", scope: !4888, file: !4858, line: 90, baseType: !4896, size: 64, offset: 128)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!109, !204, !109}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "master_bind", scope: !4888, file: !4858, line: 97, baseType: !4900, size: 64, offset: 192)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!109, !4221, !4856}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "master_unbind", scope: !4888, file: !4858, line: 104, baseType: !4904, size: 64, offset: 256)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{null, !4221, !4856}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "master_bind_complete", scope: !4857, file: !4858, line: 126, baseType: !595, size: 256, offset: 192)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_status", scope: !4751, file: !209, line: 368, baseType: !341, size: 64, offset: 10176)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_active", scope: !4751, file: !209, line: 369, baseType: !355, size: 64, offset: 10240)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "num_streams", scope: !4751, file: !209, line: 372, baseType: !109, size: 32, offset: 10304)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4751, file: !209, line: 373, baseType: !109, size: 32, offset: 10336)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "hlink_list", scope: !4751, file: !209, line: 376, baseType: !222, size: 128, offset: 10368)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_dma_state", scope: !4751, file: !209, line: 377, baseType: !726, size: 8, offset: 10496)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "sdo_limit", scope: !4751, file: !209, line: 380, baseType: !7, size: 32, offset: 10528)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !208, file: !209, line: 56, baseType: !7, size: 32, offset: 5952)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !208, file: !209, line: 57, baseType: !222, size: 128, offset: 6016)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "afg", scope: !208, file: !209, line: 59, baseType: !4918, size: 16, offset: 6144)
!4918 = !DIDerivedType(tag: DW_TAG_typedef, name: "hda_nid_t", file: !209, line: 24, baseType: !273)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "mfg", scope: !208, file: !209, line: 60, baseType: !4918, size: 16, offset: 6160)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !208, file: !209, line: 63, baseType: !7, size: 32, offset: 6176)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_id", scope: !208, file: !209, line: 64, baseType: !7, size: 32, offset: 6208)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !208, file: !209, line: 65, baseType: !7, size: 32, offset: 6240)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "afg_function_id", scope: !208, file: !209, line: 66, baseType: !7, size: 32, offset: 6272)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "mfg_function_id", scope: !208, file: !209, line: 67, baseType: !7, size: 32, offset: 6304)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "afg_unsol", scope: !208, file: !209, line: 68, baseType: !7, size: 1, offset: 6336, flags: DIFlagBitField, extraData: i64 6336)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "mfg_unsol", scope: !208, file: !209, line: 69, baseType: !7, size: 1, offset: 6337, flags: DIFlagBitField, extraData: i64 6336)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "power_caps", scope: !208, file: !209, line: 71, baseType: !7, size: 32, offset: 6368)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_name", scope: !208, file: !209, line: 73, baseType: !218, size: 64, offset: 6400)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "chip_name", scope: !208, file: !209, line: 74, baseType: !218, size: 64, offset: 6464)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "exec_verb", scope: !208, file: !209, line: 77, baseType: !4931, size: 64, offset: 6528)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!109, !207, !7, !7, !718}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !208, file: !209, line: 81, baseType: !7, size: 32, offset: 6592)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "start_nid", scope: !208, file: !209, line: 82, baseType: !4918, size: 16, offset: 6624)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "end_nid", scope: !208, file: !209, line: 82, baseType: !4918, size: 16, offset: 6640)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "in_pm", scope: !208, file: !209, line: 85, baseType: !255, size: 32, offset: 6656)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "widget_lock", scope: !208, file: !209, line: 88, baseType: !646, size: 256, offset: 6720)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "widgets", scope: !208, file: !209, line: 89, baseType: !4940, size: 64, offset: 6976)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_widget_tree", file: !3, line: 13, size: 192, elements: !4942)
!4942 = !{!4943, !4944, !4945}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4941, file: !3, line: 14, baseType: !228, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "afg", scope: !4941, file: !3, line: 15, baseType: !228, size: 64, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !4941, file: !3, line: 16, baseType: !4946, size: 64, offset: 128)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "regmap", scope: !208, file: !209, line: 92, baseType: !4948, size: 64, offset: 7040)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !209, line: 92, flags: DIFlagFwdDecl)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "regmap_lock", scope: !208, file: !209, line: 93, baseType: !646, size: 256, offset: 7104)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_verbs", scope: !208, file: !209, line: 94, baseType: !4952, size: 192, offset: 7360)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_array", file: !209, line: 41, size: 192, elements: !4953)
!4953 = !{!4954, !4955, !4956, !4957, !4958}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4952, file: !209, line: 42, baseType: !7, size: 32)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !4952, file: !209, line: 43, baseType: !7, size: 32, offset: 32)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !4952, file: !209, line: 44, baseType: !7, size: 32, offset: 64)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_align", scope: !4952, file: !209, line: 45, baseType: !7, size: 32, offset: 96)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4952, file: !209, line: 46, baseType: !204, size: 64, offset: 128)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "lazy_cache", scope: !208, file: !209, line: 95, baseType: !726, size: 1, offset: 7552, flags: DIFlagBitField, extraData: i64 7552)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "caps_overwriting", scope: !208, file: !209, line: 96, baseType: !726, size: 1, offset: 7553, flags: DIFlagBitField, extraData: i64 7552)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "cache_coef", scope: !208, file: !209, line: 97, baseType: !726, size: 1, offset: 7554, flags: DIFlagBitField, extraData: i64 7552)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !208, file: !209, line: 98, baseType: !7, size: 1, offset: 7555, flags: DIFlagBitField, extraData: i64 7552)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "widget_attribute", file: !3, line: 87, size: 256, elements: !4965)
!4965 = !{!4966, !4967, !4971}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4964, file: !3, line: 88, baseType: !343, size: 128)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4964, file: !3, line: 89, baseType: !4968, size: 64, offset: 128)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!337, !207, !4918, !4963, !305}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4964, file: !3, line: 91, baseType: !4972, size: 64, offset: 192)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!337, !207, !4918, !4963, !218, !352}
!4975 = !{!4976, !0, !4979, !4984, !4989, !5003, !5005, !5008, !5010, !5015, !5017, !5020, !5022, !5025, !5027, !5029, !5031, !5033, !5035, !5037, !5040, !5042, !5044, !5049, !5051, !5053, !5058, !5060, !5063, !5065, !5067, !5069, !5071, !5073, !5075, !5077, !5079, !5081, !5086, !5088, !5090, !5092, !5094, !5096, !5098, !5100, !5102, !5104, !5106, !5108, !5110, !5112, !5114, !5117, !5119, !5121, !5123}
!4976 = !DIGlobalVariableExpression(var: !4977, expr: !DIExpression())
!4977 = distinct !DIGlobalVariable(name: "hdac_dev_attr_groups", scope: !2, file: !3, line: 73, type: !4978, isLocal: false, isDefinition: true)
!4978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 128, elements: !765)
!4979 = !DIGlobalVariableExpression(var: !4980, expr: !DIExpression())
!4980 = distinct !DIGlobalVariable(name: "hdac_dev_attrs", scope: !2, file: !3, line: 56, type: !4981, isLocal: true, isDefinition: true)
!4981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 640, elements: !4982)
!4982 = !{!4983}
!4983 = !DISubrange(count: 10)
!4984 = !DIGlobalVariableExpression(var: !4985, expr: !DIExpression())
!4985 = distinct !DIGlobalVariable(scope: null, file: !3, line: 40, type: !4986, isLocal: true, isDefinition: true)
!4986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 40, elements: !4987)
!4987 = !{!4988}
!4988 = !DISubrange(count: 5)
!4989 = !DIGlobalVariableExpression(var: !4990, expr: !DIExpression())
!4990 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !2, file: !3, line: 40, type: !4991, isLocal: true, isDefinition: true)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !4992)
!4992 = !{!4993, !4994, !4999}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4991, file: !94, line: 107, baseType: !343, size: 128)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4991, file: !94, line: 108, baseType: !4995, size: 64, offset: 128)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!337, !4221, !4998, !305}
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4991, file: !94, line: 110, baseType: !5000, size: 64, offset: 192)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!337, !4221, !4998, !218, !352}
!5003 = !DIGlobalVariableExpression(var: !5004, expr: !DIExpression())
!5004 = distinct !DIGlobalVariable(scope: null, file: !3, line: 40, type: !1879, isLocal: true, isDefinition: true)
!5005 = !DIGlobalVariableExpression(var: !5006, expr: !DIExpression())
!5006 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !5007, isLocal: true, isDefinition: true)
!5007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 80, elements: !4982)
!5008 = !DIGlobalVariableExpression(var: !5009, expr: !DIExpression())
!5009 = distinct !DIGlobalVariable(name: "dev_attr_vendor_id", scope: !2, file: !3, line: 41, type: !4991, isLocal: true, isDefinition: true)
!5010 = !DIGlobalVariableExpression(var: !5011, expr: !DIExpression())
!5011 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !5012, isLocal: true, isDefinition: true)
!5012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 104, elements: !5013)
!5013 = !{!5014}
!5014 = !DISubrange(count: 13)
!5015 = !DIGlobalVariableExpression(var: !5016, expr: !DIExpression())
!5016 = distinct !DIGlobalVariable(name: "dev_attr_subsystem_id", scope: !2, file: !3, line: 42, type: !4991, isLocal: true, isDefinition: true)
!5017 = !DIGlobalVariableExpression(var: !5018, expr: !DIExpression())
!5018 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !5019, isLocal: true, isDefinition: true)
!5019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 96, elements: !3453)
!5020 = !DIGlobalVariableExpression(var: !5021, expr: !DIExpression())
!5021 = distinct !DIGlobalVariable(name: "dev_attr_revision_id", scope: !2, file: !3, line: 43, type: !4991, isLocal: true, isDefinition: true)
!5022 = !DIGlobalVariableExpression(var: !5023, expr: !DIExpression())
!5023 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !5024, isLocal: true, isDefinition: true)
!5024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 32, elements: !876)
!5025 = !DIGlobalVariableExpression(var: !5026, expr: !DIExpression())
!5026 = distinct !DIGlobalVariable(name: "dev_attr_afg", scope: !2, file: !3, line: 44, type: !4991, isLocal: true, isDefinition: true)
!5027 = !DIGlobalVariableExpression(var: !5028, expr: !DIExpression())
!5028 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !5024, isLocal: true, isDefinition: true)
!5029 = !DIGlobalVariableExpression(var: !5030, expr: !DIExpression())
!5030 = distinct !DIGlobalVariable(name: "dev_attr_mfg", scope: !2, file: !3, line: 45, type: !4991, isLocal: true, isDefinition: true)
!5031 = !DIGlobalVariableExpression(var: !5032, expr: !DIExpression())
!5032 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !5019, isLocal: true, isDefinition: true)
!5033 = !DIGlobalVariableExpression(var: !5034, expr: !DIExpression())
!5034 = distinct !DIGlobalVariable(name: "dev_attr_vendor_name", scope: !2, file: !3, line: 46, type: !4991, isLocal: true, isDefinition: true)
!5035 = !DIGlobalVariableExpression(var: !5036, expr: !DIExpression())
!5036 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !5024, isLocal: true, isDefinition: true)
!5037 = !DIGlobalVariableExpression(var: !5038, expr: !DIExpression())
!5038 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !5039, isLocal: true, isDefinition: true)
!5039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 8, elements: !1662)
!5040 = !DIGlobalVariableExpression(var: !5041, expr: !DIExpression())
!5041 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !5007, isLocal: true, isDefinition: true)
!5042 = !DIGlobalVariableExpression(var: !5043, expr: !DIExpression())
!5043 = distinct !DIGlobalVariable(name: "dev_attr_chip_name", scope: !2, file: !3, line: 47, type: !4991, isLocal: true, isDefinition: true)
!5044 = !DIGlobalVariableExpression(var: !5045, expr: !DIExpression())
!5045 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !5046, isLocal: true, isDefinition: true)
!5046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 72, elements: !5047)
!5047 = !{!5048}
!5048 = !DISubrange(count: 9)
!5049 = !DIGlobalVariableExpression(var: !5050, expr: !DIExpression())
!5050 = distinct !DIGlobalVariable(name: "dev_attr_modalias", scope: !2, file: !3, line: 54, type: !4991, isLocal: true, isDefinition: true)
!5051 = !DIGlobalVariableExpression(var: !5052, expr: !DIExpression())
!5052 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !3118, isLocal: true, isDefinition: true)
!5053 = !DIGlobalVariableExpression(var: !5054, expr: !DIExpression())
!5054 = distinct !DIGlobalVariable(scope: null, file: !182, line: 480, type: !5055, isLocal: true, isDefinition: true)
!5055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 168, elements: !5056)
!5056 = !{!5057}
!5057 = !DISubrange(count: 21)
!5058 = !DIGlobalVariableExpression(var: !5059, expr: !DIExpression())
!5059 = distinct !DIGlobalVariable(name: "widget_afg_group", scope: !2, file: !3, line: 307, type: !359, isLocal: true, isDefinition: true)
!5060 = !DIGlobalVariableExpression(var: !5061, expr: !DIExpression())
!5061 = distinct !DIGlobalVariable(name: "widget_afg_attrs", scope: !2, file: !3, line: 293, type: !5062, isLocal: true, isDefinition: true)
!5062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 448, elements: !767)
!5063 = !DIGlobalVariableExpression(var: !5064, expr: !DIExpression())
!5064 = distinct !DIGlobalVariable(scope: null, file: !3, line: 272, type: !5046, isLocal: true, isDefinition: true)
!5065 = !DIGlobalVariableExpression(var: !5066, expr: !DIExpression())
!5066 = distinct !DIGlobalVariable(name: "wid_attr_pcm_caps", scope: !2, file: !3, line: 272, type: !4964, isLocal: true, isDefinition: true)
!5067 = !DIGlobalVariableExpression(var: !5068, expr: !DIExpression())
!5068 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !3118, isLocal: true, isDefinition: true)
!5069 = !DIGlobalVariableExpression(var: !5070, expr: !DIExpression())
!5070 = distinct !DIGlobalVariable(scope: null, file: !3, line: 273, type: !5019, isLocal: true, isDefinition: true)
!5071 = !DIGlobalVariableExpression(var: !5072, expr: !DIExpression())
!5072 = distinct !DIGlobalVariable(name: "wid_attr_pcm_formats", scope: !2, file: !3, line: 273, type: !4964, isLocal: true, isDefinition: true)
!5073 = !DIGlobalVariableExpression(var: !5074, expr: !DIExpression())
!5074 = distinct !DIGlobalVariable(scope: null, file: !3, line: 274, type: !5019, isLocal: true, isDefinition: true)
!5075 = !DIGlobalVariableExpression(var: !5076, expr: !DIExpression())
!5076 = distinct !DIGlobalVariable(name: "wid_attr_amp_in_caps", scope: !2, file: !3, line: 274, type: !4964, isLocal: true, isDefinition: true)
!5077 = !DIGlobalVariableExpression(var: !5078, expr: !DIExpression())
!5078 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !5012, isLocal: true, isDefinition: true)
!5079 = !DIGlobalVariableExpression(var: !5080, expr: !DIExpression())
!5080 = distinct !DIGlobalVariable(name: "wid_attr_amp_out_caps", scope: !2, file: !3, line: 275, type: !4964, isLocal: true, isDefinition: true)
!5081 = !DIGlobalVariableExpression(var: !5082, expr: !DIExpression())
!5082 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !5083, isLocal: true, isDefinition: true)
!5083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 88, elements: !5084)
!5084 = !{!5085}
!5085 = !DISubrange(count: 11)
!5086 = !DIGlobalVariableExpression(var: !5087, expr: !DIExpression())
!5087 = distinct !DIGlobalVariable(name: "wid_attr_power_caps", scope: !2, file: !3, line: 276, type: !4964, isLocal: true, isDefinition: true)
!5088 = !DIGlobalVariableExpression(var: !5089, expr: !DIExpression())
!5089 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !5007, isLocal: true, isDefinition: true)
!5090 = !DIGlobalVariableExpression(var: !5091, expr: !DIExpression())
!5091 = distinct !DIGlobalVariable(name: "wid_attr_gpio_caps", scope: !2, file: !3, line: 277, type: !4964, isLocal: true, isDefinition: true)
!5092 = !DIGlobalVariableExpression(var: !5093, expr: !DIExpression())
!5093 = distinct !DIGlobalVariable(name: "widget_node_group", scope: !2, file: !3, line: 303, type: !359, isLocal: true, isDefinition: true)
!5094 = !DIGlobalVariableExpression(var: !5095, expr: !DIExpression())
!5095 = distinct !DIGlobalVariable(name: "widget_node_attrs", scope: !2, file: !3, line: 280, type: !4981, isLocal: true, isDefinition: true)
!5096 = !DIGlobalVariableExpression(var: !5097, expr: !DIExpression())
!5097 = distinct !DIGlobalVariable(scope: null, file: !3, line: 269, type: !4986, isLocal: true, isDefinition: true)
!5098 = !DIGlobalVariableExpression(var: !5099, expr: !DIExpression())
!5099 = distinct !DIGlobalVariable(name: "wid_attr_caps", scope: !2, file: !3, line: 269, type: !4964, isLocal: true, isDefinition: true)
!5100 = !DIGlobalVariableExpression(var: !5101, expr: !DIExpression())
!5101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 270, type: !5046, isLocal: true, isDefinition: true)
!5102 = !DIGlobalVariableExpression(var: !5103, expr: !DIExpression())
!5103 = distinct !DIGlobalVariable(name: "wid_attr_pin_caps", scope: !2, file: !3, line: 270, type: !4964, isLocal: true, isDefinition: true)
!5104 = !DIGlobalVariableExpression(var: !5105, expr: !DIExpression())
!5105 = distinct !DIGlobalVariable(scope: null, file: !3, line: 271, type: !3118, isLocal: true, isDefinition: true)
!5106 = !DIGlobalVariableExpression(var: !5107, expr: !DIExpression())
!5107 = distinct !DIGlobalVariable(name: "wid_attr_pin_cfg", scope: !2, file: !3, line: 271, type: !4964, isLocal: true, isDefinition: true)
!5108 = !DIGlobalVariableExpression(var: !5109, expr: !DIExpression())
!5109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 278, type: !5019, isLocal: true, isDefinition: true)
!5110 = !DIGlobalVariableExpression(var: !5111, expr: !DIExpression())
!5111 = distinct !DIGlobalVariable(name: "wid_attr_connections", scope: !2, file: !3, line: 278, type: !4964, isLocal: true, isDefinition: true)
!5112 = !DIGlobalVariableExpression(var: !5113, expr: !DIExpression())
!5113 = distinct !DIGlobalVariable(scope: null, file: !3, line: 264, type: !5046, isLocal: true, isDefinition: true)
!5114 = !DIGlobalVariableExpression(var: !5115, expr: !DIExpression())
!5115 = distinct !DIGlobalVariable(scope: null, file: !3, line: 264, type: !5116, isLocal: true, isDefinition: true)
!5116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 16, elements: !765)
!5117 = !DIGlobalVariableExpression(var: !5118, expr: !DIExpression())
!5118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 265, type: !5116, isLocal: true, isDefinition: true)
!5119 = !DIGlobalVariableExpression(var: !5120, expr: !DIExpression())
!5120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !4986, isLocal: true, isDefinition: true)
!5121 = !DIGlobalVariableExpression(var: !5122, expr: !DIExpression())
!5122 = distinct !DIGlobalVariable(name: "widget_ktype", scope: !2, file: !3, line: 151, type: !320, isLocal: true, isDefinition: true)
!5123 = !DIGlobalVariableExpression(var: !5124, expr: !DIExpression())
!5124 = distinct !DIGlobalVariable(name: "widget_sysfs_ops", scope: !2, file: !3, line: 141, type: !329, isLocal: true, isDefinition: true)
!5125 = !{i32 7, !"Dwarf Version", i32 5}
!5126 = !{i32 2, !"Debug Info Version", i32 3}
!5127 = !{i32 1, !"wchar_size", i32 2}
!5128 = !{i32 8, !"cf-protection-branch", i32 1}
!5129 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5130 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5131 = !{i32 1, !"Code Model", i32 2}
!5132 = !{i32 1, !"override-stack-alignment", i32 8}
!5133 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5134 = distinct !DISubprogram(name: "hda_widget_sysfs_init", scope: !3, file: !3, line: 401, type: !4778, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5135)
!5135 = !{!5136, !5137}
!5136 = !DILocalVariable(name: "codec", arg: 1, scope: !5134, file: !3, line: 401, type: !207)
!5137 = !DILocalVariable(name: "err", scope: !5134, file: !3, line: 403, type: !109)
!5138 = !DILocation(line: 401, column: 47, scope: !5134)
!5139 = !DILocation(line: 403, column: 2, scope: !5134)
!5140 = !DILocation(line: 403, column: 6, scope: !5134)
!5141 = !DILocation(line: 405, column: 6, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 405, column: 6)
!5143 = !DILocation(line: 405, column: 13, scope: !5142)
!5144 = !DILocation(line: 405, column: 6, scope: !5134)
!5145 = !DILocation(line: 406, column: 3, scope: !5142)
!5146 = !DILocation(line: 408, column: 27, scope: !5134)
!5147 = !DILocation(line: 408, column: 8, scope: !5134)
!5148 = !DILocation(line: 408, column: 6, scope: !5134)
!5149 = !DILocation(line: 409, column: 6, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 409, column: 6)
!5151 = !DILocation(line: 409, column: 10, scope: !5150)
!5152 = !DILocation(line: 409, column: 6, scope: !5134)
!5153 = !DILocation(line: 410, column: 20, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 409, column: 15)
!5155 = !DILocation(line: 410, column: 3, scope: !5154)
!5156 = !DILocation(line: 411, column: 10, scope: !5154)
!5157 = !DILocation(line: 411, column: 3, scope: !5154)
!5158 = !DILocation(line: 414, column: 2, scope: !5134)
!5159 = !DILocation(line: 415, column: 1, scope: !5134)
!5160 = distinct !DISubprogram(name: "widget_tree_create", scope: !3, file: !3, line: 363, type: !4778, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5161)
!5161 = !{!5162, !5163, !5164, !5165, !5166}
!5162 = !DILocalVariable(name: "codec", arg: 1, scope: !5160, file: !3, line: 363, type: !207)
!5163 = !DILocalVariable(name: "tree", scope: !5160, file: !3, line: 365, type: !4940)
!5164 = !DILocalVariable(name: "i", scope: !5160, file: !3, line: 366, type: !109)
!5165 = !DILocalVariable(name: "err", scope: !5160, file: !3, line: 366, type: !109)
!5166 = !DILocalVariable(name: "nid", scope: !5160, file: !3, line: 367, type: !4918)
!5167 = !DILocation(line: 363, column: 51, scope: !5160)
!5168 = !DILocation(line: 365, column: 2, scope: !5160)
!5169 = !DILocation(line: 365, column: 27, scope: !5160)
!5170 = !DILocation(line: 366, column: 2, scope: !5160)
!5171 = !DILocation(line: 366, column: 6, scope: !5160)
!5172 = !DILocation(line: 366, column: 9, scope: !5160)
!5173 = !DILocation(line: 367, column: 2, scope: !5160)
!5174 = !DILocation(line: 367, column: 12, scope: !5160)
!5175 = !DILocation(line: 369, column: 26, scope: !5160)
!5176 = !DILocation(line: 369, column: 9, scope: !5160)
!5177 = !DILocation(line: 369, column: 16, scope: !5160)
!5178 = !DILocation(line: 369, column: 24, scope: !5160)
!5179 = !DILocation(line: 369, column: 7, scope: !5160)
!5180 = !DILocation(line: 370, column: 7, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 370, column: 6)
!5182 = !DILocation(line: 370, column: 6, scope: !5160)
!5183 = !DILocation(line: 371, column: 3, scope: !5181)
!5184 = !DILocation(line: 373, column: 50, scope: !5160)
!5185 = !DILocation(line: 373, column: 57, scope: !5160)
!5186 = !DILocation(line: 373, column: 61, scope: !5160)
!5187 = !DILocation(line: 373, column: 15, scope: !5160)
!5188 = !DILocation(line: 373, column: 2, scope: !5160)
!5189 = !DILocation(line: 373, column: 8, scope: !5160)
!5190 = !DILocation(line: 373, column: 13, scope: !5160)
!5191 = !DILocation(line: 374, column: 7, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 374, column: 6)
!5193 = !DILocation(line: 374, column: 13, scope: !5192)
!5194 = !DILocation(line: 374, column: 6, scope: !5160)
!5195 = !DILocation(line: 375, column: 3, scope: !5192)
!5196 = !DILocation(line: 377, column: 24, scope: !5160)
!5197 = !DILocation(line: 377, column: 31, scope: !5160)
!5198 = !DILocation(line: 377, column: 41, scope: !5160)
!5199 = !DILocation(line: 377, column: 16, scope: !5160)
!5200 = !DILocation(line: 377, column: 2, scope: !5160)
!5201 = !DILocation(line: 377, column: 8, scope: !5160)
!5202 = !DILocation(line: 377, column: 14, scope: !5160)
!5203 = !DILocation(line: 379, column: 7, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 379, column: 6)
!5205 = !DILocation(line: 379, column: 13, scope: !5204)
!5206 = !DILocation(line: 379, column: 6, scope: !5160)
!5207 = !DILocation(line: 380, column: 3, scope: !5204)
!5208 = !DILocation(line: 382, column: 9, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 382, column: 2)
!5210 = !DILocation(line: 382, column: 20, scope: !5209)
!5211 = !DILocation(line: 382, column: 27, scope: !5209)
!5212 = !DILocation(line: 382, column: 18, scope: !5209)
!5213 = !DILocation(line: 382, column: 7, scope: !5209)
!5214 = !DILocation(line: 382, column: 38, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 382, column: 2)
!5216 = !DILocation(line: 382, column: 42, scope: !5215)
!5217 = !DILocation(line: 382, column: 49, scope: !5215)
!5218 = !DILocation(line: 382, column: 40, scope: !5215)
!5219 = !DILocation(line: 382, column: 2, scope: !5209)
!5220 = !DILocation(line: 383, column: 25, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 382, column: 72)
!5222 = !DILocation(line: 383, column: 31, scope: !5221)
!5223 = !DILocation(line: 383, column: 37, scope: !5221)
!5224 = !DILocation(line: 384, column: 12, scope: !5221)
!5225 = !DILocation(line: 384, column: 18, scope: !5221)
!5226 = !DILocation(line: 384, column: 24, scope: !5221)
!5227 = !DILocation(line: 383, column: 9, scope: !5221)
!5228 = !DILocation(line: 383, column: 7, scope: !5221)
!5229 = !DILocation(line: 385, column: 7, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5221, file: !3, line: 385, column: 7)
!5231 = !DILocation(line: 385, column: 11, scope: !5230)
!5232 = !DILocation(line: 385, column: 7, scope: !5221)
!5233 = !DILocation(line: 386, column: 11, scope: !5230)
!5234 = !DILocation(line: 386, column: 4, scope: !5230)
!5235 = !DILocation(line: 387, column: 2, scope: !5221)
!5236 = !DILocation(line: 382, column: 61, scope: !5215)
!5237 = !DILocation(line: 382, column: 68, scope: !5215)
!5238 = !DILocation(line: 382, column: 2, scope: !5215)
!5239 = distinct !{!5239, !5219, !5240, !5241, !5242}
!5240 = !DILocation(line: 387, column: 2, scope: !5209)
!5241 = !{!"llvm.loop.mustprogress"}
!5242 = !{!"llvm.loop.unroll.disable"}
!5243 = !DILocation(line: 389, column: 6, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 389, column: 6)
!5245 = !DILocation(line: 389, column: 13, scope: !5244)
!5246 = !DILocation(line: 389, column: 6, scope: !5160)
!5247 = !DILocation(line: 390, column: 25, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 389, column: 18)
!5249 = !DILocation(line: 390, column: 31, scope: !5248)
!5250 = !DILocation(line: 390, column: 37, scope: !5248)
!5251 = !DILocation(line: 390, column: 44, scope: !5248)
!5252 = !DILocation(line: 391, column: 31, scope: !5248)
!5253 = !DILocation(line: 391, column: 37, scope: !5248)
!5254 = !DILocation(line: 390, column: 9, scope: !5248)
!5255 = !DILocation(line: 390, column: 7, scope: !5248)
!5256 = !DILocation(line: 392, column: 7, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 392, column: 7)
!5258 = !DILocation(line: 392, column: 11, scope: !5257)
!5259 = !DILocation(line: 392, column: 7, scope: !5248)
!5260 = !DILocation(line: 393, column: 11, scope: !5257)
!5261 = !DILocation(line: 393, column: 4, scope: !5257)
!5262 = !DILocation(line: 394, column: 2, scope: !5248)
!5263 = !DILocation(line: 396, column: 17, scope: !5160)
!5264 = !DILocation(line: 396, column: 23, scope: !5160)
!5265 = !DILocation(line: 396, column: 2, scope: !5160)
!5266 = !DILocation(line: 397, column: 2, scope: !5160)
!5267 = !DILocation(line: 398, column: 1, scope: !5160)
!5268 = distinct !DISubprogram(name: "widget_tree_free", scope: !3, file: !3, line: 320, type: !5269, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5271)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !207}
!5271 = !{!5272, !5273, !5274}
!5272 = !DILocalVariable(name: "codec", arg: 1, scope: !5268, file: !3, line: 320, type: !207)
!5273 = !DILocalVariable(name: "tree", scope: !5268, file: !3, line: 322, type: !4940)
!5274 = !DILocalVariable(name: "p", scope: !5268, file: !3, line: 323, type: !4946)
!5275 = !DILocation(line: 320, column: 50, scope: !5268)
!5276 = !DILocation(line: 322, column: 2, scope: !5268)
!5277 = !DILocation(line: 322, column: 27, scope: !5268)
!5278 = !DILocation(line: 322, column: 34, scope: !5268)
!5279 = !DILocation(line: 322, column: 41, scope: !5268)
!5280 = !DILocation(line: 323, column: 2, scope: !5268)
!5281 = !DILocation(line: 323, column: 19, scope: !5268)
!5282 = !DILocation(line: 325, column: 7, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 325, column: 6)
!5284 = !DILocation(line: 325, column: 6, scope: !5268)
!5285 = !DILocation(line: 326, column: 3, scope: !5283)
!5286 = !DILocation(line: 327, column: 19, scope: !5268)
!5287 = !DILocation(line: 327, column: 25, scope: !5268)
!5288 = !DILocation(line: 327, column: 2, scope: !5268)
!5289 = !DILocation(line: 328, column: 6, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 328, column: 6)
!5291 = !DILocation(line: 328, column: 12, scope: !5290)
!5292 = !DILocation(line: 328, column: 6, scope: !5268)
!5293 = !DILocation(line: 329, column: 12, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 329, column: 3)
!5295 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 328, column: 19)
!5296 = !DILocation(line: 329, column: 18, scope: !5294)
!5297 = !DILocation(line: 329, column: 10, scope: !5294)
!5298 = !DILocation(line: 329, column: 8, scope: !5294)
!5299 = !DILocation(line: 329, column: 26, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 329, column: 3)
!5301 = !DILocation(line: 329, column: 25, scope: !5300)
!5302 = !DILocation(line: 329, column: 3, scope: !5294)
!5303 = !DILocation(line: 330, column: 22, scope: !5300)
!5304 = !DILocation(line: 330, column: 21, scope: !5300)
!5305 = !DILocation(line: 330, column: 4, scope: !5300)
!5306 = !DILocation(line: 329, column: 30, scope: !5300)
!5307 = !DILocation(line: 329, column: 3, scope: !5300)
!5308 = distinct !{!5308, !5302, !5309, !5241, !5242}
!5309 = !DILocation(line: 330, column: 43, scope: !5294)
!5310 = !DILocation(line: 331, column: 9, scope: !5295)
!5311 = !DILocation(line: 331, column: 15, scope: !5295)
!5312 = !DILocation(line: 331, column: 3, scope: !5295)
!5313 = !DILocation(line: 332, column: 2, scope: !5295)
!5314 = !DILocation(line: 333, column: 14, scope: !5268)
!5315 = !DILocation(line: 333, column: 20, scope: !5268)
!5316 = !DILocation(line: 333, column: 2, scope: !5268)
!5317 = !DILocation(line: 334, column: 8, scope: !5268)
!5318 = !DILocation(line: 334, column: 2, scope: !5268)
!5319 = !DILocation(line: 335, column: 2, scope: !5268)
!5320 = !DILocation(line: 335, column: 9, scope: !5268)
!5321 = !DILocation(line: 335, column: 17, scope: !5268)
!5322 = !DILocation(line: 336, column: 1, scope: !5268)
!5323 = distinct !DISubprogram(name: "hda_widget_sysfs_exit", scope: !3, file: !3, line: 418, type: !5269, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5324)
!5324 = !{!5325}
!5325 = !DILocalVariable(name: "codec", arg: 1, scope: !5323, file: !3, line: 418, type: !207)
!5326 = !DILocation(line: 418, column: 48, scope: !5323)
!5327 = !DILocation(line: 420, column: 19, scope: !5323)
!5328 = !DILocation(line: 420, column: 2, scope: !5323)
!5329 = !DILocation(line: 421, column: 1, scope: !5323)
!5330 = distinct !DISubprogram(name: "hda_widget_sysfs_reinit", scope: !3, file: !3, line: 424, type: !5331, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5333)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!109, !207, !4918, !109}
!5333 = !{!5334, !5335, !5336, !5337, !5338, !5339, !5340}
!5334 = !DILocalVariable(name: "codec", arg: 1, scope: !5330, file: !3, line: 424, type: !207)
!5335 = !DILocalVariable(name: "start_nid", arg: 2, scope: !5330, file: !3, line: 425, type: !4918)
!5336 = !DILocalVariable(name: "num_nodes", arg: 3, scope: !5330, file: !3, line: 425, type: !109)
!5337 = !DILocalVariable(name: "tree", scope: !5330, file: !3, line: 427, type: !4940)
!5338 = !DILocalVariable(name: "end_nid", scope: !5330, file: !3, line: 428, type: !4918)
!5339 = !DILocalVariable(name: "nid", scope: !5330, file: !3, line: 429, type: !4918)
!5340 = !DILocalVariable(name: "i", scope: !5330, file: !3, line: 430, type: !109)
!5341 = !DILocation(line: 424, column: 49, scope: !5330)
!5342 = !DILocation(line: 425, column: 18, scope: !5330)
!5343 = !DILocation(line: 425, column: 33, scope: !5330)
!5344 = !DILocation(line: 427, column: 2, scope: !5330)
!5345 = !DILocation(line: 427, column: 27, scope: !5330)
!5346 = !DILocation(line: 428, column: 2, scope: !5330)
!5347 = !DILocation(line: 428, column: 12, scope: !5330)
!5348 = !DILocation(line: 428, column: 22, scope: !5330)
!5349 = !DILocation(line: 428, column: 34, scope: !5330)
!5350 = !DILocation(line: 428, column: 32, scope: !5330)
!5351 = !DILocation(line: 429, column: 2, scope: !5330)
!5352 = !DILocation(line: 429, column: 12, scope: !5330)
!5353 = !DILocation(line: 430, column: 2, scope: !5330)
!5354 = !DILocation(line: 430, column: 6, scope: !5330)
!5355 = !DILocation(line: 432, column: 7, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 432, column: 6)
!5357 = !DILocation(line: 432, column: 14, scope: !5356)
!5358 = !DILocation(line: 432, column: 6, scope: !5330)
!5359 = !DILocation(line: 433, column: 3, scope: !5356)
!5360 = !DILocation(line: 435, column: 17, scope: !5330)
!5361 = !DILocation(line: 435, column: 24, scope: !5330)
!5362 = !DILocation(line: 435, column: 9, scope: !5330)
!5363 = !DILocation(line: 435, column: 7, scope: !5330)
!5364 = !DILocation(line: 436, column: 7, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 436, column: 6)
!5366 = !DILocation(line: 436, column: 6, scope: !5330)
!5367 = !DILocation(line: 437, column: 3, scope: !5365)
!5368 = !DILocation(line: 439, column: 24, scope: !5330)
!5369 = !DILocation(line: 439, column: 34, scope: !5330)
!5370 = !DILocation(line: 439, column: 16, scope: !5330)
!5371 = !DILocation(line: 439, column: 2, scope: !5330)
!5372 = !DILocation(line: 439, column: 8, scope: !5330)
!5373 = !DILocation(line: 439, column: 14, scope: !5330)
!5374 = !DILocation(line: 440, column: 7, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 440, column: 6)
!5376 = !DILocation(line: 440, column: 13, scope: !5375)
!5377 = !DILocation(line: 440, column: 6, scope: !5330)
!5378 = !DILocation(line: 441, column: 9, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 440, column: 20)
!5380 = !DILocation(line: 441, column: 3, scope: !5379)
!5381 = !DILocation(line: 442, column: 3, scope: !5379)
!5382 = !DILocation(line: 446, column: 9, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 446, column: 2)
!5384 = !DILocation(line: 446, column: 20, scope: !5383)
!5385 = !DILocation(line: 446, column: 27, scope: !5383)
!5386 = !DILocation(line: 446, column: 18, scope: !5383)
!5387 = !DILocation(line: 446, column: 7, scope: !5383)
!5388 = !DILocation(line: 446, column: 38, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 446, column: 2)
!5390 = !DILocation(line: 446, column: 42, scope: !5389)
!5391 = !DILocation(line: 446, column: 49, scope: !5389)
!5392 = !DILocation(line: 446, column: 40, scope: !5389)
!5393 = !DILocation(line: 446, column: 2, scope: !5383)
!5394 = !DILocation(line: 447, column: 7, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 447, column: 7)
!5396 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 446, column: 72)
!5397 = !DILocation(line: 447, column: 13, scope: !5395)
!5398 = !DILocation(line: 447, column: 11, scope: !5395)
!5399 = !DILocation(line: 447, column: 23, scope: !5395)
!5400 = !DILocation(line: 447, column: 26, scope: !5395)
!5401 = !DILocation(line: 447, column: 33, scope: !5395)
!5402 = !DILocation(line: 447, column: 30, scope: !5395)
!5403 = !DILocation(line: 447, column: 7, scope: !5396)
!5404 = !DILocation(line: 448, column: 21, scope: !5395)
!5405 = !DILocation(line: 448, column: 28, scope: !5395)
!5406 = !DILocation(line: 448, column: 37, scope: !5395)
!5407 = !DILocation(line: 448, column: 43, scope: !5395)
!5408 = !DILocation(line: 448, column: 4, scope: !5395)
!5409 = !DILocation(line: 450, column: 2, scope: !5396)
!5410 = !DILocation(line: 446, column: 61, scope: !5389)
!5411 = !DILocation(line: 446, column: 68, scope: !5389)
!5412 = !DILocation(line: 446, column: 2, scope: !5389)
!5413 = distinct !{!5413, !5393, !5414, !5241, !5242}
!5414 = !DILocation(line: 450, column: 2, scope: !5383)
!5415 = !DILocation(line: 453, column: 9, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 453, column: 2)
!5417 = !DILocation(line: 453, column: 20, scope: !5416)
!5418 = !DILocation(line: 453, column: 18, scope: !5416)
!5419 = !DILocation(line: 453, column: 7, scope: !5416)
!5420 = !DILocation(line: 453, column: 31, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 453, column: 2)
!5422 = !DILocation(line: 453, column: 35, scope: !5421)
!5423 = !DILocation(line: 453, column: 33, scope: !5421)
!5424 = !DILocation(line: 453, column: 2, scope: !5416)
!5425 = !DILocation(line: 454, column: 7, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 454, column: 7)
!5427 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 453, column: 58)
!5428 = !DILocation(line: 454, column: 13, scope: !5426)
!5429 = !DILocation(line: 454, column: 20, scope: !5426)
!5430 = !DILocation(line: 454, column: 11, scope: !5426)
!5431 = !DILocation(line: 454, column: 30, scope: !5426)
!5432 = !DILocation(line: 454, column: 33, scope: !5426)
!5433 = !DILocation(line: 454, column: 40, scope: !5426)
!5434 = !DILocation(line: 454, column: 47, scope: !5426)
!5435 = !DILocation(line: 454, column: 37, scope: !5426)
!5436 = !DILocation(line: 454, column: 7, scope: !5427)
!5437 = !DILocation(line: 455, column: 20, scope: !5426)
!5438 = !DILocation(line: 455, column: 26, scope: !5426)
!5439 = !DILocation(line: 455, column: 32, scope: !5426)
!5440 = !DILocation(line: 456, column: 7, scope: !5426)
!5441 = !DILocation(line: 456, column: 13, scope: !5426)
!5442 = !DILocation(line: 456, column: 19, scope: !5426)
!5443 = !DILocation(line: 455, column: 4, scope: !5426)
!5444 = !DILocation(line: 459, column: 5, scope: !5426)
!5445 = !DILocation(line: 459, column: 12, scope: !5426)
!5446 = !DILocation(line: 459, column: 21, scope: !5426)
!5447 = !DILocation(line: 459, column: 27, scope: !5426)
!5448 = !DILocation(line: 459, column: 33, scope: !5426)
!5449 = !DILocation(line: 459, column: 40, scope: !5426)
!5450 = !DILocation(line: 459, column: 31, scope: !5426)
!5451 = !DILocation(line: 458, column: 4, scope: !5426)
!5452 = !DILocation(line: 458, column: 10, scope: !5426)
!5453 = !DILocation(line: 458, column: 16, scope: !5426)
!5454 = !DILocation(line: 458, column: 19, scope: !5426)
!5455 = !DILocation(line: 460, column: 2, scope: !5427)
!5456 = !DILocation(line: 453, column: 47, scope: !5421)
!5457 = !DILocation(line: 453, column: 54, scope: !5421)
!5458 = !DILocation(line: 453, column: 2, scope: !5421)
!5459 = distinct !{!5459, !5424, !5460, !5241, !5242}
!5460 = !DILocation(line: 460, column: 2, scope: !5416)
!5461 = !DILocation(line: 463, column: 8, scope: !5330)
!5462 = !DILocation(line: 463, column: 15, scope: !5330)
!5463 = !DILocation(line: 463, column: 24, scope: !5330)
!5464 = !DILocation(line: 463, column: 2, scope: !5330)
!5465 = !DILocation(line: 464, column: 8, scope: !5330)
!5466 = !DILocation(line: 464, column: 15, scope: !5330)
!5467 = !DILocation(line: 464, column: 2, scope: !5330)
!5468 = !DILocation(line: 465, column: 19, scope: !5330)
!5469 = !DILocation(line: 465, column: 2, scope: !5330)
!5470 = !DILocation(line: 465, column: 9, scope: !5330)
!5471 = !DILocation(line: 465, column: 17, scope: !5330)
!5472 = !DILocation(line: 467, column: 17, scope: !5330)
!5473 = !DILocation(line: 467, column: 23, scope: !5330)
!5474 = !DILocation(line: 467, column: 2, scope: !5330)
!5475 = !DILocation(line: 468, column: 2, scope: !5330)
!5476 = !DILocation(line: 469, column: 1, scope: !5330)
!5477 = !DISubprogram(name: "kmemdup", scope: !5478, file: !5478, line: 219, type: !5479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5478 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!204, !2614, !352, !205}
!5481 = distinct !DISubprogram(name: "kcalloc", scope: !182, file: !182, line: 666, type: !5482, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5484)
!5482 = !DISubroutineType(types: !5483)
!5483 = !{!204, !352, !352, !205}
!5484 = !{!5485, !5486, !5487}
!5485 = !DILocalVariable(name: "n", arg: 1, scope: !5481, file: !182, line: 666, type: !352)
!5486 = !DILocalVariable(name: "size", arg: 2, scope: !5481, file: !182, line: 666, type: !352)
!5487 = !DILocalVariable(name: "flags", arg: 3, scope: !5481, file: !182, line: 666, type: !205)
!5488 = !DILocation(line: 666, column: 55, scope: !5481)
!5489 = !DILocation(line: 666, column: 65, scope: !5481)
!5490 = !DILocation(line: 666, column: 77, scope: !5481)
!5491 = !DILocation(line: 668, column: 23, scope: !5481)
!5492 = !DILocation(line: 668, column: 26, scope: !5481)
!5493 = !DILocation(line: 668, column: 32, scope: !5481)
!5494 = !DILocation(line: 668, column: 38, scope: !5481)
!5495 = !DILocation(line: 668, column: 9, scope: !5481)
!5496 = !DILocation(line: 668, column: 2, scope: !5481)
!5497 = !DISubprogram(name: "kfree", scope: !182, file: !182, line: 227, type: !5498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{null, !2614}
!5500 = distinct !DISubprogram(name: "free_widget_node", scope: !3, file: !3, line: 311, type: !5501, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5503)
!5501 = !DISubroutineType(types: !5502)
!5502 = !{null, !228, !358}
!5503 = !{!5504, !5505}
!5504 = !DILocalVariable(name: "kobj", arg: 1, scope: !5500, file: !3, line: 311, type: !228)
!5505 = !DILocalVariable(name: "group", arg: 2, scope: !5500, file: !3, line: 312, type: !358)
!5506 = !DILocation(line: 311, column: 46, scope: !5500)
!5507 = !DILocation(line: 312, column: 39, scope: !5500)
!5508 = !DILocation(line: 314, column: 6, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 314, column: 6)
!5510 = !DILocation(line: 314, column: 6, scope: !5500)
!5511 = !DILocation(line: 315, column: 22, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 314, column: 12)
!5513 = !DILocation(line: 315, column: 28, scope: !5512)
!5514 = !DILocation(line: 315, column: 3, scope: !5512)
!5515 = !DILocation(line: 316, column: 15, scope: !5512)
!5516 = !DILocation(line: 316, column: 3, scope: !5512)
!5517 = !DILocation(line: 317, column: 2, scope: !5512)
!5518 = !DILocation(line: 318, column: 1, scope: !5500)
!5519 = distinct !DISubprogram(name: "add_widget_node", scope: !3, file: !3, line: 338, type: !5520, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5522)
!5520 = !DISubroutineType(types: !5521)
!5521 = !{!109, !228, !4918, !358, !4946}
!5522 = !{!5523, !5524, !5525, !5526, !5527, !5528}
!5523 = !DILocalVariable(name: "parent", arg: 1, scope: !5519, file: !3, line: 338, type: !228)
!5524 = !DILocalVariable(name: "nid", arg: 2, scope: !5519, file: !3, line: 338, type: !4918)
!5525 = !DILocalVariable(name: "group", arg: 3, scope: !5519, file: !3, line: 339, type: !358)
!5526 = !DILocalVariable(name: "res", arg: 4, scope: !5519, file: !3, line: 340, type: !4946)
!5527 = !DILocalVariable(name: "kobj", scope: !5519, file: !3, line: 342, type: !228)
!5528 = !DILocalVariable(name: "err", scope: !5519, file: !3, line: 343, type: !109)
!5529 = !DILocation(line: 338, column: 44, scope: !5519)
!5530 = !DILocation(line: 338, column: 62, scope: !5519)
!5531 = !DILocation(line: 339, column: 37, scope: !5519)
!5532 = !DILocation(line: 340, column: 24, scope: !5519)
!5533 = !DILocation(line: 342, column: 2, scope: !5519)
!5534 = !DILocation(line: 342, column: 18, scope: !5519)
!5535 = !DILocation(line: 342, column: 25, scope: !5519)
!5536 = !DILocation(line: 343, column: 2, scope: !5519)
!5537 = !DILocation(line: 343, column: 6, scope: !5519)
!5538 = !DILocation(line: 345, column: 7, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 345, column: 6)
!5540 = !DILocation(line: 345, column: 6, scope: !5519)
!5541 = !DILocation(line: 346, column: 3, scope: !5539)
!5542 = !DILocation(line: 347, column: 15, scope: !5519)
!5543 = !DILocation(line: 347, column: 2, scope: !5519)
!5544 = !DILocation(line: 348, column: 20, scope: !5519)
!5545 = !DILocation(line: 348, column: 26, scope: !5519)
!5546 = !DILocation(line: 348, column: 42, scope: !5519)
!5547 = !DILocation(line: 348, column: 8, scope: !5519)
!5548 = !DILocation(line: 348, column: 6, scope: !5519)
!5549 = !DILocation(line: 349, column: 6, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 349, column: 6)
!5551 = !DILocation(line: 349, column: 10, scope: !5550)
!5552 = !DILocation(line: 349, column: 6, scope: !5519)
!5553 = !DILocation(line: 350, column: 15, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 349, column: 15)
!5555 = !DILocation(line: 350, column: 3, scope: !5554)
!5556 = !DILocation(line: 351, column: 10, scope: !5554)
!5557 = !DILocation(line: 351, column: 3, scope: !5554)
!5558 = !DILocation(line: 353, column: 27, scope: !5519)
!5559 = !DILocation(line: 353, column: 33, scope: !5519)
!5560 = !DILocation(line: 353, column: 8, scope: !5519)
!5561 = !DILocation(line: 353, column: 6, scope: !5519)
!5562 = !DILocation(line: 354, column: 6, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 354, column: 6)
!5564 = !DILocation(line: 354, column: 10, scope: !5563)
!5565 = !DILocation(line: 354, column: 6, scope: !5519)
!5566 = !DILocation(line: 355, column: 15, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 354, column: 15)
!5568 = !DILocation(line: 355, column: 3, scope: !5567)
!5569 = !DILocation(line: 356, column: 10, scope: !5567)
!5570 = !DILocation(line: 356, column: 3, scope: !5567)
!5571 = !DILocation(line: 359, column: 9, scope: !5519)
!5572 = !DILocation(line: 359, column: 3, scope: !5519)
!5573 = !DILocation(line: 359, column: 7, scope: !5519)
!5574 = !DILocation(line: 360, column: 2, scope: !5519)
!5575 = !DILocation(line: 361, column: 1, scope: !5519)
!5576 = !DISubprogram(name: "kobject_uevent", scope: !166, file: !166, line: 214, type: !5577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{!109, !228, !165}
!5579 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 40, type: !4996, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5580)
!5580 = !{!5581, !5582, !5583, !5584, !5585}
!5581 = !DILocalVariable(name: "dev", arg: 1, scope: !5579, file: !3, line: 40, type: !4221)
!5582 = !DILocalVariable(name: "attr", arg: 2, scope: !5579, file: !3, line: 40, type: !4998)
!5583 = !DILocalVariable(name: "buf", arg: 3, scope: !5579, file: !3, line: 40, type: !305)
!5584 = !DILocalVariable(name: "codec", scope: !5579, file: !3, line: 40, type: !207)
!5585 = !DILocalVariable(name: "__mptr", scope: !5586, file: !3, line: 40, type: !204)
!5586 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 40, column: 1)
!5587 = !DILocation(line: 40, column: 1, scope: !5579)
!5588 = !DILocation(line: 40, column: 1, scope: !5586)
!5589 = !DISubprogram(name: "sysfs_emit", scope: !331, file: !331, line: 357, type: !5590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!109, !305, !218, null}
!5592 = distinct !DISubprogram(name: "vendor_id_show", scope: !3, file: !3, line: 41, type: !4996, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5593)
!5593 = !{!5594, !5595, !5596, !5597, !5598}
!5594 = !DILocalVariable(name: "dev", arg: 1, scope: !5592, file: !3, line: 41, type: !4221)
!5595 = !DILocalVariable(name: "attr", arg: 2, scope: !5592, file: !3, line: 41, type: !4998)
!5596 = !DILocalVariable(name: "buf", arg: 3, scope: !5592, file: !3, line: 41, type: !305)
!5597 = !DILocalVariable(name: "codec", scope: !5592, file: !3, line: 41, type: !207)
!5598 = !DILocalVariable(name: "__mptr", scope: !5599, file: !3, line: 41, type: !204)
!5599 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 41, column: 1)
!5600 = !DILocation(line: 41, column: 1, scope: !5592)
!5601 = !DILocation(line: 41, column: 1, scope: !5599)
!5602 = distinct !DISubprogram(name: "subsystem_id_show", scope: !3, file: !3, line: 42, type: !4996, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5603)
!5603 = !{!5604, !5605, !5606, !5607, !5608}
!5604 = !DILocalVariable(name: "dev", arg: 1, scope: !5602, file: !3, line: 42, type: !4221)
!5605 = !DILocalVariable(name: "attr", arg: 2, scope: !5602, file: !3, line: 42, type: !4998)
!5606 = !DILocalVariable(name: "buf", arg: 3, scope: !5602, file: !3, line: 42, type: !305)
!5607 = !DILocalVariable(name: "codec", scope: !5602, file: !3, line: 42, type: !207)
!5608 = !DILocalVariable(name: "__mptr", scope: !5609, file: !3, line: 42, type: !204)
!5609 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 42, column: 1)
!5610 = !DILocation(line: 42, column: 1, scope: !5602)
!5611 = !DILocation(line: 42, column: 1, scope: !5609)
!5612 = distinct !DISubprogram(name: "revision_id_show", scope: !3, file: !3, line: 43, type: !4996, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5613)
!5613 = !{!5614, !5615, !5616, !5617, !5618}
!5614 = !DILocalVariable(name: "dev", arg: 1, scope: !5612, file: !3, line: 43, type: !4221)
!5615 = !DILocalVariable(name: "attr", arg: 2, scope: !5612, file: !3, line: 43, type: !4998)
!5616 = !DILocalVariable(name: "buf", arg: 3, scope: !5612, file: !3, line: 43, type: !305)
!5617 = !DILocalVariable(name: "codec", scope: !5612, file: !3, line: 43, type: !207)
!5618 = !DILocalVariable(name: "__mptr", scope: !5619, file: !3, line: 43, type: !204)
!5619 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 43, column: 1)
!5620 = !DILocation(line: 43, column: 1, scope: !5612)
!5621 = !DILocation(line: 43, column: 1, scope: !5619)
!5622 = distinct !DISubprogram(name: "afg_show", scope: !3, file: !3, line: 44, type: !4996, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5623)
!5623 = !{!5624, !5625, !5626, !5627, !5628}
!5624 = !DILocalVariable(name: "dev", arg: 1, scope: !5622, file: !3, line: 44, type: !4221)
!5625 = !DILocalVariable(name: "attr", arg: 2, scope: !5622, file: !3, line: 44, type: !4998)
!5626 = !DILocalVariable(name: "buf", arg: 3, scope: !5622, file: !3, line: 44, type: !305)
!5627 = !DILocalVariable(name: "codec", scope: !5622, file: !3, line: 44, type: !207)
!5628 = !DILocalVariable(name: "__mptr", scope: !5629, file: !3, line: 44, type: !204)
!5629 = distinct !DILexicalBlock(scope: !5622, file: !3, line: 44, column: 1)
!5630 = !DILocation(line: 44, column: 1, scope: !5622)
!5631 = !DILocation(line: 44, column: 1, scope: !5629)
!5632 = distinct !DISubprogram(name: "mfg_show", scope: !3, file: !3, line: 45, type: !4996, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5633)
!5633 = !{!5634, !5635, !5636, !5637, !5638}
!5634 = !DILocalVariable(name: "dev", arg: 1, scope: !5632, file: !3, line: 45, type: !4221)
!5635 = !DILocalVariable(name: "attr", arg: 2, scope: !5632, file: !3, line: 45, type: !4998)
!5636 = !DILocalVariable(name: "buf", arg: 3, scope: !5632, file: !3, line: 45, type: !305)
!5637 = !DILocalVariable(name: "codec", scope: !5632, file: !3, line: 45, type: !207)
!5638 = !DILocalVariable(name: "__mptr", scope: !5639, file: !3, line: 45, type: !204)
!5639 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 45, column: 1)
!5640 = !DILocation(line: 45, column: 1, scope: !5632)
!5641 = !DILocation(line: 45, column: 1, scope: !5639)
!5642 = distinct !DISubprogram(name: "vendor_name_show", scope: !3, file: !3, line: 46, type: !4996, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5643)
!5643 = !{!5644, !5645, !5646, !5647, !5648}
!5644 = !DILocalVariable(name: "dev", arg: 1, scope: !5642, file: !3, line: 46, type: !4221)
!5645 = !DILocalVariable(name: "attr", arg: 2, scope: !5642, file: !3, line: 46, type: !4998)
!5646 = !DILocalVariable(name: "buf", arg: 3, scope: !5642, file: !3, line: 46, type: !305)
!5647 = !DILocalVariable(name: "codec", scope: !5642, file: !3, line: 46, type: !207)
!5648 = !DILocalVariable(name: "__mptr", scope: !5649, file: !3, line: 46, type: !204)
!5649 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 46, column: 1)
!5650 = !DILocation(line: 46, column: 1, scope: !5642)
!5651 = !DILocation(line: 46, column: 1, scope: !5649)
!5652 = distinct !DISubprogram(name: "chip_name_show", scope: !3, file: !3, line: 47, type: !4996, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5653)
!5653 = !{!5654, !5655, !5656, !5657, !5658}
!5654 = !DILocalVariable(name: "dev", arg: 1, scope: !5652, file: !3, line: 47, type: !4221)
!5655 = !DILocalVariable(name: "attr", arg: 2, scope: !5652, file: !3, line: 47, type: !4998)
!5656 = !DILocalVariable(name: "buf", arg: 3, scope: !5652, file: !3, line: 47, type: !305)
!5657 = !DILocalVariable(name: "codec", scope: !5652, file: !3, line: 47, type: !207)
!5658 = !DILocalVariable(name: "__mptr", scope: !5659, file: !3, line: 47, type: !204)
!5659 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 47, column: 1)
!5660 = !DILocation(line: 47, column: 1, scope: !5652)
!5661 = !DILocation(line: 47, column: 1, scope: !5659)
!5662 = distinct !DISubprogram(name: "modalias_show", scope: !3, file: !3, line: 49, type: !4996, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5663)
!5663 = !{!5664, !5665, !5666, !5667}
!5664 = !DILocalVariable(name: "dev", arg: 1, scope: !5662, file: !3, line: 49, type: !4221)
!5665 = !DILocalVariable(name: "attr", arg: 2, scope: !5662, file: !3, line: 49, type: !4998)
!5666 = !DILocalVariable(name: "buf", arg: 3, scope: !5662, file: !3, line: 50, type: !305)
!5667 = !DILocalVariable(name: "__mptr", scope: !5668, file: !3, line: 52, type: !204)
!5668 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 52, column: 33)
!5669 = !DILocation(line: 49, column: 45, scope: !5662)
!5670 = !DILocation(line: 49, column: 75, scope: !5662)
!5671 = !DILocation(line: 50, column: 15, scope: !5662)
!5672 = !DILocation(line: 52, column: 33, scope: !5668)
!5673 = !DILocation(line: 52, column: 33, scope: !5662)
!5674 = !DILocation(line: 52, column: 55, scope: !5662)
!5675 = !DILocation(line: 52, column: 9, scope: !5662)
!5676 = !DILocation(line: 52, column: 2, scope: !5662)
!5677 = !DISubprogram(name: "snd_hdac_codec_modalias", scope: !209, file: !209, line: 127, type: !5678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{!109, !5680, !305, !352}
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5681, size: 64)
!5681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!5682 = distinct !DISubprogram(name: "kzalloc", scope: !182, file: !182, line: 719, type: !5683, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5685)
!5683 = !DISubroutineType(types: !5684)
!5684 = !{!204, !352, !205}
!5685 = !{!5686, !5687}
!5686 = !DILocalVariable(name: "size", arg: 1, scope: !5682, file: !182, line: 719, type: !352)
!5687 = !DILocalVariable(name: "flags", arg: 2, scope: !5682, file: !182, line: 719, type: !205)
!5688 = !DILocation(line: 719, column: 52, scope: !5682)
!5689 = !DILocation(line: 719, column: 64, scope: !5682)
!5690 = !DILocation(line: 721, column: 17, scope: !5682)
!5691 = !DILocation(line: 721, column: 23, scope: !5682)
!5692 = !DILocation(line: 721, column: 29, scope: !5682)
!5693 = !DILocation(line: 721, column: 9, scope: !5682)
!5694 = !DILocation(line: 721, column: 2, scope: !5682)
!5695 = !DISubprogram(name: "kobject_create_and_add", scope: !166, file: !166, line: 103, type: !5696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{!228, !218, !228}
!5698 = distinct !DISubprogram(name: "kmalloc", scope: !182, file: !182, line: 591, type: !5683, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5699)
!5699 = !{!5700, !5701, !5702}
!5700 = !DILocalVariable(name: "size", arg: 1, scope: !5698, file: !182, line: 591, type: !352)
!5701 = !DILocalVariable(name: "flags", arg: 2, scope: !5698, file: !182, line: 591, type: !205)
!5702 = !DILocalVariable(name: "index", scope: !5703, file: !182, line: 594, type: !7)
!5703 = distinct !DILexicalBlock(scope: !5704, file: !182, line: 593, column: 42)
!5704 = distinct !DILexicalBlock(scope: !5698, file: !182, line: 593, column: 6)
!5705 = !DILocation(line: 591, column: 61, scope: !5698)
!5706 = !DILocation(line: 591, column: 73, scope: !5698)
!5707 = !DILocation(line: 593, column: 27, scope: !5704)
!5708 = !DILocation(line: 593, column: 6, scope: !5704)
!5709 = !DILocation(line: 593, column: 33, scope: !5704)
!5710 = !DILocation(line: 593, column: 36, scope: !5704)
!5711 = !DILocation(line: 593, column: 6, scope: !5698)
!5712 = !DILocation(line: 594, column: 3, scope: !5703)
!5713 = !DILocation(line: 594, column: 16, scope: !5703)
!5714 = !DILocation(line: 596, column: 7, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5703, file: !182, line: 596, column: 7)
!5716 = !DILocation(line: 596, column: 12, scope: !5715)
!5717 = !DILocation(line: 596, column: 7, scope: !5703)
!5718 = !DILocation(line: 597, column: 25, scope: !5715)
!5719 = !DILocation(line: 597, column: 31, scope: !5715)
!5720 = !DILocation(line: 597, column: 11, scope: !5715)
!5721 = !DILocation(line: 597, column: 4, scope: !5715)
!5722 = !DILocation(line: 599, column: 11, scope: !5703)
!5723 = !DILocation(line: 599, column: 9, scope: !5703)
!5724 = !DILocation(line: 601, column: 33, scope: !5703)
!5725 = !DILocation(line: 601, column: 40, scope: !5703)
!5726 = !DILocation(line: 601, column: 20, scope: !5703)
!5727 = !DILocation(line: 601, column: 5, scope: !5703)
!5728 = !DILocation(line: 601, column: 51, scope: !5703)
!5729 = !DILocation(line: 602, column: 5, scope: !5703)
!5730 = !DILocation(line: 602, column: 12, scope: !5703)
!5731 = !DILocation(line: 600, column: 10, scope: !5703)
!5732 = !DILocation(line: 600, column: 3, scope: !5703)
!5733 = !DILocation(line: 603, column: 2, scope: !5704)
!5734 = !DILocation(line: 604, column: 19, scope: !5698)
!5735 = !DILocation(line: 604, column: 25, scope: !5698)
!5736 = !DILocation(line: 604, column: 9, scope: !5698)
!5737 = !DILocation(line: 604, column: 2, scope: !5698)
!5738 = !DILocation(line: 605, column: 1, scope: !5698)
!5739 = !DISubprogram(name: "kmalloc_large", scope: !182, file: !182, line: 531, type: !5683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5740 = distinct !DISubprogram(name: "__kmalloc_index", scope: !182, file: !182, line: 444, type: !5741, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5743)
!5741 = !DISubroutineType(types: !5742)
!5742 = !{!7, !352, !726}
!5743 = !{!5744, !5745}
!5744 = !DILocalVariable(name: "size", arg: 1, scope: !5740, file: !182, line: 444, type: !352)
!5745 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5740, file: !182, line: 445, type: !726)
!5746 = !DILocation(line: 444, column: 60, scope: !5740)
!5747 = !DILocation(line: 445, column: 16, scope: !5740)
!5748 = !DILocation(line: 447, column: 7, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 447, column: 6)
!5750 = !DILocation(line: 447, column: 6, scope: !5740)
!5751 = !DILocation(line: 448, column: 3, scope: !5749)
!5752 = !DILocation(line: 450, column: 6, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 450, column: 6)
!5754 = !DILocation(line: 450, column: 11, scope: !5753)
!5755 = !DILocation(line: 450, column: 6, scope: !5740)
!5756 = !DILocation(line: 451, column: 3, scope: !5753)
!5757 = !DILocation(line: 453, column: 32, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 453, column: 6)
!5759 = !DILocation(line: 453, column: 37, scope: !5758)
!5760 = !DILocation(line: 453, column: 42, scope: !5758)
!5761 = !DILocation(line: 453, column: 45, scope: !5758)
!5762 = !DILocation(line: 453, column: 50, scope: !5758)
!5763 = !DILocation(line: 453, column: 6, scope: !5740)
!5764 = !DILocation(line: 454, column: 3, scope: !5758)
!5765 = !DILocation(line: 455, column: 32, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 455, column: 6)
!5767 = !DILocation(line: 455, column: 37, scope: !5766)
!5768 = !DILocation(line: 455, column: 43, scope: !5766)
!5769 = !DILocation(line: 455, column: 46, scope: !5766)
!5770 = !DILocation(line: 455, column: 51, scope: !5766)
!5771 = !DILocation(line: 455, column: 6, scope: !5740)
!5772 = !DILocation(line: 456, column: 3, scope: !5766)
!5773 = !DILocation(line: 457, column: 6, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 457, column: 6)
!5775 = !DILocation(line: 457, column: 11, scope: !5774)
!5776 = !DILocation(line: 457, column: 6, scope: !5740)
!5777 = !DILocation(line: 457, column: 26, scope: !5774)
!5778 = !DILocation(line: 458, column: 6, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 458, column: 6)
!5780 = !DILocation(line: 458, column: 11, scope: !5779)
!5781 = !DILocation(line: 458, column: 6, scope: !5740)
!5782 = !DILocation(line: 458, column: 26, scope: !5779)
!5783 = !DILocation(line: 459, column: 6, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 459, column: 6)
!5785 = !DILocation(line: 459, column: 11, scope: !5784)
!5786 = !DILocation(line: 459, column: 6, scope: !5740)
!5787 = !DILocation(line: 459, column: 26, scope: !5784)
!5788 = !DILocation(line: 460, column: 6, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 460, column: 6)
!5790 = !DILocation(line: 460, column: 11, scope: !5789)
!5791 = !DILocation(line: 460, column: 6, scope: !5740)
!5792 = !DILocation(line: 460, column: 26, scope: !5789)
!5793 = !DILocation(line: 461, column: 6, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 461, column: 6)
!5795 = !DILocation(line: 461, column: 11, scope: !5794)
!5796 = !DILocation(line: 461, column: 6, scope: !5740)
!5797 = !DILocation(line: 461, column: 26, scope: !5794)
!5798 = !DILocation(line: 462, column: 6, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 462, column: 6)
!5800 = !DILocation(line: 462, column: 11, scope: !5799)
!5801 = !DILocation(line: 462, column: 6, scope: !5740)
!5802 = !DILocation(line: 462, column: 26, scope: !5799)
!5803 = !DILocation(line: 463, column: 6, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 463, column: 6)
!5805 = !DILocation(line: 463, column: 11, scope: !5804)
!5806 = !DILocation(line: 463, column: 6, scope: !5740)
!5807 = !DILocation(line: 463, column: 26, scope: !5804)
!5808 = !DILocation(line: 464, column: 6, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 464, column: 6)
!5810 = !DILocation(line: 464, column: 11, scope: !5809)
!5811 = !DILocation(line: 464, column: 6, scope: !5740)
!5812 = !DILocation(line: 464, column: 26, scope: !5809)
!5813 = !DILocation(line: 465, column: 6, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 465, column: 6)
!5815 = !DILocation(line: 465, column: 11, scope: !5814)
!5816 = !DILocation(line: 465, column: 6, scope: !5740)
!5817 = !DILocation(line: 465, column: 26, scope: !5814)
!5818 = !DILocation(line: 466, column: 6, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 466, column: 6)
!5820 = !DILocation(line: 466, column: 11, scope: !5819)
!5821 = !DILocation(line: 466, column: 6, scope: !5740)
!5822 = !DILocation(line: 466, column: 26, scope: !5819)
!5823 = !DILocation(line: 467, column: 6, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 467, column: 6)
!5825 = !DILocation(line: 467, column: 11, scope: !5824)
!5826 = !DILocation(line: 467, column: 6, scope: !5740)
!5827 = !DILocation(line: 467, column: 26, scope: !5824)
!5828 = !DILocation(line: 468, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 468, column: 6)
!5830 = !DILocation(line: 468, column: 11, scope: !5829)
!5831 = !DILocation(line: 468, column: 6, scope: !5740)
!5832 = !DILocation(line: 468, column: 26, scope: !5829)
!5833 = !DILocation(line: 469, column: 6, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 469, column: 6)
!5835 = !DILocation(line: 469, column: 11, scope: !5834)
!5836 = !DILocation(line: 469, column: 6, scope: !5740)
!5837 = !DILocation(line: 469, column: 26, scope: !5834)
!5838 = !DILocation(line: 470, column: 6, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 470, column: 6)
!5840 = !DILocation(line: 470, column: 11, scope: !5839)
!5841 = !DILocation(line: 470, column: 6, scope: !5740)
!5842 = !DILocation(line: 470, column: 26, scope: !5839)
!5843 = !DILocation(line: 471, column: 6, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 471, column: 6)
!5845 = !DILocation(line: 471, column: 11, scope: !5844)
!5846 = !DILocation(line: 471, column: 6, scope: !5740)
!5847 = !DILocation(line: 471, column: 26, scope: !5844)
!5848 = !DILocation(line: 472, column: 6, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 472, column: 6)
!5850 = !DILocation(line: 472, column: 11, scope: !5849)
!5851 = !DILocation(line: 472, column: 6, scope: !5740)
!5852 = !DILocation(line: 472, column: 26, scope: !5849)
!5853 = !DILocation(line: 473, column: 6, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 473, column: 6)
!5855 = !DILocation(line: 473, column: 11, scope: !5854)
!5856 = !DILocation(line: 473, column: 6, scope: !5740)
!5857 = !DILocation(line: 473, column: 26, scope: !5854)
!5858 = !DILocation(line: 474, column: 6, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 474, column: 6)
!5860 = !DILocation(line: 474, column: 11, scope: !5859)
!5861 = !DILocation(line: 474, column: 6, scope: !5740)
!5862 = !DILocation(line: 474, column: 27, scope: !5859)
!5863 = !DILocation(line: 475, column: 6, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 475, column: 6)
!5865 = !DILocation(line: 475, column: 11, scope: !5864)
!5866 = !DILocation(line: 475, column: 6, scope: !5740)
!5867 = !DILocation(line: 475, column: 32, scope: !5864)
!5868 = !DILocation(line: 477, column: 50, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5740, file: !182, line: 477, column: 6)
!5870 = !{i8 0, i8 2}
!5871 = !DILocation(line: 477, column: 6, scope: !5740)
!5872 = !DILocation(line: 478, column: 3, scope: !5869)
!5873 = !DILocation(line: 478, column: 3, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5875, file: !182, line: 478, column: 3)
!5875 = distinct !DILexicalBlock(scope: !5869, file: !182, line: 478, column: 3)
!5876 = !{i32 -2143551744}
!5877 = !DILocation(line: 478, column: 3, scope: !5875)
!5878 = !DILocation(line: 480, column: 3, scope: !5869)
!5879 = !DILocation(line: 480, column: 3, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5869, file: !182, line: 480, column: 3)
!5881 = !DILocation(line: 480, column: 3, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5880, file: !182, line: 480, column: 3)
!5883 = !DILocation(line: 480, column: 3, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5880, file: !182, line: 480, column: 3)
!5885 = !{i64 2151415755, i64 2151415784, i64 2151415830, i64 2151415888, i64 2151415942, i64 2151415996, i64 2151416051, i64 2151416082}
!5886 = !DILocation(line: 483, column: 2, scope: !5740)
!5887 = !DILocation(line: 484, column: 1, scope: !5740)
!5888 = !DISubprogram(name: "kmalloc_trace", scope: !182, file: !182, line: 525, type: !5889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{!204, !5891, !205, !352}
!5891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5892, size: 64)
!5892 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5893, line: 11, flags: DIFlagFwdDecl)
!5893 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5894 = distinct !DISubprogram(name: "kmalloc_type", scope: !182, file: !182, line: 401, type: !5895, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5897)
!5895 = !DISubroutineType(types: !5896)
!5896 = !{!181, !205, !355}
!5897 = !{!5898, !5899}
!5898 = !DILocalVariable(name: "flags", arg: 1, scope: !5894, file: !182, line: 401, type: !205)
!5899 = !DILocalVariable(name: "caller", arg: 2, scope: !5894, file: !182, line: 401, type: !355)
!5900 = !DILocation(line: 401, column: 67, scope: !5894)
!5901 = !DILocation(line: 401, column: 88, scope: !5894)
!5902 = !DILocation(line: 407, column: 6, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5894, file: !182, line: 407, column: 6)
!5904 = !DILocation(line: 407, column: 6, scope: !5894)
!5905 = !DILocation(line: 413, column: 3, scope: !5903)
!5906 = !DILocation(line: 423, column: 38, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5894, file: !182, line: 423, column: 6)
!5908 = !DILocation(line: 423, column: 44, scope: !5907)
!5909 = !DILocation(line: 423, column: 6, scope: !5894)
!5910 = !DILocation(line: 424, column: 3, scope: !5907)
!5911 = !DILocation(line: 426, column: 3, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5894, file: !182, line: 425, column: 6)
!5913 = !DILocation(line: 429, column: 1, scope: !5894)
!5914 = !DISubprogram(name: "__kmalloc", scope: !182, file: !182, line: 488, type: !5683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5915 = !DISubprogram(name: "__compiletime_assert_117", scope: !182, file: !182, line: 478, type: !1011, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5916 = distinct !DISubprogram(name: "pcm_caps_show", scope: !3, file: !3, line: 201, type: !4969, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5917)
!5917 = !{!5918, !5919, !5920, !5921}
!5918 = !DILocalVariable(name: "codec", arg: 1, scope: !5916, file: !3, line: 201, type: !207)
!5919 = !DILocalVariable(name: "nid", arg: 2, scope: !5916, file: !3, line: 201, type: !4918)
!5920 = !DILocalVariable(name: "attr", arg: 3, scope: !5916, file: !3, line: 202, type: !4963)
!5921 = !DILocalVariable(name: "buf", arg: 4, scope: !5916, file: !3, line: 202, type: !305)
!5922 = !DILocation(line: 201, column: 50, scope: !5916)
!5923 = !DILocation(line: 201, column: 67, scope: !5916)
!5924 = !DILocation(line: 202, column: 34, scope: !5916)
!5925 = !DILocation(line: 202, column: 46, scope: !5916)
!5926 = !DILocation(line: 204, column: 19, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 204, column: 6)
!5928 = !DILocation(line: 204, column: 26, scope: !5927)
!5929 = !DILocation(line: 204, column: 7, scope: !5927)
!5930 = !DILocation(line: 204, column: 6, scope: !5916)
!5931 = !DILocation(line: 205, column: 3, scope: !5927)
!5932 = !DILocation(line: 206, column: 20, scope: !5916)
!5933 = !DILocation(line: 207, column: 25, scope: !5916)
!5934 = !DILocation(line: 207, column: 32, scope: !5916)
!5935 = !DILocation(line: 207, column: 6, scope: !5916)
!5936 = !DILocation(line: 206, column: 9, scope: !5916)
!5937 = !DILocation(line: 206, column: 2, scope: !5916)
!5938 = !DILocation(line: 208, column: 1, scope: !5916)
!5939 = distinct !DISubprogram(name: "has_pcm_cap", scope: !3, file: !3, line: 188, type: !5940, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5942)
!5940 = !DISubroutineType(types: !5941)
!5941 = !{!726, !207, !4918}
!5942 = !{!5943, !5944}
!5943 = !DILocalVariable(name: "codec", arg: 1, scope: !5939, file: !3, line: 188, type: !207)
!5944 = !DILocalVariable(name: "nid", arg: 2, scope: !5939, file: !3, line: 188, type: !4918)
!5945 = !DILocation(line: 188, column: 45, scope: !5939)
!5946 = !DILocation(line: 188, column: 62, scope: !5939)
!5947 = !DILocation(line: 190, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 190, column: 6)
!5949 = !DILocation(line: 190, column: 13, scope: !5948)
!5950 = !DILocation(line: 190, column: 20, scope: !5948)
!5951 = !DILocation(line: 190, column: 10, scope: !5948)
!5952 = !DILocation(line: 190, column: 24, scope: !5948)
!5953 = !DILocation(line: 190, column: 27, scope: !5948)
!5954 = !DILocation(line: 190, column: 34, scope: !5948)
!5955 = !DILocation(line: 190, column: 41, scope: !5948)
!5956 = !DILocation(line: 190, column: 31, scope: !5948)
!5957 = !DILocation(line: 190, column: 6, scope: !5939)
!5958 = !DILocation(line: 191, column: 3, scope: !5948)
!5959 = !DILocation(line: 192, column: 25, scope: !5939)
!5960 = !DILocation(line: 192, column: 10, scope: !5939)
!5961 = !DILocation(line: 192, column: 2, scope: !5939)
!5962 = !DILocation(line: 195, column: 3, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 192, column: 49)
!5964 = !DILocation(line: 197, column: 3, scope: !5963)
!5965 = !DILocation(line: 199, column: 1, scope: !5939)
!5966 = distinct !DISubprogram(name: "snd_hdac_read_parm", scope: !209, file: !209, line: 170, type: !5331, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5967)
!5967 = !{!5968, !5969, !5970, !5971}
!5968 = !DILocalVariable(name: "codec", arg: 1, scope: !5966, file: !209, line: 170, type: !207)
!5969 = !DILocalVariable(name: "nid", arg: 2, scope: !5966, file: !209, line: 170, type: !4918)
!5970 = !DILocalVariable(name: "parm", arg: 3, scope: !5966, file: !209, line: 171, type: !109)
!5971 = !DILocalVariable(name: "val", scope: !5966, file: !209, line: 173, type: !7)
!5972 = !DILocation(line: 170, column: 58, scope: !5966)
!5973 = !DILocation(line: 170, column: 75, scope: !5966)
!5974 = !DILocation(line: 171, column: 14, scope: !5966)
!5975 = !DILocation(line: 173, column: 2, scope: !5966)
!5976 = !DILocation(line: 173, column: 15, scope: !5966)
!5977 = !DILocation(line: 175, column: 29, scope: !5966)
!5978 = !DILocation(line: 175, column: 36, scope: !5966)
!5979 = !DILocation(line: 175, column: 41, scope: !5966)
!5980 = !DILocation(line: 175, column: 9, scope: !5966)
!5981 = !DILocation(line: 175, column: 53, scope: !5966)
!5982 = !DILocation(line: 175, column: 64, scope: !5966)
!5983 = !DILocation(line: 176, column: 1, scope: !5966)
!5984 = !DILocation(line: 175, column: 2, scope: !5966)
!5985 = distinct !DISubprogram(name: "get_wcaps_type", scope: !5986, file: !5986, line: 13, type: !5987, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5989)
!5986 = !DIFile(filename: "sound/hda/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bce2a319d6874fd9f98f491157f60fc4")
!5987 = !DISubroutineType(types: !5988)
!5988 = !{!109, !7}
!5989 = !{!5990}
!5990 = !DILocalVariable(name: "wcaps", arg: 1, scope: !5985, file: !5986, line: 13, type: !7)
!5991 = !DILocation(line: 13, column: 47, scope: !5985)
!5992 = !DILocation(line: 15, column: 7, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5985, file: !5986, line: 15, column: 6)
!5994 = !DILocation(line: 15, column: 6, scope: !5985)
!5995 = !DILocation(line: 16, column: 3, scope: !5993)
!5996 = !DILocation(line: 17, column: 10, scope: !5985)
!5997 = !DILocation(line: 17, column: 16, scope: !5985)
!5998 = !DILocation(line: 17, column: 32, scope: !5985)
!5999 = !DILocation(line: 17, column: 2, scope: !5985)
!6000 = !DILocation(line: 18, column: 1, scope: !5985)
!6001 = !DISubprogram(name: "_snd_hdac_read_parm", scope: !209, file: !209, line: 133, type: !6002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6002 = !DISubroutineType(types: !6003)
!6003 = !{!109, !207, !4918, !109, !718}
!6004 = distinct !DISubprogram(name: "pcm_formats_show", scope: !3, file: !3, line: 210, type: !4969, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6005)
!6005 = !{!6006, !6007, !6008, !6009}
!6006 = !DILocalVariable(name: "codec", arg: 1, scope: !6004, file: !3, line: 210, type: !207)
!6007 = !DILocalVariable(name: "nid", arg: 2, scope: !6004, file: !3, line: 210, type: !4918)
!6008 = !DILocalVariable(name: "attr", arg: 3, scope: !6004, file: !3, line: 211, type: !4963)
!6009 = !DILocalVariable(name: "buf", arg: 4, scope: !6004, file: !3, line: 211, type: !305)
!6010 = !DILocation(line: 210, column: 53, scope: !6004)
!6011 = !DILocation(line: 210, column: 70, scope: !6004)
!6012 = !DILocation(line: 211, column: 30, scope: !6004)
!6013 = !DILocation(line: 211, column: 42, scope: !6004)
!6014 = !DILocation(line: 213, column: 19, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 213, column: 6)
!6016 = !DILocation(line: 213, column: 26, scope: !6015)
!6017 = !DILocation(line: 213, column: 7, scope: !6015)
!6018 = !DILocation(line: 213, column: 6, scope: !6004)
!6019 = !DILocation(line: 214, column: 3, scope: !6015)
!6020 = !DILocation(line: 215, column: 20, scope: !6004)
!6021 = !DILocation(line: 216, column: 25, scope: !6004)
!6022 = !DILocation(line: 216, column: 32, scope: !6004)
!6023 = !DILocation(line: 216, column: 6, scope: !6004)
!6024 = !DILocation(line: 215, column: 9, scope: !6004)
!6025 = !DILocation(line: 215, column: 2, scope: !6004)
!6026 = !DILocation(line: 217, column: 1, scope: !6004)
!6027 = distinct !DISubprogram(name: "amp_in_caps_show", scope: !3, file: !3, line: 219, type: !4969, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6028)
!6028 = !{!6029, !6030, !6031, !6032}
!6029 = !DILocalVariable(name: "codec", arg: 1, scope: !6027, file: !3, line: 219, type: !207)
!6030 = !DILocalVariable(name: "nid", arg: 2, scope: !6027, file: !3, line: 219, type: !4918)
!6031 = !DILocalVariable(name: "attr", arg: 3, scope: !6027, file: !3, line: 220, type: !4963)
!6032 = !DILocalVariable(name: "buf", arg: 4, scope: !6027, file: !3, line: 220, type: !305)
!6033 = !DILocation(line: 219, column: 53, scope: !6027)
!6034 = !DILocation(line: 219, column: 70, scope: !6027)
!6035 = !DILocation(line: 220, column: 30, scope: !6027)
!6036 = !DILocation(line: 220, column: 42, scope: !6027)
!6037 = !DILocation(line: 222, column: 6, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 222, column: 6)
!6039 = !DILocation(line: 222, column: 13, scope: !6038)
!6040 = !DILocation(line: 222, column: 20, scope: !6038)
!6041 = !DILocation(line: 222, column: 10, scope: !6038)
!6042 = !DILocation(line: 222, column: 24, scope: !6038)
!6043 = !DILocation(line: 222, column: 29, scope: !6038)
!6044 = !DILocation(line: 222, column: 51, scope: !6038)
!6045 = !DILocation(line: 222, column: 6, scope: !6027)
!6046 = !DILocation(line: 223, column: 3, scope: !6038)
!6047 = !DILocation(line: 224, column: 20, scope: !6027)
!6048 = !DILocation(line: 225, column: 25, scope: !6027)
!6049 = !DILocation(line: 225, column: 32, scope: !6027)
!6050 = !DILocation(line: 225, column: 6, scope: !6027)
!6051 = !DILocation(line: 224, column: 9, scope: !6027)
!6052 = !DILocation(line: 224, column: 2, scope: !6027)
!6053 = !DILocation(line: 226, column: 1, scope: !6027)
!6054 = distinct !DISubprogram(name: "amp_out_caps_show", scope: !3, file: !3, line: 228, type: !4969, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6055)
!6055 = !{!6056, !6057, !6058, !6059}
!6056 = !DILocalVariable(name: "codec", arg: 1, scope: !6054, file: !3, line: 228, type: !207)
!6057 = !DILocalVariable(name: "nid", arg: 2, scope: !6054, file: !3, line: 228, type: !4918)
!6058 = !DILocalVariable(name: "attr", arg: 3, scope: !6054, file: !3, line: 229, type: !4963)
!6059 = !DILocalVariable(name: "buf", arg: 4, scope: !6054, file: !3, line: 229, type: !305)
!6060 = !DILocation(line: 228, column: 54, scope: !6054)
!6061 = !DILocation(line: 228, column: 71, scope: !6054)
!6062 = !DILocation(line: 229, column: 31, scope: !6054)
!6063 = !DILocation(line: 229, column: 43, scope: !6054)
!6064 = !DILocation(line: 231, column: 6, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6054, file: !3, line: 231, column: 6)
!6066 = !DILocation(line: 231, column: 13, scope: !6065)
!6067 = !DILocation(line: 231, column: 20, scope: !6065)
!6068 = !DILocation(line: 231, column: 10, scope: !6065)
!6069 = !DILocation(line: 231, column: 24, scope: !6065)
!6070 = !DILocation(line: 231, column: 29, scope: !6065)
!6071 = !DILocation(line: 231, column: 51, scope: !6065)
!6072 = !DILocation(line: 231, column: 6, scope: !6054)
!6073 = !DILocation(line: 232, column: 3, scope: !6065)
!6074 = !DILocation(line: 233, column: 20, scope: !6054)
!6075 = !DILocation(line: 234, column: 25, scope: !6054)
!6076 = !DILocation(line: 234, column: 32, scope: !6054)
!6077 = !DILocation(line: 234, column: 6, scope: !6054)
!6078 = !DILocation(line: 233, column: 9, scope: !6054)
!6079 = !DILocation(line: 233, column: 2, scope: !6054)
!6080 = !DILocation(line: 235, column: 1, scope: !6054)
!6081 = distinct !DISubprogram(name: "power_caps_show", scope: !3, file: !3, line: 237, type: !4969, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6082)
!6082 = !{!6083, !6084, !6085, !6086}
!6083 = !DILocalVariable(name: "codec", arg: 1, scope: !6081, file: !3, line: 237, type: !207)
!6084 = !DILocalVariable(name: "nid", arg: 2, scope: !6081, file: !3, line: 237, type: !4918)
!6085 = !DILocalVariable(name: "attr", arg: 3, scope: !6081, file: !3, line: 238, type: !4963)
!6086 = !DILocalVariable(name: "buf", arg: 4, scope: !6081, file: !3, line: 238, type: !305)
!6087 = !DILocation(line: 237, column: 52, scope: !6081)
!6088 = !DILocation(line: 237, column: 69, scope: !6081)
!6089 = !DILocation(line: 238, column: 36, scope: !6081)
!6090 = !DILocation(line: 238, column: 48, scope: !6081)
!6091 = !DILocation(line: 240, column: 6, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 240, column: 6)
!6093 = !DILocation(line: 240, column: 13, scope: !6092)
!6094 = !DILocation(line: 240, column: 20, scope: !6092)
!6095 = !DILocation(line: 240, column: 10, scope: !6092)
!6096 = !DILocation(line: 240, column: 24, scope: !6092)
!6097 = !DILocation(line: 240, column: 29, scope: !6092)
!6098 = !DILocation(line: 240, column: 51, scope: !6092)
!6099 = !DILocation(line: 240, column: 6, scope: !6081)
!6100 = !DILocation(line: 241, column: 3, scope: !6092)
!6101 = !DILocation(line: 242, column: 20, scope: !6081)
!6102 = !DILocation(line: 243, column: 25, scope: !6081)
!6103 = !DILocation(line: 243, column: 32, scope: !6081)
!6104 = !DILocation(line: 243, column: 6, scope: !6081)
!6105 = !DILocation(line: 242, column: 9, scope: !6081)
!6106 = !DILocation(line: 242, column: 2, scope: !6081)
!6107 = !DILocation(line: 244, column: 1, scope: !6081)
!6108 = distinct !DISubprogram(name: "gpio_caps_show", scope: !3, file: !3, line: 246, type: !4969, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6109)
!6109 = !{!6110, !6111, !6112, !6113}
!6110 = !DILocalVariable(name: "codec", arg: 1, scope: !6108, file: !3, line: 246, type: !207)
!6111 = !DILocalVariable(name: "nid", arg: 2, scope: !6108, file: !3, line: 246, type: !4918)
!6112 = !DILocalVariable(name: "attr", arg: 3, scope: !6108, file: !3, line: 247, type: !4963)
!6113 = !DILocalVariable(name: "buf", arg: 4, scope: !6108, file: !3, line: 247, type: !305)
!6114 = !DILocation(line: 246, column: 51, scope: !6108)
!6115 = !DILocation(line: 246, column: 68, scope: !6108)
!6116 = !DILocation(line: 247, column: 35, scope: !6108)
!6117 = !DILocation(line: 247, column: 47, scope: !6108)
!6118 = !DILocation(line: 249, column: 20, scope: !6108)
!6119 = !DILocation(line: 250, column: 25, scope: !6108)
!6120 = !DILocation(line: 250, column: 32, scope: !6108)
!6121 = !DILocation(line: 250, column: 6, scope: !6108)
!6122 = !DILocation(line: 249, column: 9, scope: !6108)
!6123 = !DILocation(line: 249, column: 2, scope: !6108)
!6124 = !DISubprogram(name: "kobject_put", scope: !166, file: !166, line: 110, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6125 = distinct !DISubprogram(name: "kmalloc_array", scope: !182, file: !182, line: 629, type: !5482, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6126)
!6126 = !{!6127, !6128, !6129, !6130}
!6127 = !DILocalVariable(name: "n", arg: 1, scope: !6125, file: !182, line: 629, type: !352)
!6128 = !DILocalVariable(name: "size", arg: 2, scope: !6125, file: !182, line: 629, type: !352)
!6129 = !DILocalVariable(name: "flags", arg: 3, scope: !6125, file: !182, line: 629, type: !205)
!6130 = !DILocalVariable(name: "bytes", scope: !6125, file: !182, line: 631, type: !352)
!6131 = !DILocation(line: 629, column: 61, scope: !6125)
!6132 = !DILocation(line: 629, column: 71, scope: !6125)
!6133 = !DILocation(line: 629, column: 83, scope: !6125)
!6134 = !DILocation(line: 631, column: 2, scope: !6125)
!6135 = !DILocation(line: 631, column: 9, scope: !6125)
!6136 = !DILocation(line: 633, column: 6, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6125, file: !182, line: 633, column: 6)
!6138 = !DILocation(line: 633, column: 6, scope: !6125)
!6139 = !DILocation(line: 634, column: 3, scope: !6137)
!6140 = !DILocation(line: 635, column: 27, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6125, file: !182, line: 635, column: 6)
!6142 = !DILocation(line: 635, column: 6, scope: !6141)
!6143 = !DILocation(line: 635, column: 30, scope: !6141)
!6144 = !DILocation(line: 635, column: 54, scope: !6141)
!6145 = !DILocation(line: 635, column: 33, scope: !6141)
!6146 = !DILocation(line: 635, column: 6, scope: !6125)
!6147 = !DILocation(line: 636, column: 18, scope: !6141)
!6148 = !DILocation(line: 636, column: 25, scope: !6141)
!6149 = !DILocation(line: 636, column: 10, scope: !6141)
!6150 = !DILocation(line: 636, column: 3, scope: !6141)
!6151 = !DILocation(line: 637, column: 19, scope: !6125)
!6152 = !DILocation(line: 637, column: 26, scope: !6125)
!6153 = !DILocation(line: 637, column: 9, scope: !6125)
!6154 = !DILocation(line: 637, column: 2, scope: !6125)
!6155 = !DILocation(line: 638, column: 1, scope: !6125)
!6156 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6157, file: !6157, line: 51, type: !6158, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6160)
!6157 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6158 = !DISubroutineType(types: !6159)
!6159 = !{!726, !726}
!6160 = !{!6161}
!6161 = !DILocalVariable(name: "overflow", arg: 1, scope: !6156, file: !6157, line: 51, type: !726)
!6162 = !DILocation(line: 51, column: 60, scope: !6156)
!6163 = !DILocation(line: 53, column: 9, scope: !6156)
!6164 = !DILocation(line: 53, column: 2, scope: !6156)
!6165 = !DISubprogram(name: "sysfs_remove_group", scope: !331, file: !331, line: 315, type: !5501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6166 = distinct !DISubprogram(name: "caps_show", scope: !3, file: !3, line: 161, type: !4969, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6167)
!6167 = !{!6168, !6169, !6170, !6171}
!6168 = !DILocalVariable(name: "codec", arg: 1, scope: !6166, file: !3, line: 161, type: !207)
!6169 = !DILocalVariable(name: "nid", arg: 2, scope: !6166, file: !3, line: 161, type: !4918)
!6170 = !DILocalVariable(name: "attr", arg: 3, scope: !6166, file: !3, line: 162, type: !4963)
!6171 = !DILocalVariable(name: "buf", arg: 4, scope: !6166, file: !3, line: 162, type: !305)
!6172 = !DILocation(line: 161, column: 46, scope: !6166)
!6173 = !DILocation(line: 161, column: 63, scope: !6166)
!6174 = !DILocation(line: 162, column: 29, scope: !6166)
!6175 = !DILocation(line: 162, column: 41, scope: !6166)
!6176 = !DILocation(line: 164, column: 20, scope: !6166)
!6177 = !DILocation(line: 164, column: 37, scope: !6166)
!6178 = !DILocation(line: 164, column: 9, scope: !6166)
!6179 = !DILocation(line: 164, column: 2, scope: !6166)
!6180 = distinct !DISubprogram(name: "pin_caps_show", scope: !3, file: !3, line: 167, type: !4969, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6181)
!6181 = !{!6182, !6183, !6184, !6185}
!6182 = !DILocalVariable(name: "codec", arg: 1, scope: !6180, file: !3, line: 167, type: !207)
!6183 = !DILocalVariable(name: "nid", arg: 2, scope: !6180, file: !3, line: 167, type: !4918)
!6184 = !DILocalVariable(name: "attr", arg: 3, scope: !6180, file: !3, line: 168, type: !4963)
!6185 = !DILocalVariable(name: "buf", arg: 4, scope: !6180, file: !3, line: 168, type: !305)
!6186 = !DILocation(line: 167, column: 50, scope: !6180)
!6187 = !DILocation(line: 167, column: 67, scope: !6180)
!6188 = !DILocation(line: 168, column: 34, scope: !6180)
!6189 = !DILocation(line: 168, column: 46, scope: !6180)
!6190 = !DILocation(line: 170, column: 21, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 170, column: 6)
!6192 = !DILocation(line: 170, column: 6, scope: !6191)
!6193 = !DILocation(line: 170, column: 44, scope: !6191)
!6194 = !DILocation(line: 170, column: 6, scope: !6180)
!6195 = !DILocation(line: 171, column: 3, scope: !6191)
!6196 = !DILocation(line: 172, column: 20, scope: !6180)
!6197 = !DILocation(line: 173, column: 25, scope: !6180)
!6198 = !DILocation(line: 173, column: 32, scope: !6180)
!6199 = !DILocation(line: 173, column: 6, scope: !6180)
!6200 = !DILocation(line: 172, column: 9, scope: !6180)
!6201 = !DILocation(line: 172, column: 2, scope: !6180)
!6202 = !DILocation(line: 174, column: 1, scope: !6180)
!6203 = distinct !DISubprogram(name: "pin_cfg_show", scope: !3, file: !3, line: 176, type: !4969, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6204)
!6204 = !{!6205, !6206, !6207, !6208, !6209}
!6205 = !DILocalVariable(name: "codec", arg: 1, scope: !6203, file: !3, line: 176, type: !207)
!6206 = !DILocalVariable(name: "nid", arg: 2, scope: !6203, file: !3, line: 176, type: !4918)
!6207 = !DILocalVariable(name: "attr", arg: 3, scope: !6203, file: !3, line: 177, type: !4963)
!6208 = !DILocalVariable(name: "buf", arg: 4, scope: !6203, file: !3, line: 177, type: !305)
!6209 = !DILocalVariable(name: "val", scope: !6203, file: !3, line: 179, type: !7)
!6210 = !DILocation(line: 176, column: 49, scope: !6203)
!6211 = !DILocation(line: 176, column: 66, scope: !6203)
!6212 = !DILocation(line: 177, column: 33, scope: !6203)
!6213 = !DILocation(line: 177, column: 45, scope: !6203)
!6214 = !DILocation(line: 179, column: 2, scope: !6203)
!6215 = !DILocation(line: 179, column: 15, scope: !6203)
!6216 = !DILocation(line: 181, column: 21, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6203, file: !3, line: 181, column: 6)
!6218 = !DILocation(line: 181, column: 6, scope: !6217)
!6219 = !DILocation(line: 181, column: 44, scope: !6217)
!6220 = !DILocation(line: 181, column: 6, scope: !6203)
!6221 = !DILocation(line: 182, column: 3, scope: !6217)
!6222 = !DILocation(line: 183, column: 20, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6203, file: !3, line: 183, column: 6)
!6224 = !DILocation(line: 183, column: 27, scope: !6223)
!6225 = !DILocation(line: 183, column: 6, scope: !6223)
!6226 = !DILocation(line: 183, column: 6, scope: !6203)
!6227 = !DILocation(line: 184, column: 3, scope: !6223)
!6228 = !DILocation(line: 185, column: 20, scope: !6203)
!6229 = !DILocation(line: 185, column: 37, scope: !6203)
!6230 = !DILocation(line: 185, column: 9, scope: !6203)
!6231 = !DILocation(line: 185, column: 2, scope: !6203)
!6232 = !DILocation(line: 186, column: 1, scope: !6203)
!6233 = !DISubprogram(name: "snd_hdac_read", scope: !209, file: !209, line: 131, type: !6234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{!109, !207, !4918, !7, !7, !718}
!6236 = distinct !DISubprogram(name: "connections_show", scope: !3, file: !3, line: 253, type: !4969, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6237)
!6237 = !{!6238, !6239, !6240, !6241, !6242, !6244, !6245, !6246}
!6238 = !DILocalVariable(name: "codec", arg: 1, scope: !6236, file: !3, line: 253, type: !207)
!6239 = !DILocalVariable(name: "nid", arg: 2, scope: !6236, file: !3, line: 253, type: !4918)
!6240 = !DILocalVariable(name: "attr", arg: 3, scope: !6236, file: !3, line: 254, type: !4963)
!6241 = !DILocalVariable(name: "buf", arg: 4, scope: !6236, file: !3, line: 254, type: !305)
!6242 = !DILocalVariable(name: "list", scope: !6236, file: !3, line: 256, type: !6243)
!6243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4918, size: 512, elements: !467)
!6244 = !DILocalVariable(name: "i", scope: !6236, file: !3, line: 257, type: !109)
!6245 = !DILocalVariable(name: "nconns", scope: !6236, file: !3, line: 257, type: !109)
!6246 = !DILocalVariable(name: "ret", scope: !6236, file: !3, line: 258, type: !337)
!6247 = !DILocation(line: 253, column: 53, scope: !6236)
!6248 = !DILocation(line: 253, column: 70, scope: !6236)
!6249 = !DILocation(line: 254, column: 30, scope: !6236)
!6250 = !DILocation(line: 254, column: 42, scope: !6236)
!6251 = !DILocation(line: 256, column: 2, scope: !6236)
!6252 = !DILocation(line: 256, column: 12, scope: !6236)
!6253 = !DILocation(line: 257, column: 2, scope: !6236)
!6254 = !DILocation(line: 257, column: 6, scope: !6236)
!6255 = !DILocation(line: 257, column: 9, scope: !6236)
!6256 = !DILocation(line: 258, column: 2, scope: !6236)
!6257 = !DILocation(line: 258, column: 10, scope: !6236)
!6258 = !DILocation(line: 260, column: 36, scope: !6236)
!6259 = !DILocation(line: 260, column: 43, scope: !6236)
!6260 = !DILocation(line: 260, column: 48, scope: !6236)
!6261 = !DILocation(line: 260, column: 11, scope: !6236)
!6262 = !DILocation(line: 260, column: 9, scope: !6236)
!6263 = !DILocation(line: 261, column: 6, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 261, column: 6)
!6265 = !DILocation(line: 261, column: 13, scope: !6264)
!6266 = !DILocation(line: 261, column: 6, scope: !6236)
!6267 = !DILocation(line: 262, column: 10, scope: !6264)
!6268 = !DILocation(line: 262, column: 3, scope: !6264)
!6269 = !DILocation(line: 263, column: 9, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 263, column: 2)
!6271 = !DILocation(line: 263, column: 7, scope: !6270)
!6272 = !DILocation(line: 263, column: 14, scope: !6273)
!6273 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 263, column: 2)
!6274 = !DILocation(line: 263, column: 18, scope: !6273)
!6275 = !DILocation(line: 263, column: 16, scope: !6273)
!6276 = !DILocation(line: 263, column: 2, scope: !6270)
!6277 = !DILocation(line: 264, column: 24, scope: !6273)
!6278 = !DILocation(line: 264, column: 30, scope: !6273)
!6279 = !DILocation(line: 264, column: 47, scope: !6273)
!6280 = !DILocation(line: 264, column: 66, scope: !6273)
!6281 = !DILocation(line: 264, column: 61, scope: !6273)
!6282 = !DILocation(line: 264, column: 10, scope: !6273)
!6283 = !DILocation(line: 264, column: 7, scope: !6273)
!6284 = !DILocation(line: 264, column: 3, scope: !6273)
!6285 = !DILocation(line: 263, column: 27, scope: !6273)
!6286 = !DILocation(line: 263, column: 2, scope: !6273)
!6287 = distinct !{!6287, !6276, !6288, !5241, !5242}
!6288 = !DILocation(line: 264, column: 68, scope: !6270)
!6289 = !DILocation(line: 265, column: 23, scope: !6236)
!6290 = !DILocation(line: 265, column: 28, scope: !6236)
!6291 = !DILocation(line: 265, column: 9, scope: !6236)
!6292 = !DILocation(line: 265, column: 6, scope: !6236)
!6293 = !DILocation(line: 266, column: 9, scope: !6236)
!6294 = !DILocation(line: 266, column: 2, scope: !6236)
!6295 = !DILocation(line: 267, column: 1, scope: !6236)
!6296 = !DISubprogram(name: "snd_hdac_get_connections", scope: !209, file: !209, line: 139, type: !6297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6297 = !DISubroutineType(types: !6298)
!6298 = !{!109, !207, !4918, !6299, !109}
!6299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!6300 = !DISubprogram(name: "sysfs_emit_at", scope: !331, file: !331, line: 359, type: !6301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6301 = !DISubroutineType(types: !6302)
!6302 = !{!109, !305, !109, !218, null}
!6303 = !DISubprogram(name: "kobject_init", scope: !166, file: !166, line: 92, type: !6304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6304 = !DISubroutineType(types: !6305)
!6305 = !{null, !228, !319}
!6306 = !DISubprogram(name: "kobject_add", scope: !166, file: !166, line: 93, type: !6307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6307 = !DISubroutineType(types: !6308)
!6308 = !{!109, !228, !228, !218, null}
!6309 = !DISubprogram(name: "sysfs_create_group", scope: !331, file: !331, line: 307, type: !6310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6310 = !DISubroutineType(types: !6311)
!6311 = !{!109, !228, !358}
!6312 = distinct !DISubprogram(name: "widget_release", scope: !3, file: !3, line: 146, type: !325, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6313)
!6313 = !{!6314}
!6314 = !DILocalVariable(name: "kobj", arg: 1, scope: !6312, file: !3, line: 146, type: !228)
!6315 = !DILocation(line: 146, column: 44, scope: !6312)
!6316 = !DILocation(line: 148, column: 8, scope: !6312)
!6317 = !DILocation(line: 148, column: 2, scope: !6312)
!6318 = !DILocation(line: 149, column: 1, scope: !6312)
!6319 = distinct !DISubprogram(name: "widget_attr_show", scope: !3, file: !3, line: 109, type: !335, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6320)
!6320 = !{!6321, !6322, !6323, !6324, !6325, !6327, !6328}
!6321 = !DILocalVariable(name: "kobj", arg: 1, scope: !6319, file: !3, line: 109, type: !228)
!6322 = !DILocalVariable(name: "attr", arg: 2, scope: !6319, file: !3, line: 109, type: !342)
!6323 = !DILocalVariable(name: "buf", arg: 3, scope: !6319, file: !3, line: 110, type: !305)
!6324 = !DILocalVariable(name: "wid_attr", scope: !6319, file: !3, line: 112, type: !4963)
!6325 = !DILocalVariable(name: "__mptr", scope: !6326, file: !3, line: 113, type: !204)
!6326 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 113, column: 3)
!6327 = !DILocalVariable(name: "codec", scope: !6319, file: !3, line: 114, type: !207)
!6328 = !DILocalVariable(name: "nid", scope: !6319, file: !3, line: 115, type: !109)
!6329 = !DILocation(line: 109, column: 49, scope: !6319)
!6330 = !DILocation(line: 109, column: 73, scope: !6319)
!6331 = !DILocation(line: 110, column: 11, scope: !6319)
!6332 = !DILocation(line: 112, column: 2, scope: !6319)
!6333 = !DILocation(line: 112, column: 27, scope: !6319)
!6334 = !DILocation(line: 113, column: 3, scope: !6326)
!6335 = !DILocation(line: 113, column: 3, scope: !6319)
!6336 = !DILocation(line: 114, column: 2, scope: !6319)
!6337 = !DILocation(line: 114, column: 22, scope: !6319)
!6338 = !DILocation(line: 115, column: 2, scope: !6319)
!6339 = !DILocation(line: 115, column: 6, scope: !6319)
!6340 = !DILocation(line: 117, column: 7, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 117, column: 6)
!6342 = !DILocation(line: 117, column: 17, scope: !6341)
!6343 = !DILocation(line: 117, column: 6, scope: !6319)
!6344 = !DILocation(line: 118, column: 3, scope: !6341)
!6345 = !DILocation(line: 119, column: 22, scope: !6319)
!6346 = !DILocation(line: 119, column: 8, scope: !6319)
!6347 = !DILocation(line: 119, column: 6, scope: !6319)
!6348 = !DILocation(line: 120, column: 6, scope: !6349)
!6349 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 120, column: 6)
!6350 = !DILocation(line: 120, column: 10, scope: !6349)
!6351 = !DILocation(line: 120, column: 6, scope: !6319)
!6352 = !DILocation(line: 121, column: 10, scope: !6349)
!6353 = !DILocation(line: 121, column: 3, scope: !6349)
!6354 = !DILocation(line: 122, column: 9, scope: !6319)
!6355 = !DILocation(line: 122, column: 19, scope: !6319)
!6356 = !DILocation(line: 122, column: 24, scope: !6319)
!6357 = !DILocation(line: 122, column: 31, scope: !6319)
!6358 = !DILocation(line: 122, column: 36, scope: !6319)
!6359 = !DILocation(line: 122, column: 46, scope: !6319)
!6360 = !DILocation(line: 122, column: 2, scope: !6319)
!6361 = !DILocation(line: 123, column: 1, scope: !6319)
!6362 = distinct !DISubprogram(name: "widget_attr_store", scope: !3, file: !3, line: 125, type: !350, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6363)
!6363 = !{!6364, !6365, !6366, !6367, !6368, !6369, !6371, !6372}
!6364 = !DILocalVariable(name: "kobj", arg: 1, scope: !6362, file: !3, line: 125, type: !228)
!6365 = !DILocalVariable(name: "attr", arg: 2, scope: !6362, file: !3, line: 125, type: !342)
!6366 = !DILocalVariable(name: "buf", arg: 3, scope: !6362, file: !3, line: 126, type: !218)
!6367 = !DILocalVariable(name: "count", arg: 4, scope: !6362, file: !3, line: 126, type: !352)
!6368 = !DILocalVariable(name: "wid_attr", scope: !6362, file: !3, line: 128, type: !4963)
!6369 = !DILocalVariable(name: "__mptr", scope: !6370, file: !3, line: 129, type: !204)
!6370 = distinct !DILexicalBlock(scope: !6362, file: !3, line: 129, column: 3)
!6371 = !DILocalVariable(name: "codec", scope: !6362, file: !3, line: 130, type: !207)
!6372 = !DILocalVariable(name: "nid", scope: !6362, file: !3, line: 131, type: !109)
!6373 = !DILocation(line: 125, column: 50, scope: !6362)
!6374 = !DILocation(line: 125, column: 74, scope: !6362)
!6375 = !DILocation(line: 126, column: 18, scope: !6362)
!6376 = !DILocation(line: 126, column: 30, scope: !6362)
!6377 = !DILocation(line: 128, column: 2, scope: !6362)
!6378 = !DILocation(line: 128, column: 27, scope: !6362)
!6379 = !DILocation(line: 129, column: 3, scope: !6370)
!6380 = !DILocation(line: 129, column: 3, scope: !6362)
!6381 = !DILocation(line: 130, column: 2, scope: !6362)
!6382 = !DILocation(line: 130, column: 22, scope: !6362)
!6383 = !DILocation(line: 131, column: 2, scope: !6362)
!6384 = !DILocation(line: 131, column: 6, scope: !6362)
!6385 = !DILocation(line: 133, column: 7, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6362, file: !3, line: 133, column: 6)
!6387 = !DILocation(line: 133, column: 17, scope: !6386)
!6388 = !DILocation(line: 133, column: 6, scope: !6362)
!6389 = !DILocation(line: 134, column: 3, scope: !6386)
!6390 = !DILocation(line: 135, column: 22, scope: !6362)
!6391 = !DILocation(line: 135, column: 8, scope: !6362)
!6392 = !DILocation(line: 135, column: 6, scope: !6362)
!6393 = !DILocation(line: 136, column: 6, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6362, file: !3, line: 136, column: 6)
!6395 = !DILocation(line: 136, column: 10, scope: !6394)
!6396 = !DILocation(line: 136, column: 6, scope: !6362)
!6397 = !DILocation(line: 137, column: 10, scope: !6394)
!6398 = !DILocation(line: 137, column: 3, scope: !6394)
!6399 = !DILocation(line: 138, column: 9, scope: !6362)
!6400 = !DILocation(line: 138, column: 19, scope: !6362)
!6401 = !DILocation(line: 138, column: 25, scope: !6362)
!6402 = !DILocation(line: 138, column: 32, scope: !6362)
!6403 = !DILocation(line: 138, column: 37, scope: !6362)
!6404 = !DILocation(line: 138, column: 47, scope: !6362)
!6405 = !DILocation(line: 138, column: 52, scope: !6362)
!6406 = !DILocation(line: 138, column: 2, scope: !6362)
!6407 = !DILocation(line: 139, column: 1, scope: !6362)
!6408 = distinct !DISubprogram(name: "get_codec_nid", scope: !3, file: !3, line: 96, type: !6409, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6412)
!6409 = !DISubroutineType(types: !6410)
!6410 = !{!109, !228, !6411}
!6411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!6412 = !{!6413, !6414, !6415, !6416, !6418, !6419, !6420}
!6413 = !DILocalVariable(name: "kobj", arg: 1, scope: !6408, file: !3, line: 96, type: !228)
!6414 = !DILocalVariable(name: "codecp", arg: 2, scope: !6408, file: !3, line: 96, type: !6411)
!6415 = !DILocalVariable(name: "dev", scope: !6408, file: !3, line: 98, type: !4221)
!6416 = !DILocalVariable(name: "__mptr", scope: !6417, file: !3, line: 98, type: !204)
!6417 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 98, column: 23)
!6418 = !DILocalVariable(name: "nid", scope: !6408, file: !3, line: 99, type: !109)
!6419 = !DILocalVariable(name: "ret", scope: !6408, file: !3, line: 100, type: !337)
!6420 = !DILocalVariable(name: "__mptr", scope: !6421, file: !3, line: 105, type: !204)
!6421 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 105, column: 12)
!6422 = !DILocation(line: 96, column: 42, scope: !6408)
!6423 = !DILocation(line: 96, column: 69, scope: !6408)
!6424 = !DILocation(line: 98, column: 2, scope: !6408)
!6425 = !DILocation(line: 98, column: 17, scope: !6408)
!6426 = !DILocation(line: 98, column: 23, scope: !6417)
!6427 = !DILocation(line: 98, column: 23, scope: !6408)
!6428 = !DILocation(line: 99, column: 2, scope: !6408)
!6429 = !DILocation(line: 99, column: 6, scope: !6408)
!6430 = !DILocation(line: 100, column: 2, scope: !6408)
!6431 = !DILocation(line: 100, column: 10, scope: !6408)
!6432 = !DILocation(line: 102, column: 18, scope: !6408)
!6433 = !DILocation(line: 102, column: 24, scope: !6408)
!6434 = !DILocation(line: 102, column: 8, scope: !6408)
!6435 = !DILocation(line: 102, column: 6, scope: !6408)
!6436 = !DILocation(line: 103, column: 6, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 103, column: 6)
!6438 = !DILocation(line: 103, column: 10, scope: !6437)
!6439 = !DILocation(line: 103, column: 6, scope: !6408)
!6440 = !DILocation(line: 104, column: 10, scope: !6437)
!6441 = !DILocation(line: 104, column: 3, scope: !6437)
!6442 = !DILocation(line: 105, column: 12, scope: !6421)
!6443 = !DILocation(line: 105, column: 12, scope: !6408)
!6444 = !DILocation(line: 105, column: 3, scope: !6408)
!6445 = !DILocation(line: 105, column: 10, scope: !6408)
!6446 = !DILocation(line: 106, column: 9, scope: !6408)
!6447 = !DILocation(line: 106, column: 2, scope: !6408)
!6448 = !DILocation(line: 107, column: 1, scope: !6408)
!6449 = !DISubprogram(name: "kstrtoint", scope: !6450, file: !6450, line: 72, type: !6451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6450 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6451 = !DISubroutineType(types: !6452)
!6452 = !{!109, !218, !7, !775}
