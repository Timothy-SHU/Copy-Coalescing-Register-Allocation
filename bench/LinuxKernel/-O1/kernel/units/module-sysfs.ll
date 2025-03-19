; ModuleID = 'kernel/module/sysfs.c'
source_filename = "kernel/module/sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [7 x %struct.module_memory], %struct.mod_arch_specific, i64, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_memory = type { ptr, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i64, ptr, ptr }
%struct.mod_arch_specific = type { i32, ptr, ptr }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.module_use = type { %struct.list_head, %struct.list_head, ptr, ptr }
%struct.load_info = type { ptr, ptr, ptr, i64, ptr, ptr, ptr, i64, i64, i64, i64, i8, i64, %struct.anon.13 }
%struct.anon.13 = type { i32, i32, i32, i32, i32, i32 }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.module_sect_attrs = type { %struct.attribute_group, i32, [0 x %struct.module_sect_attr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.module_sect_attr = type { %struct.bin_attribute, i64 }
%struct.bin_attribute = type { %struct.attribute, i64, ptr, ptr, ptr, ptr, ptr }
%struct.module_notes_attrs = type { ptr, i32, [0 x %struct.bin_attribute] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.file = type { %union.anon.14, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.15, %struct.qspinlock }
%union.anon.15 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"holders\00", align 1, !dbg !0
@init_param_lock.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !7
@.str.1 = private unnamed_addr constant [17 x i8] c"&mod->param_lock\00", align 1, !dbg !4070
@module_kset = external dso_local global ptr, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"\013%s: module sysfs not initialized\0A\00", align 1, !dbg !4075
@.str.3 = private unnamed_addr constant [32 x i8] c"\013%s: module is already loaded\0A\00", align 1, !dbg !4080
@module_ktype = external dso_local constant %struct.kobj_type, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !4082
@modinfo_attrs_count = external dso_local global i64, align 8
@modinfo_attrs = external dso_local global [0 x ptr], align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4085
@module_mutex = external dso_local global %struct.mutex, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"sections\00", align 1, !dbg !4090
@.str.7 = private unnamed_addr constant [7 x i8] c"0x%px\0A\00", align 1, !dbg !4095
@.str.8 = private unnamed_addr constant [6 x i8] c"notes\00", align 1, !dbg !4098

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mod_sysfs_setup(ptr noundef %mod, ptr noundef %info, ptr noundef %kparam, i32 noundef %num_params) #0 align 16 !dbg !4111 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %kparam.addr = alloca ptr, align 8
  %num_params.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4175, metadata !DIExpression()), !dbg !4185
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4176, metadata !DIExpression()), !dbg !4186
  store ptr %kparam, ptr %kparam.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kparam.addr, metadata !4177, metadata !DIExpression()), !dbg !4187
  store i32 %num_params, ptr %num_params.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_params.addr, metadata !4178, metadata !DIExpression()), !dbg !4188
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4189
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4179, metadata !DIExpression()), !dbg !4190
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4191
  %call = call i32 @mod_sysfs_init(ptr noundef %0) #17, !dbg !4192
  store i32 %call, ptr %err, align 4, !dbg !4193
  %1 = load i32, ptr %err, align 4, !dbg !4194
  %tobool = icmp ne i32 %1, 0, !dbg !4194
  br i1 %tobool, label %if.then, label %if.end, !dbg !4196

if.then:                                          ; preds = %entry
  br label %out, !dbg !4197

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %mod.addr, align 8, !dbg !4198
  %mkobj = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 3, !dbg !4199
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %mkobj, i32 0, i32 0, !dbg !4200
  %call1 = call ptr @kobject_create_and_add(ptr noundef @.str, ptr noundef %kobj) #17, !dbg !4201
  %3 = load ptr, ptr %mod.addr, align 8, !dbg !4202
  %holders_dir = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 7, !dbg !4203
  store ptr %call1, ptr %holders_dir, align 8, !dbg !4204
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !4205
  %holders_dir2 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 7, !dbg !4207
  %5 = load ptr, ptr %holders_dir2, align 8, !dbg !4207
  %tobool3 = icmp ne ptr %5, null, !dbg !4205
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4208

if.then4:                                         ; preds = %if.end
  store i32 -12, ptr %err, align 4, !dbg !4209
  br label %out_unreg, !dbg !4211

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %mod.addr, align 8, !dbg !4212
  %7 = load ptr, ptr %kparam.addr, align 8, !dbg !4213
  %8 = load i32, ptr %num_params.addr, align 4, !dbg !4214
  %call6 = call i32 @module_param_sysfs_setup(ptr noundef %6, ptr noundef %7, i32 noundef %8) #17, !dbg !4215
  store i32 %call6, ptr %err, align 4, !dbg !4216
  %9 = load i32, ptr %err, align 4, !dbg !4217
  %tobool7 = icmp ne i32 %9, 0, !dbg !4217
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4219

if.then8:                                         ; preds = %if.end5
  br label %out_unreg_holders, !dbg !4220

if.end9:                                          ; preds = %if.end5
  %10 = load ptr, ptr %mod.addr, align 8, !dbg !4221
  %call10 = call i32 @module_add_modinfo_attrs(ptr noundef %10) #17, !dbg !4222
  store i32 %call10, ptr %err, align 4, !dbg !4223
  %11 = load i32, ptr %err, align 4, !dbg !4224
  %tobool11 = icmp ne i32 %11, 0, !dbg !4224
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4226

if.then12:                                        ; preds = %if.end9
  br label %out_unreg_param, !dbg !4227

if.end13:                                         ; preds = %if.end9
  %12 = load ptr, ptr %mod.addr, align 8, !dbg !4228
  %call14 = call i32 @add_usage_links(ptr noundef %12) #17, !dbg !4229
  store i32 %call14, ptr %err, align 4, !dbg !4230
  %13 = load i32, ptr %err, align 4, !dbg !4231
  %tobool15 = icmp ne i32 %13, 0, !dbg !4231
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4233

if.then16:                                        ; preds = %if.end13
  br label %out_unreg_modinfo_attrs, !dbg !4234

if.end17:                                         ; preds = %if.end13
  %14 = load ptr, ptr %mod.addr, align 8, !dbg !4235
  %15 = load ptr, ptr %info.addr, align 8, !dbg !4236
  call void @add_sect_attrs(ptr noundef %14, ptr noundef %15) #17, !dbg !4237
  %16 = load ptr, ptr %mod.addr, align 8, !dbg !4238
  %17 = load ptr, ptr %info.addr, align 8, !dbg !4239
  call void @add_notes_attrs(ptr noundef %16, ptr noundef %17) #17, !dbg !4240
  store i32 0, ptr %retval, align 4, !dbg !4241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4241

out_unreg_modinfo_attrs:                          ; preds = %if.then16
  call void @llvm.dbg.label(metadata !4180), !dbg !4242
  %18 = load ptr, ptr %mod.addr, align 8, !dbg !4243
  call void @module_remove_modinfo_attrs(ptr noundef %18, i32 noundef -1) #17, !dbg !4244
  br label %out_unreg_param, !dbg !4244

out_unreg_param:                                  ; preds = %out_unreg_modinfo_attrs, %if.then12
  call void @llvm.dbg.label(metadata !4181), !dbg !4245
  %19 = load ptr, ptr %mod.addr, align 8, !dbg !4246
  call void @module_param_sysfs_remove(ptr noundef %19) #17, !dbg !4247
  br label %out_unreg_holders, !dbg !4247

out_unreg_holders:                                ; preds = %out_unreg_param, %if.then8
  call void @llvm.dbg.label(metadata !4182), !dbg !4248
  %20 = load ptr, ptr %mod.addr, align 8, !dbg !4249
  %holders_dir18 = getelementptr inbounds %struct.module, ptr %20, i32 0, i32 7, !dbg !4250
  %21 = load ptr, ptr %holders_dir18, align 8, !dbg !4250
  call void @kobject_put(ptr noundef %21) #17, !dbg !4251
  br label %out_unreg, !dbg !4251

out_unreg:                                        ; preds = %out_unreg_holders, %if.then4
  call void @llvm.dbg.label(metadata !4183), !dbg !4252
  %22 = load ptr, ptr %mod.addr, align 8, !dbg !4253
  call void @mod_kobject_put(ptr noundef %22) #17, !dbg !4254
  br label %out, !dbg !4254

out:                                              ; preds = %out_unreg, %if.then
  call void @llvm.dbg.label(metadata !4184), !dbg !4255
  %23 = load i32, ptr %err, align 4, !dbg !4256
  store i32 %23, ptr %retval, align 4, !dbg !4257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4257

cleanup:                                          ; preds = %out, %if.end17
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4258
  %24 = load i32, ptr %retval, align 4, !dbg !4258
  ret i32 %24, !dbg !4258
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mod_sysfs_init(ptr noundef %mod) #0 align 16 !dbg !4259 {
entry:
  %mod.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %kobj = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4261, metadata !DIExpression()), !dbg !4265
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4266
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4262, metadata !DIExpression()), !dbg !4267
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #16, !dbg !4268
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !4263, metadata !DIExpression()), !dbg !4269
  %0 = load ptr, ptr @module_kset, align 8, !dbg !4270
  %tobool = icmp ne ptr %0, null, !dbg !4270
  br i1 %tobool, label %if.end, label %if.then, !dbg !4272

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4273

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !4276

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4276

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %mod.addr, align 8, !dbg !4273
  %name = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 2, !dbg !4273
  %arraydecay = getelementptr inbounds [56 x i8], ptr %name, i64 0, i64 0, !dbg !4273
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %arraydecay) #18, !dbg !4273
  store i32 %call, ptr %tmp, align 4, !dbg !4276
  %2 = load i32, ptr %tmp, align 4, !dbg !4273
  store i32 -22, ptr %err, align 4, !dbg !4278
  br label %out, !dbg !4279

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @module_kset, align 8, !dbg !4280
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !4281
  %name1 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 2, !dbg !4282
  %arraydecay2 = getelementptr inbounds [56 x i8], ptr %name1, i64 0, i64 0, !dbg !4281
  %call3 = call ptr @kset_find_obj(ptr noundef %3, ptr noundef %arraydecay2) #17, !dbg !4283
  store ptr %call3, ptr %kobj, align 8, !dbg !4284
  %5 = load ptr, ptr %kobj, align 8, !dbg !4285
  %tobool4 = icmp ne ptr %5, null, !dbg !4285
  br i1 %tobool4, label %if.then5, label %if.end13, !dbg !4287

if.then5:                                         ; preds = %if.end
  br label %do.body6, !dbg !4288

do.body6:                                         ; preds = %if.then5
  br label %do.cond7, !dbg !4291

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !4291

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %mod.addr, align 8, !dbg !4288
  %name10 = getelementptr inbounds %struct.module, ptr %6, i32 0, i32 2, !dbg !4288
  %arraydecay11 = getelementptr inbounds [56 x i8], ptr %name10, i64 0, i64 0, !dbg !4288
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %arraydecay11) #18, !dbg !4288
  store i32 %call12, ptr %tmp9, align 4, !dbg !4291
  %7 = load i32, ptr %tmp9, align 4, !dbg !4288
  %8 = load ptr, ptr %kobj, align 8, !dbg !4293
  call void @kobject_put(ptr noundef %8) #17, !dbg !4294
  store i32 -22, ptr %err, align 4, !dbg !4295
  br label %out, !dbg !4296

if.end13:                                         ; preds = %if.end
  %9 = load ptr, ptr %mod.addr, align 8, !dbg !4297
  %10 = load ptr, ptr %mod.addr, align 8, !dbg !4298
  %mkobj = getelementptr inbounds %struct.module, ptr %10, i32 0, i32 3, !dbg !4299
  %mod14 = getelementptr inbounds %struct.module_kobject, ptr %mkobj, i32 0, i32 1, !dbg !4300
  store ptr %9, ptr %mod14, align 16, !dbg !4301
  %11 = load ptr, ptr %mod.addr, align 8, !dbg !4302
  %mkobj15 = getelementptr inbounds %struct.module, ptr %11, i32 0, i32 3, !dbg !4303
  %kobj16 = getelementptr inbounds %struct.module_kobject, ptr %mkobj15, i32 0, i32 0, !dbg !4304
  call void @llvm.memset.p0.i64(ptr align 16 %kobj16, i8 0, i64 64, i1 false), !dbg !4305
  %12 = load ptr, ptr @module_kset, align 8, !dbg !4306
  %13 = load ptr, ptr %mod.addr, align 8, !dbg !4307
  %mkobj17 = getelementptr inbounds %struct.module, ptr %13, i32 0, i32 3, !dbg !4308
  %kobj18 = getelementptr inbounds %struct.module_kobject, ptr %mkobj17, i32 0, i32 0, !dbg !4309
  %kset = getelementptr inbounds %struct.kobject, ptr %kobj18, i32 0, i32 3, !dbg !4310
  store ptr %12, ptr %kset, align 16, !dbg !4311
  %14 = load ptr, ptr %mod.addr, align 8, !dbg !4312
  %mkobj19 = getelementptr inbounds %struct.module, ptr %14, i32 0, i32 3, !dbg !4313
  %kobj20 = getelementptr inbounds %struct.module_kobject, ptr %mkobj19, i32 0, i32 0, !dbg !4314
  %15 = load ptr, ptr %mod.addr, align 8, !dbg !4315
  %name21 = getelementptr inbounds %struct.module, ptr %15, i32 0, i32 2, !dbg !4316
  %arraydecay22 = getelementptr inbounds [56 x i8], ptr %name21, i64 0, i64 0, !dbg !4315
  %call23 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj20, ptr noundef @module_ktype, ptr noundef null, ptr noundef @.str.4, ptr noundef %arraydecay22) #17, !dbg !4317
  store i32 %call23, ptr %err, align 4, !dbg !4318
  %16 = load i32, ptr %err, align 4, !dbg !4319
  %tobool24 = icmp ne i32 %16, 0, !dbg !4319
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4321

if.then25:                                        ; preds = %if.end13
  %17 = load ptr, ptr %mod.addr, align 8, !dbg !4322
  call void @mod_kobject_put(ptr noundef %17) #17, !dbg !4323
  br label %if.end26, !dbg !4323

if.end26:                                         ; preds = %if.then25, %if.end13
  br label %out, !dbg !4319

out:                                              ; preds = %if.end26, %do.end8, %do.end
  call void @llvm.dbg.label(metadata !4264), !dbg !4324
  %18 = load i32, ptr %err, align 4, !dbg !4325
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #16, !dbg !4326
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4326
  ret i32 %18, !dbg !4327
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4328 dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4331 dso_local i32 @module_param_sysfs_setup(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @module_add_modinfo_attrs(ptr noundef %mod) #0 align 16 !dbg !4334 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %temp_attr = alloca ptr, align 8
  %error = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4336, metadata !DIExpression()), !dbg !4342
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #16, !dbg !4343
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !4337, metadata !DIExpression()), !dbg !4344
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_attr) #16, !dbg !4345
  call void @llvm.dbg.declare(metadata ptr %temp_attr, metadata !4338, metadata !DIExpression()), !dbg !4346
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !4347
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4339, metadata !DIExpression()), !dbg !4348
  store i32 0, ptr %error, align 4, !dbg !4348
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4349
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4340, metadata !DIExpression()), !dbg !4350
  %0 = load i64, ptr @modinfo_attrs_count, align 8, !dbg !4351
  %add = add i64 %0, 1, !dbg !4352
  %mul = mul i64 56, %add, !dbg !4353
  %call = call noalias ptr @kzalloc(i64 noundef %mul, i32 noundef 3264) #19, !dbg !4354
  %1 = load ptr, ptr %mod.addr, align 8, !dbg !4355
  %modinfo_attrs = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 4, !dbg !4356
  store ptr %call, ptr %modinfo_attrs, align 16, !dbg !4357
  %2 = load ptr, ptr %mod.addr, align 8, !dbg !4358
  %modinfo_attrs1 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 4, !dbg !4360
  %3 = load ptr, ptr %modinfo_attrs1, align 16, !dbg !4360
  %tobool = icmp ne ptr %3, null, !dbg !4358
  br i1 %tobool, label %if.end, label %if.then, !dbg !4361

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4362

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !4363
  %modinfo_attrs2 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 4, !dbg !4364
  %5 = load ptr, ptr %modinfo_attrs2, align 16, !dbg !4364
  store ptr %5, ptr %temp_attr, align 8, !dbg !4365
  store i32 0, ptr %i, align 4, !dbg !4366
  br label %for.cond, !dbg !4368

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4, !dbg !4369
  %idxprom = sext i32 %6 to i64, !dbg !4371
  %arrayidx = getelementptr [0 x ptr], ptr @modinfo_attrs, i64 0, i64 %idxprom, !dbg !4371
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !4371
  store ptr %7, ptr %attr, align 8, !dbg !4372
  %tobool3 = icmp ne ptr %7, null, !dbg !4373
  br i1 %tobool3, label %for.body, label %for.end, !dbg !4373

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %attr, align 8, !dbg !4374
  %test = getelementptr inbounds %struct.module_attribute, ptr %8, i32 0, i32 4, !dbg !4377
  %9 = load ptr, ptr %test, align 8, !dbg !4377
  %tobool4 = icmp ne ptr %9, null, !dbg !4374
  br i1 %tobool4, label %lor.lhs.false, label %if.then8, !dbg !4378

lor.lhs.false:                                    ; preds = %for.body
  %10 = load ptr, ptr %attr, align 8, !dbg !4379
  %test5 = getelementptr inbounds %struct.module_attribute, ptr %10, i32 0, i32 4, !dbg !4380
  %11 = load ptr, ptr %test5, align 8, !dbg !4380
  %12 = load ptr, ptr %mod.addr, align 8, !dbg !4381
  %call6 = call i32 %11(ptr noundef %12) #17, !dbg !4379
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4379
  br i1 %tobool7, label %if.then8, label %if.end14, !dbg !4382

if.then8:                                         ; preds = %lor.lhs.false, %for.body
  %13 = load ptr, ptr %temp_attr, align 8, !dbg !4383
  %14 = load ptr, ptr %attr, align 8, !dbg !4385
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %14, i64 56, i1 false), !dbg !4386
  br label %do.body, !dbg !4387

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !4388

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4388

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %mod.addr, align 8, !dbg !4390
  %mkobj = getelementptr inbounds %struct.module, ptr %15, i32 0, i32 3, !dbg !4391
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %mkobj, i32 0, i32 0, !dbg !4392
  %16 = load ptr, ptr %temp_attr, align 8, !dbg !4393
  %attr9 = getelementptr inbounds %struct.module_attribute, ptr %16, i32 0, i32 0, !dbg !4394
  %call10 = call i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr9) #17, !dbg !4395
  store i32 %call10, ptr %error, align 4, !dbg !4396
  %17 = load i32, ptr %error, align 4, !dbg !4397
  %tobool11 = icmp ne i32 %17, 0, !dbg !4397
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4399

if.then12:                                        ; preds = %do.end
  br label %error_out, !dbg !4400

if.end13:                                         ; preds = %do.end
  %18 = load ptr, ptr %temp_attr, align 8, !dbg !4401
  %incdec.ptr = getelementptr %struct.module_attribute, ptr %18, i32 1, !dbg !4401
  store ptr %incdec.ptr, ptr %temp_attr, align 8, !dbg !4401
  br label %if.end14, !dbg !4402

if.end14:                                         ; preds = %if.end13, %lor.lhs.false
  br label %for.inc, !dbg !4403

for.inc:                                          ; preds = %if.end14
  %19 = load i32, ptr %i, align 4, !dbg !4404
  %inc = add i32 %19, 1, !dbg !4404
  store i32 %inc, ptr %i, align 4, !dbg !4404
  br label %for.cond, !dbg !4405, !llvm.loop !4406

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4410

error_out:                                        ; preds = %if.then12
  call void @llvm.dbg.label(metadata !4341), !dbg !4411
  %20 = load i32, ptr %i, align 4, !dbg !4412
  %cmp = icmp sgt i32 %20, 0, !dbg !4414
  br i1 %cmp, label %if.then15, label %if.else, !dbg !4415

if.then15:                                        ; preds = %error_out
  %21 = load ptr, ptr %mod.addr, align 8, !dbg !4416
  %22 = load i32, ptr %i, align 4, !dbg !4417
  %dec = add i32 %22, -1, !dbg !4417
  store i32 %dec, ptr %i, align 4, !dbg !4417
  call void @module_remove_modinfo_attrs(ptr noundef %21, i32 noundef %dec) #17, !dbg !4418
  br label %if.end17, !dbg !4418

if.else:                                          ; preds = %error_out
  %23 = load ptr, ptr %mod.addr, align 8, !dbg !4419
  %modinfo_attrs16 = getelementptr inbounds %struct.module, ptr %23, i32 0, i32 4, !dbg !4420
  %24 = load ptr, ptr %modinfo_attrs16, align 16, !dbg !4420
  call void @kfree(ptr noundef %24) #17, !dbg !4421
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  %25 = load i32, ptr %error, align 4, !dbg !4422
  store i32 %25, ptr %retval, align 4, !dbg !4423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4423

cleanup:                                          ; preds = %if.end17, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4424
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !4424
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_attr) #16, !dbg !4424
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #16, !dbg !4424
  %26 = load i32, ptr %retval, align 4, !dbg !4424
  ret i32 %26, !dbg !4424
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_usage_links(ptr noundef %mod) #0 align 16 !dbg !4425 {
entry:
  %mod.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %use = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4427, metadata !DIExpression()), !dbg !4436
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4437
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4428, metadata !DIExpression()), !dbg !4438
  store i32 0, ptr %ret, align 4, !dbg !4438
  call void @llvm.lifetime.start.p0(i64 8, ptr %use) #16, !dbg !4439
  call void @llvm.dbg.declare(metadata ptr %use, metadata !4429, metadata !DIExpression()), !dbg !4440
  call void @mutex_lock(ptr noundef @module_mutex) #17, !dbg !4441
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4442
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4430, metadata !DIExpression()), !dbg !4442
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4442
  %target_list = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 56, !dbg !4442
  %next = getelementptr inbounds %struct.list_head, ptr %target_list, i32 0, i32 0, !dbg !4442
  %1 = load ptr, ptr %next, align 32, !dbg !4442
  store ptr %1, ptr %__mptr, align 8, !dbg !4442
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4442
  %add.ptr = getelementptr i8, ptr %2, i64 -16, !dbg !4442
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4442
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4443
  %3 = load ptr, ptr %tmp, align 8, !dbg !4442
  store ptr %3, ptr %use, align 8, !dbg !4443
  br label %for.cond, !dbg !4443

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %use, align 8, !dbg !4444
  %target_list1 = getelementptr inbounds %struct.module_use, ptr %4, i32 0, i32 1, !dbg !4444
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !4444
  %target_list2 = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 56, !dbg !4444
  %cmp = icmp eq ptr %target_list1, %target_list2, !dbg !4444
  %lnot = xor i1 %cmp, true, !dbg !4444
  br i1 %lnot, label %for.body, label %for.end, !dbg !4443

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %use, align 8, !dbg !4445
  %target = getelementptr inbounds %struct.module_use, ptr %6, i32 0, i32 3, !dbg !4447
  %7 = load ptr, ptr %target, align 8, !dbg !4447
  %holders_dir = getelementptr inbounds %struct.module, ptr %7, i32 0, i32 7, !dbg !4448
  %8 = load ptr, ptr %holders_dir, align 8, !dbg !4448
  %9 = load ptr, ptr %mod.addr, align 8, !dbg !4449
  %mkobj = getelementptr inbounds %struct.module, ptr %9, i32 0, i32 3, !dbg !4450
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %mkobj, i32 0, i32 0, !dbg !4451
  %10 = load ptr, ptr %mod.addr, align 8, !dbg !4452
  %name = getelementptr inbounds %struct.module, ptr %10, i32 0, i32 2, !dbg !4453
  %arraydecay = getelementptr inbounds [56 x i8], ptr %name, i64 0, i64 0, !dbg !4452
  %call = call i32 @sysfs_create_link(ptr noundef %8, ptr noundef %kobj, ptr noundef %arraydecay) #17, !dbg !4454
  store i32 %call, ptr %ret, align 4, !dbg !4455
  %11 = load i32, ptr %ret, align 4, !dbg !4456
  %tobool = icmp ne i32 %11, 0, !dbg !4456
  br i1 %tobool, label %if.then, label %if.end, !dbg !4458

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !4459

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4460

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #16, !dbg !4461
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !4433, metadata !DIExpression()), !dbg !4461
  %12 = load ptr, ptr %use, align 8, !dbg !4461
  %target_list4 = getelementptr inbounds %struct.module_use, ptr %12, i32 0, i32 1, !dbg !4461
  %next5 = getelementptr inbounds %struct.list_head, ptr %target_list4, i32 0, i32 0, !dbg !4461
  %13 = load ptr, ptr %next5, align 8, !dbg !4461
  store ptr %13, ptr %__mptr3, align 8, !dbg !4461
  %14 = load ptr, ptr %__mptr3, align 8, !dbg !4461
  %add.ptr7 = getelementptr i8, ptr %14, i64 -16, !dbg !4461
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !4461
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #16, !dbg !4444
  %15 = load ptr, ptr %tmp6, align 8, !dbg !4461
  store ptr %15, ptr %use, align 8, !dbg !4444
  br label %for.cond, !dbg !4444, !llvm.loop !4462

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(ptr noundef @module_mutex) #17, !dbg !4464
  %16 = load i32, ptr %ret, align 4, !dbg !4465
  %tobool8 = icmp ne i32 %16, 0, !dbg !4465
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4467

if.then9:                                         ; preds = %for.end
  %17 = load ptr, ptr %mod.addr, align 8, !dbg !4468
  call void @del_usage_links(ptr noundef %17) #17, !dbg !4469
  br label %if.end10, !dbg !4469

if.end10:                                         ; preds = %if.then9, %for.end
  %18 = load i32, ptr %ret, align 4, !dbg !4470
  call void @llvm.lifetime.end.p0(i64 8, ptr %use) #16, !dbg !4471
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4471
  ret i32 %18, !dbg !4472
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_sect_attrs(ptr noundef %mod, ptr noundef %info) #0 align 16 !dbg !4473 {
entry:
  %mod.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %nloaded = alloca i32, align 4
  %i = alloca i32, align 4
  %size = alloca [2 x i32], align 4
  %sect_attrs = alloca ptr, align 8
  %sattr = alloca ptr, align 8
  %gattr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %sec = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4477, metadata !DIExpression()), !dbg !4491
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4478, metadata !DIExpression()), !dbg !4492
  call void @llvm.lifetime.start.p0(i64 4, ptr %nloaded) #16, !dbg !4493
  call void @llvm.dbg.declare(metadata ptr %nloaded, metadata !4479, metadata !DIExpression()), !dbg !4494
  store i32 0, ptr %nloaded, align 4, !dbg !4494
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4493
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4480, metadata !DIExpression()), !dbg !4495
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !4493
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4481, metadata !DIExpression()), !dbg !4496
  call void @llvm.lifetime.start.p0(i64 8, ptr %sect_attrs) #16, !dbg !4497
  call void @llvm.dbg.declare(metadata ptr %sect_attrs, metadata !4483, metadata !DIExpression()), !dbg !4498
  call void @llvm.lifetime.start.p0(i64 8, ptr %sattr) #16, !dbg !4499
  call void @llvm.dbg.declare(metadata ptr %sattr, metadata !4484, metadata !DIExpression()), !dbg !4500
  call void @llvm.lifetime.start.p0(i64 8, ptr %gattr) #16, !dbg !4501
  call void @llvm.dbg.declare(metadata ptr %gattr, metadata !4485, metadata !DIExpression()), !dbg !4502
  store i32 0, ptr %i, align 4, !dbg !4503
  br label %for.cond, !dbg !4505

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4506
  %1 = load ptr, ptr %info.addr, align 8, !dbg !4508
  %hdr = getelementptr inbounds %struct.load_info, ptr %1, i32 0, i32 2, !dbg !4509
  %2 = load ptr, ptr %hdr, align 8, !dbg !4509
  %e_shnum = getelementptr inbounds %struct.elf64_hdr, ptr %2, i32 0, i32 12, !dbg !4510
  %3 = load i16, ptr %e_shnum, align 4, !dbg !4510
  %conv = zext i16 %3 to i32, !dbg !4508
  %cmp = icmp ult i32 %0, %conv, !dbg !4511
  br i1 %cmp, label %for.body, label %for.end, !dbg !4512

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %info.addr, align 8, !dbg !4513
  %sechdrs = getelementptr inbounds %struct.load_info, ptr %4, i32 0, i32 4, !dbg !4515
  %5 = load ptr, ptr %sechdrs, align 8, !dbg !4515
  %6 = load i32, ptr %i, align 4, !dbg !4516
  %idxprom = zext i32 %6 to i64, !dbg !4513
  %arrayidx = getelementptr %struct.elf64_shdr, ptr %5, i64 %idxprom, !dbg !4513
  %call = call zeroext i1 @sect_empty(ptr noundef %arrayidx) #17, !dbg !4517
  br i1 %call, label %if.end, label %if.then, !dbg !4518

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %nloaded, align 4, !dbg !4519
  %inc = add i32 %7, 1, !dbg !4519
  store i32 %inc, ptr %nloaded, align 4, !dbg !4519
  br label %if.end, !dbg !4520

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !4521

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !dbg !4522
  %inc2 = add i32 %8, 1, !dbg !4522
  store i32 %inc2, ptr %i, align 4, !dbg !4522
  br label %for.cond, !dbg !4523, !llvm.loop !4524

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %nloaded, align 4, !dbg !4526
  %conv3 = zext i32 %9 to i64, !dbg !4526
  %call4 = call i64 @size_mul(i64 noundef %conv3, i64 noundef 72) #17, !dbg !4526
  %call5 = call i64 @size_add(i64 noundef 48, i64 noundef %call4) #17, !dbg !4526
  %add = add i64 %call5, 7, !dbg !4526
  %and = and i64 %add, -8, !dbg !4526
  %conv6 = trunc i64 %and to i32, !dbg !4526
  %arrayidx7 = getelementptr [2 x i32], ptr %size, i64 0, i64 0, !dbg !4527
  store i32 %conv6, ptr %arrayidx7, align 4, !dbg !4528
  %10 = load i32, ptr %nloaded, align 4, !dbg !4529
  %add8 = add i32 %10, 1, !dbg !4530
  %conv9 = zext i32 %add8 to i64, !dbg !4531
  %mul = mul i64 %conv9, 8, !dbg !4532
  %conv10 = trunc i64 %mul to i32, !dbg !4531
  %arrayidx11 = getelementptr [2 x i32], ptr %size, i64 0, i64 1, !dbg !4533
  store i32 %conv10, ptr %arrayidx11, align 4, !dbg !4534
  %arrayidx12 = getelementptr [2 x i32], ptr %size, i64 0, i64 0, !dbg !4535
  %11 = load i32, ptr %arrayidx12, align 4, !dbg !4535
  %arrayidx13 = getelementptr [2 x i32], ptr %size, i64 0, i64 1, !dbg !4536
  %12 = load i32, ptr %arrayidx13, align 4, !dbg !4536
  %add14 = add i32 %11, %12, !dbg !4537
  %conv15 = zext i32 %add14 to i64, !dbg !4535
  %call16 = call noalias ptr @kzalloc(i64 noundef %conv15, i32 noundef 3264) #19, !dbg !4538
  store ptr %call16, ptr %sect_attrs, align 8, !dbg !4539
  %13 = load ptr, ptr %sect_attrs, align 8, !dbg !4540
  %tobool = icmp ne ptr %13, null, !dbg !4540
  br i1 %tobool, label %if.end18, label %if.then17, !dbg !4542

if.then17:                                        ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !4543

if.end18:                                         ; preds = %for.end
  %14 = load ptr, ptr %sect_attrs, align 8, !dbg !4544
  %grp = getelementptr inbounds %struct.module_sect_attrs, ptr %14, i32 0, i32 0, !dbg !4545
  %name = getelementptr inbounds %struct.attribute_group, ptr %grp, i32 0, i32 0, !dbg !4546
  store ptr @.str.6, ptr %name, align 8, !dbg !4547
  %15 = load ptr, ptr %sect_attrs, align 8, !dbg !4548
  %arrayidx19 = getelementptr [2 x i32], ptr %size, i64 0, i64 0, !dbg !4549
  %16 = load i32, ptr %arrayidx19, align 4, !dbg !4549
  %idx.ext = zext i32 %16 to i64, !dbg !4550
  %add.ptr = getelementptr i8, ptr %15, i64 %idx.ext, !dbg !4550
  %17 = load ptr, ptr %sect_attrs, align 8, !dbg !4551
  %grp20 = getelementptr inbounds %struct.module_sect_attrs, ptr %17, i32 0, i32 0, !dbg !4552
  %bin_attrs = getelementptr inbounds %struct.attribute_group, ptr %grp20, i32 0, i32 4, !dbg !4553
  store ptr %add.ptr, ptr %bin_attrs, align 8, !dbg !4554
  %18 = load ptr, ptr %sect_attrs, align 8, !dbg !4555
  %nsections = getelementptr inbounds %struct.module_sect_attrs, ptr %18, i32 0, i32 1, !dbg !4556
  store i32 0, ptr %nsections, align 8, !dbg !4557
  %19 = load ptr, ptr %sect_attrs, align 8, !dbg !4558
  %attrs = getelementptr inbounds %struct.module_sect_attrs, ptr %19, i32 0, i32 2, !dbg !4559
  %arrayidx21 = getelementptr [0 x %struct.module_sect_attr], ptr %attrs, i64 0, i64 0, !dbg !4558
  store ptr %arrayidx21, ptr %sattr, align 8, !dbg !4560
  %20 = load ptr, ptr %sect_attrs, align 8, !dbg !4561
  %grp22 = getelementptr inbounds %struct.module_sect_attrs, ptr %20, i32 0, i32 0, !dbg !4562
  %bin_attrs23 = getelementptr inbounds %struct.attribute_group, ptr %grp22, i32 0, i32 4, !dbg !4563
  %21 = load ptr, ptr %bin_attrs23, align 8, !dbg !4563
  %arrayidx24 = getelementptr ptr, ptr %21, i64 0, !dbg !4561
  store ptr %arrayidx24, ptr %gattr, align 8, !dbg !4564
  store i32 0, ptr %i, align 4, !dbg !4565
  br label %for.cond25, !dbg !4566

for.cond25:                                       ; preds = %for.inc57, %if.end18
  %22 = load i32, ptr %i, align 4, !dbg !4567
  %23 = load ptr, ptr %info.addr, align 8, !dbg !4568
  %hdr26 = getelementptr inbounds %struct.load_info, ptr %23, i32 0, i32 2, !dbg !4569
  %24 = load ptr, ptr %hdr26, align 8, !dbg !4569
  %e_shnum27 = getelementptr inbounds %struct.elf64_hdr, ptr %24, i32 0, i32 12, !dbg !4570
  %25 = load i16, ptr %e_shnum27, align 4, !dbg !4570
  %conv28 = zext i16 %25 to i32, !dbg !4568
  %cmp29 = icmp ult i32 %22, %conv28, !dbg !4571
  br i1 %cmp29, label %for.body31, label %for.end59, !dbg !4572

for.body31:                                       ; preds = %for.cond25
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #16, !dbg !4573
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !4486, metadata !DIExpression()), !dbg !4574
  %26 = load ptr, ptr %info.addr, align 8, !dbg !4575
  %sechdrs32 = getelementptr inbounds %struct.load_info, ptr %26, i32 0, i32 4, !dbg !4576
  %27 = load ptr, ptr %sechdrs32, align 8, !dbg !4576
  %28 = load i32, ptr %i, align 4, !dbg !4577
  %idxprom33 = zext i32 %28 to i64, !dbg !4575
  %arrayidx34 = getelementptr %struct.elf64_shdr, ptr %27, i64 %idxprom33, !dbg !4575
  store ptr %arrayidx34, ptr %sec, align 8, !dbg !4574
  %29 = load ptr, ptr %sec, align 8, !dbg !4578
  %call35 = call zeroext i1 @sect_empty(ptr noundef %29) #17, !dbg !4580
  br i1 %call35, label %if.then36, label %if.end37, !dbg !4581

if.then36:                                        ; preds = %for.body31
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4582

if.end37:                                         ; preds = %for.body31
  br label %do.body, !dbg !4583

do.body:                                          ; preds = %if.end37
  br label %do.cond, !dbg !4584

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4584

do.end:                                           ; preds = %do.cond
  %30 = load ptr, ptr %sec, align 8, !dbg !4586
  %sh_addr = getelementptr inbounds %struct.elf64_shdr, ptr %30, i32 0, i32 3, !dbg !4587
  %31 = load i64, ptr %sh_addr, align 8, !dbg !4587
  %32 = load ptr, ptr %sattr, align 8, !dbg !4588
  %address = getelementptr inbounds %struct.module_sect_attr, ptr %32, i32 0, i32 1, !dbg !4589
  store i64 %31, ptr %address, align 8, !dbg !4590
  %33 = load ptr, ptr %info.addr, align 8, !dbg !4591
  %secstrings = getelementptr inbounds %struct.load_info, ptr %33, i32 0, i32 5, !dbg !4592
  %34 = load ptr, ptr %secstrings, align 8, !dbg !4592
  %35 = load ptr, ptr %sec, align 8, !dbg !4593
  %sh_name = getelementptr inbounds %struct.elf64_shdr, ptr %35, i32 0, i32 0, !dbg !4594
  %36 = load i32, ptr %sh_name, align 8, !dbg !4594
  %idx.ext38 = zext i32 %36 to i64, !dbg !4595
  %add.ptr39 = getelementptr i8, ptr %34, i64 %idx.ext38, !dbg !4595
  %call40 = call noalias ptr @kstrdup(ptr noundef %add.ptr39, i32 noundef 3264) #17, !dbg !4596
  %37 = load ptr, ptr %sattr, align 8, !dbg !4597
  %battr = getelementptr inbounds %struct.module_sect_attr, ptr %37, i32 0, i32 0, !dbg !4598
  %attr = getelementptr inbounds %struct.bin_attribute, ptr %battr, i32 0, i32 0, !dbg !4599
  %name41 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 0, !dbg !4600
  store ptr %call40, ptr %name41, align 8, !dbg !4601
  %38 = load ptr, ptr %sattr, align 8, !dbg !4602
  %battr42 = getelementptr inbounds %struct.module_sect_attr, ptr %38, i32 0, i32 0, !dbg !4604
  %attr43 = getelementptr inbounds %struct.bin_attribute, ptr %battr42, i32 0, i32 0, !dbg !4605
  %name44 = getelementptr inbounds %struct.attribute, ptr %attr43, i32 0, i32 0, !dbg !4606
  %39 = load ptr, ptr %name44, align 8, !dbg !4606
  %tobool45 = icmp ne ptr %39, null, !dbg !4602
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !4607

if.then46:                                        ; preds = %do.end
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4608

if.end47:                                         ; preds = %do.end
  %40 = load ptr, ptr %sect_attrs, align 8, !dbg !4609
  %nsections48 = getelementptr inbounds %struct.module_sect_attrs, ptr %40, i32 0, i32 1, !dbg !4610
  %41 = load i32, ptr %nsections48, align 8, !dbg !4611
  %inc49 = add i32 %41, 1, !dbg !4611
  store i32 %inc49, ptr %nsections48, align 8, !dbg !4611
  %42 = load ptr, ptr %sattr, align 8, !dbg !4612
  %battr50 = getelementptr inbounds %struct.module_sect_attr, ptr %42, i32 0, i32 0, !dbg !4613
  %read = getelementptr inbounds %struct.bin_attribute, ptr %battr50, i32 0, i32 4, !dbg !4614
  store ptr @module_sect_read, ptr %read, align 8, !dbg !4615
  %43 = load ptr, ptr %sattr, align 8, !dbg !4616
  %battr51 = getelementptr inbounds %struct.module_sect_attr, ptr %43, i32 0, i32 0, !dbg !4617
  %size52 = getelementptr inbounds %struct.bin_attribute, ptr %battr51, i32 0, i32 1, !dbg !4618
  store i64 19, ptr %size52, align 8, !dbg !4619
  %44 = load ptr, ptr %sattr, align 8, !dbg !4620
  %battr53 = getelementptr inbounds %struct.module_sect_attr, ptr %44, i32 0, i32 0, !dbg !4621
  %attr54 = getelementptr inbounds %struct.bin_attribute, ptr %battr53, i32 0, i32 0, !dbg !4622
  %mode = getelementptr inbounds %struct.attribute, ptr %attr54, i32 0, i32 1, !dbg !4623
  store i16 256, ptr %mode, align 8, !dbg !4624
  %45 = load ptr, ptr %sattr, align 8, !dbg !4625
  %incdec.ptr = getelementptr %struct.module_sect_attr, ptr %45, i32 1, !dbg !4625
  store ptr %incdec.ptr, ptr %sattr, align 8, !dbg !4625
  %battr55 = getelementptr inbounds %struct.module_sect_attr, ptr %45, i32 0, i32 0, !dbg !4626
  %46 = load ptr, ptr %gattr, align 8, !dbg !4627
  %incdec.ptr56 = getelementptr ptr, ptr %46, i32 1, !dbg !4627
  store ptr %incdec.ptr56, ptr %gattr, align 8, !dbg !4627
  store ptr %battr55, ptr %46, align 8, !dbg !4628
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4629
  br label %cleanup, !dbg !4629

cleanup:                                          ; preds = %if.then46, %if.end47, %if.then36
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #16, !dbg !4629
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup66 [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc57
    i32 10, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc57, !dbg !4630

for.inc57:                                        ; preds = %cleanup.cont, %cleanup
  %47 = load i32, ptr %i, align 4, !dbg !4631
  %inc58 = add i32 %47, 1, !dbg !4631
  store i32 %inc58, ptr %i, align 4, !dbg !4631
  br label %for.cond25, !dbg !4632, !llvm.loop !4633

for.end59:                                        ; preds = %for.cond25
  %48 = load ptr, ptr %gattr, align 8, !dbg !4635
  store ptr null, ptr %48, align 8, !dbg !4636
  %49 = load ptr, ptr %mod.addr, align 8, !dbg !4637
  %mkobj = getelementptr inbounds %struct.module, ptr %49, i32 0, i32 3, !dbg !4639
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %mkobj, i32 0, i32 0, !dbg !4640
  %50 = load ptr, ptr %sect_attrs, align 8, !dbg !4641
  %grp60 = getelementptr inbounds %struct.module_sect_attrs, ptr %50, i32 0, i32 0, !dbg !4642
  %call61 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef %grp60) #17, !dbg !4643
  %tobool62 = icmp ne i32 %call61, 0, !dbg !4643
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !4644

if.then63:                                        ; preds = %for.end59
  br label %out, !dbg !4645

if.end64:                                         ; preds = %for.end59
  %51 = load ptr, ptr %sect_attrs, align 8, !dbg !4646
  %52 = load ptr, ptr %mod.addr, align 8, !dbg !4647
  %sect_attrs65 = getelementptr inbounds %struct.module, ptr %52, i32 0, i32 30, !dbg !4648
  store ptr %51, ptr %sect_attrs65, align 32, !dbg !4649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !4650

out:                                              ; preds = %cleanup, %if.then63
  call void @llvm.dbg.label(metadata !4490), !dbg !4651
  %53 = load ptr, ptr %sect_attrs, align 8, !dbg !4652
  call void @free_sect_attrs(ptr noundef %53) #17, !dbg !4653
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4654
  br label %cleanup66, !dbg !4654

cleanup66:                                        ; preds = %out, %if.end64, %cleanup, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %gattr) #16, !dbg !4654
  call void @llvm.lifetime.end.p0(i64 8, ptr %sattr) #16, !dbg !4654
  call void @llvm.lifetime.end.p0(i64 8, ptr %sect_attrs) #16, !dbg !4654
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !4654
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4654
  call void @llvm.lifetime.end.p0(i64 4, ptr %nloaded) #16, !dbg !4654
  %cleanup.dest72 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest72, label %unreachable [
    i32 0, label %cleanup.cont73
    i32 1, label %cleanup.cont73
  ]

cleanup.cont73:                                   ; preds = %cleanup66, %cleanup66
  ret void, !dbg !4654

unreachable:                                      ; preds = %cleanup66
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_notes_attrs(ptr noundef %mod, ptr noundef %info) #0 align 16 !dbg !4655 {
entry:
  %mod.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %notes = alloca i32, align 4
  %loaded = alloca i32, align 4
  %i = alloca i32, align 4
  %notes_attrs = alloca ptr, align 8
  %nattr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4657, metadata !DIExpression()), !dbg !4665
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4658, metadata !DIExpression()), !dbg !4666
  call void @llvm.lifetime.start.p0(i64 4, ptr %notes) #16, !dbg !4667
  call void @llvm.dbg.declare(metadata ptr %notes, metadata !4659, metadata !DIExpression()), !dbg !4668
  call void @llvm.lifetime.start.p0(i64 4, ptr %loaded) #16, !dbg !4667
  call void @llvm.dbg.declare(metadata ptr %loaded, metadata !4660, metadata !DIExpression()), !dbg !4669
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4667
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4661, metadata !DIExpression()), !dbg !4670
  call void @llvm.lifetime.start.p0(i64 8, ptr %notes_attrs) #16, !dbg !4671
  call void @llvm.dbg.declare(metadata ptr %notes_attrs, metadata !4662, metadata !DIExpression()), !dbg !4672
  call void @llvm.lifetime.start.p0(i64 8, ptr %nattr) #16, !dbg !4673
  call void @llvm.dbg.declare(metadata ptr %nattr, metadata !4663, metadata !DIExpression()), !dbg !4674
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4675
  %sect_attrs = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 30, !dbg !4677
  %1 = load ptr, ptr %sect_attrs, align 32, !dbg !4677
  %tobool = icmp ne ptr %1, null, !dbg !4675
  br i1 %tobool, label %if.end, label %if.then, !dbg !4678

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4679

if.end:                                           ; preds = %entry
  store i32 0, ptr %notes, align 4, !dbg !4680
  store i32 0, ptr %i, align 4, !dbg !4681
  br label %for.cond, !dbg !4683

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !4684
  %3 = load ptr, ptr %info.addr, align 8, !dbg !4686
  %hdr = getelementptr inbounds %struct.load_info, ptr %3, i32 0, i32 2, !dbg !4687
  %4 = load ptr, ptr %hdr, align 8, !dbg !4687
  %e_shnum = getelementptr inbounds %struct.elf64_hdr, ptr %4, i32 0, i32 12, !dbg !4688
  %5 = load i16, ptr %e_shnum, align 4, !dbg !4688
  %conv = zext i16 %5 to i32, !dbg !4686
  %cmp = icmp ult i32 %2, %conv, !dbg !4689
  br i1 %cmp, label %for.body, label %for.end, !dbg !4690

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %info.addr, align 8, !dbg !4691
  %sechdrs = getelementptr inbounds %struct.load_info, ptr %6, i32 0, i32 4, !dbg !4693
  %7 = load ptr, ptr %sechdrs, align 8, !dbg !4693
  %8 = load i32, ptr %i, align 4, !dbg !4694
  %idxprom = zext i32 %8 to i64, !dbg !4691
  %arrayidx = getelementptr %struct.elf64_shdr, ptr %7, i64 %idxprom, !dbg !4691
  %call = call zeroext i1 @sect_empty(ptr noundef %arrayidx) #17, !dbg !4695
  br i1 %call, label %if.end8, label %land.lhs.true, !dbg !4696

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %info.addr, align 8, !dbg !4697
  %sechdrs2 = getelementptr inbounds %struct.load_info, ptr %9, i32 0, i32 4, !dbg !4698
  %10 = load ptr, ptr %sechdrs2, align 8, !dbg !4698
  %11 = load i32, ptr %i, align 4, !dbg !4699
  %idxprom3 = zext i32 %11 to i64, !dbg !4697
  %arrayidx4 = getelementptr %struct.elf64_shdr, ptr %10, i64 %idxprom3, !dbg !4697
  %sh_type = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx4, i32 0, i32 1, !dbg !4700
  %12 = load i32, ptr %sh_type, align 4, !dbg !4700
  %cmp5 = icmp eq i32 %12, 7, !dbg !4701
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !4702

if.then7:                                         ; preds = %land.lhs.true
  %13 = load i32, ptr %notes, align 4, !dbg !4703
  %inc = add i32 %13, 1, !dbg !4703
  store i32 %inc, ptr %notes, align 4, !dbg !4703
  br label %if.end8, !dbg !4703

if.end8:                                          ; preds = %if.then7, %land.lhs.true, %for.body
  br label %for.inc, !dbg !4704

for.inc:                                          ; preds = %if.end8
  %14 = load i32, ptr %i, align 4, !dbg !4705
  %inc9 = add i32 %14, 1, !dbg !4705
  store i32 %inc9, ptr %i, align 4, !dbg !4705
  br label %for.cond, !dbg !4706, !llvm.loop !4707

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %notes, align 4, !dbg !4709
  %cmp10 = icmp eq i32 %15, 0, !dbg !4711
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4712

if.then12:                                        ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4713

if.end13:                                         ; preds = %for.end
  %16 = load i32, ptr %notes, align 4, !dbg !4714
  %conv14 = zext i32 %16 to i64, !dbg !4714
  %call15 = call i64 @size_mul(i64 noundef %conv14, i64 noundef 64) #17, !dbg !4714
  %call16 = call i64 @size_add(i64 noundef 16, i64 noundef %call15) #17, !dbg !4714
  %call17 = call noalias ptr @kzalloc(i64 noundef %call16, i32 noundef 3264) #19, !dbg !4715
  store ptr %call17, ptr %notes_attrs, align 8, !dbg !4716
  %17 = load ptr, ptr %notes_attrs, align 8, !dbg !4717
  %tobool18 = icmp ne ptr %17, null, !dbg !4717
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4719

if.then19:                                        ; preds = %if.end13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4720

if.end20:                                         ; preds = %if.end13
  %18 = load i32, ptr %notes, align 4, !dbg !4721
  %19 = load ptr, ptr %notes_attrs, align 8, !dbg !4722
  %notes21 = getelementptr inbounds %struct.module_notes_attrs, ptr %19, i32 0, i32 1, !dbg !4723
  store i32 %18, ptr %notes21, align 8, !dbg !4724
  %20 = load ptr, ptr %notes_attrs, align 8, !dbg !4725
  %attrs = getelementptr inbounds %struct.module_notes_attrs, ptr %20, i32 0, i32 2, !dbg !4726
  %arrayidx22 = getelementptr [0 x %struct.bin_attribute], ptr %attrs, i64 0, i64 0, !dbg !4725
  store ptr %arrayidx22, ptr %nattr, align 8, !dbg !4727
  store i32 0, ptr %i, align 4, !dbg !4728
  store i32 0, ptr %loaded, align 4, !dbg !4730
  br label %for.cond23, !dbg !4731

for.cond23:                                       ; preds = %for.inc58, %if.end20
  %21 = load i32, ptr %i, align 4, !dbg !4732
  %22 = load ptr, ptr %info.addr, align 8, !dbg !4734
  %hdr24 = getelementptr inbounds %struct.load_info, ptr %22, i32 0, i32 2, !dbg !4735
  %23 = load ptr, ptr %hdr24, align 8, !dbg !4735
  %e_shnum25 = getelementptr inbounds %struct.elf64_hdr, ptr %23, i32 0, i32 12, !dbg !4736
  %24 = load i16, ptr %e_shnum25, align 4, !dbg !4736
  %conv26 = zext i16 %24 to i32, !dbg !4734
  %cmp27 = icmp ult i32 %21, %conv26, !dbg !4737
  br i1 %cmp27, label %for.body29, label %for.end60, !dbg !4738

for.body29:                                       ; preds = %for.cond23
  %25 = load ptr, ptr %info.addr, align 8, !dbg !4739
  %sechdrs30 = getelementptr inbounds %struct.load_info, ptr %25, i32 0, i32 4, !dbg !4742
  %26 = load ptr, ptr %sechdrs30, align 8, !dbg !4742
  %27 = load i32, ptr %i, align 4, !dbg !4743
  %idxprom31 = zext i32 %27 to i64, !dbg !4739
  %arrayidx32 = getelementptr %struct.elf64_shdr, ptr %26, i64 %idxprom31, !dbg !4739
  %call33 = call zeroext i1 @sect_empty(ptr noundef %arrayidx32) #17, !dbg !4744
  br i1 %call33, label %if.then34, label %if.end35, !dbg !4745

if.then34:                                        ; preds = %for.body29
  br label %for.inc58, !dbg !4746

if.end35:                                         ; preds = %for.body29
  %28 = load ptr, ptr %info.addr, align 8, !dbg !4747
  %sechdrs36 = getelementptr inbounds %struct.load_info, ptr %28, i32 0, i32 4, !dbg !4749
  %29 = load ptr, ptr %sechdrs36, align 8, !dbg !4749
  %30 = load i32, ptr %i, align 4, !dbg !4750
  %idxprom37 = zext i32 %30 to i64, !dbg !4747
  %arrayidx38 = getelementptr %struct.elf64_shdr, ptr %29, i64 %idxprom37, !dbg !4747
  %sh_type39 = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx38, i32 0, i32 1, !dbg !4751
  %31 = load i32, ptr %sh_type39, align 4, !dbg !4751
  %cmp40 = icmp eq i32 %31, 7, !dbg !4752
  br i1 %cmp40, label %if.then42, label %if.end56, !dbg !4753

if.then42:                                        ; preds = %if.end35
  br label %do.body, !dbg !4754

do.body:                                          ; preds = %if.then42
  br label %do.cond, !dbg !4756

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4756

do.end:                                           ; preds = %do.cond
  %32 = load ptr, ptr %mod.addr, align 8, !dbg !4758
  %sect_attrs43 = getelementptr inbounds %struct.module, ptr %32, i32 0, i32 30, !dbg !4759
  %33 = load ptr, ptr %sect_attrs43, align 32, !dbg !4759
  %attrs44 = getelementptr inbounds %struct.module_sect_attrs, ptr %33, i32 0, i32 2, !dbg !4760
  %34 = load i32, ptr %loaded, align 4, !dbg !4761
  %idxprom45 = zext i32 %34 to i64, !dbg !4758
  %arrayidx46 = getelementptr [0 x %struct.module_sect_attr], ptr %attrs44, i64 0, i64 %idxprom45, !dbg !4758
  %battr = getelementptr inbounds %struct.module_sect_attr, ptr %arrayidx46, i32 0, i32 0, !dbg !4762
  %attr = getelementptr inbounds %struct.bin_attribute, ptr %battr, i32 0, i32 0, !dbg !4763
  %name = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 0, !dbg !4764
  %35 = load ptr, ptr %name, align 8, !dbg !4764
  %36 = load ptr, ptr %nattr, align 8, !dbg !4765
  %attr47 = getelementptr inbounds %struct.bin_attribute, ptr %36, i32 0, i32 0, !dbg !4766
  %name48 = getelementptr inbounds %struct.attribute, ptr %attr47, i32 0, i32 0, !dbg !4767
  store ptr %35, ptr %name48, align 8, !dbg !4768
  %37 = load ptr, ptr %nattr, align 8, !dbg !4769
  %attr49 = getelementptr inbounds %struct.bin_attribute, ptr %37, i32 0, i32 0, !dbg !4770
  %mode = getelementptr inbounds %struct.attribute, ptr %attr49, i32 0, i32 1, !dbg !4771
  store i16 292, ptr %mode, align 8, !dbg !4772
  %38 = load ptr, ptr %info.addr, align 8, !dbg !4773
  %sechdrs50 = getelementptr inbounds %struct.load_info, ptr %38, i32 0, i32 4, !dbg !4774
  %39 = load ptr, ptr %sechdrs50, align 8, !dbg !4774
  %40 = load i32, ptr %i, align 4, !dbg !4775
  %idxprom51 = zext i32 %40 to i64, !dbg !4773
  %arrayidx52 = getelementptr %struct.elf64_shdr, ptr %39, i64 %idxprom51, !dbg !4773
  %sh_size = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx52, i32 0, i32 5, !dbg !4776
  %41 = load i64, ptr %sh_size, align 8, !dbg !4776
  %42 = load ptr, ptr %nattr, align 8, !dbg !4777
  %size = getelementptr inbounds %struct.bin_attribute, ptr %42, i32 0, i32 1, !dbg !4778
  store i64 %41, ptr %size, align 8, !dbg !4779
  %43 = load ptr, ptr %info.addr, align 8, !dbg !4780
  %sechdrs53 = getelementptr inbounds %struct.load_info, ptr %43, i32 0, i32 4, !dbg !4781
  %44 = load ptr, ptr %sechdrs53, align 8, !dbg !4781
  %45 = load i32, ptr %i, align 4, !dbg !4782
  %idxprom54 = zext i32 %45 to i64, !dbg !4780
  %arrayidx55 = getelementptr %struct.elf64_shdr, ptr %44, i64 %idxprom54, !dbg !4780
  %sh_addr = getelementptr inbounds %struct.elf64_shdr, ptr %arrayidx55, i32 0, i32 3, !dbg !4783
  %46 = load i64, ptr %sh_addr, align 8, !dbg !4783
  %47 = inttoptr i64 %46 to ptr, !dbg !4784
  %48 = load ptr, ptr %nattr, align 8, !dbg !4785
  %private = getelementptr inbounds %struct.bin_attribute, ptr %48, i32 0, i32 2, !dbg !4786
  store ptr %47, ptr %private, align 8, !dbg !4787
  %49 = load ptr, ptr %nattr, align 8, !dbg !4788
  %read = getelementptr inbounds %struct.bin_attribute, ptr %49, i32 0, i32 4, !dbg !4789
  store ptr @module_notes_read, ptr %read, align 8, !dbg !4790
  %50 = load ptr, ptr %nattr, align 8, !dbg !4791
  %incdec.ptr = getelementptr %struct.bin_attribute, ptr %50, i32 1, !dbg !4791
  store ptr %incdec.ptr, ptr %nattr, align 8, !dbg !4791
  br label %if.end56, !dbg !4792

if.end56:                                         ; preds = %do.end, %if.end35
  %51 = load i32, ptr %loaded, align 4, !dbg !4793
  %inc57 = add i32 %51, 1, !dbg !4793
  store i32 %inc57, ptr %loaded, align 4, !dbg !4793
  br label %for.inc58, !dbg !4794

for.inc58:                                        ; preds = %if.end56, %if.then34
  %52 = load i32, ptr %i, align 4, !dbg !4795
  %inc59 = add i32 %52, 1, !dbg !4795
  store i32 %inc59, ptr %i, align 4, !dbg !4795
  br label %for.cond23, !dbg !4796, !llvm.loop !4797

for.end60:                                        ; preds = %for.cond23
  %53 = load ptr, ptr %mod.addr, align 8, !dbg !4799
  %mkobj = getelementptr inbounds %struct.module, ptr %53, i32 0, i32 3, !dbg !4800
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %mkobj, i32 0, i32 0, !dbg !4801
  %call61 = call ptr @kobject_create_and_add(ptr noundef @.str.8, ptr noundef %kobj) #17, !dbg !4802
  %54 = load ptr, ptr %notes_attrs, align 8, !dbg !4803
  %dir = getelementptr inbounds %struct.module_notes_attrs, ptr %54, i32 0, i32 0, !dbg !4804
  store ptr %call61, ptr %dir, align 8, !dbg !4805
  %55 = load ptr, ptr %notes_attrs, align 8, !dbg !4806
  %dir62 = getelementptr inbounds %struct.module_notes_attrs, ptr %55, i32 0, i32 0, !dbg !4808
  %56 = load ptr, ptr %dir62, align 8, !dbg !4808
  %tobool63 = icmp ne ptr %56, null, !dbg !4806
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !4809

if.then64:                                        ; preds = %for.end60
  br label %out, !dbg !4810

if.end65:                                         ; preds = %for.end60
  store i32 0, ptr %i, align 4, !dbg !4811
  br label %for.cond66, !dbg !4813

for.cond66:                                       ; preds = %for.inc78, %if.end65
  %57 = load i32, ptr %i, align 4, !dbg !4814
  %58 = load i32, ptr %notes, align 4, !dbg !4816
  %cmp67 = icmp ult i32 %57, %58, !dbg !4817
  br i1 %cmp67, label %for.body69, label %for.end80, !dbg !4818

for.body69:                                       ; preds = %for.cond66
  %59 = load ptr, ptr %notes_attrs, align 8, !dbg !4819
  %dir70 = getelementptr inbounds %struct.module_notes_attrs, ptr %59, i32 0, i32 0, !dbg !4821
  %60 = load ptr, ptr %dir70, align 8, !dbg !4821
  %61 = load ptr, ptr %notes_attrs, align 8, !dbg !4822
  %attrs71 = getelementptr inbounds %struct.module_notes_attrs, ptr %61, i32 0, i32 2, !dbg !4823
  %62 = load i32, ptr %i, align 4, !dbg !4824
  %idxprom72 = zext i32 %62 to i64, !dbg !4822
  %arrayidx73 = getelementptr [0 x %struct.bin_attribute], ptr %attrs71, i64 0, i64 %idxprom72, !dbg !4822
  %call74 = call i32 @sysfs_create_bin_file(ptr noundef %60, ptr noundef %arrayidx73) #17, !dbg !4825
  %tobool75 = icmp ne i32 %call74, 0, !dbg !4825
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !4826

if.then76:                                        ; preds = %for.body69
  br label %out, !dbg !4827

if.end77:                                         ; preds = %for.body69
  br label %for.inc78, !dbg !4828

for.inc78:                                        ; preds = %if.end77
  %63 = load i32, ptr %i, align 4, !dbg !4829
  %inc79 = add i32 %63, 1, !dbg !4829
  store i32 %inc79, ptr %i, align 4, !dbg !4829
  br label %for.cond66, !dbg !4830, !llvm.loop !4831

for.end80:                                        ; preds = %for.cond66
  %64 = load ptr, ptr %notes_attrs, align 8, !dbg !4833
  %65 = load ptr, ptr %mod.addr, align 8, !dbg !4834
  %notes_attrs81 = getelementptr inbounds %struct.module, ptr %65, i32 0, i32 31, !dbg !4835
  store ptr %64, ptr %notes_attrs81, align 8, !dbg !4836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4837

out:                                              ; preds = %if.then76, %if.then64
  call void @llvm.dbg.label(metadata !4664), !dbg !4838
  %66 = load ptr, ptr %notes_attrs, align 8, !dbg !4839
  %67 = load i32, ptr %i, align 4, !dbg !4840
  call void @free_notes_attrs(ptr noundef %66, i32 noundef %67) #17, !dbg !4841
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4842
  br label %cleanup, !dbg !4842

cleanup:                                          ; preds = %out, %for.end80, %if.then19, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nattr) #16, !dbg !4842
  call void @llvm.lifetime.end.p0(i64 8, ptr %notes_attrs) #16, !dbg !4842
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4842
  call void @llvm.lifetime.end.p0(i64 4, ptr %loaded) #16, !dbg !4842
  call void @llvm.lifetime.end.p0(i64 4, ptr %notes) #16, !dbg !4842
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4842

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @module_remove_modinfo_attrs(ptr noundef %mod, i32 noundef %end) #0 align 16 !dbg !4843 {
entry:
  %mod.addr = alloca ptr, align 8
  %end.addr = alloca i32, align 4
  %attr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4847, metadata !DIExpression()), !dbg !4851
  store i32 %end, ptr %end.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4848, metadata !DIExpression()), !dbg !4852
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #16, !dbg !4853
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !4849, metadata !DIExpression()), !dbg !4854
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4855
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4850, metadata !DIExpression()), !dbg !4856
  store i32 0, ptr %i, align 4, !dbg !4857
  br label %for.cond, !dbg !4859

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4860
  %modinfo_attrs = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 4, !dbg !4862
  %1 = load ptr, ptr %modinfo_attrs, align 16, !dbg !4862
  %2 = load i32, ptr %i, align 4, !dbg !4863
  %idxprom = sext i32 %2 to i64, !dbg !4860
  %arrayidx = getelementptr %struct.module_attribute, ptr %1, i64 %idxprom, !dbg !4860
  store ptr %arrayidx, ptr %attr, align 8, !dbg !4864
  %tobool = icmp ne ptr %arrayidx, null, !dbg !4865
  br i1 %tobool, label %for.body, label %for.end, !dbg !4865

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %end.addr, align 4, !dbg !4866
  %cmp = icmp sge i32 %3, 0, !dbg !4869
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4870

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !4871
  %5 = load i32, ptr %end.addr, align 4, !dbg !4872
  %cmp1 = icmp sgt i32 %4, %5, !dbg !4873
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4874

if.then:                                          ; preds = %land.lhs.true
  br label %for.end, !dbg !4875

if.end:                                           ; preds = %land.lhs.true, %for.body
  %6 = load ptr, ptr %attr, align 8, !dbg !4876
  %attr2 = getelementptr inbounds %struct.module_attribute, ptr %6, i32 0, i32 0, !dbg !4878
  %name = getelementptr inbounds %struct.attribute, ptr %attr2, i32 0, i32 0, !dbg !4879
  %7 = load ptr, ptr %name, align 8, !dbg !4879
  %tobool3 = icmp ne ptr %7, null, !dbg !4876
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4880

if.then4:                                         ; preds = %if.end
  br label %for.end, !dbg !4881

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %mod.addr, align 8, !dbg !4882
  %mkobj = getelementptr inbounds %struct.module, ptr %8, i32 0, i32 3, !dbg !4883
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %mkobj, i32 0, i32 0, !dbg !4884
  %9 = load ptr, ptr %attr, align 8, !dbg !4885
  %attr6 = getelementptr inbounds %struct.module_attribute, ptr %9, i32 0, i32 0, !dbg !4886
  call void @sysfs_remove_file(ptr noundef %kobj, ptr noundef %attr6) #17, !dbg !4887
  %10 = load ptr, ptr %attr, align 8, !dbg !4888
  %free = getelementptr inbounds %struct.module_attribute, ptr %10, i32 0, i32 5, !dbg !4890
  %11 = load ptr, ptr %free, align 8, !dbg !4890
  %tobool7 = icmp ne ptr %11, null, !dbg !4888
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !4891

if.then8:                                         ; preds = %if.end5
  %12 = load ptr, ptr %attr, align 8, !dbg !4892
  %free9 = getelementptr inbounds %struct.module_attribute, ptr %12, i32 0, i32 5, !dbg !4893
  %13 = load ptr, ptr %free9, align 8, !dbg !4893
  %14 = load ptr, ptr %mod.addr, align 8, !dbg !4894
  call void %13(ptr noundef %14) #17, !dbg !4892
  br label %if.end10, !dbg !4892

if.end10:                                         ; preds = %if.then8, %if.end5
  br label %for.inc, !dbg !4895

for.inc:                                          ; preds = %if.end10
  %15 = load i32, ptr %i, align 4, !dbg !4896
  %inc = add i32 %15, 1, !dbg !4896
  store i32 %inc, ptr %i, align 4, !dbg !4896
  br label %for.cond, !dbg !4897, !llvm.loop !4898

for.end:                                          ; preds = %if.then4, %if.then, %for.cond
  %16 = load ptr, ptr %mod.addr, align 8, !dbg !4900
  %modinfo_attrs11 = getelementptr inbounds %struct.module, ptr %16, i32 0, i32 4, !dbg !4901
  %17 = load ptr, ptr %modinfo_attrs11, align 16, !dbg !4901
  call void @kfree(ptr noundef %17) #17, !dbg !4902
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4903
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #16, !dbg !4903
  ret void, !dbg !4903
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4904 dso_local void @module_param_sysfs_remove(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4905 dso_local void @kobject_put(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mod_kobject_put(ptr noundef %mod) #0 align 16 !dbg !4906 {
entry:
  %mod.addr = alloca ptr, align 8
  %c = alloca %struct.completion, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4908, metadata !DIExpression()), !dbg !4910
  call void @llvm.lifetime.start.p0(i64 32, ptr %c) #16, !dbg !4911
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4909, metadata !DIExpression()), !dbg !4911
  %done = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 0, !dbg !4911
  store i32 0, ptr %done, align 8, !dbg !4911
  %wait = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 1, !dbg !4911
  %lock = getelementptr inbounds %struct.swait_queue_head, ptr %wait, i32 0, i32 0, !dbg !4911
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 0, !dbg !4911
  %0 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !4911
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4911
  store i32 0, ptr %counter, align 8, !dbg !4911
  %task_list = getelementptr inbounds %struct.swait_queue_head, ptr %wait, i32 0, i32 1, !dbg !4911
  %next = getelementptr inbounds %struct.list_head, ptr %task_list, i32 0, i32 0, !dbg !4911
  %wait1 = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 1, !dbg !4911
  %task_list2 = getelementptr inbounds %struct.swait_queue_head, ptr %wait1, i32 0, i32 1, !dbg !4911
  store ptr %task_list2, ptr %next, align 8, !dbg !4911
  %prev = getelementptr inbounds %struct.list_head, ptr %task_list, i32 0, i32 1, !dbg !4911
  %wait3 = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 1, !dbg !4911
  %task_list4 = getelementptr inbounds %struct.swait_queue_head, ptr %wait3, i32 0, i32 1, !dbg !4911
  store ptr %task_list4, ptr %prev, align 8, !dbg !4911
  %1 = load ptr, ptr %mod.addr, align 8, !dbg !4912
  %mkobj = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 3, !dbg !4913
  %kobj_completion = getelementptr inbounds %struct.module_kobject, ptr %mkobj, i32 0, i32 4, !dbg !4914
  store ptr %c, ptr %kobj_completion, align 8, !dbg !4915
  %2 = load ptr, ptr %mod.addr, align 8, !dbg !4916
  %mkobj5 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 3, !dbg !4917
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %mkobj5, i32 0, i32 0, !dbg !4918
  call void @kobject_put(ptr noundef %kobj) #17, !dbg !4919
  call void @wait_for_completion(ptr noundef %c) #17, !dbg !4920
  call void @llvm.lifetime.end.p0(i64 32, ptr %c) #16, !dbg !4921
  ret void, !dbg !4921
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mod_sysfs_teardown(ptr noundef %mod) #0 align 16 !dbg !4922 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4924, metadata !DIExpression()), !dbg !4925
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4926
  call void @del_usage_links(ptr noundef %0) #17, !dbg !4927
  %1 = load ptr, ptr %mod.addr, align 8, !dbg !4928
  call void @module_remove_modinfo_attrs(ptr noundef %1, i32 noundef -1) #17, !dbg !4929
  %2 = load ptr, ptr %mod.addr, align 8, !dbg !4930
  call void @module_param_sysfs_remove(ptr noundef %2) #17, !dbg !4931
  %3 = load ptr, ptr %mod.addr, align 8, !dbg !4932
  %mkobj = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 3, !dbg !4933
  %drivers_dir = getelementptr inbounds %struct.module_kobject, ptr %mkobj, i32 0, i32 2, !dbg !4934
  %4 = load ptr, ptr %drivers_dir, align 8, !dbg !4934
  call void @kobject_put(ptr noundef %4) #17, !dbg !4935
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !4936
  %holders_dir = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 7, !dbg !4937
  %6 = load ptr, ptr %holders_dir, align 8, !dbg !4937
  call void @kobject_put(ptr noundef %6) #17, !dbg !4938
  %7 = load ptr, ptr %mod.addr, align 8, !dbg !4939
  call void @mod_sysfs_fini(ptr noundef %7) #17, !dbg !4940
  ret void, !dbg !4941
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @del_usage_links(ptr noundef %mod) #0 align 16 !dbg !4942 {
entry:
  %mod.addr = alloca ptr, align 8
  %use = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4944, metadata !DIExpression()), !dbg !4952
  call void @llvm.lifetime.start.p0(i64 8, ptr %use) #16, !dbg !4953
  call void @llvm.dbg.declare(metadata ptr %use, metadata !4945, metadata !DIExpression()), !dbg !4954
  call void @mutex_lock(ptr noundef @module_mutex) #17, !dbg !4955
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4956
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4946, metadata !DIExpression()), !dbg !4956
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4956
  %target_list = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 56, !dbg !4956
  %next = getelementptr inbounds %struct.list_head, ptr %target_list, i32 0, i32 0, !dbg !4956
  %1 = load ptr, ptr %next, align 32, !dbg !4956
  store ptr %1, ptr %__mptr, align 8, !dbg !4956
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4956
  %add.ptr = getelementptr i8, ptr %2, i64 -16, !dbg !4956
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4956
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4957
  %3 = load ptr, ptr %tmp, align 8, !dbg !4956
  store ptr %3, ptr %use, align 8, !dbg !4957
  br label %for.cond, !dbg !4957

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %use, align 8, !dbg !4958
  %target_list1 = getelementptr inbounds %struct.module_use, ptr %4, i32 0, i32 1, !dbg !4958
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !4958
  %target_list2 = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 56, !dbg !4958
  %cmp = icmp eq ptr %target_list1, %target_list2, !dbg !4958
  %lnot = xor i1 %cmp, true, !dbg !4958
  br i1 %lnot, label %for.body, label %for.end, !dbg !4957

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %use, align 8, !dbg !4959
  %target = getelementptr inbounds %struct.module_use, ptr %6, i32 0, i32 3, !dbg !4960
  %7 = load ptr, ptr %target, align 8, !dbg !4960
  %holders_dir = getelementptr inbounds %struct.module, ptr %7, i32 0, i32 7, !dbg !4961
  %8 = load ptr, ptr %holders_dir, align 8, !dbg !4961
  %9 = load ptr, ptr %mod.addr, align 8, !dbg !4962
  %name = getelementptr inbounds %struct.module, ptr %9, i32 0, i32 2, !dbg !4963
  %arraydecay = getelementptr inbounds [56 x i8], ptr %name, i64 0, i64 0, !dbg !4962
  call void @sysfs_remove_link(ptr noundef %8, ptr noundef %arraydecay) #17, !dbg !4964
  br label %for.inc, !dbg !4964

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #16, !dbg !4965
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !4949, metadata !DIExpression()), !dbg !4965
  %10 = load ptr, ptr %use, align 8, !dbg !4965
  %target_list4 = getelementptr inbounds %struct.module_use, ptr %10, i32 0, i32 1, !dbg !4965
  %next5 = getelementptr inbounds %struct.list_head, ptr %target_list4, i32 0, i32 0, !dbg !4965
  %11 = load ptr, ptr %next5, align 8, !dbg !4965
  store ptr %11, ptr %__mptr3, align 8, !dbg !4965
  %12 = load ptr, ptr %__mptr3, align 8, !dbg !4965
  %add.ptr7 = getelementptr i8, ptr %12, i64 -16, !dbg !4965
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !4965
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #16, !dbg !4958
  %13 = load ptr, ptr %tmp6, align 8, !dbg !4965
  store ptr %13, ptr %use, align 8, !dbg !4958
  br label %for.cond, !dbg !4958, !llvm.loop !4966

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @module_mutex) #17, !dbg !4968
  call void @llvm.lifetime.end.p0(i64 8, ptr %use) #16, !dbg !4969
  ret void, !dbg !4969
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mod_sysfs_fini(ptr noundef %mod) #0 align 16 !dbg !4970 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4974
  call void @remove_notes_attrs(ptr noundef %0) #17, !dbg !4975
  %1 = load ptr, ptr %mod.addr, align 8, !dbg !4976
  call void @remove_sect_attrs(ptr noundef %1) #17, !dbg !4977
  %2 = load ptr, ptr %mod.addr, align 8, !dbg !4978
  call void @mod_kobject_put(ptr noundef %2) #17, !dbg !4979
  ret void, !dbg !4980
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @init_param_lock(ptr noundef %mod) #0 align 16 !dbg !9 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4101, metadata !DIExpression()), !dbg !4981
  br label %do.body, !dbg !4982

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4983
  %param_lock = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 11, !dbg !4983
  call void @__mutex_init(ptr noundef %param_lock, ptr noundef @.str.1, ptr noundef @init_param_lock.__key) #17, !dbg !4983
  br label %do.end, !dbg !4983

do.end:                                           ; preds = %do.body
  ret void, !dbg !4985
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4986 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4991 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4995 dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4998 dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5001 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5005, metadata !DIExpression()), !dbg !5007
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5006, metadata !DIExpression()), !dbg !5008
  %0 = load i64, ptr %size.addr, align 8, !dbg !5009
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5010
  %or = or i32 %1, 256, !dbg !5011
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5012
  ret ptr %call, !dbg !5013
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr) #8 align 16 !dbg !5014 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5020, metadata !DIExpression()), !dbg !5022
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5021, metadata !DIExpression()), !dbg !5023
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5024
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !5025
  %call = call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #17, !dbg !5026
  ret i32 %call, !dbg !5027
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5028 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5031 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5033, metadata !DIExpression()), !dbg !5038
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5034, metadata !DIExpression()), !dbg !5039
  %0 = load i64, ptr %size.addr, align 8, !dbg !5040
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5041
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5042

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5043
  %tobool = icmp ne i64 %2, 0, !dbg !5043
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5044

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5045
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5035, metadata !DIExpression()), !dbg !5046
  %3 = load i64, ptr %size.addr, align 8, !dbg !5047
  %cmp = icmp ugt i64 %3, 8192, !dbg !5049
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5050

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5051
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5052
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !5053
  store ptr %call, ptr %retval, align 8, !dbg !5054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5054

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5055
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5055
  store i32 %call2, ptr %index, align 4, !dbg !5056
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5057
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5058
  %9 = ptrtoint ptr %8 to i64, !dbg !5058
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5059
  %idxprom = zext i32 %call3 to i64, !dbg !5060
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5060
  %10 = load i32, ptr %index, align 4, !dbg !5061
  %idxprom4 = zext i32 %10 to i64, !dbg !5060
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5060
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5060
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5062
  %13 = load i64, ptr %size.addr, align 8, !dbg !5063
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5064
  store ptr %call6, ptr %retval, align 8, !dbg !5065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5065

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5066
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5067
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5068
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !5069
  store ptr %call8, ptr %retval, align 8, !dbg !5070
  br label %return, !dbg !5070

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5071
  ret ptr %16, !dbg !5071
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5072 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !5073 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5077, metadata !DIExpression()), !dbg !5079
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5078, metadata !DIExpression()), !dbg !5080
  %0 = load i64, ptr %size.addr, align 8, !dbg !5081
  %tobool = icmp ne i64 %0, 0, !dbg !5081
  br i1 %tobool, label %if.end, label %if.then, !dbg !5083

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5084
  br label %return, !dbg !5084

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5085
  %cmp = icmp ule i64 %1, 8, !dbg !5087
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5088

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5089
  br label %return, !dbg !5089

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5090
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5092
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5093

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5094
  %cmp4 = icmp ule i64 %3, 96, !dbg !5095
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5096

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5097
  br label %return, !dbg !5097

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5098
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5100
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5101

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5102
  %cmp9 = icmp ule i64 %5, 192, !dbg !5103
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5104

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5105
  br label %return, !dbg !5105

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5106
  %cmp12 = icmp ule i64 %6, 8, !dbg !5108
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5109

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5111
  %cmp15 = icmp ule i64 %7, 16, !dbg !5113
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5114

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5116
  %cmp18 = icmp ule i64 %8, 32, !dbg !5118
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5119

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5120
  br label %return, !dbg !5120

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5121
  %cmp21 = icmp ule i64 %9, 64, !dbg !5123
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5124

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5125
  br label %return, !dbg !5125

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5126
  %cmp24 = icmp ule i64 %10, 128, !dbg !5128
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5129

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5131
  %cmp27 = icmp ule i64 %11, 256, !dbg !5133
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5134

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5135
  br label %return, !dbg !5135

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5136
  %cmp30 = icmp ule i64 %12, 512, !dbg !5138
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5139

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5140
  br label %return, !dbg !5140

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5141
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5143
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5144

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5145
  br label %return, !dbg !5145

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5146
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5148
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5149

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5150
  br label %return, !dbg !5150

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5151
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5153
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5154

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5155
  br label %return, !dbg !5155

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5156
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5158
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5159

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5160
  br label %return, !dbg !5160

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5161
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5163
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5164

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5165
  br label %return, !dbg !5165

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5166
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5168
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5169

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5170
  br label %return, !dbg !5170

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5171
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5173
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5174

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5175
  br label %return, !dbg !5175

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5176
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5178
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5179

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5180
  br label %return, !dbg !5180

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5181
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5183
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5184

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5185
  br label %return, !dbg !5185

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5186
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5188
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5189

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5190
  br label %return, !dbg !5190

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5191
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5193
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5194

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5195
  br label %return, !dbg !5195

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5196
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5198
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5199

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5200
  br label %return, !dbg !5200

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5201, !range !5203, !noundef !411
  %tobool69 = trunc i8 %25 to i1, !dbg !5201
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5204

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5205

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #21, !dbg !5206, !srcloc !5209
  unreachable, !dbg !5206

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5210

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5211

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5212

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5214

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5212

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #16, !dbg !5216, !srcloc !5218
  br label %do.end75, !dbg !5216

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5212

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5219
  br label %return, !dbg !5219

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5220
  ret i32 %26, !dbg !5220
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5221 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !5227 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5231, metadata !DIExpression()), !dbg !5233
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5232, metadata !DIExpression()), !dbg !5234
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5235
  %and = and i32 %0, 17, !dbg !5235
  %cmp = icmp eq i32 %and, 0, !dbg !5235
  %lnot = xor i1 %cmp, true, !dbg !5235
  %lnot1 = xor i1 %lnot, true, !dbg !5235
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5235
  %conv = sext i32 %lnot.ext to i64, !dbg !5235
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5235
  %tobool = icmp ne i64 %expval, 0, !dbg !5235
  br i1 %tobool, label %if.then, label %if.end, !dbg !5237

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5238
  br label %return, !dbg !5238

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5239
  %and2 = and i32 %1, 1, !dbg !5241
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5241
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5242

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5243
  br label %return, !dbg !5243

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5244
  br label %return, !dbg !5244

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5246
  ret i32 %2, !dbg !5246
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5247 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5248 dso_local void @__compiletime_assert_255() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5249 dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5252 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5255 dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5258 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @sect_empty(ptr noundef %sect) #8 align 16 !dbg !5259 {
entry:
  %sect.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !5267
  %sh_flags = getelementptr inbounds %struct.elf64_shdr, ptr %0, i32 0, i32 2, !dbg !5268
  %1 = load i64, ptr %sh_flags, align 8, !dbg !5268
  %and = and i64 %1, 2, !dbg !5269
  %tobool = icmp ne i64 %and, 0, !dbg !5269
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5270

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %sect.addr, align 8, !dbg !5271
  %sh_size = getelementptr inbounds %struct.elf64_shdr, ptr %2, i32 0, i32 5, !dbg !5272
  %3 = load i64, ptr %sh_size, align 8, !dbg !5272
  %cmp = icmp eq i64 %3, 0, !dbg !5273
  br label %lor.end, !dbg !5270

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  ret i1 %4, !dbg !5274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #8 align 16 !dbg !5275 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !5280, metadata !DIExpression()), !dbg !5283
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !5281, metadata !DIExpression()), !dbg !5284
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5282, metadata !DIExpression()), !dbg !5286
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !5287
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !5287
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !5287
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5287
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5287
  store i64 %4, ptr %bytes, align 8, !dbg !5287
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !5287
  br i1 %call, label %if.then, label %if.end, !dbg !5289

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5290

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5291
  store i64 %5, ptr %retval, align 8, !dbg !5292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5292

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !5293
  %6 = load i64, ptr %retval, align 8, !dbg !5293
  ret i64 %6, !dbg !5293
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #8 align 16 !dbg !5294 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !5296, metadata !DIExpression()), !dbg !5299
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !5297, metadata !DIExpression()), !dbg !5300
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !5301
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5298, metadata !DIExpression()), !dbg !5302
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !5303
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !5303
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5303
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5303
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5303
  store i64 %4, ptr %bytes, align 8, !dbg !5303
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !5303
  br i1 %call, label %if.then, label %if.end, !dbg !5305

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5306

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !5307
  store i64 %5, ptr %retval, align 8, !dbg !5308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5308

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !5309
  %6 = load i64, ptr %retval, align 8, !dbg !5309
  ret i64 %6, !dbg !5309
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5310 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @module_sect_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %battr, ptr noundef %buf, i64 noundef %pos, i64 noundef %count) #0 align 16 !dbg !5314 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %battr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %sattr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %bounce = alloca [20 x i8], align 16
  %wrote = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x287 = alloca i64, align 8
  %__UNIQUE_ID___y288 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5316, metadata !DIExpression()), !dbg !5331
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5317, metadata !DIExpression()), !dbg !5332
  store ptr %battr, ptr %battr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %battr.addr, metadata !5318, metadata !DIExpression()), !dbg !5333
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5319, metadata !DIExpression()), !dbg !5334
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5320, metadata !DIExpression()), !dbg !5335
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5321, metadata !DIExpression()), !dbg !5336
  call void @llvm.lifetime.start.p0(i64 8, ptr %sattr) #16, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %sattr, metadata !5322, metadata !DIExpression()), !dbg !5338
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5339
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5323, metadata !DIExpression()), !dbg !5339
  %0 = load ptr, ptr %battr.addr, align 8, !dbg !5339
  store ptr %0, ptr %__mptr, align 8, !dbg !5339
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5339
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5339
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5339
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5340
  %2 = load ptr, ptr %tmp, align 8, !dbg !5339
  store ptr %2, ptr %sattr, align 8, !dbg !5338
  call void @llvm.lifetime.start.p0(i64 20, ptr %bounce) #16, !dbg !5341
  call void @llvm.dbg.declare(metadata ptr %bounce, metadata !5325, metadata !DIExpression()), !dbg !5342
  call void @llvm.lifetime.start.p0(i64 8, ptr %wrote) #16, !dbg !5343
  call void @llvm.dbg.declare(metadata ptr %wrote, metadata !5327, metadata !DIExpression()), !dbg !5344
  %3 = load i64, ptr %pos.addr, align 8, !dbg !5345
  %cmp = icmp ne i64 %3, 0, !dbg !5347
  br i1 %cmp, label %if.then, label %if.end, !dbg !5348

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !5349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5349

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [20 x i8], ptr %bounce, i64 0, i64 0, !dbg !5350
  %4 = load ptr, ptr %file.addr, align 8, !dbg !5351
  %f_cred = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 8, !dbg !5352
  %5 = load ptr, ptr %f_cred, align 8, !dbg !5352
  %call = call zeroext i1 @kallsyms_show_value(ptr noundef %5) #17, !dbg !5353
  br i1 %call, label %cond.true, label %cond.false, !dbg !5353

cond.true:                                        ; preds = %if.end
  %6 = load ptr, ptr %sattr, align 8, !dbg !5354
  %address = getelementptr inbounds %struct.module_sect_attr, ptr %6, i32 0, i32 1, !dbg !5355
  %7 = load i64, ptr %address, align 8, !dbg !5355
  %8 = inttoptr i64 %7 to ptr, !dbg !5356
  br label %cond.end, !dbg !5353

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5353

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !5353
  %call1 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %arraydecay, i64 noundef 20, ptr noundef @.str.7, ptr noundef %cond) #17, !dbg !5357
  %conv = sext i32 %call1 to i64, !dbg !5357
  store i64 %conv, ptr %wrote, align 8, !dbg !5358
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x287) #16, !dbg !5359
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x287, metadata !5328, metadata !DIExpression()), !dbg !5359
  %9 = load i64, ptr %count.addr, align 8, !dbg !5359
  store i64 %9, ptr %__UNIQUE_ID___x287, align 8, !dbg !5359
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y288) #16, !dbg !5359
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y288, metadata !5330, metadata !DIExpression()), !dbg !5359
  %10 = load i64, ptr %wrote, align 8, !dbg !5359
  store i64 %10, ptr %__UNIQUE_ID___y288, align 8, !dbg !5359
  %11 = load i64, ptr %__UNIQUE_ID___x287, align 8, !dbg !5359
  %12 = load i64, ptr %__UNIQUE_ID___y288, align 8, !dbg !5359
  %cmp3 = icmp ult i64 %11, %12, !dbg !5359
  br i1 %cmp3, label %cond.true5, label %cond.false6, !dbg !5359

cond.true5:                                       ; preds = %cond.end
  %13 = load i64, ptr %__UNIQUE_ID___x287, align 8, !dbg !5359
  br label %cond.end7, !dbg !5359

cond.false6:                                      ; preds = %cond.end
  %14 = load i64, ptr %__UNIQUE_ID___y288, align 8, !dbg !5359
  br label %cond.end7, !dbg !5359

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i64 [ %13, %cond.true5 ], [ %14, %cond.false6 ], !dbg !5359
  store i64 %cond8, ptr %tmp2, align 8, !dbg !5359
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y288) #16, !dbg !5360
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x287) #16, !dbg !5360
  %15 = load i64, ptr %tmp2, align 8, !dbg !5359
  store i64 %15, ptr %count.addr, align 8, !dbg !5361
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !5362
  %arraydecay9 = getelementptr inbounds [20 x i8], ptr %bounce, i64 0, i64 0, !dbg !5363
  %17 = load i64, ptr %count.addr, align 8, !dbg !5364
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 16 %arraydecay9, i64 %17, i1 false), !dbg !5363
  %18 = load i64, ptr %count.addr, align 8, !dbg !5365
  store i64 %18, ptr %retval, align 8, !dbg !5366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5366

cleanup:                                          ; preds = %cond.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %wrote) #16, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 20, ptr %bounce) #16, !dbg !5367
  call void @llvm.lifetime.end.p0(i64 8, ptr %sattr) #16, !dbg !5367
  %19 = load i64, ptr %retval, align 8, !dbg !5367
  ret i64 %19, !dbg !5367
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5368 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_sect_attrs(ptr noundef %sect_attrs) #0 align 16 !dbg !5371 {
entry:
  %sect_attrs.addr = alloca ptr, align 8
  %section = alloca i32, align 4
  store ptr %sect_attrs, ptr %sect_attrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sect_attrs.addr, metadata !5375, metadata !DIExpression()), !dbg !5377
  call void @llvm.lifetime.start.p0(i64 4, ptr %section) #16, !dbg !5378
  call void @llvm.dbg.declare(metadata ptr %section, metadata !5376, metadata !DIExpression()), !dbg !5379
  store i32 0, ptr %section, align 4, !dbg !5380
  br label %for.cond, !dbg !5382

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %section, align 4, !dbg !5383
  %1 = load ptr, ptr %sect_attrs.addr, align 8, !dbg !5385
  %nsections = getelementptr inbounds %struct.module_sect_attrs, ptr %1, i32 0, i32 1, !dbg !5386
  %2 = load i32, ptr %nsections, align 8, !dbg !5386
  %cmp = icmp ult i32 %0, %2, !dbg !5387
  br i1 %cmp, label %for.body, label %for.end, !dbg !5388

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %sect_attrs.addr, align 8, !dbg !5389
  %attrs = getelementptr inbounds %struct.module_sect_attrs, ptr %3, i32 0, i32 2, !dbg !5390
  %4 = load i32, ptr %section, align 4, !dbg !5391
  %idxprom = zext i32 %4 to i64, !dbg !5389
  %arrayidx = getelementptr [0 x %struct.module_sect_attr], ptr %attrs, i64 0, i64 %idxprom, !dbg !5389
  %battr = getelementptr inbounds %struct.module_sect_attr, ptr %arrayidx, i32 0, i32 0, !dbg !5392
  %attr = getelementptr inbounds %struct.bin_attribute, ptr %battr, i32 0, i32 0, !dbg !5393
  %name = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 0, !dbg !5394
  %5 = load ptr, ptr %name, align 8, !dbg !5394
  call void @kfree(ptr noundef %5) #17, !dbg !5395
  br label %for.inc, !dbg !5395

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %section, align 4, !dbg !5396
  %inc = add i32 %6, 1, !dbg !5396
  store i32 %inc, ptr %section, align 4, !dbg !5396
  br label %for.cond, !dbg !5397, !llvm.loop !5398

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %sect_attrs.addr, align 8, !dbg !5400
  call void @kfree(ptr noundef %7) #17, !dbg !5401
  call void @llvm.lifetime.end.p0(i64 4, ptr %section) #16, !dbg !5402
  ret void, !dbg !5402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #8 align 16 !dbg !5403 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5409, !range !5203, !noundef !411
  %tobool = trunc i8 %0 to i1, !dbg !5409
  %lnot = xor i1 %tobool, true, !dbg !5409
  %lnot1 = xor i1 %lnot, true, !dbg !5409
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5409
  %conv = sext i32 %lnot.ext to i64, !dbg !5409
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5409
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5409
  ret i1 %tobool2, !dbg !5410
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5411 dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5415 dso_local zeroext i1 @kallsyms_show_value(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @module_notes_read(ptr noundef %filp, ptr noundef %kobj, ptr noundef %bin_attr, ptr noundef %buf, i64 noundef %pos, i64 noundef %count) #0 align 16 !dbg !5419 {
entry:
  %filp.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %bin_attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5421, metadata !DIExpression()), !dbg !5427
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5422, metadata !DIExpression()), !dbg !5428
  store ptr %bin_attr, ptr %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bin_attr.addr, metadata !5423, metadata !DIExpression()), !dbg !5429
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5424, metadata !DIExpression()), !dbg !5430
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5425, metadata !DIExpression()), !dbg !5431
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5426, metadata !DIExpression()), !dbg !5432
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5433
  %1 = load ptr, ptr %bin_attr.addr, align 8, !dbg !5434
  %private = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 2, !dbg !5435
  %2 = load ptr, ptr %private, align 8, !dbg !5435
  %3 = load i64, ptr %pos.addr, align 8, !dbg !5436
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !5437
  %4 = load i64, ptr %count.addr, align 8, !dbg !5438
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %add.ptr, i64 %4, i1 false), !dbg !5439
  %5 = load i64, ptr %count.addr, align 8, !dbg !5440
  ret i64 %5, !dbg !5441
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5442 dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_notes_attrs(ptr noundef %notes_attrs, i32 noundef %i) #0 align 16 !dbg !5447 {
entry:
  %notes_attrs.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %notes_attrs, ptr %notes_attrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %notes_attrs.addr, metadata !5451, metadata !DIExpression()), !dbg !5453
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5452, metadata !DIExpression()), !dbg !5454
  %0 = load ptr, ptr %notes_attrs.addr, align 8, !dbg !5455
  %dir = getelementptr inbounds %struct.module_notes_attrs, ptr %0, i32 0, i32 0, !dbg !5457
  %1 = load ptr, ptr %dir, align 8, !dbg !5457
  %tobool = icmp ne ptr %1, null, !dbg !5455
  br i1 %tobool, label %if.then, label %if.end, !dbg !5458

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !5459

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i32, ptr %i.addr, align 4, !dbg !5461
  %dec = add i32 %2, -1, !dbg !5461
  store i32 %dec, ptr %i.addr, align 4, !dbg !5461
  %cmp = icmp ugt i32 %2, 0, !dbg !5462
  br i1 %cmp, label %while.body, label %while.end, !dbg !5459

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %notes_attrs.addr, align 8, !dbg !5463
  %dir1 = getelementptr inbounds %struct.module_notes_attrs, ptr %3, i32 0, i32 0, !dbg !5464
  %4 = load ptr, ptr %dir1, align 8, !dbg !5464
  %5 = load ptr, ptr %notes_attrs.addr, align 8, !dbg !5465
  %attrs = getelementptr inbounds %struct.module_notes_attrs, ptr %5, i32 0, i32 2, !dbg !5466
  %6 = load i32, ptr %i.addr, align 4, !dbg !5467
  %idxprom = zext i32 %6 to i64, !dbg !5465
  %arrayidx = getelementptr [0 x %struct.bin_attribute], ptr %attrs, i64 0, i64 %idxprom, !dbg !5465
  call void @sysfs_remove_bin_file(ptr noundef %4, ptr noundef %arrayidx) #17, !dbg !5468
  br label %while.cond, !dbg !5459, !llvm.loop !5469

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %notes_attrs.addr, align 8, !dbg !5471
  %dir2 = getelementptr inbounds %struct.module_notes_attrs, ptr %7, i32 0, i32 0, !dbg !5472
  %8 = load ptr, ptr %dir2, align 8, !dbg !5472
  call void @kobject_put(ptr noundef %8) #17, !dbg !5473
  br label %if.end, !dbg !5474

if.end:                                           ; preds = %while.end, %entry
  %9 = load ptr, ptr %notes_attrs.addr, align 8, !dbg !5475
  call void @kfree(ptr noundef %9) #17, !dbg !5476
  ret void, !dbg !5477
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5478 dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sysfs_remove_file(ptr noundef %kobj, ptr noundef %attr) #8 align 16 !dbg !5481 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5485, metadata !DIExpression()), !dbg !5487
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5486, metadata !DIExpression()), !dbg !5488
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5489
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !5490
  call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #17, !dbg !5491
  ret void, !dbg !5492
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5493 dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5496 dso_local void @wait_for_completion(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5499 dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_notes_attrs(ptr noundef %mod) #0 align 16 !dbg !5502 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5504, metadata !DIExpression()), !dbg !5505
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !5506
  %notes_attrs = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 31, !dbg !5508
  %1 = load ptr, ptr %notes_attrs, align 8, !dbg !5508
  %tobool = icmp ne ptr %1, null, !dbg !5506
  br i1 %tobool, label %if.then, label %if.end, !dbg !5509

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %mod.addr, align 8, !dbg !5510
  %notes_attrs1 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 31, !dbg !5511
  %3 = load ptr, ptr %notes_attrs1, align 8, !dbg !5511
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !5512
  %notes_attrs2 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 31, !dbg !5513
  %5 = load ptr, ptr %notes_attrs2, align 8, !dbg !5513
  %notes = getelementptr inbounds %struct.module_notes_attrs, ptr %5, i32 0, i32 1, !dbg !5514
  %6 = load i32, ptr %notes, align 8, !dbg !5514
  call void @free_notes_attrs(ptr noundef %3, i32 noundef %6) #17, !dbg !5515
  br label %if.end, !dbg !5515

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5516
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_sect_attrs(ptr noundef %mod) #0 align 16 !dbg !5517 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5519, metadata !DIExpression()), !dbg !5520
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !5521
  %sect_attrs = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 30, !dbg !5523
  %1 = load ptr, ptr %sect_attrs, align 32, !dbg !5523
  %tobool = icmp ne ptr %1, null, !dbg !5521
  br i1 %tobool, label %if.then, label %if.end, !dbg !5524

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %mod.addr, align 8, !dbg !5525
  %mkobj = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 3, !dbg !5527
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %mkobj, i32 0, i32 0, !dbg !5528
  %3 = load ptr, ptr %mod.addr, align 8, !dbg !5529
  %sect_attrs1 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 30, !dbg !5530
  %4 = load ptr, ptr %sect_attrs1, align 32, !dbg !5530
  %grp = getelementptr inbounds %struct.module_sect_attrs, ptr %4, i32 0, i32 0, !dbg !5531
  call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef %grp) #17, !dbg !5532
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !5533
  %sect_attrs2 = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 30, !dbg !5534
  %6 = load ptr, ptr %sect_attrs2, align 32, !dbg !5534
  call void @free_sect_attrs(ptr noundef %6) #17, !dbg !5535
  %7 = load ptr, ptr %mod.addr, align 8, !dbg !5536
  %sect_attrs3 = getelementptr inbounds %struct.module, ptr %7, i32 0, i32 30, !dbg !5537
  store ptr null, ptr %sect_attrs3, align 32, !dbg !5538
  br label %if.end, !dbg !5539

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5540
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5541 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!4043}
!llvm.module.flags = !{!4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109}
!llvm.ident = !{!4110}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/module/sysfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc8b81a78a3147ef8e98c8f4d00fe363")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__key", scope: !9, file: !2, line: 435, type: !409, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "init_param_lock", scope: !2, file: !2, line: 433, type: !10, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !4100)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !14, line: 402, size: 9216, align: 512, elements: !15)
!14 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!15 = !{!16, !24, !31, !35, !3702, !3726, !3727, !3728, !3729, !3738, !3741, !3742, !3743, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3810, !3814, !3832, !3849, !3850, !3851, !3852, !3861, !3884, !3885, !3897, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3916, !3917, !4003, !4011, !4012, !4013, !4015, !4019, !4020, !4024, !4025, !4026, !4027, !4029, !4030, !4031, !4038, !4039, !4040, !4042}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !13, file: !14, line: 403, baseType: !17, size: 32)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !14, line: 312, baseType: !18, size: 32, elements: !19)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!21 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!22 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!23 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !13, file: !14, line: 406, baseType: !25, size: 128, offset: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !26, line: 190, size: 128, elements: !27)
!26 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !25, file: !26, line: 191, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !25, file: !26, line: 191, baseType: !29, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !14, line: 409, baseType: !32, size: 448, offset: 192)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 56)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !13, file: !14, line: 417, baseType: !36, size: 768, offset: 640)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !14, line: 45, size: 768, elements: !37)
!37 = !{!38, !3696, !3697, !3698, !3701}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !36, file: !14, line: 46, baseType: !39, size: 512)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !40, line: 64, size: 512, elements: !41)
!40 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!41 = !{!42, !45, !46, !48, !138, !3583, !3686, !3691, !3692, !3693, !3694, !3695}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !40, line: 65, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !39, file: !40, line: 66, baseType: !25, size: 128, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !39, file: !40, line: 67, baseType: !47, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !39, file: !40, line: 68, baseType: !49, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !40, line: 168, size: 768, elements: !51)
!51 = !{!52, !53, !97, !98}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !50, file: !40, line: 169, baseType: !25, size: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !50, file: !40, line: 170, baseType: !54, size: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !55, line: 29, baseType: !56)
!55 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !55, line: 17, size: 32, elements: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, scope: !56, file: !55, line: 18, baseType: !59, size: 32)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !56, file: !55, line: 18, size: 32, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !59, file: !55, line: 19, baseType: !62, size: 32)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !63, line: 14, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !62, file: !63, line: 15, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !67, line: 44, baseType: !68)
!67 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !67, line: 14, size: 32, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !67, line: 15, baseType: !71, size: 32)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !68, file: !67, line: 15, size: 32, elements: !72)
!72 = !{!73, !79, !89}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !71, file: !67, line: 16, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !26, line: 174, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 172, size: 32, elements: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !75, file: !26, line: 173, baseType: !78, size: 32)
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !71, file: !67, line: 24, baseType: !80, size: 16)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !71, file: !67, line: 24, size: 16, elements: !81)
!81 = !{!82, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !80, file: !67, line: 25, baseType: !83, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !84, line: 17, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !86, line: 21, baseType: !87)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !80, file: !67, line: 26, baseType: !83, size: 8, offset: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !71, file: !67, line: 28, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !71, file: !67, line: 28, size: 32, elements: !91)
!91 = !{!92, !96}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !90, file: !67, line: 29, baseType: !93, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !84, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !86, line: 24, baseType: !95)
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !90, file: !67, line: 30, baseType: !93, size: 16, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !50, file: !40, line: 171, baseType: !39, size: 512, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !50, file: !40, line: 172, baseType: !99, size: 64, offset: 704)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !40, line: 133, size: 192, elements: !102)
!102 = !{!103, !110, !115}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !101, file: !40, line: 134, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!78, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !101, file: !40, line: 135, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!43, !108}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !101, file: !40, line: 136, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!78, !108, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !40, line: 125, size: 20736, elements: !122)
!122 = !{!123, !128, !132, !133, !137}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !121, file: !40, line: 126, baseType: !124, size: 192)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 192, elements: !126)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!126 = !{!127}
!127 = !DISubrange(count: 3)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !121, file: !40, line: 127, baseType: !129, size: 4096, offset: 192)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 4096, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !121, file: !40, line: 128, baseType: !78, size: 32, offset: 4288)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !121, file: !40, line: 129, baseType: !134, size: 16384, offset: 4320)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 2048)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !121, file: !40, line: 130, baseType: !78, size: 32, offset: 20704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !39, file: !40, line: 69, baseType: !139, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !40, line: 116, size: 384, elements: !142)
!142 = !{!143, !147, !176, !3539, !3573, !3577}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !141, file: !40, line: 117, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !47}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !141, file: !40, line: 118, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !151, line: 254, size: 128, elements: !152)
!151 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!152 = !{!153, !168}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !150, file: !151, line: 255, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!157, !47, !162, !125}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !26, line: 66, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !159, line: 73, baseType: !160)
!159 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !159, line: 15, baseType: !161)
!161 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !151, line: 30, size: 128, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !151, line: 31, baseType: !43, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !163, file: !151, line: 32, baseType: !167, size: 16, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !26, line: 24, baseType: !95)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !150, file: !151, line: 256, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!157, !47, !162, !43, !172}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 61, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !159, line: 72, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !159, line: 16, baseType: !175)
!175 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !141, file: !40, line: 119, baseType: !177, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !151, line: 84, size: 320, elements: !181)
!181 = !{!182, !183, !187, !3535, !3537}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !180, file: !151, line: 85, baseType: !43, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !180, file: !151, line: 86, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!167, !47, !162, !78}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !180, file: !151, line: 88, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!167, !47, !191, !78}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !151, line: 175, size: 512, elements: !193)
!193 = !{!194, !195, !196, !198, !3526, !3530, !3531}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !192, file: !151, line: 176, baseType: !163, size: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !192, file: !151, line: 177, baseType: !172, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !192, file: !151, line: 178, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !192, file: !151, line: 179, baseType: !199, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !204, line: 472, size: 1536, align: 64, elements: !205)
!204 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!205 = !{!206, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3520, !3521, !3522, !3523, !3524, !3525}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !203, file: !204, line: 473, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !204, line: 641, size: 4800, elements: !209)
!209 = !{!210, !211, !212, !220, !221, !228, !229, !232, !233, !3291, !3292, !3293, !3294, !3295, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3335, !3338, !3339, !3340, !3349, !3350, !3351, !3352}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !208, file: !204, line: 642, baseType: !167, size: 16)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !208, file: !204, line: 643, baseType: !95, size: 16, offset: 16)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !208, file: !204, line: 644, baseType: !213, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !214, line: 23, baseType: !215)
!214 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 21, size: 32, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !215, file: !214, line: 22, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !26, line: 37, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !159, line: 49, baseType: !18)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !208, file: !204, line: 645, baseType: !25, size: 128, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !208, file: !204, line: 646, baseType: !222, size: 32, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !214, line: 28, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 26, size: 32, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !223, file: !214, line: 27, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !26, line: 38, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !159, line: 50, baseType: !18)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !208, file: !204, line: 647, baseType: !18, size: 32, offset: 224)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !208, file: !204, line: 650, baseType: !230, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !204, line: 607, flags: DIFlagFwdDecl)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !208, file: !204, line: 651, baseType: !230, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !208, file: !204, line: 654, baseType: !234, size: 64, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !204, line: 1966, size: 2048, align: 512, elements: !237)
!237 = !{!238, !3116, !3129, !3133, !3137, !3141, !3145, !3149, !3153, !3157, !3161, !3162, !3166, !3170, !3207, !3236, !3240, !3246, !3250, !3254, !3258, !3262, !3266, !3272, !3276}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !236, file: !204, line: 1967, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !207, !242, !18}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !244, line: 82, size: 1536, elements: !245)
!244 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!245 = !{!246, !247, !257, !265, !266, !286, !287, !291, !304, !3099, !3100, !3101, !3102, !3108, !3109, !3110}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !243, file: !244, line: 84, baseType: !18, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !243, file: !244, line: 85, baseType: !248, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !249, line: 275, baseType: !250)
!249 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !249, line: 275, size: 32, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !250, file: !249, line: 275, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !249, line: 69, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !249, line: 64, size: 32, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !254, file: !249, line: 65, baseType: !18, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !243, file: !244, line: 86, baseType: !258, size: 128, offset: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !259, line: 38, size: 128, elements: !260)
!259 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!260 = !{!261, !263}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !259, line: 39, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !258, file: !259, line: 39, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !243, file: !244, line: 87, baseType: !242, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !243, file: !244, line: 88, baseType: !267, size: 128, offset: 256)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !244, line: 49, size: 128, elements: !268)
!268 = !{!269, !283}
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !267, file: !244, line: 50, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !267, file: !244, line: 50, size: 64, elements: !271)
!271 = !{!272, !279}
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !244, line: 51, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !244, line: 51, size: 64, elements: !274)
!274 = !{!275, !278}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !273, file: !244, line: 52, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !18)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !273, file: !244, line: 52, baseType: !276, size: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !270, file: !244, line: 54, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !282)
!282 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !244, line: 56, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !243, file: !244, line: 89, baseType: !207, size: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !243, file: !244, line: 91, baseType: !288, size: 256, offset: 448)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !243, file: !244, line: 94, baseType: !292, size: 64, offset: 704)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !293, line: 25, size: 64, elements: !294)
!293 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !293, line: 26, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !293, line: 26, size: 64, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !296, file: !293, line: 28, baseType: !281, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !293, line: 30, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !293, line: 30, size: 64, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !300, file: !293, line: 31, baseType: !54, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !300, file: !293, line: 32, baseType: !78, size: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !243, file: !244, line: 95, baseType: !305, size: 64, offset: 768)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !244, line: 128, size: 1024, align: 512, elements: !308)
!308 = !{!309, !313, !314, !321, !327, !331, !335, !339, !340, !344, !348, !3089, !3093}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !307, file: !244, line: 129, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!78, !242, !18}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !307, file: !244, line: 130, baseType: !310, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !307, file: !244, line: 131, baseType: !315, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!78, !318, !320}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !307, file: !244, line: 132, baseType: !322, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!78, !318, !18, !43, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !307, file: !244, line: 134, baseType: !328, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!78, !318}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !307, file: !244, line: 135, baseType: !332, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!78, !242}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !307, file: !244, line: 136, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !242}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !307, file: !244, line: 137, baseType: !336, size: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !307, file: !244, line: 138, baseType: !341, size: 64, offset: 512)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !242, !207}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !307, file: !244, line: 139, baseType: !345, size: 64, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!125, !242, !125, !78}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !307, file: !244, line: 140, baseType: !349, size: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!352, !3088}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !354, line: 70, size: 256, elements: !355)
!354 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!355 = !{!356, !357, !3084, !3085}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !353, file: !354, line: 71, baseType: !242, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !353, file: !354, line: 72, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !204, line: 1190, size: 10752, elements: !360)
!360 = !{!361, !362, !365, !366, !367, !371, !420, !592, !632, !722, !726, !727, !728, !729, !730, !739, !740, !741, !742, !747, !751, !752, !755, !758, !761, !764, !765, !766, !807, !3015, !3016, !3017, !3018, !3019, !3020, !3023, !3025, !3032, !3033, !3034, !3035, !3036, !3051, !3052, !3053, !3054, !3055, !3058, !3059, !3060, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !359, file: !204, line: 1191, baseType: !25, size: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !359, file: !204, line: 1192, baseType: !363, size: 32, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !26, line: 21, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !26, line: 18, baseType: !276)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !359, file: !204, line: 1193, baseType: !87, size: 8, offset: 160)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !359, file: !204, line: 1194, baseType: !175, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !359, file: !204, line: 1195, baseType: !368, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !26, line: 52, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !159, line: 88, baseType: !370)
!370 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !359, file: !204, line: 1196, baseType: !372, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !204, line: 2366, size: 576, elements: !374)
!374 = !{!375, !376, !377, !384, !388, !392, !396, !397, !398, !408, !412, !413, !414, !416, !417, !418, !419}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !204, line: 2367, baseType: !43, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !373, file: !204, line: 2368, baseType: !78, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !373, file: !204, line: 2376, baseType: !378, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!78, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !383, line: 32, flags: DIFlagFwdDecl)
!383 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!384 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !373, file: !204, line: 2377, baseType: !385, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !204, line: 75, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !373, file: !204, line: 2378, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!242, !372, !78, !43, !197}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !373, file: !204, line: 2380, baseType: !393, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !358}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !373, file: !204, line: 2381, baseType: !12, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !204, line: 2382, baseType: !372, size: 64, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !373, file: !204, line: 2383, baseType: !399, size: 64, offset: 512)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !26, line: 194, size: 64, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !399, file: !26, line: 195, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !26, line: 198, size: 128, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !26, line: 199, baseType: !402, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !403, file: !26, line: 199, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !373, file: !204, line: 2385, baseType: !409, offset: 576)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !410, line: 206, elements: !411)
!410 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!411 = !{}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !373, file: !204, line: 2386, baseType: !409, offset: 576)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !373, file: !204, line: 2387, baseType: !409, offset: 576)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !373, file: !204, line: 2388, baseType: !415, offset: 576)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, elements: !126)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !373, file: !204, line: 2390, baseType: !409, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !373, file: !204, line: 2391, baseType: !409, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !373, file: !204, line: 2392, baseType: !409, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !373, file: !204, line: 2393, baseType: !409, offset: 576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !359, file: !204, line: 1197, baseType: !421, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !204, line: 2057, size: 1664, elements: !424)
!424 = !{!425, !429, !433, !434, !438, !444, !448, !449, !450, !454, !462, !466, !467, !468, !474, !479, !480, !487, !488, !489, !490, !494, !498, !573, !590, !591}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !423, file: !204, line: 2058, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!207, !358}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !423, file: !204, line: 2059, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !207}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !423, file: !204, line: 2060, baseType: !430, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !423, file: !204, line: 2062, baseType: !435, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !207, !78}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !423, file: !204, line: 2063, baseType: !439, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!78, !207, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !204, line: 309, flags: DIFlagFwdDecl)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !423, file: !204, line: 2064, baseType: !445, size: 64, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!78, !207}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !423, file: !204, line: 2065, baseType: !430, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !423, file: !204, line: 2066, baseType: !393, size: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !423, file: !204, line: 2067, baseType: !451, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!78, !358, !78}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !423, file: !204, line: 2068, baseType: !455, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!78, !358, !458}
!458 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !204, line: 2052, baseType: !18, size: 32, elements: !459)
!459 = !{!460, !461}
!460 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!461 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !423, file: !204, line: 2069, baseType: !463, size: 64, offset: 640)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!78, !358}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !423, file: !204, line: 2070, baseType: !455, size: 64, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !423, file: !204, line: 2071, baseType: !463, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !423, file: !204, line: 2072, baseType: !469, size: 64, offset: 832)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!78, !242, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !204, line: 62, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !423, file: !204, line: 2073, baseType: !475, size: 64, offset: 896)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!78, !358, !478, !125}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !423, file: !204, line: 2074, baseType: !393, size: 64, offset: 960)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !423, file: !204, line: 2076, baseType: !481, size: 64, offset: 1024)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!78, !484, !242}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !486, line: 66, flags: DIFlagFwdDecl)
!486 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!487 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !423, file: !204, line: 2077, baseType: !481, size: 64, offset: 1088)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !423, file: !204, line: 2078, baseType: !481, size: 64, offset: 1152)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !423, file: !204, line: 2079, baseType: !481, size: 64, offset: 1216)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !423, file: !204, line: 2081, baseType: !491, size: 64, offset: 1280)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!157, !358, !78, !125, !172, !368}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !423, file: !204, line: 2082, baseType: !495, size: 64, offset: 1344)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!157, !358, !78, !43, !172, !368}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !423, file: !204, line: 2083, baseType: !499, size: 64, offset: 1408)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !207}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !505, line: 296, size: 1664, elements: !506)
!505 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!506 = !{!507, !508, !509, !510, !511, !532, !533, !534, !535, !556, !557, !558}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !504, file: !505, line: 297, baseType: !403, size: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !504, file: !505, line: 298, baseType: !25, size: 128, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !504, file: !505, line: 299, baseType: !25, size: 128, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !504, file: !505, line: 300, baseType: !25, size: 128, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !504, file: !505, line: 301, baseType: !512, size: 256, offset: 512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !513, line: 66, size: 256, elements: !514)
!513 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!514 = !{!515, !524, !526, !531}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !512, file: !513, line: 67, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !517, line: 13, baseType: !518)
!517 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !26, line: 181, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 179, size: 64, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !519, file: !26, line: 180, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !370)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !512, file: !513, line: 68, baseType: !525, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !63, line: 23, baseType: !62)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !512, file: !513, line: 70, baseType: !527, size: 32, offset: 96)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !528, line: 15, size: 32, elements: !529)
!528 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !527, file: !528, line: 20, baseType: !74, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !512, file: !513, line: 72, baseType: !25, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !504, file: !505, line: 302, baseType: !54, size: 32, offset: 768)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !504, file: !505, line: 303, baseType: !74, size: 32, offset: 800)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !504, file: !505, line: 304, baseType: !358, size: 64, offset: 832)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !504, file: !505, line: 305, baseType: !536, size: 64, offset: 896)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !505, line: 68, size: 64, elements: !537)
!537 = !{!538, !550}
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !505, line: 69, baseType: !539, size: 32)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !505, line: 69, size: 32, elements: !540)
!540 = !{!541, !542, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !539, file: !505, line: 70, baseType: !213, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !539, file: !505, line: 71, baseType: !222, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !539, file: !505, line: 72, baseType: !544, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !545, line: 24, baseType: !546)
!545 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 22, size: 32, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !546, file: !545, line: 23, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !545, line: 20, baseType: !219)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !536, file: !505, line: 74, baseType: !551, size: 32, offset: 32)
!551 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !505, line: 54, baseType: !18, size: 32, elements: !552)
!552 = !{!553, !554, !555}
!553 = !DIEnumerator(name: "USRQUOTA", value: 0)
!554 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!555 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !504, file: !505, line: 306, baseType: !368, size: 64, offset: 960)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !504, file: !505, line: 307, baseType: !175, size: 64, offset: 1024)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !504, file: !505, line: 308, baseType: !559, size: 576, offset: 1088)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !505, line: 205, size: 576, elements: !560)
!560 = !{!561, !563, !564, !565, !566, !567, !568, !569, !572}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !559, file: !505, line: 206, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !505, line: 66, baseType: !370)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !559, file: !505, line: 207, baseType: !562, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !559, file: !505, line: 208, baseType: !562, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !559, file: !505, line: 209, baseType: !562, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !559, file: !505, line: 210, baseType: !562, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !559, file: !505, line: 211, baseType: !562, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !559, file: !505, line: 212, baseType: !562, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !559, file: !505, line: 213, baseType: !570, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !571, line: 8, baseType: !523)
!571 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !559, file: !505, line: 214, baseType: !570, size: 64, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !423, file: !204, line: 2085, baseType: !574, size: 64, offset: 1472)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!161, !358, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !579, line: 15, size: 256, elements: !580)
!579 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!580 = !{!581, !583, !584, !585, !586}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !578, file: !579, line: 16, baseType: !582, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !26, line: 154, baseType: !18)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !578, file: !579, line: 19, baseType: !78, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !578, file: !579, line: 26, baseType: !175, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !578, file: !579, line: 33, baseType: !175, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !578, file: !579, line: 36, baseType: !587, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !589, line: 33, flags: DIFlagFwdDecl)
!589 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!590 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !423, file: !204, line: 2087, baseType: !574, size: 64, offset: 1536)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !423, file: !204, line: 2089, baseType: !393, size: 64, offset: 1600)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !359, file: !204, line: 1198, baseType: !593, size: 64, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !505, line: 324, size: 704, elements: !596)
!596 = !{!597, !601, !605, !609, !610, !611, !612, !613, !618, !623, !627}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !595, file: !505, line: 325, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!78, !503}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !595, file: !505, line: 326, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!503, !358, !78}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !595, file: !505, line: 327, baseType: !606, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !503}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !595, file: !505, line: 328, baseType: !598, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !595, file: !505, line: 329, baseType: !598, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !595, file: !505, line: 330, baseType: !598, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !595, file: !505, line: 331, baseType: !451, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !595, file: !505, line: 334, baseType: !614, size: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!617, !207}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !595, file: !505, line: 335, baseType: !619, size: 64, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!78, !207, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !595, file: !505, line: 337, baseType: !624, size: 64, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!78, !207, !617}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !595, file: !505, line: 339, baseType: !628, size: 64, offset: 640)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!78, !358, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !359, file: !204, line: 1199, baseType: !633, size: 64, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !505, line: 430, size: 704, elements: !636)
!636 = !{!637, !648, !649, !653, !654, !655, !670, !693, !697, !698, !721}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !635, file: !505, line: 431, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!78, !358, !78, !78, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !644, line: 8, size: 128, elements: !645)
!644 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !643, file: !644, line: 9, baseType: !352, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !643, file: !644, line: 10, baseType: !242, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !635, file: !505, line: 432, baseType: !451, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !635, file: !505, line: 433, baseType: !650, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!78, !358, !18}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !635, file: !505, line: 434, baseType: !650, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !635, file: !505, line: 435, baseType: !451, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !635, file: !505, line: 436, baseType: !656, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!78, !358, !78, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !505, line: 417, size: 256, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !660, file: !505, line: 418, baseType: !78, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !660, file: !505, line: 419, baseType: !18, size: 32, offset: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !660, file: !505, line: 420, baseType: !18, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !660, file: !505, line: 422, baseType: !18, size: 32, offset: 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !660, file: !505, line: 423, baseType: !18, size: 32, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !660, file: !505, line: 424, baseType: !18, size: 32, offset: 160)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !660, file: !505, line: 425, baseType: !18, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !660, file: !505, line: 426, baseType: !18, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !635, file: !505, line: 437, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!78, !358, !536, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !505, line: 345, size: 960, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !675, file: !505, line: 346, baseType: !78, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !675, file: !505, line: 347, baseType: !280, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !675, file: !505, line: 348, baseType: !280, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !675, file: !505, line: 349, baseType: !280, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !675, file: !505, line: 350, baseType: !280, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !675, file: !505, line: 351, baseType: !280, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !675, file: !505, line: 352, baseType: !280, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !675, file: !505, line: 353, baseType: !522, size: 64, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !675, file: !505, line: 355, baseType: !522, size: 64, offset: 512)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !675, file: !505, line: 356, baseType: !78, size: 32, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !675, file: !505, line: 357, baseType: !78, size: 32, offset: 608)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !675, file: !505, line: 358, baseType: !280, size: 64, offset: 640)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !675, file: !505, line: 359, baseType: !280, size: 64, offset: 704)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !675, file: !505, line: 360, baseType: !280, size: 64, offset: 768)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !675, file: !505, line: 361, baseType: !522, size: 64, offset: 832)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !675, file: !505, line: 362, baseType: !78, size: 32, offset: 896)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !635, file: !505, line: 438, baseType: !694, size: 64, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!78, !358, !631, !674}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !635, file: !505, line: 440, baseType: !671, size: 64, offset: 512)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !635, file: !505, line: 441, baseType: !699, size: 64, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!78, !358, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !505, line: 411, size: 1408, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !703, file: !505, line: 412, baseType: !18, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !703, file: !505, line: 413, baseType: !707, size: 1344, offset: 64)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 1344, elements: !126)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !505, line: 397, size: 448, elements: !709)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !720}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !505, line: 398, baseType: !18, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !708, file: !505, line: 399, baseType: !18, size: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !708, file: !505, line: 401, baseType: !18, size: 32, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !708, file: !505, line: 402, baseType: !18, size: 32, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !708, file: !505, line: 403, baseType: !18, size: 32, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !708, file: !505, line: 404, baseType: !18, size: 32, offset: 160)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !708, file: !505, line: 405, baseType: !18, size: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !708, file: !505, line: 406, baseType: !282, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !708, file: !505, line: 407, baseType: !719, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !26, line: 132, baseType: !280)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !708, file: !505, line: 408, baseType: !719, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !635, file: !505, line: 442, baseType: !650, size: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !359, file: !204, line: 1200, baseType: !723, size: 64, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !204, line: 54, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !359, file: !204, line: 1201, baseType: !175, size: 64, offset: 640)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !359, file: !204, line: 1202, baseType: !175, size: 64, offset: 704)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !359, file: !204, line: 1203, baseType: !175, size: 64, offset: 768)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !359, file: !204, line: 1204, baseType: !242, size: 64, offset: 832)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !359, file: !204, line: 1205, baseType: !731, size: 320, offset: 896)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !732, line: 48, size: 320, elements: !733)
!732 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!733 = !{!734, !735, !736, !737, !738}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !731, file: !732, line: 49, baseType: !516, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !731, file: !732, line: 55, baseType: !516, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !731, file: !732, line: 57, baseType: !527, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !731, file: !732, line: 59, baseType: !525, size: 32, offset: 160)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !731, file: !732, line: 60, baseType: !25, size: 128, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !359, file: !204, line: 1206, baseType: !78, size: 32, offset: 1216)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !359, file: !204, line: 1207, baseType: !74, size: 32, offset: 1248)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !359, file: !204, line: 1209, baseType: !197, size: 64, offset: 1280)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !359, file: !204, line: 1211, baseType: !743, size: 64, offset: 1344)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !204, line: 1211, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !359, file: !204, line: 1223, baseType: !748, size: 64, offset: 1408)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !259, line: 34, size: 64, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !748, file: !259, line: 35, baseType: !262, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !359, file: !204, line: 1224, baseType: !25, size: 128, offset: 1472)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !359, file: !204, line: 1225, baseType: !753, size: 64, offset: 1600)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !204, line: 1225, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !359, file: !204, line: 1226, baseType: !756, size: 64, offset: 1664)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !204, line: 1226, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !359, file: !204, line: 1227, baseType: !759, size: 64, offset: 1728)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !204, line: 50, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !359, file: !204, line: 1228, baseType: !762, size: 64, offset: 1792)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !204, line: 1228, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !359, file: !204, line: 1229, baseType: !403, size: 128, offset: 1856)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !359, file: !204, line: 1230, baseType: !18, size: 32, offset: 1984)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !359, file: !204, line: 1231, baseType: !767, size: 2496, offset: 2048)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !505, line: 521, size: 2496, elements: !768)
!768 = !{!769, !770, !771, !773, !805}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !505, line: 522, baseType: !18, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !767, file: !505, line: 523, baseType: !731, size: 320, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !767, file: !505, line: 524, baseType: !772, size: 192, offset: 384)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 192, elements: !126)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !767, file: !505, line: 525, baseType: !774, size: 1728, offset: 576)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 1728, elements: !126)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !505, line: 222, size: 576, elements: !776)
!776 = !{!777, !797, !798, !799, !800, !801, !802, !803, !804}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !775, file: !505, line: 223, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !505, line: 445, size: 256, elements: !780)
!780 = !{!781, !782, !795, !796}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !779, file: !505, line: 446, baseType: !78, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !779, file: !505, line: 447, baseType: !783, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !505, line: 312, size: 512, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !785, file: !505, line: 313, baseType: !451, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !785, file: !505, line: 314, baseType: !451, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !785, file: !505, line: 315, baseType: !451, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !785, file: !505, line: 316, baseType: !451, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !785, file: !505, line: 317, baseType: !598, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !785, file: !505, line: 318, baseType: !598, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !785, file: !505, line: 319, baseType: !598, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !785, file: !505, line: 320, baseType: !628, size: 64, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !779, file: !505, line: 448, baseType: !12, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !779, file: !505, line: 449, baseType: !778, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !775, file: !505, line: 224, baseType: !78, size: 32, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !775, file: !505, line: 226, baseType: !25, size: 128, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !775, file: !505, line: 227, baseType: !175, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !775, file: !505, line: 228, baseType: !18, size: 32, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !775, file: !505, line: 229, baseType: !18, size: 32, offset: 352)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !775, file: !505, line: 230, baseType: !562, size: 64, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !775, file: !505, line: 231, baseType: !562, size: 64, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !775, file: !505, line: 232, baseType: !197, size: 64, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !767, file: !505, line: 526, baseType: !806, size: 192, offset: 2304)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 192, elements: !126)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !359, file: !204, line: 1233, baseType: !808, size: 2368, offset: 4544)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !204, line: 1184, size: 2368, elements: !809)
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !808, file: !204, line: 1185, baseType: !95, size: 16)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !808, file: !204, line: 1186, baseType: !95, size: 16, offset: 16)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !808, file: !204, line: 1187, baseType: !813, size: 2304, offset: 64)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 2304, elements: !126)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !815, line: 12, size: 768, elements: !816)
!815 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!816 = !{!817, !839, !841, !3013, !3014}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !814, file: !815, line: 13, baseType: !818, size: 384)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !819, line: 17, size: 384, elements: !820)
!819 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!820 = !{!821, !822, !823, !830}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !818, file: !819, line: 18, baseType: !78, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !818, file: !819, line: 19, baseType: !78, size: 32, offset: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !818, file: !819, line: 20, baseType: !824, size: 192, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !825, line: 41, baseType: !826)
!825 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !825, line: 37, size: 192, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !826, file: !825, line: 38, baseType: !54, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !826, file: !825, line: 39, baseType: !25, size: 128, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !818, file: !819, line: 22, baseType: !831, size: 128, align: 64, offset: 256)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !26, line: 232, size: 128, align: 64, elements: !832)
!832 = !{!833, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !831, file: !26, line: 233, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !831, file: !26, line: 234, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !834}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !814, file: !815, line: 14, baseType: !840, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !814, file: !815, line: 15, baseType: !842, size: 64, offset: 448)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !843, line: 16, size: 64, elements: !844)
!843 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!844 = !{!845}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !842, file: !843, line: 17, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !486, line: 746, size: 58368, elements: !848)
!848 = !{!849, !857, !858, !859, !865, !866, !867, !868, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !946, !957, !1055, !1059, !1062, !1093, !1094, !1095, !1096, !1107, !1109, !1110, !1111, !1112, !1113, !1114, !1125, !1126, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1143, !1144, !1151, !1152, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2178, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2193, !2194, !2195, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2227, !2233, !2234, !2235, !2236, !2237, !2241, !2244, !2251, !2256, !2259, !2262, !2265, !2269, !2409, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2449, !2450, !2451, !2460, !2468, !2469, !2470, !2471, !2472, !2477, !2478, !2479, !2482, !2483, !2486, !2489, !2492, !2500, !2503, !2504, !2589, !2590, !2591, !2592, !2593, !2599, !2600, !2601, !2602, !2605, !2606, !2609, !2612, !2613, !2616, !2617, !2618, !2621, !2622, !2623, !2624, !2625, !2626, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2658, !2659, !2665, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2677, !2755, !2757, !2758, !2759, !2760, !2761, !2773, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2790, !2791, !2792}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !847, file: !486, line: 752, baseType: !850, size: 192)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !851, line: 56, size: 192, elements: !852)
!851 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!852 = !{!853, !854, !855, !856}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !850, file: !851, line: 57, baseType: !175, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !850, file: !851, line: 58, baseType: !175, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !850, file: !851, line: 59, baseType: !276, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !850, file: !851, line: 61, baseType: !276, size: 32, offset: 160)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !847, file: !486, line: 754, baseType: !18, size: 32, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !847, file: !486, line: 767, baseType: !197, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !847, file: !486, line: 768, baseType: !860, size: 32, offset: 320)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !861, line: 113, baseType: !862)
!861 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !861, line: 111, size: 32, elements: !863)
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !862, file: !861, line: 112, baseType: !74, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !847, file: !486, line: 770, baseType: !18, size: 32, offset: 352)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !847, file: !486, line: 771, baseType: !18, size: 32, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !847, file: !486, line: 774, baseType: !78, size: 32, offset: 416)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !847, file: !486, line: 775, baseType: !869, size: 128, offset: 448)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !870, line: 58, size: 128, elements: !871)
!870 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!871 = !{!872, !878, !883, !884}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !869, file: !870, line: 59, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !874, line: 60, size: 64, elements: !875)
!874 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!875 = !{!876}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !873, file: !874, line: 61, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !869, file: !870, line: 60, baseType: !879, size: 32, offset: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !869, file: !870, line: 60, size: 32, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !879, file: !870, line: 61, baseType: !18, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !879, file: !870, line: 62, baseType: !74, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !869, file: !870, line: 65, baseType: !93, size: 16, offset: 96)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !869, file: !870, line: 65, baseType: !93, size: 16, offset: 112)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !847, file: !486, line: 776, baseType: !18, size: 32, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !847, file: !486, line: 777, baseType: !175, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !847, file: !486, line: 778, baseType: !846, size: 64, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !847, file: !486, line: 787, baseType: !78, size: 32, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !847, file: !486, line: 788, baseType: !78, size: 32, offset: 800)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !847, file: !486, line: 790, baseType: !78, size: 32, offset: 832)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !847, file: !486, line: 792, baseType: !78, size: 32, offset: 864)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !847, file: !486, line: 793, baseType: !78, size: 32, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !847, file: !486, line: 794, baseType: !78, size: 32, offset: 928)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !847, file: !486, line: 795, baseType: !18, size: 32, offset: 960)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !847, file: !486, line: 797, baseType: !896, size: 2048, offset: 1024)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !486, line: 551, size: 2048, elements: !897)
!897 = !{!898, !903, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !925, !928, !929, !930}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !896, file: !486, line: 553, baseType: !899, size: 128)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !486, line: 411, size: 128, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !899, file: !486, line: 412, baseType: !175, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !899, file: !486, line: 413, baseType: !276, size: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !896, file: !486, line: 554, baseType: !904, size: 192, align: 64, offset: 128)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !905, line: 5, size: 192, align: 64, elements: !906)
!905 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!906 = !{!907, !908, !910}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !904, file: !905, line: 6, baseType: !175, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !904, file: !905, line: 7, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !904, file: !905, line: 8, baseType: !909, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !896, file: !486, line: 555, baseType: !280, size: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !896, file: !486, line: 556, baseType: !280, size: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !896, file: !486, line: 558, baseType: !25, size: 128, offset: 448)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !896, file: !486, line: 559, baseType: !18, size: 32, offset: 576)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !896, file: !486, line: 561, baseType: !280, size: 64, offset: 640)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !896, file: !486, line: 562, baseType: !280, size: 64, offset: 704)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !896, file: !486, line: 563, baseType: !280, size: 64, offset: 768)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !896, file: !486, line: 564, baseType: !280, size: 64, offset: 832)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !896, file: !486, line: 565, baseType: !522, size: 64, offset: 896)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !896, file: !486, line: 566, baseType: !280, size: 64, offset: 960)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !896, file: !486, line: 568, baseType: !280, size: 64, offset: 1024)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !896, file: !486, line: 571, baseType: !78, size: 32, offset: 1088)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !896, file: !486, line: 572, baseType: !924, size: 64, offset: 1152)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !896, file: !486, line: 574, baseType: !926, size: 64, offset: 1216)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !486, line: 49, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !896, file: !486, line: 576, baseType: !926, size: 64, offset: 1280)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !896, file: !486, line: 578, baseType: !175, size: 64, offset: 1344)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !896, file: !486, line: 588, baseType: !931, size: 512, align: 512, offset: 1536)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !486, line: 497, size: 512, align: 512, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938, !939, !940, !941}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !931, file: !486, line: 498, baseType: !280, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !931, file: !486, line: 499, baseType: !280, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !931, file: !486, line: 500, baseType: !280, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !931, file: !486, line: 501, baseType: !276, size: 32, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !931, file: !486, line: 502, baseType: !276, size: 32, offset: 224)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !931, file: !486, line: 503, baseType: !175, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !931, file: !486, line: 504, baseType: !175, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !931, file: !486, line: 505, baseType: !175, size: 64, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !931, file: !486, line: 506, baseType: !942, size: 64, align: 64, offset: 448)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !486, line: 445, size: 64, align: 64, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !942, file: !486, line: 446, baseType: !18, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !942, file: !486, line: 447, baseType: !18, size: 32, offset: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !847, file: !486, line: 798, baseType: !947, size: 384, offset: 3072)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !486, line: 592, size: 384, elements: !948)
!948 = !{!949, !950, !951, !952, !953, !954, !955}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !947, file: !486, line: 593, baseType: !25, size: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !947, file: !486, line: 594, baseType: !175, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !947, file: !486, line: 595, baseType: !175, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !947, file: !486, line: 596, baseType: !18, size: 32, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !947, file: !486, line: 597, baseType: !95, size: 16, offset: 288)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !947, file: !486, line: 598, baseType: !95, size: 16, offset: 304)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !947, file: !486, line: 600, baseType: !956, size: 64, offset: 320)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !847, file: !486, line: 799, baseType: !958, size: 1792, offset: 3456)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !486, line: 610, size: 1792, elements: !959)
!959 = !{!960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !1052, !1053}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !958, file: !486, line: 611, baseType: !904, size: 192, align: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !958, file: !486, line: 618, baseType: !280, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !958, file: !486, line: 619, baseType: !280, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !958, file: !486, line: 620, baseType: !280, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !958, file: !486, line: 621, baseType: !280, size: 64, offset: 384)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !958, file: !486, line: 622, baseType: !280, size: 64, offset: 448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !958, file: !486, line: 629, baseType: !522, size: 64, offset: 512)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !958, file: !486, line: 630, baseType: !280, size: 64, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !958, file: !486, line: 631, baseType: !18, size: 32, offset: 640)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !958, file: !486, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !958, file: !486, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !958, file: !486, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !958, file: !486, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !958, file: !486, line: 662, baseType: !974, size: 512, offset: 704)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !975, line: 118, size: 512, elements: !976)
!975 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!976 = !{!977, !985, !986, !995, !1048, !1049, !1050, !1051}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !974, file: !975, line: 119, baseType: !978, size: 256)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !979, line: 9, size: 256, elements: !980)
!979 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !978, file: !979, line: 10, baseType: !904, size: 192, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !978, file: !979, line: 11, baseType: !983, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !984, line: 29, baseType: !522)
!984 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !974, file: !975, line: 120, baseType: !983, size: 64, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !974, file: !975, line: 121, baseType: !987, size: 64, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!990, !994}
!990 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !975, line: 65, baseType: !18, size: 32, elements: !991)
!991 = !{!992, !993}
!992 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!993 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !974, file: !975, line: 122, baseType: !996, size: 64, offset: 384)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !975, line: 159, size: 512, align: 512, elements: !998)
!998 = !{!999, !1022, !1023, !1026, !1031, !1032, !1043, !1047}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !997, file: !975, line: 160, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !975, line: 215, size: 4608, align: 512, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1001, file: !975, line: 216, baseType: !525, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1001, file: !975, line: 217, baseType: !18, size: 32, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1001, file: !975, line: 218, baseType: !18, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1001, file: !975, line: 219, baseType: !18, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1001, file: !975, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1001, file: !975, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1001, file: !975, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1001, file: !975, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1001, file: !975, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1001, file: !975, line: 226, baseType: !18, size: 32, offset: 160)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1001, file: !975, line: 227, baseType: !95, size: 16, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1001, file: !975, line: 228, baseType: !95, size: 16, offset: 208)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1001, file: !975, line: 229, baseType: !18, size: 32, offset: 224)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1001, file: !975, line: 235, baseType: !983, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1001, file: !975, line: 236, baseType: !994, size: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1001, file: !975, line: 237, baseType: !983, size: 64, offset: 384)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1001, file: !975, line: 238, baseType: !994, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1001, file: !975, line: 239, baseType: !1021, size: 4096, align: 512, offset: 512)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !997, size: 4096, align: 512, elements: !5)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !997, file: !975, line: 161, baseType: !18, size: 32, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !997, file: !975, line: 162, baseType: !1024, size: 32, offset: 96)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !26, line: 32, baseType: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !159, line: 96, baseType: !78)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !997, file: !975, line: 163, baseType: !1027, size: 32, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !249, line: 274, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !249, line: 274, size: 32, elements: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1028, file: !249, line: 274, baseType: !253, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !997, file: !975, line: 164, baseType: !994, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !997, file: !975, line: 165, baseType: !1033, size: 128, offset: 256)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !979, line: 14, size: 128, elements: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1033, file: !979, line: 15, baseType: !1036, size: 128)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !905, line: 26, size: 128, elements: !1037)
!1037 = !{!1038, !1042}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1036, file: !905, line: 27, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !905, line: 12, size: 64, elements: !1040)
!1040 = !{!1041}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1039, file: !905, line: 13, baseType: !909, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1036, file: !905, line: 28, baseType: !909, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !997, file: !975, line: 166, baseType: !1044, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!983}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !997, file: !975, line: 167, baseType: !983, size: 64, offset: 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !974, file: !975, line: 123, baseType: !83, size: 8, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !974, file: !975, line: 124, baseType: !83, size: 8, offset: 456)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !974, file: !975, line: 125, baseType: !83, size: 8, offset: 464)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !974, file: !975, line: 126, baseType: !83, size: 8, offset: 472)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !958, file: !486, line: 671, baseType: !974, size: 512, offset: 1216)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !958, file: !486, line: 679, baseType: !1054, size: 64, offset: 1728)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !847, file: !486, line: 800, baseType: !1056, size: 64, offset: 5248)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1058)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !486, line: 800, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !847, file: !486, line: 809, baseType: !1060, size: 64, offset: 5312)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !486, line: 70, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !847, file: !486, line: 825, baseType: !1063, size: 2048, align: 512, offset: 5632)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !486, line: 509, size: 2048, align: 512, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1063, file: !486, line: 511, baseType: !280, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1063, file: !486, line: 512, baseType: !280, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1063, file: !486, line: 513, baseType: !280, size: 64, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1063, file: !486, line: 514, baseType: !280, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1063, file: !486, line: 515, baseType: !280, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1063, file: !486, line: 516, baseType: !280, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1063, file: !486, line: 518, baseType: !280, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1063, file: !486, line: 519, baseType: !280, size: 64, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1063, file: !486, line: 520, baseType: !522, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1063, file: !486, line: 522, baseType: !280, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1063, file: !486, line: 523, baseType: !280, size: 64, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1063, file: !486, line: 524, baseType: !522, size: 64, offset: 704)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1063, file: !486, line: 526, baseType: !522, size: 64, offset: 768)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1063, file: !486, line: 527, baseType: !280, size: 64, offset: 832)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1063, file: !486, line: 529, baseType: !280, size: 64, offset: 896)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1063, file: !486, line: 530, baseType: !280, size: 64, offset: 960)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1063, file: !486, line: 531, baseType: !280, size: 64, offset: 1024)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1063, file: !486, line: 532, baseType: !280, size: 64, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1063, file: !486, line: 533, baseType: !280, size: 64, offset: 1152)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1063, file: !486, line: 535, baseType: !280, size: 64, offset: 1216)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1063, file: !486, line: 536, baseType: !280, size: 64, offset: 1280)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1063, file: !486, line: 537, baseType: !280, size: 64, offset: 1344)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1063, file: !486, line: 538, baseType: !280, size: 64, offset: 1408)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1063, file: !486, line: 539, baseType: !280, size: 64, offset: 1472)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1063, file: !486, line: 540, baseType: !280, size: 64, offset: 1536)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1063, file: !486, line: 541, baseType: !280, size: 64, offset: 1600)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1063, file: !486, line: 542, baseType: !280, size: 64, offset: 1664)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1063, file: !486, line: 543, baseType: !280, size: 64, offset: 1728)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !847, file: !486, line: 833, baseType: !18, size: 32, offset: 7680)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !847, file: !486, line: 836, baseType: !18, size: 32, offset: 7712)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !847, file: !486, line: 837, baseType: !78, size: 32, offset: 7744)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !847, file: !486, line: 838, baseType: !1097, size: 64, offset: 7808)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1100, line: 19, baseType: !1101)
!1100 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1100, line: 19, size: 64, elements: !1102)
!1102 = !{!1103}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1101, file: !1100, line: 19, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 64, elements: !1105)
!1105 = !{!1106}
!1106 = !DISubrange(count: 1)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !847, file: !486, line: 839, baseType: !1108, size: 64, offset: 7872)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !847, file: !486, line: 840, baseType: !1099, size: 64, offset: 7936)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !847, file: !486, line: 841, baseType: !197, size: 64, offset: 8000)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !847, file: !486, line: 843, baseType: !95, size: 16, offset: 8064)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !847, file: !486, line: 845, baseType: !95, size: 16, offset: 8080)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !847, file: !486, line: 848, baseType: !78, size: 32, offset: 8096)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !847, file: !486, line: 849, baseType: !1115, size: 32, offset: 8128)
!1115 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !486, line: 718, size: 32, elements: !1116)
!1116 = !{!1117, !1124}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1115, file: !486, line: 724, baseType: !1118, size: 32)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1115, file: !486, line: 719, size: 32, elements: !1119)
!1119 = !{!1120, !1121, !1122, !1123}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1118, file: !486, line: 720, baseType: !83, size: 8)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1118, file: !486, line: 721, baseType: !83, size: 8, offset: 8)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1118, file: !486, line: 722, baseType: !83, size: 8, offset: 16)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1118, file: !486, line: 723, baseType: !83, size: 8, offset: 24)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1115, file: !486, line: 725, baseType: !276, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !847, file: !486, line: 850, baseType: !25, size: 128, offset: 8192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !847, file: !486, line: 851, baseType: !1127, size: 64, offset: 8320)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !486, line: 60, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !847, file: !486, line: 855, baseType: !175, size: 64, offset: 8384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !847, file: !486, line: 856, baseType: !83, size: 8, offset: 8448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !847, file: !486, line: 857, baseType: !83, size: 8, offset: 8456)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !847, file: !486, line: 858, baseType: !78, size: 32, offset: 8480)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !847, file: !486, line: 859, baseType: !25, size: 128, offset: 8512)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !847, file: !486, line: 860, baseType: !78, size: 32, offset: 8640)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !847, file: !486, line: 861, baseType: !25, size: 128, offset: 8704)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !847, file: !486, line: 873, baseType: !1137, size: 256, offset: 8832)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !486, line: 376, size: 256, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1137, file: !486, line: 381, baseType: !175, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1137, file: !486, line: 384, baseType: !282, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1137, file: !486, line: 389, baseType: !282, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1137, file: !486, line: 392, baseType: !282, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !847, file: !486, line: 875, baseType: !25, size: 128, offset: 9088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !847, file: !486, line: 877, baseType: !1145, size: 320, offset: 9216)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1146, line: 86, size: 320, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1145, file: !1146, line: 87, baseType: !78, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1145, file: !1146, line: 88, baseType: !25, size: 128, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1145, file: !1146, line: 89, baseType: !25, size: 128, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !847, file: !486, line: 878, baseType: !904, size: 192, align: 64, offset: 9536)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !847, file: !486, line: 881, baseType: !1153, size: 64, offset: 9728)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !589, line: 733, size: 10240, elements: !1155)
!1155 = !{!1156, !2091}
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !589, line: 734, baseType: !1157, size: 10240)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1154, file: !589, line: 734, size: 10240, elements: !1158)
!1158 = !{!1159, !1163, !1176, !1954, !1955, !1956, !1957, !1958, !1959, !1966, !1967, !1968, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2007, !2009, !2012, !2059, !2060, !2061, !2064, !2065, !2066, !2069, !2070, !2071, !2078, !2079}
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !589, line: 739, baseType: !1160, size: 512, align: 512)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !589, line: 739, size: 512, align: 512, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1160, file: !589, line: 747, baseType: !74, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1157, file: !589, line: 750, baseType: !1164, size: 128, offset: 512)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1165, line: 218, size: 128, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1166 = !{!1167, !1174, !1175}
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1164, file: !1165, line: 219, baseType: !1168, size: 32)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1164, file: !1165, line: 219, size: 32, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1168, file: !1165, line: 220, baseType: !54, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1168, file: !1165, line: 221, baseType: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1165, line: 197, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1165, line: 197, elements: !411)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1164, file: !1165, line: 223, baseType: !18, size: 32, offset: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1164, file: !1165, line: 224, baseType: !197, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1157, file: !589, line: 752, baseType: !1177, size: 64, offset: 640)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!175, !1180, !175, !175, !175, !175}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !204, line: 994, size: 1856, align: 64, elements: !1182)
!1182 = !{!1183, !1189, !1190, !1192, !1193, !1194, !1195, !1196, !1256, !1451, !1460, !1461, !1462, !1944, !1945, !1946, !1947, !1949, !1950, !1953}
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !204, line: 995, baseType: !1184, size: 128)
!1184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !204, line: 995, size: 128, elements: !1185)
!1185 = !{!1186, !1187, !1188}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1184, file: !204, line: 996, baseType: !873, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1184, file: !204, line: 997, baseType: !831, size: 128, align: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1184, file: !204, line: 998, baseType: !18, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1181, file: !204, line: 1005, baseType: !54, size: 32, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1181, file: !204, line: 1006, baseType: !1191, size: 32, offset: 160)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !26, line: 156, baseType: !18)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1181, file: !204, line: 1007, baseType: !516, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1181, file: !204, line: 1008, baseType: !512, size: 256, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1181, file: !204, line: 1009, baseType: !368, size: 64, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1181, file: !204, line: 1010, baseType: !18, size: 32, offset: 576)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1181, file: !204, line: 1011, baseType: !1197, size: 256, offset: 640)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !204, line: 948, size: 256, elements: !1198)
!1198 = !{!1199, !1220, !1245, !1253, !1254, !1255}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1197, file: !204, line: 949, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1201, line: 34, baseType: !1202)
!1201 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1201, line: 25, size: 64, elements: !1203)
!1203 = !{!1204}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1202, file: !1201, line: 26, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1206, line: 27, baseType: !1207)
!1206 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1206, line: 13, size: 64, elements: !1208)
!1208 = !{!1209, !1219}
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !1206, line: 14, baseType: !1210, size: 32)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !1206, line: 14, size: 32, elements: !1211)
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1210, file: !1206, line: 15, baseType: !74, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !1206, line: 16, baseType: !1214, size: 32)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1210, file: !1206, line: 16, size: 32, elements: !1215)
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1214, file: !1206, line: 18, baseType: !83, size: 8)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1214, file: !1206, line: 19, baseType: !1218, size: 24, offset: 8)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 24, elements: !126)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1207, file: !1206, line: 26, baseType: !66, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1197, file: !204, line: 950, baseType: !1221, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1223, line: 59, size: 768, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1224 = !{!1225, !1226, !1227, !1228, !1232, !1233, !1234, !1235}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1222, file: !1223, line: 61, baseType: !860, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1222, file: !1223, line: 62, baseType: !18, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1222, file: !1223, line: 63, baseType: !54, size: 32, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1222, file: !1223, line: 65, baseType: !1229, size: 256, offset: 128)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 256, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 4)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1222, file: !1223, line: 66, baseType: !399, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1222, file: !1223, line: 68, baseType: !824, size: 192, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1222, file: !1223, line: 69, baseType: !831, size: 128, align: 64, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1222, file: !1223, line: 70, baseType: !1236, offset: 768)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, elements: !1243)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1223, line: 54, size: 128, elements: !1238)
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1237, file: !1223, line: 55, baseType: !78, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1237, file: !1223, line: 56, baseType: !1241, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1223, line: 56, flags: DIFlagFwdDecl)
!1243 = !{!1244}
!1244 = !DISubrange(count: -1)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1197, file: !204, line: 951, baseType: !1246, size: 32, offset: 128)
!1246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1223, line: 9, baseType: !18, size: 32, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252}
!1248 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!1249 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!1250 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!1251 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!1252 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1197, file: !204, line: 952, baseType: !213, size: 32, offset: 160)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1197, file: !204, line: 952, baseType: !213, size: 32, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1197, file: !204, line: 953, baseType: !78, size: 32, offset: 224)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1181, file: !204, line: 1012, baseType: !1257, size: 64, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1260, line: 110, size: 1472, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1278, !1279, !1280, !1281, !1282, !1283, !1396, !1397, !1398, !1399, !1400, !1431, !1434, !1438, !1446}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1259, file: !1260, line: 111, baseType: !516, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1259, file: !1260, line: 112, baseType: !213, size: 32, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1259, file: !1260, line: 113, baseType: !222, size: 32, offset: 96)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1259, file: !1260, line: 114, baseType: !213, size: 32, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1259, file: !1260, line: 115, baseType: !222, size: 32, offset: 160)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1259, file: !1260, line: 116, baseType: !213, size: 32, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1259, file: !1260, line: 117, baseType: !222, size: 32, offset: 224)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1259, file: !1260, line: 118, baseType: !213, size: 32, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1259, file: !1260, line: 119, baseType: !222, size: 32, offset: 288)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1259, file: !1260, line: 120, baseType: !18, size: 32, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1259, file: !1260, line: 121, baseType: !1273, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1274, line: 24, baseType: !1275)
!1274 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1274, line: 24, size: 64, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1275, file: !1274, line: 24, baseType: !280, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1259, file: !1260, line: 122, baseType: !1273, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1259, file: !1260, line: 123, baseType: !1273, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1259, file: !1260, line: 124, baseType: !1273, size: 64, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1259, file: !1260, line: 125, baseType: !1273, size: 64, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1259, file: !1260, line: 127, baseType: !87, size: 8, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1259, file: !1260, line: 129, baseType: !1284, size: 64, offset: 768)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1286, line: 195, size: 1728, elements: !1287)
!1286 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1287 = !{!1288, !1289, !1294, !1299, !1300, !1303, !1304, !1309, !1310, !1311, !1312, !1315, !1316, !1317, !1319, !1320, !1360, !1381}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1285, file: !1286, line: 196, baseType: !860, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1285, file: !1286, line: 197, baseType: !1290, size: 32, offset: 32)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1286, line: 28, baseType: !1291)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !26, line: 104, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !78)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1286, line: 198, baseType: !1295, size: 192, offset: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !1286, line: 198, size: 192, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1295, file: !1286, line: 199, baseType: !25, size: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1295, file: !1286, line: 200, baseType: !904, size: 192, align: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1285, file: !1286, line: 205, baseType: !731, size: 320, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1285, file: !1286, line: 206, baseType: !1301, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1286, line: 206, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1285, file: !1286, line: 207, baseType: !197, size: 64, offset: 640)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1286, line: 208, baseType: !1305, size: 64, offset: 704)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !1286, line: 208, size: 64, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1305, file: !1286, line: 209, baseType: !570, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1305, file: !1286, line: 210, baseType: !570, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1285, file: !1286, line: 212, baseType: !570, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1285, file: !1286, line: 213, baseType: !213, size: 32, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1285, file: !1286, line: 214, baseType: !222, size: 32, offset: 864)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1285, file: !1286, line: 215, baseType: !1313, size: 32, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1286, line: 31, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !26, line: 110, baseType: !276)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1285, file: !1286, line: 216, baseType: !95, size: 16, offset: 928)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1285, file: !1286, line: 217, baseType: !95, size: 16, offset: 944)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1285, file: !1286, line: 221, baseType: !1318, size: 16, offset: 960)
!1318 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1285, file: !1286, line: 228, baseType: !175, size: 64, offset: 1024)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1286, line: 245, baseType: !1321, size: 320, offset: 1088)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !1286, line: 245, size: 320, elements: !1322)
!1322 = !{!1323, !1352}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1321, file: !1286, line: 246, baseType: !1324, size: 320)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1286, line: 114, size: 320, elements: !1325)
!1325 = !{!1326, !1327, !1339, !1342, !1351}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1324, file: !1286, line: 116, baseType: !175, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !1286, line: 117, baseType: !1328, size: 64, offset: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1324, file: !1286, line: 117, size: 64, elements: !1329)
!1329 = !{!1330, !1338}
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !1286, line: 118, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !1286, line: 118, size: 64, elements: !1332)
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1331, file: !1286, line: 120, baseType: !93, size: 16)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1331, file: !1286, line: 121, baseType: !1335, size: 48, offset: 16)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1336)
!1336 = !{!1337}
!1337 = !DISubrange(count: 6)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1328, file: !1286, line: 127, baseType: !175, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1324, file: !1286, line: 129, baseType: !1340, size: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1286, line: 102, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1324, file: !1286, line: 130, baseType: !1343, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1286, line: 108, size: 192, elements: !1345)
!1345 = !{!1346, !1347, !1348}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1344, file: !1286, line: 109, baseType: !831, size: 128, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1344, file: !1286, line: 110, baseType: !860, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1344, file: !1286, line: 111, baseType: !1349, size: 8, offset: 160)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !26, line: 35, baseType: !1350)
!1350 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1324, file: !1286, line: 131, baseType: !43, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !1286, line: 247, baseType: !1353, size: 320)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1321, file: !1286, line: 247, size: 320, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1353, file: !1286, line: 248, baseType: !175, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1353, file: !1286, line: 249, baseType: !175, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1353, file: !1286, line: 250, baseType: !1340, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1353, file: !1286, line: 251, baseType: !1343, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1353, file: !1286, line: 252, baseType: !125, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !1286, line: 260, baseType: !1361, size: 256, offset: 1408)
!1361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !1286, line: 260, size: 256, elements: !1362)
!1362 = !{!1363, !1369}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1361, file: !1286, line: 261, baseType: !1364, size: 256)
!1364 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1286, line: 134, size: 256, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1364, file: !1286, line: 135, baseType: !197, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1364, file: !1286, line: 136, baseType: !1368, size: 256)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 256, elements: !1230)
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1286, line: 262, baseType: !1370, size: 256)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1361, file: !1286, line: 262, size: 256, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1370, file: !1286, line: 264, baseType: !25, size: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1370, file: !1286, line: 265, baseType: !1374, size: 128, offset: 128)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1375, line: 22, size: 128, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1376 = !{!1377, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1374, file: !1375, line: 23, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1375, line: 23, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1374, file: !1375, line: 24, baseType: !175, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1285, file: !1286, line: 280, baseType: !1382, size: 64, offset: 1664)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1286, line: 176, size: 192, elements: !1384)
!1384 = !{!1385, !1394, !1395}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1383, file: !1286, line: 177, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1286, line: 171, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!78, !1284, !1390, !1392, !1284}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1341)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1383, file: !1286, line: 178, baseType: !1284, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1383, file: !1286, line: 179, baseType: !1340, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1259, file: !1260, line: 130, baseType: !1284, size: 64, offset: 832)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1259, file: !1260, line: 131, baseType: !1284, size: 64, offset: 896)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1259, file: !1260, line: 132, baseType: !1284, size: 64, offset: 960)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1259, file: !1260, line: 135, baseType: !197, size: 64, offset: 1024)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1259, file: !1260, line: 137, baseType: !1401, size: 64, offset: 1088)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1403, line: 14, size: 1088, elements: !1404)
!1403 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1404 = !{!1405, !1406, !1415, !1416, !1417, !1418, !1419, !1420}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1402, file: !1403, line: 15, baseType: !860, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1402, file: !1403, line: 17, baseType: !1407, size: 320, offset: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1408, line: 22, size: 320, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1409 = !{!1410, !1411, !1412, !1413}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1407, file: !1408, line: 23, baseType: !525, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1407, file: !1408, line: 24, baseType: !522, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1407, file: !1408, line: 26, baseType: !25, size: 128, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1407, file: !1408, line: 28, baseType: !1414, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1402, file: !1403, line: 19, baseType: !175, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1402, file: !1403, line: 20, baseType: !516, size: 64, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1402, file: !1403, line: 23, baseType: !403, size: 128, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1402, file: !1403, line: 24, baseType: !213, size: 32, offset: 640)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1402, file: !1403, line: 29, baseType: !516, size: 64, offset: 704)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1402, file: !1403, line: 36, baseType: !1421, size: 320, offset: 768)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1422, line: 15, size: 320, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1429, !1430}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1421, file: !1422, line: 16, baseType: !525, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1421, file: !1422, line: 18, baseType: !78, size: 32, offset: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1421, file: !1422, line: 19, baseType: !78, size: 32, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1421, file: !1422, line: 20, baseType: !78, size: 32, offset: 96)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1421, file: !1422, line: 21, baseType: !78, size: 32, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1421, file: !1422, line: 22, baseType: !175, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1421, file: !1422, line: 23, baseType: !175, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1259, file: !1260, line: 138, baseType: !1432, size: 64, offset: 1152)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !214, line: 18, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1259, file: !1260, line: 139, baseType: !1435, size: 64, offset: 1216)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1437, line: 16, flags: DIFlagFwdDecl)
!1437 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1259, file: !1260, line: 140, baseType: !1439, size: 64, offset: 1280)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1260, line: 25, size: 64, elements: !1441)
!1441 = !{!1442, !1443, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1440, file: !1260, line: 26, baseType: !74, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1440, file: !1260, line: 27, baseType: !78, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1440, file: !1260, line: 28, baseType: !1445, offset: 64)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, elements: !1243)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !1260, line: 142, baseType: !1447, size: 128, offset: 1344)
!1447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !1260, line: 142, size: 128, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1447, file: !1260, line: 143, baseType: !78, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1447, file: !1260, line: 144, baseType: !831, size: 128, align: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1181, file: !204, line: 1013, baseType: !1452, size: 256, offset: 960)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !204, line: 970, size: 256, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1452, file: !204, line: 971, baseType: !175, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1452, file: !204, line: 972, baseType: !18, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1452, file: !204, line: 973, baseType: !18, size: 32, offset: 96)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1452, file: !204, line: 974, baseType: !18, size: 32, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1452, file: !204, line: 975, baseType: !18, size: 32, offset: 160)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1452, file: !204, line: 976, baseType: !368, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1181, file: !204, line: 1014, baseType: !643, size: 128, offset: 1216)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1181, file: !204, line: 1015, baseType: !207, size: 64, offset: 1344)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1181, file: !204, line: 1016, baseType: !1463, size: 64, offset: 1408)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !204, line: 1914, size: 2112, elements: !1466)
!1466 = !{!1467, !1468, !1472, !1477, !1481, !1509, !1510, !1516, !1529, !1537, !1541, !1542, !1866, !1867, !1871, !1876, !1877, !1881, !1885, !1891, !1892, !1896, !1897, !1903, !1907, !1911, !1917, !1921, !1925, !1929, !1933, !1934, !1940}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1465, file: !204, line: 1915, baseType: !12, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1465, file: !204, line: 1916, baseType: !1469, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!368, !1180, !368, !78}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1465, file: !204, line: 1917, baseType: !1473, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!157, !1180, !125, !172, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1465, file: !204, line: 1918, baseType: !1478, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!157, !1180, !43, !172, !1476}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1465, file: !204, line: 1919, baseType: !1482, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!157, !1485, !1507}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !204, line: 373, size: 384, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1494, !1495, !1496, !1497}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1486, file: !204, line: 374, baseType: !1180, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1486, file: !204, line: 375, baseType: !368, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1486, file: !204, line: 376, baseType: !1491, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !1485, !161}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1486, file: !204, line: 377, baseType: !197, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1486, file: !204, line: 378, baseType: !78, size: 32, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1486, file: !204, line: 379, baseType: !93, size: 16, offset: 288)
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !204, line: 380, baseType: !1498, size: 64, offset: 320)
!1498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !204, line: 380, size: 64, elements: !1499)
!1499 = !{!1500, !1503}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1498, file: !204, line: 386, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !204, line: 386, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1498, file: !204, line: 395, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!157, !197}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !204, line: 69, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1465, file: !204, line: 1920, baseType: !1482, size: 64, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1465, file: !204, line: 1921, baseType: !1511, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!78, !1485, !1514, !18}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !204, line: 53, flags: DIFlagFwdDecl)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1465, file: !204, line: 1923, baseType: !1517, size: 64, offset: 448)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!78, !1180, !1520}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !204, line: 1858, size: 128, elements: !1522)
!1522 = !{!1523, !1528}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1521, file: !204, line: 1859, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !204, line: 1855, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!1349, !1520, !43, !78, !368, !280, !18}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1521, file: !204, line: 1860, baseType: !368, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1465, file: !204, line: 1924, baseType: !1530, size: 64, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!1533, !1180, !1535}
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1534, line: 59, baseType: !18)
!1534 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !383, line: 31, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1465, file: !204, line: 1925, baseType: !1538, size: 64, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!161, !1180, !18, !175}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1465, file: !204, line: 1926, baseType: !1538, size: 64, offset: 640)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1465, file: !204, line: 1927, baseType: !1543, size: 64, offset: 704)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!78, !1180, !1546}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !589, line: 625, size: 1344, elements: !1548)
!1548 = !{!1549, !1558, !1559, !1567, !1574, !1575, !1580, !1581, !1586, !1587, !1590, !1859, !1860, !1861, !1862, !1863, !1864}
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !589, line: 628, baseType: !1550, size: 128)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !589, line: 628, size: 128, elements: !1551)
!1551 = !{!1552, !1557}
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !589, line: 629, baseType: !1553, size: 128)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1550, file: !589, line: 629, size: 128, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1553, file: !589, line: 631, baseType: !175, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1553, file: !589, line: 632, baseType: !175, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1550, file: !589, line: 635, baseType: !831, size: 128, align: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1547, file: !589, line: 639, baseType: !1153, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1547, file: !589, line: 640, baseType: !1560, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1561, line: 297, baseType: !1562)
!1561 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1561, line: 297, size: 64, elements: !1563)
!1563 = !{!1564}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1562, file: !1561, line: 297, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1566, line: 19, baseType: !175)
!1566 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !589, line: 646, baseType: !1568, size: 64, offset: 256)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !589, line: 646, size: 64, elements: !1569)
!1569 = !{!1570, !1573}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1568, file: !589, line: 647, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1572)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !589, line: 542, baseType: !175)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1568, file: !589, line: 648, baseType: !1572, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1547, file: !589, line: 666, baseType: !78, size: 32, offset: 320)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1547, file: !589, line: 667, baseType: !1576, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !589, line: 579, size: 320, elements: !1578)
!1578 = !{!1579}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1577, file: !589, line: 580, baseType: !731, size: 320)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1547, file: !589, line: 670, baseType: !1349, size: 8, offset: 448)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1547, file: !589, line: 681, baseType: !1582, size: 256, offset: 512)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1547, file: !589, line: 678, size: 256, elements: !1583)
!1583 = !{!1584, !1585}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1582, file: !589, line: 679, baseType: !904, size: 192, align: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1582, file: !589, line: 680, baseType: !175, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1547, file: !589, line: 689, baseType: !25, size: 128, offset: 768)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1547, file: !589, line: 691, baseType: !1588, size: 64, offset: 896)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !589, line: 691, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1547, file: !589, line: 694, baseType: !1591, size: 64, offset: 960)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1594, line: 563, size: 1024, elements: !1595)
!1594 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1595 = !{!1596, !1600, !1601, !1605, !1609, !1613, !1823, !1827, !1831, !1835, !1836, !1837, !1841, !1845, !1851, !1855}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1593, file: !1594, line: 564, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{null, !1546}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1593, file: !1594, line: 569, baseType: !1597, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1593, file: !1594, line: 571, baseType: !1602, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!78, !1546, !175}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1593, file: !1594, line: 572, baseType: !1606, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!78, !1546}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1593, file: !1594, line: 578, baseType: !1610, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!78, !1546, !175, !175, !175}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1593, file: !1594, line: 580, baseType: !1614, size: 64, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !589, line: 1184, baseType: !18)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1594, line: 512, size: 896, elements: !1620)
!1620 = !{!1621, !1629, !1645, !1652, !1659, !1669, !1816, !1817, !1819, !1821}
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1594, line: 513, baseType: !1622, size: 320)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !1594, line: 513, size: 320, elements: !1623)
!1623 = !{!1624, !1625, !1626, !1627, !1628}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1622, file: !1594, line: 514, baseType: !1546, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1622, file: !1594, line: 515, baseType: !582, size: 32, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1622, file: !1594, line: 516, baseType: !175, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1622, file: !1594, line: 517, baseType: !175, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1622, file: !1594, line: 518, baseType: !175, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1619, file: !1594, line: 520, baseType: !1630, size: 32, offset: 320)
!1630 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !589, line: 1325, baseType: !18, size: 32, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1632 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1633 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1634 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1635 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1636 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1637 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1638 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1639 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1640 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1641 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1642 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1643 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1644 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1619, file: !1594, line: 522, baseType: !1646, size: 64, offset: 384)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1566, line: 22, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1566, line: 22, size: 64, elements: !1649)
!1649 = !{!1650}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1648, file: !1566, line: 22, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1566, line: 15, baseType: !175)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1619, file: !1594, line: 524, baseType: !1653, size: 64, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1561, line: 372, baseType: !1655)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1561, line: 372, size: 64, elements: !1656)
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1655, file: !1561, line: 372, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1566, line: 16, baseType: !175)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1594, line: 527, baseType: !1660, size: 64, offset: 512)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1594, line: 527, size: 64, elements: !1661)
!1661 = !{!1662, !1668}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1660, file: !1594, line: 528, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1566, line: 21, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1566, line: 21, size: 64, elements: !1665)
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1664, file: !1566, line: 21, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1566, line: 14, baseType: !175)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1660, file: !1594, line: 529, baseType: !1647, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1619, file: !1594, line: 534, baseType: !1670, size: 64, offset: 576)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !589, line: 74, size: 512, align: 128, elements: !1672)
!1672 = !{!1673, !1674, !1810, !1815}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1671, file: !589, line: 75, baseType: !175, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !589, line: 83, baseType: !1675, size: 320, offset: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !589, line: 83, size: 320, elements: !1676)
!1676 = !{!1677, !1698, !1712, !1716, !1809}
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !589, line: 84, baseType: !1678, size: 320)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1675, file: !589, line: 84, size: 320, elements: !1679)
!1679 = !{!1680, !1691, !1692, !1697}
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !589, line: 90, baseType: !1681, size: 128)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !589, line: 90, size: 128, elements: !1682)
!1682 = !{!1683, !1684, !1689, !1690}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1681, file: !589, line: 91, baseType: !25, size: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !589, line: 94, baseType: !1685, size: 128)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !589, line: 94, size: 128, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1685, file: !589, line: 96, baseType: !197, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1685, file: !589, line: 98, baseType: !18, size: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1681, file: !589, line: 102, baseType: !25, size: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1681, file: !589, line: 103, baseType: !25, size: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1678, file: !589, line: 106, baseType: !202, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !589, line: 107, baseType: !1693, size: 64, offset: 192)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !589, line: 107, size: 64, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1693, file: !589, line: 108, baseType: !175, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1693, file: !589, line: 109, baseType: !175, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1678, file: !589, line: 117, baseType: !175, size: 64, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !589, line: 119, baseType: !1699, size: 320)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1675, file: !589, line: 119, size: 320, elements: !1700)
!1700 = !{!1701, !1702, !1705, !1706, !1707}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1699, file: !589, line: 124, baseType: !175, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1699, file: !589, line: 125, baseType: !1703, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !589, line: 125, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1699, file: !589, line: 126, baseType: !175, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1699, file: !589, line: 127, baseType: !175, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1699, file: !589, line: 128, baseType: !1708, size: 64, offset: 256)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1699, file: !589, line: 128, size: 64, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1708, file: !589, line: 133, baseType: !175, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1708, file: !589, line: 138, baseType: !516, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !589, line: 141, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1675, file: !589, line: 141, size: 64, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1713, file: !589, line: 142, baseType: !175, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !589, line: 144, baseType: !1717, size: 128)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1675, file: !589, line: 144, size: 128, elements: !1718)
!1718 = !{!1719, !1808}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1717, file: !589, line: 146, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1722, line: 126, size: 1216, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!1723 = !{!1724, !1734, !1755, !1766, !1774, !1775, !1776, !1790, !1791, !1792}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1721, file: !1722, line: 127, baseType: !1725, size: 384)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !1722, line: 21, size: 384, elements: !1726)
!1726 = !{!1727, !1728, !1730, !1731, !1732, !1733}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1725, file: !1722, line: 22, baseType: !175, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1725, file: !1722, line: 23, baseType: !1729, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1725, file: !1722, line: 24, baseType: !1729, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1725, file: !1722, line: 25, baseType: !175, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1725, file: !1722, line: 26, baseType: !175, size: 64, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1725, file: !1722, line: 27, baseType: !175, size: 64, offset: 320)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1721, file: !1722, line: 128, baseType: !1735, size: 128, offset: 384)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1736, line: 105, size: 128, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1735, file: !1736, line: 110, baseType: !175, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1735, file: !1736, line: 118, baseType: !1740, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1736, line: 95, size: 448, elements: !1742)
!1742 = !{!1743, !1744, !1750, !1751, !1752, !1753, !1754}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1741, file: !1736, line: 96, baseType: !516, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1741, file: !1736, line: 97, baseType: !1745, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1736, line: 60, baseType: !1747)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1741, file: !1736, line: 98, baseType: !1745, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1741, file: !1736, line: 99, baseType: !1349, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1741, file: !1736, line: 100, baseType: !1349, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1741, file: !1736, line: 101, baseType: !831, size: 128, align: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1741, file: !1736, line: 102, baseType: !1749, size: 64, offset: 384)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1721, file: !1722, line: 129, baseType: !1756, size: 256, offset: 512)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1757, line: 26, size: 256, elements: !1758)
!1757 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1756, file: !1757, line: 27, baseType: !18, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1756, file: !1757, line: 28, baseType: !1761, size: 192, offset: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1762, line: 43, size: 192, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1761, file: !1762, line: 44, baseType: !525, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1761, file: !1762, line: 45, baseType: !25, size: 128, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1721, file: !1722, line: 130, baseType: !1767, size: 32, offset: 768)
!1767 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !1722, line: 68, baseType: !18, size: 32, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1773}
!1769 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!1770 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!1771 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!1772 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!1773 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1721, file: !1722, line: 131, baseType: !18, size: 32, offset: 800)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1721, file: !1722, line: 132, baseType: !175, size: 64, offset: 832)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1721, file: !1722, line: 133, baseType: !1777, size: 64, offset: 896)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1779)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !1722, line: 77, size: 192, elements: !1780)
!1780 = !{!1781, !1785, !1786}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1779, file: !1722, line: 83, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !1670}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1779, file: !1722, line: 89, baseType: !1614, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1779, file: !1722, line: 100, baseType: !1787, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!78, !1720, !175, !175, !78}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1721, file: !1722, line: 134, baseType: !197, size: 64, offset: 960)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1721, file: !1722, line: 135, baseType: !78, size: 32, offset: 1024)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !1722, line: 136, baseType: !1793, size: 128, offset: 1088)
!1793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !1722, line: 136, size: 128, elements: !1794)
!1794 = !{!1795, !1801}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1793, file: !1722, line: 137, baseType: !1796, size: 128)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1797, line: 6, size: 128, elements: !1798)
!1797 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1798 = !{!1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1796, file: !1797, line: 7, baseType: !280, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1796, file: !1797, line: 8, baseType: !280, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1793, file: !1722, line: 138, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1793, file: !1722, line: 138, elements: !1803)
!1803 = !{!1804, !1806}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1802, file: !1722, line: 138, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1802, file: !1722, line: 138, elements: !411)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1802, file: !1722, line: 138, baseType: !1807)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1796, elements: !1243)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1717, file: !589, line: 147, baseType: !197, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1675, file: !589, line: 161, baseType: !831, size: 128, align: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !589, line: 164, baseType: !1811, size: 32, offset: 384)
!1811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !589, line: 164, size: 32, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1811, file: !589, line: 169, baseType: !74, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1811, file: !589, line: 177, baseType: !18, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1671, file: !589, line: 181, baseType: !74, size: 32, offset: 416)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1619, file: !1594, line: 535, baseType: !1670, size: 64, offset: 640)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1619, file: !1594, line: 541, baseType: !1818, size: 64, offset: 704)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1619, file: !1594, line: 545, baseType: !1820, size: 64, offset: 768)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1619, file: !1594, line: 549, baseType: !1822, size: 64, offset: 832)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1561, line: 520, baseType: !1670)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1593, file: !1594, line: 581, baseType: !1824, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!1617, !1618, !18}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1593, file: !1594, line: 582, baseType: !1828, size: 64, offset: 448)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1617, !1618, !175, !175}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1593, file: !1594, line: 584, baseType: !1832, size: 64, offset: 512)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!175, !1546}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1593, file: !1594, line: 588, baseType: !1614, size: 64, offset: 576)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1593, file: !1594, line: 591, baseType: !1614, size: 64, offset: 640)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1593, file: !1594, line: 597, baseType: !1838, size: 64, offset: 704)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!78, !1546, !175, !197, !78, !78}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1593, file: !1594, line: 603, baseType: !1842, size: 64, offset: 768)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!43, !1546}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1593, file: !1594, line: 613, baseType: !1846, size: 64, offset: 832)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!78, !1546, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !589, line: 717, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1593, file: !1594, line: 625, baseType: !1852, size: 64, offset: 896)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!1849, !1546, !175}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1593, file: !1594, line: 633, baseType: !1856, size: 64, offset: 960)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!1670, !1546, !175}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1547, file: !589, line: 697, baseType: !175, size: 64, offset: 1024)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1547, file: !589, line: 699, baseType: !1180, size: 64, offset: 1088)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1547, file: !589, line: 700, baseType: !197, size: 64, offset: 1152)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1547, file: !589, line: 711, baseType: !516, size: 64, offset: 1216)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1547, file: !589, line: 717, baseType: !1849, size: 64, offset: 1280)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1547, file: !589, line: 722, baseType: !1865, offset: 1344)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !589, line: 570, elements: !411)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1465, file: !204, line: 1928, baseType: !175, size: 64, offset: 768)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1465, file: !204, line: 1929, baseType: !1868, size: 64, offset: 832)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!78, !207, !1180}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1465, file: !204, line: 1930, baseType: !1872, size: 64, offset: 896)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!78, !1180, !1875}
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !204, line: 1061, baseType: !197)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1465, file: !204, line: 1931, baseType: !1868, size: 64, offset: 960)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1465, file: !204, line: 1932, baseType: !1878, size: 64, offset: 1024)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!78, !1180, !368, !368, !78}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1465, file: !204, line: 1933, baseType: !1882, size: 64, offset: 1088)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!78, !78, !1180, !78}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1465, file: !204, line: 1934, baseType: !1886, size: 64, offset: 1152)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!78, !1180, !78, !1889}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !204, line: 1063, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1465, file: !204, line: 1935, baseType: !1177, size: 64, offset: 1216)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1465, file: !204, line: 1936, baseType: !1893, size: 64, offset: 1280)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!78, !78}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1465, file: !204, line: 1937, baseType: !1886, size: 64, offset: 1344)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1465, file: !204, line: 1938, baseType: !1898, size: 64, offset: 1408)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!157, !1901, !1180, !1476, !172, !18}
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !486, line: 59, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1465, file: !204, line: 1939, baseType: !1904, size: 64, offset: 1472)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!157, !1180, !1476, !1901, !172, !18}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1465, file: !204, line: 1940, baseType: !1908, size: 64, offset: 1536)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1180}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1465, file: !204, line: 1941, baseType: !1912, size: 64, offset: 1600)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!78, !1180, !78, !1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1465, file: !204, line: 1942, baseType: !1918, size: 64, offset: 1664)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!161, !1180, !78, !368, !368}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1465, file: !204, line: 1944, baseType: !1922, size: 64, offset: 1728)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !484, !1180}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1465, file: !204, line: 1948, baseType: !1926, size: 64, offset: 1792)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!157, !1180, !368, !1180, !368, !172, !18}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1465, file: !204, line: 1950, baseType: !1930, size: 64, offset: 1856)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!368, !1180, !368, !1180, !368, !368, !18}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1465, file: !204, line: 1953, baseType: !1878, size: 64, offset: 1920)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1465, file: !204, line: 1954, baseType: !1935, size: 64, offset: 1984)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!78, !1938, !18}
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !204, line: 1911, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1465, file: !204, line: 1955, baseType: !1941, size: 64, offset: 2048)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!78, !1938, !1514, !18}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1181, file: !204, line: 1018, baseType: !280, size: 64, offset: 1472)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1181, file: !204, line: 1020, baseType: !197, size: 64, offset: 1536)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1181, file: !204, line: 1023, baseType: !197, size: 64, offset: 1600)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1181, file: !204, line: 1027, baseType: !1948, size: 64, offset: 1664)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1181, file: !204, line: 1029, baseType: !202, size: 64, offset: 1728)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1181, file: !204, line: 1030, baseType: !1951, size: 32, offset: 1792)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1952, line: 8, baseType: !276)
!1952 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1181, file: !204, line: 1031, baseType: !1951, size: 32, offset: 1824)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1157, file: !589, line: 756, baseType: !175, size: 64, offset: 704)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1157, file: !589, line: 757, baseType: !175, size: 64, offset: 768)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1157, file: !589, line: 760, baseType: !175, size: 64, offset: 832)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1157, file: !589, line: 761, baseType: !175, size: 64, offset: 896)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1157, file: !589, line: 763, baseType: !175, size: 64, offset: 960)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1157, file: !589, line: 764, baseType: !1960, size: 64, offset: 1024)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1561, line: 299, baseType: !1962)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1561, line: 299, size: 64, elements: !1963)
!1963 = !{!1964}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1962, file: !1561, line: 299, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1566, line: 18, baseType: !175)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1157, file: !589, line: 773, baseType: !74, size: 32, offset: 1088)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1157, file: !589, line: 785, baseType: !74, size: 32, offset: 1120)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1157, file: !589, line: 795, baseType: !1969, size: 64, offset: 1152)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !589, line: 726, size: 128, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1970, file: !589, line: 727, baseType: !280, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1970, file: !589, line: 728, baseType: !78, size: 32, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1157, file: !589, line: 801, baseType: !175, size: 64, offset: 1216)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1157, file: !589, line: 804, baseType: !516, size: 64, offset: 1280)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1157, file: !589, line: 806, baseType: !78, size: 32, offset: 1344)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1157, file: !589, line: 808, baseType: !54, size: 32, offset: 1376)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1157, file: !589, line: 823, baseType: !731, size: 320, offset: 1408)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1157, file: !589, line: 825, baseType: !25, size: 128, offset: 1728)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1157, file: !589, line: 845, baseType: !78, size: 32, offset: 1856)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1157, file: !589, line: 849, baseType: !175, size: 64, offset: 1920)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1157, file: !589, line: 850, baseType: !175, size: 64, offset: 1984)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1157, file: !589, line: 852, baseType: !175, size: 64, offset: 2048)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1157, file: !589, line: 853, baseType: !175, size: 64, offset: 2112)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1157, file: !589, line: 854, baseType: !518, size: 64, offset: 2176)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1157, file: !589, line: 855, baseType: !175, size: 64, offset: 2240)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1157, file: !589, line: 856, baseType: !175, size: 64, offset: 2304)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1157, file: !589, line: 857, baseType: !175, size: 64, offset: 2368)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1157, file: !589, line: 858, baseType: !175, size: 64, offset: 2432)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1157, file: !589, line: 865, baseType: !253, size: 32, offset: 2496)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1157, file: !589, line: 867, baseType: !54, size: 32, offset: 2528)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1157, file: !589, line: 869, baseType: !175, size: 64, offset: 2560)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1157, file: !589, line: 869, baseType: !175, size: 64, offset: 2624)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1157, file: !589, line: 869, baseType: !175, size: 64, offset: 2688)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1157, file: !589, line: 869, baseType: !175, size: 64, offset: 2752)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1157, file: !589, line: 870, baseType: !175, size: 64, offset: 2816)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1157, file: !589, line: 870, baseType: !175, size: 64, offset: 2880)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1157, file: !589, line: 870, baseType: !175, size: 64, offset: 2944)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1157, file: !589, line: 871, baseType: !175, size: 64, offset: 3008)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1157, file: !589, line: 871, baseType: !175, size: 64, offset: 3072)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1157, file: !589, line: 871, baseType: !175, size: 64, offset: 3136)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1157, file: !589, line: 871, baseType: !175, size: 64, offset: 3200)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1157, file: !589, line: 873, baseType: !2004, size: 3328, offset: 3264)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 3328, elements: !2005)
!2005 = !{!2006}
!2006 = !DISubrange(count: 52)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1157, file: !589, line: 875, baseType: !2008, size: 1280, offset: 6592)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1407, size: 1280, elements: !1230)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1157, file: !589, line: 877, baseType: !2010, size: 64, offset: 7872)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !589, line: 877, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1157, file: !589, line: 880, baseType: !2013, size: 1088, offset: 7936)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2014, line: 72, baseType: !2015)
!2014 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2014, line: 23, size: 1088, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2020, !2021, !2024, !2025, !2026, !2027, !2054, !2055, !2056}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2015, file: !2014, line: 28, baseType: !280, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2015, file: !2014, line: 38, baseType: !518, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2015, file: !2014, line: 40, baseType: !175, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2015, file: !2014, line: 43, baseType: !731, size: 320, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2015, file: !2014, line: 44, baseType: !2022, size: 64, offset: 512)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2014, line: 44, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2015, file: !2014, line: 48, baseType: !175, size: 64, offset: 576)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2015, file: !2014, line: 59, baseType: !512, size: 256, offset: 640)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2015, file: !2014, line: 60, baseType: !197, size: 64, offset: 896)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2015, file: !2014, line: 61, baseType: !2028, size: 64, offset: 960)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2030)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2031, line: 13, size: 1216, elements: !2032)
!2031 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2032 = !{!2033, !2034, !2035, !2036, !2037, !2038, !2039, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2030, file: !2031, line: 14, baseType: !197, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2030, file: !2031, line: 15, baseType: !175, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2030, file: !2031, line: 17, baseType: !175, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2030, file: !2031, line: 17, baseType: !175, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2030, file: !2031, line: 18, baseType: !175, size: 64, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2030, file: !2031, line: 18, baseType: !175, size: 64, offset: 320)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2030, file: !2031, line: 19, baseType: !2040, size: 64, offset: 384)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2030, file: !2031, line: 21, baseType: !161, size: 64, offset: 448)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2030, file: !2031, line: 23, baseType: !161, size: 64, offset: 512)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2030, file: !2031, line: 24, baseType: !161, size: 64, offset: 576)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2030, file: !2031, line: 25, baseType: !161, size: 64, offset: 640)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2030, file: !2031, line: 26, baseType: !161, size: 64, offset: 704)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2030, file: !2031, line: 27, baseType: !161, size: 64, offset: 768)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2030, file: !2031, line: 28, baseType: !161, size: 64, offset: 832)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2030, file: !2031, line: 29, baseType: !161, size: 64, offset: 896)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2030, file: !2031, line: 30, baseType: !161, size: 64, offset: 960)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2030, file: !2031, line: 31, baseType: !161, size: 64, offset: 1024)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2030, file: !2031, line: 32, baseType: !161, size: 64, offset: 1088)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2030, file: !2031, line: 33, baseType: !161, size: 64, offset: 1152)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2015, file: !2014, line: 63, baseType: !74, size: 32, offset: 1024)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2015, file: !2014, line: 69, baseType: !93, size: 16, offset: 1056)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2015, file: !2014, line: 70, baseType: !2057, size: 16, offset: 1072)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !2058)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !1318)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1157, file: !589, line: 882, baseType: !175, size: 64, offset: 9024)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1157, file: !589, line: 885, baseType: !54, size: 32, offset: 9088)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1157, file: !589, line: 886, baseType: !2062, size: 64, offset: 9152)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !589, line: 732, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1157, file: !589, line: 901, baseType: !1432, size: 64, offset: 9216)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1157, file: !589, line: 904, baseType: !1180, size: 64, offset: 9280)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1157, file: !589, line: 906, baseType: !2067, size: 64, offset: 9344)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !589, line: 906, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1157, file: !589, line: 930, baseType: !74, size: 32, offset: 9408)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1157, file: !589, line: 933, baseType: !74, size: 32, offset: 9440)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1157, file: !589, line: 935, baseType: !2072, size: 64, offset: 9472)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2073, line: 103, size: 64, elements: !2074)
!2073 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!2074 = !{!2075}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2072, file: !2073, line: 104, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !2073, line: 101, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1157, file: !589, line: 940, baseType: !516, size: 64, offset: 9536)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1157, file: !589, line: 942, baseType: !2080, size: 256, offset: 9600)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2081, line: 98, size: 256, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2082 = !{!2083, !2084, !2085}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2080, file: !2081, line: 99, baseType: !516, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2080, file: !2081, line: 100, baseType: !25, size: 128, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2080, file: !2081, line: 101, baseType: !2086, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2081, line: 21, baseType: !2087)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1154, file: !589, line: 986, baseType: !2092, offset: 10240)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, elements: !1243)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !847, file: !486, line: 882, baseType: !1153, size: 64, offset: 9792)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !847, file: !486, line: 884, baseType: !78, size: 32, offset: 9856)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !847, file: !486, line: 885, baseType: !78, size: 32, offset: 9888)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !847, file: !486, line: 886, baseType: !78, size: 32, offset: 9920)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !847, file: !486, line: 888, baseType: !78, size: 32, offset: 9952)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !847, file: !486, line: 890, baseType: !175, size: 64, offset: 9984)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !847, file: !486, line: 893, baseType: !18, size: 32, offset: 10048)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !847, file: !486, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !847, file: !486, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !847, file: !486, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !847, file: !486, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !847, file: !486, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !847, file: !486, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !847, file: !486, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !847, file: !486, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !847, file: !486, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !847, file: !486, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !847, file: !486, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !847, file: !486, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !847, file: !486, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !847, file: !486, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !847, file: !486, line: 969, baseType: !175, size: 64, offset: 10176)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !847, file: !486, line: 971, baseType: !2116, size: 448, offset: 10240)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !2117, line: 25, size: 448, elements: !2118)
!2117 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!2118 = !{!2119, !2120, !2125}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2116, file: !2117, line: 26, baseType: !175, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2116, file: !2117, line: 27, baseType: !2121, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!161, !2124}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, scope: !2116, file: !2117, line: 28, baseType: !2126, size: 320, offset: 128)
!2126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2116, file: !2117, line: 28, size: 320, elements: !2127)
!2127 = !{!2128, !2138, !2168}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2126, file: !2117, line: 37, baseType: !2129, size: 320)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2126, file: !2117, line: 30, size: 320, elements: !2130)
!2130 = !{!2131, !2133, !2134, !2135, !2136, !2137}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2129, file: !2117, line: 31, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2129, file: !2117, line: 32, baseType: !276, size: 32, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2129, file: !2117, line: 33, baseType: !276, size: 32, offset: 96)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2129, file: !2117, line: 34, baseType: !276, size: 32, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2129, file: !2117, line: 35, baseType: !280, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2129, file: !2117, line: 36, baseType: !2132, size: 64, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2126, file: !2117, line: 47, baseType: !2139, size: 192)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2126, file: !2117, line: 39, size: 192, elements: !2140)
!2140 = !{!2141, !2142, !2148, !2167}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2139, file: !2117, line: 40, baseType: !1024, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2139, file: !2117, line: 41, baseType: !2143, size: 32, offset: 32)
!2143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !2117, line: 16, baseType: !18, size: 32, elements: !2144)
!2144 = !{!2145, !2146, !2147}
!2145 = !DIEnumerator(name: "TT_NONE", value: 0)
!2146 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!2147 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !2117, line: 42, baseType: !2149, size: 64, offset: 64)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2139, file: !2117, line: 42, size: 64, elements: !2150)
!2150 = !{!2151, !2159}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2149, file: !2117, line: 43, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2154, line: 7, size: 128, elements: !2155)
!2154 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2155 = !{!2156, !2158}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2153, file: !2154, line: 8, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !159, line: 93, baseType: !370)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2153, file: !2154, line: 9, baseType: !370, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2149, file: !2117, line: 44, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2162, line: 7, size: 64, elements: !2163)
!2162 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2163 = !{!2164, !2166}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2161, file: !2162, line: 8, baseType: !2165, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2162, line: 5, baseType: !1292)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2161, file: !2162, line: 9, baseType: !1292, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2139, file: !2117, line: 46, baseType: !280, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2126, file: !2117, line: 55, baseType: !2169, size: 256)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2126, file: !2117, line: 49, size: 256, elements: !2170)
!2170 = !{!2171, !2174, !2175, !2176, !2177}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2169, file: !2117, line: 50, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2117, line: 14, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2169, file: !2117, line: 51, baseType: !78, size: 32, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2169, file: !2117, line: 52, baseType: !78, size: 32, offset: 96)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2169, file: !2117, line: 53, baseType: !175, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2169, file: !2117, line: 54, baseType: !175, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !847, file: !486, line: 973, baseType: !2179, size: 32, offset: 10688)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !26, line: 27, baseType: !2180)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !159, line: 28, baseType: !78)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !847, file: !486, line: 974, baseType: !2179, size: 32, offset: 10720)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !847, file: !486, line: 978, baseType: !175, size: 64, offset: 10752)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !847, file: !486, line: 987, baseType: !846, size: 64, offset: 10816)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !847, file: !486, line: 990, baseType: !846, size: 64, offset: 10880)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !847, file: !486, line: 995, baseType: !25, size: 128, offset: 10944)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !847, file: !486, line: 996, baseType: !25, size: 128, offset: 11072)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !847, file: !486, line: 997, baseType: !846, size: 64, offset: 11200)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !847, file: !486, line: 1005, baseType: !25, size: 128, offset: 11264)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !847, file: !486, line: 1006, baseType: !25, size: 128, offset: 11392)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !847, file: !486, line: 1009, baseType: !1221, size: 64, offset: 11520)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !847, file: !486, line: 1010, baseType: !2192, size: 512, offset: 11584)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 512, elements: !1230)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !847, file: !486, line: 1011, baseType: !25, size: 128, offset: 12096)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !847, file: !486, line: 1012, baseType: !25, size: 128, offset: 12224)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !847, file: !486, line: 1014, baseType: !2196, size: 64, offset: 12352)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !847, file: !486, line: 1017, baseType: !478, size: 64, offset: 12416)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !847, file: !486, line: 1020, baseType: !478, size: 64, offset: 12480)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !847, file: !486, line: 1023, baseType: !197, size: 64, offset: 12544)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !847, file: !486, line: 1025, baseType: !280, size: 64, offset: 12608)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !847, file: !486, line: 1026, baseType: !280, size: 64, offset: 12672)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !847, file: !486, line: 1031, baseType: !280, size: 64, offset: 12736)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !847, file: !486, line: 1032, baseType: !2204, size: 192, offset: 12800)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !486, line: 324, size: 192, elements: !2205)
!2205 = !{!2206, !2207, !2208}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2204, file: !486, line: 326, baseType: !280, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2204, file: !486, line: 327, baseType: !280, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2204, file: !486, line: 328, baseType: !525, size: 32, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !847, file: !486, line: 1041, baseType: !175, size: 64, offset: 12992)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !847, file: !486, line: 1042, baseType: !175, size: 64, offset: 13056)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !847, file: !486, line: 1045, baseType: !280, size: 64, offset: 13120)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !847, file: !486, line: 1048, baseType: !280, size: 64, offset: 13184)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !847, file: !486, line: 1051, baseType: !175, size: 64, offset: 13248)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !847, file: !486, line: 1052, baseType: !175, size: 64, offset: 13312)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !847, file: !486, line: 1055, baseType: !2216, size: 640, offset: 13376)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2217, line: 132, size: 640, elements: !2218)
!2217 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2218 = !{!2219, !2225, !2226}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2216, file: !2217, line: 133, baseType: !2220, size: 576)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2221, size: 576, elements: !126)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2217, line: 117, size: 192, elements: !2222)
!2222 = !{!2223, !2224}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2221, file: !2217, line: 118, baseType: !280, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2221, file: !2217, line: 119, baseType: !1033, size: 128, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2216, file: !2217, line: 134, baseType: !18, size: 32, offset: 576)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2216, file: !2217, line: 135, baseType: !18, size: 32, offset: 608)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !847, file: !486, line: 1058, baseType: !2228, size: 448, offset: 14016)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2217, line: 144, size: 448, elements: !2229)
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2228, file: !2217, line: 145, baseType: !831, size: 128, align: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2228, file: !2217, line: 146, baseType: !512, size: 256, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2228, file: !2217, line: 147, baseType: !18, size: 32, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !847, file: !486, line: 1064, baseType: !1257, size: 64, offset: 14464)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !847, file: !486, line: 1067, baseType: !1257, size: 64, offset: 14528)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !847, file: !486, line: 1070, baseType: !1257, size: 64, offset: 14592)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !847, file: !486, line: 1074, baseType: !1284, size: 64, offset: 14656)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !847, file: !486, line: 1084, baseType: !2238, size: 128, offset: 14720)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2239)
!2239 = !{!2240}
!2240 = !DISubrange(count: 16)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !847, file: !486, line: 1086, baseType: !2242, size: 64, offset: 14848)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !486, line: 55, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !847, file: !486, line: 1089, baseType: !2245, size: 64, offset: 14912)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2246, line: 12, size: 64, elements: !2247)
!2246 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2247 = !{!2248}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2245, file: !2246, line: 13, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2246, line: 8, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !847, file: !486, line: 1090, baseType: !2252, size: 128, offset: 14976)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2253, line: 13, size: 128, elements: !2254)
!2253 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2254 = !{!2255}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2252, file: !2253, line: 14, baseType: !25, size: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !847, file: !486, line: 1097, baseType: !2257, size: 64, offset: 15104)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !486, line: 50, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !847, file: !486, line: 1100, baseType: !2260, size: 64, offset: 15168)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !486, line: 1100, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !847, file: !486, line: 1103, baseType: !2263, size: 64, offset: 15232)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !486, line: 53, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !847, file: !486, line: 1107, baseType: !2266, size: 64, offset: 15296)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2268, line: 35, flags: DIFlagFwdDecl)
!2268 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !847, file: !486, line: 1110, baseType: !2270, size: 64, offset: 15360)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2272, line: 93, size: 8768, elements: !2273)
!2272 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2273 = !{!2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2323, !2332, !2333, !2335, !2336, !2337, !2340, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2378, !2379, !2386, !2396, !2399, !2400, !2403, !2404, !2405, !2406, !2407, !2408}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2271, file: !2272, line: 94, baseType: !860, size: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2271, file: !2272, line: 95, baseType: !74, size: 32, offset: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2271, file: !2272, line: 96, baseType: !78, size: 32, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2271, file: !2272, line: 97, baseType: !78, size: 32, offset: 96)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2271, file: !2272, line: 98, baseType: !25, size: 128, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2271, file: !2272, line: 100, baseType: !824, size: 192, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2271, file: !2272, line: 103, baseType: !846, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2271, file: !2272, line: 106, baseType: !2282, size: 192, offset: 512)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1437, line: 32, size: 192, elements: !2283)
!2283 = !{!2284, !2285}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2282, file: !1437, line: 33, baseType: !25, size: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2282, file: !1437, line: 34, baseType: !2286, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2287, line: 25, baseType: !2288)
!2287 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2287, line: 23, size: 64, elements: !2289)
!2289 = !{!2290}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2288, file: !2287, line: 24, baseType: !1104, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2271, file: !2272, line: 109, baseType: !399, size: 64, offset: 704)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2271, file: !2272, line: 112, baseType: !78, size: 32, offset: 768)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2271, file: !2272, line: 114, baseType: !78, size: 32, offset: 800)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2271, file: !2272, line: 115, baseType: !846, size: 64, offset: 832)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2271, file: !2272, line: 118, baseType: !78, size: 32, offset: 896)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2271, file: !2272, line: 119, baseType: !18, size: 32, offset: 928)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2271, file: !2272, line: 121, baseType: !2298, size: 64, offset: 960)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2272, line: 80, size: 448, elements: !2300)
!2300 = !{!2301, !2302, !2308}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2299, file: !2272, line: 81, baseType: !74, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2299, file: !2272, line: 82, baseType: !2303, size: 128, offset: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2272, line: 75, size: 128, elements: !2304)
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2303, file: !2272, line: 76, baseType: !846, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2303, file: !2272, line: 77, baseType: !2307, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2299, file: !2272, line: 83, baseType: !1756, size: 256, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2271, file: !2272, line: 132, baseType: !18, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2271, file: !2272, line: 133, baseType: !18, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2271, file: !2272, line: 138, baseType: !18, size: 32, offset: 1056)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2271, file: !2272, line: 139, baseType: !25, size: 128, offset: 1088)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2271, file: !2272, line: 142, baseType: !974, size: 512, offset: 1216)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2271, file: !2272, line: 143, baseType: !983, size: 64, offset: 1728)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2271, file: !2272, line: 150, baseType: !2316, size: 256, offset: 1792)
!2316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2317, size: 256, elements: !2321)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2272, line: 38, size: 128, elements: !2318)
!2318 = !{!2319, !2320}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2317, file: !2272, line: 39, baseType: !280, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2317, file: !2272, line: 40, baseType: !280, size: 64, offset: 64)
!2321 = !{!2322}
!2322 = !DISubrange(count: 2)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2271, file: !2272, line: 156, baseType: !2324, size: 192, offset: 2048)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2272, line: 66, size: 192, elements: !2325)
!2325 = !{!2326}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2324, file: !2272, line: 67, baseType: !2327, size: 192)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2272, line: 47, size: 192, elements: !2328)
!2328 = !{!2329, !2330, !2331}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2327, file: !2272, line: 48, baseType: !518, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2327, file: !2272, line: 49, baseType: !518, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2327, file: !2272, line: 50, baseType: !518, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2271, file: !2272, line: 160, baseType: !2216, size: 640, offset: 2240)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2271, file: !2272, line: 163, baseType: !2334, size: 256, offset: 2880)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 256, elements: !1230)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2271, file: !2272, line: 169, baseType: !1221, size: 64, offset: 3136)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2271, file: !2272, line: 172, baseType: !78, size: 32, offset: 3200)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2271, file: !2272, line: 174, baseType: !2338, size: 64, offset: 3264)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2272, line: 174, flags: DIFlagFwdDecl)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2271, file: !2272, line: 185, baseType: !2341, size: 64, offset: 3328)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !249, line: 860, baseType: !2342)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 853, size: 64, elements: !2343)
!2343 = !{!2344, !2345}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2342, file: !249, line: 858, baseType: !248, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2342, file: !249, line: 859, baseType: !54, size: 32, offset: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2271, file: !2272, line: 186, baseType: !280, size: 64, offset: 3392)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2271, file: !2272, line: 186, baseType: !280, size: 64, offset: 3456)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2271, file: !2272, line: 186, baseType: !280, size: 64, offset: 3520)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2271, file: !2272, line: 186, baseType: !280, size: 64, offset: 3584)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2271, file: !2272, line: 187, baseType: !280, size: 64, offset: 3648)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2271, file: !2272, line: 188, baseType: !280, size: 64, offset: 3712)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2271, file: !2272, line: 189, baseType: !2204, size: 192, offset: 3776)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2271, file: !2272, line: 190, baseType: !175, size: 64, offset: 3968)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2271, file: !2272, line: 190, baseType: !175, size: 64, offset: 4032)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2271, file: !2272, line: 190, baseType: !175, size: 64, offset: 4096)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2271, file: !2272, line: 190, baseType: !175, size: 64, offset: 4160)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2271, file: !2272, line: 191, baseType: !175, size: 64, offset: 4224)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2271, file: !2272, line: 191, baseType: !175, size: 64, offset: 4288)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2271, file: !2272, line: 191, baseType: !175, size: 64, offset: 4352)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2271, file: !2272, line: 191, baseType: !175, size: 64, offset: 4416)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2271, file: !2272, line: 192, baseType: !175, size: 64, offset: 4480)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2271, file: !2272, line: 192, baseType: !175, size: 64, offset: 4544)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2271, file: !2272, line: 192, baseType: !175, size: 64, offset: 4608)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2271, file: !2272, line: 192, baseType: !175, size: 64, offset: 4672)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2271, file: !2272, line: 193, baseType: !175, size: 64, offset: 4736)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2271, file: !2272, line: 193, baseType: !175, size: 64, offset: 4800)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2271, file: !2272, line: 194, baseType: !2368, size: 448, offset: 4864)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2369, line: 12, size: 448, elements: !2370)
!2369 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2370 = !{!2371, !2372, !2373, !2374, !2375, !2376, !2377}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2368, file: !2369, line: 15, baseType: !280, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2368, file: !2369, line: 17, baseType: !280, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2368, file: !2369, line: 19, baseType: !280, size: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2368, file: !2369, line: 21, baseType: !280, size: 64, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2368, file: !2369, line: 29, baseType: !280, size: 64, offset: 256)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2368, file: !2369, line: 35, baseType: !280, size: 64, offset: 320)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2368, file: !2369, line: 44, baseType: !280, size: 64, offset: 384)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2271, file: !2272, line: 202, baseType: !282, size: 64, offset: 5312)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2271, file: !2272, line: 213, baseType: !2380, size: 2048, offset: 5376)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2381, size: 2048, elements: !2239)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2382, line: 43, size: 128, elements: !2383)
!2382 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2383 = !{!2384, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2381, file: !2382, line: 44, baseType: !174, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2381, file: !2382, line: 45, baseType: !174, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2271, file: !2272, line: 216, baseType: !2387, size: 448, offset: 7424)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2272, line: 30, size: 448, elements: !2388)
!2388 = !{!2389, !2390, !2391, !2392, !2393, !2394, !2395}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2387, file: !2272, line: 31, baseType: !78, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2387, file: !2272, line: 32, baseType: !161, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2387, file: !2272, line: 33, baseType: !175, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2387, file: !2272, line: 34, baseType: !280, size: 64, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2387, file: !2272, line: 34, baseType: !280, size: 64, offset: 256)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2387, file: !2272, line: 35, baseType: !175, size: 64, offset: 320)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2387, file: !2272, line: 35, baseType: !175, size: 64, offset: 384)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2271, file: !2272, line: 219, baseType: !2397, size: 64, offset: 7872)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2272, line: 219, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2271, file: !2272, line: 222, baseType: !18, size: 32, offset: 7936)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2271, file: !2272, line: 223, baseType: !2401, size: 64, offset: 8000)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2272, line: 223, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2271, file: !2272, line: 230, baseType: !1349, size: 8, offset: 8064)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2271, file: !2272, line: 231, baseType: !1318, size: 16, offset: 8080)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2271, file: !2272, line: 232, baseType: !1318, size: 16, offset: 8096)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2271, file: !2272, line: 234, baseType: !1153, size: 64, offset: 8128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2271, file: !2272, line: 237, baseType: !512, size: 256, offset: 8192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2271, file: !2272, line: 243, baseType: !731, size: 320, offset: 8448)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !847, file: !486, line: 1111, baseType: !2410, size: 64, offset: 15424)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2272, line: 20, size: 16640, elements: !2412)
!2412 = !{!2413, !2414, !2415, !2416}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2411, file: !2272, line: 21, baseType: !54, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2411, file: !2272, line: 22, baseType: !860, size: 32, offset: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2411, file: !2272, line: 23, baseType: !824, size: 192, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2411, file: !2272, line: 24, baseType: !2417, size: 16384, offset: 256)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2418, size: 16384, elements: !130)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1437, line: 51, size: 256, elements: !2419)
!2419 = !{!2420}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2418, file: !1437, line: 52, baseType: !2421, size: 256)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1437, line: 37, size: 256, elements: !2422)
!2422 = !{!2423, !2430, !2431, !2437}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2421, file: !1437, line: 39, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2425, line: 83, baseType: !2426)
!2425 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2425, line: 82, baseType: !2428)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !78}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2421, file: !1437, line: 40, baseType: !175, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2421, file: !1437, line: 46, baseType: !2432, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2425, line: 86, baseType: !2433)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2425, line: 85, baseType: !2435)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2421, file: !1437, line: 48, baseType: !2286, size: 64, offset: 192)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !847, file: !486, line: 1112, baseType: !2286, size: 64, offset: 15488)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !847, file: !486, line: 1113, baseType: !2286, size: 64, offset: 15552)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !847, file: !486, line: 1115, baseType: !2286, size: 64, offset: 15616)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !847, file: !486, line: 1116, baseType: !2282, size: 192, offset: 15680)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !847, file: !486, line: 1117, baseType: !175, size: 64, offset: 15872)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !847, file: !486, line: 1118, baseType: !172, size: 64, offset: 15936)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !847, file: !486, line: 1119, baseType: !18, size: 32, offset: 16000)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !847, file: !486, line: 1121, baseType: !834, size: 64, offset: 16064)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !847, file: !486, line: 1125, baseType: !2447, size: 64, offset: 16128)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !486, line: 43, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !847, file: !486, line: 1127, baseType: !213, size: 32, offset: 16192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !847, file: !486, line: 1128, baseType: !18, size: 32, offset: 16224)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !847, file: !486, line: 1130, baseType: !2452, size: 128, offset: 16256)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2453, line: 37, size: 128, elements: !2454)
!2453 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2454 = !{!2455, !2456, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2452, file: !2453, line: 38, baseType: !78, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2452, file: !2453, line: 39, baseType: !74, size: 32, offset: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2452, file: !2453, line: 40, baseType: !2458, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2453, line: 24, flags: DIFlagFwdDecl)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !847, file: !486, line: 1131, baseType: !2461, size: 256, offset: 16384)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2462, line: 12, size: 256, elements: !2463)
!2462 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2463 = !{!2464, !2465, !2466, !2467}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2461, file: !2462, line: 13, baseType: !125, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2461, file: !2462, line: 14, baseType: !175, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2461, file: !2462, line: 15, baseType: !175, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2461, file: !2462, line: 16, baseType: !1349, size: 8, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !847, file: !486, line: 1134, baseType: !280, size: 64, offset: 16640)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !847, file: !486, line: 1135, baseType: !280, size: 64, offset: 16704)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !847, file: !486, line: 1138, baseType: !54, size: 32, offset: 16768)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !847, file: !486, line: 1141, baseType: !525, size: 32, offset: 16800)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !847, file: !486, line: 1143, baseType: !2473, size: 64, offset: 16832)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !486, line: 735, size: 64, elements: !2474)
!2474 = !{!2475}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2473, file: !486, line: 736, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !847, file: !486, line: 1147, baseType: !1036, size: 128, offset: 16896)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !847, file: !486, line: 1149, baseType: !846, size: 64, offset: 17024)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !847, file: !486, line: 1151, baseType: !2480, size: 64, offset: 17088)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !486, line: 1151, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !847, file: !486, line: 1188, baseType: !197, size: 64, offset: 17152)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !847, file: !486, line: 1191, baseType: !2484, size: 64, offset: 17216)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !486, line: 44, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !847, file: !486, line: 1194, baseType: !2487, size: 64, offset: 17280)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !486, line: 45, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !847, file: !486, line: 1197, baseType: !2490, size: 64, offset: 17344)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !486, line: 61, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !847, file: !486, line: 1199, baseType: !2493, size: 64, offset: 17408)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2495, line: 99, size: 128, elements: !2496)
!2495 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2496 = !{!2497, !2498, !2499}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2494, file: !2495, line: 100, baseType: !516, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2494, file: !2495, line: 101, baseType: !74, size: 32, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2494, file: !2495, line: 103, baseType: !95, size: 16, offset: 96)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !847, file: !486, line: 1202, baseType: !2501, size: 64, offset: 17472)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !486, line: 48, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !847, file: !486, line: 1205, baseType: !175, size: 64, offset: 17536)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !847, file: !486, line: 1206, baseType: !2505, size: 64, offset: 17600)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1437, line: 14, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1437, line: 12, size: 384, elements: !2508)
!2508 = !{!2509}
!2509 = !DIDerivedType(tag: DW_TAG_member, scope: !2507, file: !1437, line: 13, baseType: !2510, size: 384)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2507, file: !1437, line: 13, size: 384, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2515}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2510, file: !1437, line: 13, baseType: !78, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2510, file: !1437, line: 13, baseType: !78, size: 32, offset: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2510, file: !1437, line: 13, baseType: !78, size: 32, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2510, file: !1437, line: 13, baseType: !2516, size: 256, offset: 128)
!2516 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2517, line: 37, size: 256, elements: !2518)
!2517 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2518 = !{!2519, !2524, !2537, !2543, !2552, !2578, !2583}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2516, file: !2517, line: 42, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 39, size: 64, elements: !2521)
!2521 = !{!2522, !2523}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2520, file: !2517, line: 40, baseType: !2180, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2520, file: !2517, line: 41, baseType: !219, size: 32, offset: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2516, file: !2517, line: 50, baseType: !2525, size: 192)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 45, size: 192, elements: !2526)
!2526 = !{!2527, !2529, !2530, !2536}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2525, file: !2517, line: 46, baseType: !2528, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !159, line: 95, baseType: !78)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2525, file: !2517, line: 47, baseType: !78, size: 32, offset: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2525, file: !2517, line: 48, baseType: !2531, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2517, line: 11, baseType: !2532)
!2532 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2517, line: 8, size: 64, elements: !2533)
!2533 = !{!2534, !2535}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2532, file: !2517, line: 9, baseType: !78, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2532, file: !2517, line: 10, baseType: !197, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2525, file: !2517, line: 49, baseType: !78, size: 32, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2516, file: !2517, line: 57, baseType: !2538, size: 128)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 53, size: 128, elements: !2539)
!2539 = !{!2540, !2541, !2542}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2538, file: !2517, line: 54, baseType: !2180, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2538, file: !2517, line: 55, baseType: !219, size: 32, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2538, file: !2517, line: 56, baseType: !2531, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2516, file: !2517, line: 66, baseType: !2544, size: 256)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 60, size: 256, elements: !2545)
!2545 = !{!2546, !2547, !2548, !2549, !2551}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2544, file: !2517, line: 61, baseType: !2180, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2544, file: !2517, line: 62, baseType: !219, size: 32, offset: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2544, file: !2517, line: 63, baseType: !78, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2544, file: !2517, line: 64, baseType: !2550, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !159, line: 94, baseType: !160)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2544, file: !2517, line: 65, baseType: !2550, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2516, file: !2517, line: 105, baseType: !2553, size: 256)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 69, size: 256, elements: !2554)
!2554 = !{!2555, !2556}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2553, file: !2517, line: 70, baseType: !197, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, scope: !2553, file: !2517, line: 79, baseType: !2557, size: 192, offset: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2553, file: !2517, line: 79, size: 192, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2567, !2572}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2557, file: !2517, line: 81, baseType: !78, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2557, file: !2517, line: 86, baseType: !1318, size: 16)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2557, file: !2517, line: 92, baseType: !2562, size: 192)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2517, line: 88, size: 192, elements: !2563)
!2563 = !{!2564, !2565, !2566}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2562, file: !2517, line: 89, baseType: !3, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2562, file: !2517, line: 90, baseType: !197, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2562, file: !2517, line: 91, baseType: !197, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2557, file: !2517, line: 97, baseType: !2568, size: 96)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2517, line: 94, size: 96, elements: !2569)
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2568, file: !2517, line: 95, baseType: !3, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2568, file: !2517, line: 96, baseType: !277, size: 32, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2557, file: !2517, line: 103, baseType: !2573, size: 128)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2557, file: !2517, line: 99, size: 128, elements: !2574)
!2574 = !{!2575, !2576, !2577}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2573, file: !2517, line: 100, baseType: !175, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2573, file: !2517, line: 101, baseType: !277, size: 32, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2573, file: !2517, line: 102, baseType: !277, size: 32, offset: 96)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2516, file: !2517, line: 111, baseType: !2579, size: 128)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 108, size: 128, elements: !2580)
!2580 = !{!2581, !2582}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2579, file: !2517, line: 109, baseType: !161, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2579, file: !2517, line: 110, baseType: !78, size: 32, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2516, file: !2517, line: 118, baseType: !2584, size: 128)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2516, file: !2517, line: 114, size: 128, elements: !2585)
!2585 = !{!2586, !2587, !2588}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2584, file: !2517, line: 115, baseType: !197, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2584, file: !2517, line: 116, baseType: !78, size: 32, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2584, file: !2517, line: 117, baseType: !18, size: 32, offset: 96)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !847, file: !486, line: 1208, baseType: !2368, size: 448, offset: 17664)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !847, file: !486, line: 1215, baseType: !280, size: 64, offset: 18112)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !847, file: !486, line: 1217, baseType: !280, size: 64, offset: 18176)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !847, file: !486, line: 1219, baseType: !280, size: 64, offset: 18240)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !847, file: !486, line: 1223, baseType: !2594, size: 64, offset: 18304)
!2594 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2595, line: 99, baseType: !2596)
!2595 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2595, line: 99, size: 64, elements: !2597)
!2597 = !{!2598}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2596, file: !2595, line: 99, baseType: !1104, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !847, file: !486, line: 1225, baseType: !248, size: 32, offset: 18368)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !847, file: !486, line: 1226, baseType: !78, size: 32, offset: 18400)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !847, file: !486, line: 1227, baseType: !78, size: 32, offset: 18432)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !847, file: !486, line: 1231, baseType: !2603, size: 64, offset: 18496)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !486, line: 1231, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !847, file: !486, line: 1233, baseType: !25, size: 128, offset: 18560)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !847, file: !486, line: 1240, baseType: !2607, size: 64, offset: 18688)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !486, line: 62, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !847, file: !486, line: 1242, baseType: !2610, size: 64, offset: 18752)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !486, line: 1242, flags: DIFlagFwdDecl)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !847, file: !486, line: 1244, baseType: !25, size: 128, offset: 18816)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !847, file: !486, line: 1245, baseType: !2614, size: 64, offset: 18944)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !486, line: 51, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !847, file: !486, line: 1246, baseType: !512, size: 256, offset: 19008)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !847, file: !486, line: 1247, baseType: !18, size: 32, offset: 19264)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !847, file: !486, line: 1250, baseType: !2619, size: 64, offset: 19328)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !486, line: 57, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !847, file: !486, line: 1251, baseType: !512, size: 256, offset: 19392)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !847, file: !486, line: 1252, baseType: !25, size: 128, offset: 19648)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !847, file: !486, line: 1259, baseType: !1849, size: 64, offset: 19776)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !847, file: !486, line: 1260, baseType: !1318, size: 16, offset: 19840)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !847, file: !486, line: 1261, baseType: !1318, size: 16, offset: 19856)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !847, file: !486, line: 1314, baseType: !2627, size: 64, offset: 19904)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2629, line: 62, size: 256, align: 256, elements: !2630)
!2629 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2628, file: !2629, line: 75, baseType: !277, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2628, file: !2629, line: 90, baseType: !277, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2628, file: !2629, line: 112, baseType: !281, size: 64, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2628, file: !2629, line: 132, baseType: !277, size: 32, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2628, file: !2629, line: 140, baseType: !277, size: 32, offset: 160)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2628, file: !2629, line: 149, baseType: !277, size: 32, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2628, file: !2629, line: 154, baseType: !2638, offset: 224)
!2638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1243)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !847, file: !486, line: 1315, baseType: !276, size: 32, offset: 19968)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !847, file: !486, line: 1316, baseType: !276, size: 32, offset: 20000)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !847, file: !486, line: 1321, baseType: !175, size: 64, offset: 20032)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !847, file: !486, line: 1325, baseType: !78, size: 32, offset: 20096)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !847, file: !486, line: 1326, baseType: !78, size: 32, offset: 20128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !847, file: !486, line: 1327, baseType: !78, size: 32, offset: 20160)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !847, file: !486, line: 1328, baseType: !78, size: 32, offset: 20192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !847, file: !486, line: 1329, baseType: !831, size: 128, align: 64, offset: 20224)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !847, file: !486, line: 1332, baseType: !2648, size: 128, offset: 20352)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2649, line: 51, size: 128, elements: !2650)
!2649 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2650 = !{!2651, !2656, !2657}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2648, file: !2649, line: 60, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2653, line: 7, size: 64, elements: !2654)
!2653 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2654 = !{!2655}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2652, file: !2653, line: 12, baseType: !1101, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2648, file: !2649, line: 63, baseType: !1349, size: 8, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2648, file: !2649, line: 70, baseType: !1349, size: 8, offset: 72)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !847, file: !486, line: 1335, baseType: !1901, size: 64, offset: 20480)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !847, file: !486, line: 1337, baseType: !2660, size: 128, offset: 20544)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2649, line: 39, size: 128, elements: !2661)
!2661 = !{!2662, !2663, !2664}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2660, file: !2649, line: 40, baseType: !1670, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2660, file: !2649, line: 42, baseType: !277, size: 32, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2660, file: !2649, line: 43, baseType: !277, size: 32, offset: 96)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !847, file: !486, line: 1340, baseType: !2666, size: 64, offset: 20672)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !486, line: 69, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !847, file: !486, line: 1351, baseType: !78, size: 32, offset: 20736)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !847, file: !486, line: 1352, baseType: !78, size: 32, offset: 20768)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !847, file: !486, line: 1354, baseType: !175, size: 64, offset: 20800)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !847, file: !486, line: 1364, baseType: !280, size: 64, offset: 20864)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !847, file: !486, line: 1365, baseType: !280, size: 64, offset: 20928)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !847, file: !486, line: 1412, baseType: !175, size: 64, offset: 20992)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !847, file: !486, line: 1453, baseType: !2675, size: 64, offset: 21056)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !486, line: 1453, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !847, file: !486, line: 1457, baseType: !2678, size: 64, offset: 21120)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !2073, line: 61, size: 576, elements: !2680)
!2680 = !{!2681, !2688, !2707, !2710, !2711, !2744, !2754}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2679, file: !2073, line: 62, baseType: !2682, size: 32)
!2682 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !2073, line: 51, baseType: !18, size: 32, elements: !2683)
!2683 = !{!2684, !2685, !2686, !2687}
!2684 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!2685 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!2686 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!2687 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!2688 = !DIDerivedType(tag: DW_TAG_member, scope: !2679, file: !2073, line: 64, baseType: !2689, size: 192, offset: 64)
!2689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2679, file: !2073, line: 64, size: 192, elements: !2690)
!2690 = !{!2691, !2702}
!2691 = !DIDerivedType(tag: DW_TAG_member, scope: !2689, file: !2073, line: 65, baseType: !2692, size: 192)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2689, file: !2073, line: 65, size: 192, elements: !2693)
!2693 = !{!2694, !2701}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2692, file: !2073, line: 66, baseType: !2695, size: 128)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2696, line: 50, size: 128, elements: !2697)
!2696 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2697 = !{!2698, !2699, !2700}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2695, file: !2696, line: 52, baseType: !175, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2695, file: !2696, line: 54, baseType: !18, size: 32, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2695, file: !2696, line: 55, baseType: !18, size: 32, offset: 96)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2692, file: !2073, line: 67, baseType: !175, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, scope: !2689, file: !2073, line: 70, baseType: !2703, size: 192)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2689, file: !2073, line: 70, size: 192, elements: !2704)
!2704 = !{!2705, !2706}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2703, file: !2073, line: 71, baseType: !831, size: 128, align: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2703, file: !2073, line: 72, baseType: !175, size: 64, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2679, file: !2073, line: 76, baseType: !2708, size: 64, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !2073, line: 76, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2679, file: !2073, line: 77, baseType: !175, size: 64, offset: 320)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2679, file: !2073, line: 79, baseType: !2712, size: 64, offset: 384)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2696, line: 25, size: 256, elements: !2714)
!2714 = !{!2715, !2721, !2725}
!2715 = !DIDerivedType(tag: DW_TAG_member, scope: !2713, file: !2696, line: 26, baseType: !2716, size: 128)
!2716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2713, file: !2696, line: 26, size: 128, elements: !2717)
!2717 = !{!2718, !2720}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2716, file: !2696, line: 27, baseType: !2719, size: 128)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !2239)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2716, file: !2696, line: 28, baseType: !2719, size: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2713, file: !2696, line: 31, baseType: !2722, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2724)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2696, line: 23, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, scope: !2713, file: !2696, line: 33, baseType: !2726, size: 64, offset: 192)
!2726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2713, file: !2696, line: 33, size: 64, elements: !2727)
!2727 = !{!2728, !2734, !2739}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2726, file: !2696, line: 38, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2726, file: !2696, line: 34, size: 64, elements: !2730)
!2730 = !{!2731, !2732, !2733}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2729, file: !2696, line: 35, baseType: !1292, size: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2729, file: !2696, line: 36, baseType: !83, size: 8, offset: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2729, file: !2696, line: 37, baseType: !83, size: 8, offset: 40)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2726, file: !2696, line: 42, baseType: !2735, size: 16)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2726, file: !2696, line: 39, size: 16, elements: !2736)
!2736 = !{!2737, !2738}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2735, file: !2696, line: 40, baseType: !83, size: 8)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2735, file: !2696, line: 41, baseType: !83, size: 8, offset: 8)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2726, file: !2696, line: 46, baseType: !2740, size: 16)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2726, file: !2696, line: 43, size: 16, elements: !2741)
!2741 = !{!2742, !2743}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2740, file: !2696, line: 44, baseType: !83, size: 8)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2740, file: !2696, line: 45, baseType: !83, size: 8, offset: 8)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2679, file: !2073, line: 81, baseType: !2745, size: 64, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !2073, line: 85, size: 384, elements: !2747)
!2747 = !{!2748, !2749, !2750, !2751, !2752, !2753}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2746, file: !2073, line: 86, baseType: !2708, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2746, file: !2073, line: 87, baseType: !175, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2746, file: !2073, line: 88, baseType: !175, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2746, file: !2073, line: 89, baseType: !175, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2746, file: !2073, line: 90, baseType: !1349, size: 8, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2746, file: !2073, line: 92, baseType: !2745, size: 64, offset: 320)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2679, file: !2073, line: 82, baseType: !18, size: 32, offset: 512)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !847, file: !486, line: 1463, baseType: !2756, offset: 21184)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !486, line: 739, elements: !411)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !847, file: !486, line: 1470, baseType: !831, size: 128, align: 64, offset: 21184)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !847, file: !486, line: 1471, baseType: !860, size: 32, offset: 21312)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !847, file: !486, line: 1472, baseType: !78, size: 32, offset: 21344)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !847, file: !486, line: 1474, baseType: !846, size: 64, offset: 21376)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !847, file: !486, line: 1475, baseType: !2762, size: 320, offset: 21440)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2763, line: 11, size: 320, elements: !2764)
!2763 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2764 = !{!2765, !2766, !2767, !2772}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2762, file: !2763, line: 16, baseType: !403, size: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2762, file: !2763, line: 17, baseType: !175, size: 64, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2762, file: !2763, line: 18, baseType: !2768, size: 64, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{null, !2771}
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2762, file: !2763, line: 19, baseType: !276, size: 32, offset: 256)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !847, file: !486, line: 1478, baseType: !2774, size: 64, offset: 21760)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !486, line: 1478, flags: DIFlagFwdDecl)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !847, file: !486, line: 1482, baseType: !860, size: 32, offset: 21824)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !847, file: !486, line: 1489, baseType: !197, size: 64, offset: 21888)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !847, file: !486, line: 1504, baseType: !197, size: 64, offset: 21952)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !847, file: !486, line: 1505, baseType: !281, size: 64, offset: 22016)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !847, file: !486, line: 1506, baseType: !280, size: 64, offset: 22080)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !847, file: !486, line: 1507, baseType: !281, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !847, file: !486, line: 1508, baseType: !281, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !847, file: !486, line: 1509, baseType: !281, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !847, file: !486, line: 1510, baseType: !831, size: 128, align: 64, offset: 22208)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !847, file: !486, line: 1511, baseType: !78, size: 32, offset: 22336)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !847, file: !486, line: 1515, baseType: !2787, size: 64, offset: 22400)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !874, line: 56, size: 64, elements: !2788)
!2788 = !{!2789}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2787, file: !874, line: 57, baseType: !877, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !847, file: !486, line: 1518, baseType: !2787, size: 64, offset: 22464)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !847, file: !486, line: 1528, baseType: !831, size: 128, align: 64, offset: 22528)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !847, file: !486, line: 1552, baseType: !2793, size: 35328, offset: 23040)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2794, line: 430, size: 35328, elements: !2795)
!2794 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2795 = !{!2796, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2825, !2826, !2827, !2828, !2829, !2830, !2833, !2834, !2835, !2836}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2793, file: !2794, line: 432, baseType: !2797, size: 192)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2798, size: 192, elements: !126)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2799, line: 16, size: 64, elements: !2800)
!2799 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2800 = !{!2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2798, file: !2799, line: 17, baseType: !93, size: 16)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2798, file: !2799, line: 18, baseType: !93, size: 16, offset: 16)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2798, file: !2799, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2798, file: !2799, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2798, file: !2799, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2798, file: !2799, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2798, file: !2799, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2798, file: !2799, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2798, file: !2799, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2798, file: !2799, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2798, file: !2799, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2798, file: !2799, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2798, file: !2799, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2793, file: !2794, line: 436, baseType: !175, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2793, file: !2794, line: 440, baseType: !95, size: 16, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2793, file: !2794, line: 441, baseType: !95, size: 16, offset: 272)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2793, file: !2794, line: 442, baseType: !95, size: 16, offset: 288)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2793, file: !2794, line: 443, baseType: !95, size: 16, offset: 304)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2793, file: !2794, line: 447, baseType: !175, size: 64, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2793, file: !2794, line: 448, baseType: !175, size: 64, offset: 384)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2793, file: !2794, line: 459, baseType: !2822, size: 256, offset: 448)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 256, elements: !1230)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2794, line: 428, flags: DIFlagFwdDecl)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2793, file: !2794, line: 461, baseType: !175, size: 64, offset: 704)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2793, file: !2794, line: 463, baseType: !175, size: 64, offset: 768)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2793, file: !2794, line: 465, baseType: !175, size: 64, offset: 832)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2793, file: !2794, line: 466, baseType: !175, size: 64, offset: 896)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2793, file: !2794, line: 467, baseType: !175, size: 64, offset: 960)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2793, file: !2794, line: 473, baseType: !2831, size: 64, offset: 1024)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2794, line: 10, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2793, file: !2794, line: 480, baseType: !175, size: 64, offset: 1088)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2793, file: !2794, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2793, file: !2794, line: 491, baseType: !276, size: 32, offset: 1184)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2793, file: !2794, line: 501, baseType: !2837, size: 33792, offset: 1536)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2838, line: 448, size: 33792, elements: !2839)
!2838 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2839 = !{!2840, !2841, !2842, !3004, !3005, !3011, !3012}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2837, file: !2838, line: 461, baseType: !18, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2837, file: !2838, line: 468, baseType: !175, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2837, file: !2838, line: 476, baseType: !2843, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2838, line: 356, size: 33280, align: 512, elements: !2845)
!2845 = !{!2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2844, file: !2838, line: 358, baseType: !18, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2844, file: !2838, line: 361, baseType: !18, size: 32, offset: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2844, file: !2838, line: 364, baseType: !280, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2844, file: !2838, line: 367, baseType: !280, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2844, file: !2838, line: 370, baseType: !280, size: 64, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2844, file: !2838, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2844, file: !2838, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2844, file: !2838, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2844, file: !2838, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2844, file: !2838, line: 397, baseType: !2856, size: 32768, offset: 512)
!2856 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2838, line: 348, size: 32768, elements: !2857)
!2857 = !{!2858, !2873, !2910, !2987, !3000}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2856, file: !2838, line: 349, baseType: !2859, size: 896)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2838, line: 12, size: 896, elements: !2860)
!2860 = !{!2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2872}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2859, file: !2838, line: 13, baseType: !276, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2859, file: !2838, line: 14, baseType: !276, size: 32, offset: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2859, file: !2838, line: 15, baseType: !276, size: 32, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2859, file: !2838, line: 16, baseType: !276, size: 32, offset: 96)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2859, file: !2838, line: 17, baseType: !276, size: 32, offset: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2859, file: !2838, line: 18, baseType: !276, size: 32, offset: 160)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2859, file: !2838, line: 19, baseType: !276, size: 32, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2859, file: !2838, line: 22, baseType: !2869, size: 640, offset: 224)
!2869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 640, elements: !2870)
!2870 = !{!2871}
!2871 = !DISubrange(count: 20)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2859, file: !2838, line: 25, baseType: !276, size: 32, offset: 864)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2856, file: !2838, line: 350, baseType: !2874, size: 4096, align: 128)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2838, line: 34, size: 4096, align: 128, elements: !2875)
!2875 = !{!2876, !2877, !2878, !2879, !2880, !2895, !2896, !2897, !2899, !2901, !2905}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2874, file: !2838, line: 35, baseType: !93, size: 16)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2874, file: !2838, line: 36, baseType: !93, size: 16, offset: 16)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2874, file: !2838, line: 37, baseType: !93, size: 16, offset: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2874, file: !2838, line: 38, baseType: !93, size: 16, offset: 48)
!2880 = !DIDerivedType(tag: DW_TAG_member, scope: !2874, file: !2838, line: 39, baseType: !2881, size: 128, offset: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2874, file: !2838, line: 39, size: 128, elements: !2882)
!2882 = !{!2883, !2888}
!2883 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !2838, line: 40, baseType: !2884, size: 128)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2881, file: !2838, line: 40, size: 128, elements: !2885)
!2885 = !{!2886, !2887}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2884, file: !2838, line: 41, baseType: !280, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2884, file: !2838, line: 42, baseType: !280, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !2838, line: 44, baseType: !2889, size: 128)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2881, file: !2838, line: 44, size: 128, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2894}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2889, file: !2838, line: 45, baseType: !276, size: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2889, file: !2838, line: 46, baseType: !276, size: 32, offset: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2889, file: !2838, line: 47, baseType: !276, size: 32, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2889, file: !2838, line: 48, baseType: !276, size: 32, offset: 96)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2874, file: !2838, line: 51, baseType: !276, size: 32, offset: 192)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2874, file: !2838, line: 52, baseType: !276, size: 32, offset: 224)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2874, file: !2838, line: 55, baseType: !2898, size: 1024, offset: 256)
!2898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 1024, elements: !289)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2874, file: !2838, line: 58, baseType: !2900, size: 2048, offset: 1280)
!2900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 2048, elements: !130)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2874, file: !2838, line: 60, baseType: !2902, size: 384, offset: 3328)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 384, elements: !2903)
!2903 = !{!2904}
!2904 = !DISubrange(count: 12)
!2905 = !DIDerivedType(tag: DW_TAG_member, scope: !2874, file: !2838, line: 62, baseType: !2906, size: 384, offset: 3712)
!2906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2874, file: !2838, line: 62, size: 384, elements: !2907)
!2907 = !{!2908, !2909}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2906, file: !2838, line: 63, baseType: !2902, size: 384)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2906, file: !2838, line: 64, baseType: !2902, size: 384)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2856, file: !2838, line: 351, baseType: !2911, size: 1088)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2838, line: 79, size: 1088, elements: !2912)
!2912 = !{!2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2986}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2911, file: !2838, line: 80, baseType: !276, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2911, file: !2838, line: 81, baseType: !276, size: 32, offset: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2911, file: !2838, line: 82, baseType: !276, size: 32, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2911, file: !2838, line: 83, baseType: !276, size: 32, offset: 96)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2911, file: !2838, line: 84, baseType: !276, size: 32, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2911, file: !2838, line: 85, baseType: !276, size: 32, offset: 160)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2911, file: !2838, line: 86, baseType: !276, size: 32, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2911, file: !2838, line: 88, baseType: !2869, size: 640, offset: 224)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2911, file: !2838, line: 89, baseType: !83, size: 8, offset: 864)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2911, file: !2838, line: 90, baseType: !83, size: 8, offset: 872)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2911, file: !2838, line: 91, baseType: !83, size: 8, offset: 880)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2911, file: !2838, line: 92, baseType: !83, size: 8, offset: 888)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2911, file: !2838, line: 93, baseType: !83, size: 8, offset: 896)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2911, file: !2838, line: 94, baseType: !83, size: 8, offset: 904)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2911, file: !2838, line: 95, baseType: !2928, size: 64, offset: 960)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2930, line: 11, size: 128, elements: !2931)
!2930 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2931 = !{!2932, !2933}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2929, file: !2930, line: 12, baseType: !161, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2929, file: !2930, line: 13, baseType: !2934, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2936, line: 103, size: 1344, elements: !2937)
!2936 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2937 = !{!2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2966, !2967, !2968}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2935, file: !2936, line: 109, baseType: !175, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2935, file: !2936, line: 110, baseType: !175, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2935, file: !2936, line: 111, baseType: !175, size: 64, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2935, file: !2936, line: 112, baseType: !175, size: 64, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2935, file: !2936, line: 113, baseType: !175, size: 64, offset: 256)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2935, file: !2936, line: 114, baseType: !175, size: 64, offset: 320)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2935, file: !2936, line: 117, baseType: !175, size: 64, offset: 384)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2935, file: !2936, line: 118, baseType: !175, size: 64, offset: 448)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2935, file: !2936, line: 119, baseType: !175, size: 64, offset: 512)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2935, file: !2936, line: 120, baseType: !175, size: 64, offset: 576)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2935, file: !2936, line: 121, baseType: !175, size: 64, offset: 640)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2935, file: !2936, line: 122, baseType: !175, size: 64, offset: 704)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2935, file: !2936, line: 123, baseType: !175, size: 64, offset: 768)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2935, file: !2936, line: 124, baseType: !175, size: 64, offset: 832)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2935, file: !2936, line: 125, baseType: !175, size: 64, offset: 896)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2935, file: !2936, line: 139, baseType: !175, size: 64, offset: 960)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2935, file: !2936, line: 142, baseType: !175, size: 64, offset: 1024)
!2955 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !2936, line: 144, baseType: !2956, size: 64, offset: 1088)
!2956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2935, file: !2936, line: 144, size: 64, elements: !2957)
!2957 = !{!2958, !2959, !2960}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2956, file: !2936, line: 146, baseType: !93, size: 16)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2956, file: !2936, line: 148, baseType: !280, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2956, file: !2936, line: 150, baseType: !2961, size: 64)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2936, line: 59, size: 64, elements: !2962)
!2962 = !{!2963, !2964, !2965}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2961, file: !2936, line: 61, baseType: !280, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2961, file: !2936, line: 63, baseType: !280, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2961, file: !2936, line: 65, baseType: !280, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2935, file: !2936, line: 153, baseType: !175, size: 64, offset: 1152)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2935, file: !2936, line: 154, baseType: !175, size: 64, offset: 1216)
!2968 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !2936, line: 156, baseType: !2969, size: 64, offset: 1280)
!2969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2935, file: !2936, line: 156, size: 64, elements: !2970)
!2970 = !{!2971, !2972, !2973}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2969, file: !2936, line: 158, baseType: !93, size: 16)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2969, file: !2936, line: 160, baseType: !280, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2969, file: !2936, line: 162, baseType: !2974, size: 64)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2936, line: 69, size: 64, elements: !2975)
!2975 = !{!2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2974, file: !2936, line: 71, baseType: !280, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2974, file: !2936, line: 73, baseType: !280, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2974, file: !2936, line: 75, baseType: !280, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2974, file: !2936, line: 77, baseType: !280, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2974, file: !2936, line: 80, baseType: !280, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2974, file: !2936, line: 83, baseType: !280, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2974, file: !2936, line: 86, baseType: !280, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2974, file: !2936, line: 88, baseType: !280, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2974, file: !2936, line: 93, baseType: !280, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2974, file: !2936, line: 100, baseType: !280, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2911, file: !2838, line: 96, baseType: !276, size: 32, offset: 1024)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2856, file: !2838, line: 352, baseType: !2988, size: 4608, align: 512)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2838, line: 333, size: 4608, align: 512, elements: !2989)
!2989 = !{!2990, !2991, !2998}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2988, file: !2838, line: 334, baseType: !2874, size: 4096, align: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2988, file: !2838, line: 335, baseType: !2992, size: 512, offset: 4096)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2838, line: 312, size: 512, elements: !2993)
!2993 = !{!2994, !2995, !2996}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2992, file: !2838, line: 313, baseType: !280, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2992, file: !2838, line: 314, baseType: !280, size: 64, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2992, file: !2838, line: 315, baseType: !2997, size: 384, offset: 128)
!2997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 384, elements: !1336)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2988, file: !2838, line: 336, baseType: !2999, offset: 4608)
!2999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1243)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2856, file: !2838, line: 353, baseType: !3001, size: 32768)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32768, elements: !3002)
!3002 = !{!3003}
!3003 = !DISubrange(count: 4096)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2837, file: !2838, line: 484, baseType: !2843, size: 64, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2837, file: !2838, line: 491, baseType: !3006, size: 128, offset: 256)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2838, line: 404, size: 128, elements: !3007)
!3007 = !{!3008, !3009, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3006, file: !2838, line: 424, baseType: !280, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3006, file: !2838, line: 432, baseType: !18, size: 32, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3006, file: !2838, line: 440, baseType: !18, size: 32, offset: 96)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2837, file: !2838, line: 498, baseType: !3006, size: 128, offset: 384)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2837, file: !2838, line: 508, baseType: !2844, size: 33280, align: 512, offset: 512)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !814, file: !815, line: 16, baseType: !824, size: 192, offset: 512)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !814, file: !815, line: 17, baseType: !74, size: 32, offset: 704)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !359, file: !204, line: 1240, baseType: !197, size: 64, offset: 6912)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !359, file: !204, line: 1243, baseType: !276, size: 32, offset: 6976)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !359, file: !204, line: 1245, baseType: !570, size: 64, offset: 7040)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !359, file: !204, line: 1246, baseType: !570, size: 64, offset: 7104)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !359, file: !204, line: 1248, baseType: !277, size: 32, offset: 7168)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !359, file: !204, line: 1249, baseType: !3021, size: 64, offset: 7232)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !204, line: 634, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !359, file: !204, line: 1252, baseType: !3024, size: 256, offset: 7296)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !289)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !359, file: !204, line: 1253, baseType: !3026, size: 128, offset: 7552)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3027, line: 21, baseType: !3028)
!3027 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3027, line: 19, size: 128, elements: !3029)
!3029 = !{!3030}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3028, file: !3027, line: 20, baseType: !3031, size: 128)
!3031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !2239)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !359, file: !204, line: 1255, baseType: !18, size: 32, offset: 7680)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !359, file: !204, line: 1261, baseType: !512, size: 256, offset: 7744)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !359, file: !204, line: 1267, baseType: !43, size: 64, offset: 8000)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !359, file: !204, line: 1269, baseType: !305, size: 64, offset: 8064)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !359, file: !204, line: 1271, baseType: !3037, size: 448, offset: 8128)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !579, line: 63, size: 448, elements: !3038)
!3038 = !{!3039, !3044, !3045, !3046, !3047, !3048, !3049}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3037, file: !579, line: 64, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!175, !3043, !577}
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3037, file: !579, line: 66, baseType: !3040, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3037, file: !579, line: 69, baseType: !161, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3037, file: !579, line: 70, baseType: !78, size: 32, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3037, file: !579, line: 71, baseType: !18, size: 32, offset: 224)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3037, file: !579, line: 74, baseType: !25, size: 128, offset: 256)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3037, file: !579, line: 85, baseType: !3050, size: 64, offset: 384)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !359, file: !204, line: 1274, baseType: !516, size: 64, offset: 8576)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !359, file: !204, line: 1280, baseType: !516, size: 64, offset: 8640)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !359, file: !204, line: 1283, baseType: !78, size: 32, offset: 8704)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !359, file: !204, line: 1286, baseType: !1951, size: 32, offset: 8736)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !359, file: !204, line: 1289, baseType: !3056, size: 64, offset: 8768)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2081, line: 18, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !359, file: !204, line: 1290, baseType: !399, size: 64, offset: 8832)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !359, file: !204, line: 1297, baseType: !1432, size: 64, offset: 8896)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !359, file: !204, line: 1304, baseType: !3061, size: 64, offset: 8960)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3062, line: 49, size: 64, elements: !3063)
!3062 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3063 = !{!3064}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3061, file: !3062, line: 50, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3062, line: 41, size: 512, align: 512, elements: !3067)
!3067 = !{!3068, !3069, !3074}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3066, file: !3062, line: 43, baseType: !54, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3066, file: !3062, line: 45, baseType: !3070, size: 192, offset: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3062, line: 29, size: 192, elements: !3071)
!3071 = !{!3072, !3073}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3070, file: !3062, line: 30, baseType: !25, size: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3070, file: !3062, line: 32, baseType: !161, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3066, file: !3062, line: 46, baseType: !161, size: 64, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !359, file: !204, line: 1305, baseType: !3061, size: 64, offset: 9024)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !359, file: !204, line: 1306, baseType: !831, size: 128, align: 64, offset: 9088)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !359, file: !204, line: 1307, baseType: !2080, size: 256, offset: 9216)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !359, file: !204, line: 1309, baseType: !512, size: 256, offset: 9472)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !359, file: !204, line: 1314, baseType: !78, size: 32, offset: 9728)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !359, file: !204, line: 1317, baseType: !54, size: 32, align: 512, offset: 10240)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !359, file: !204, line: 1318, baseType: !25, size: 128, offset: 10304)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !359, file: !204, line: 1320, baseType: !54, size: 32, offset: 10432)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !359, file: !204, line: 1321, baseType: !25, size: 128, offset: 10496)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !353, file: !354, line: 73, baseType: !78, size: 32, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !353, file: !354, line: 74, baseType: !3086, size: 64, offset: 192)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1274, line: 42, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !307, file: !244, line: 141, baseType: !3090, size: 64, offset: 704)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!78, !641, !1349}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !307, file: !244, line: 142, baseType: !3094, size: 64, offset: 768)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!242, !242, !3097}
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !243, file: !244, line: 96, baseType: !358, size: 64, offset: 832)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !243, file: !244, line: 97, baseType: !175, size: 64, offset: 896)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !243, file: !244, line: 98, baseType: !197, size: 64, offset: 960)
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !244, line: 100, baseType: !3103, size: 128, offset: 1024)
!3103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !244, line: 100, size: 128, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3103, file: !244, line: 101, baseType: !25, size: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3103, file: !244, line: 102, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !243, file: !244, line: 104, baseType: !25, size: 128, offset: 1152)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !243, file: !244, line: 105, baseType: !25, size: 128, offset: 1280)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !243, file: !244, line: 113, baseType: !3111, size: 128, offset: 1408)
!3111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !244, line: 109, size: 128, elements: !3112)
!3112 = !{!3113, !3114, !3115}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3111, file: !244, line: 110, baseType: !403, size: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3111, file: !244, line: 111, baseType: !258, size: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3111, file: !244, line: 112, baseType: !831, size: 128, align: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !236, file: !204, line: 1968, baseType: !3117, size: 64, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!43, !242, !207, !3120}
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3122, line: 10, size: 128, elements: !3123)
!3122 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3123 = !{!3124, !3128}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3121, file: !3122, line: 11, baseType: !3125, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !197}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3121, file: !3122, line: 12, baseType: !197, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !236, file: !204, line: 1969, baseType: !3130, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!78, !3086, !207, !78}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !236, file: !204, line: 1970, baseType: !3134, size: 64, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!230, !207, !78, !1349}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !236, file: !204, line: 1972, baseType: !3138, size: 64, offset: 256)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!78, !242, !125, !78}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !236, file: !204, line: 1974, baseType: !3142, size: 64, offset: 320)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!78, !3086, !207, !242, !167, !1349}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !236, file: !204, line: 1976, baseType: !3146, size: 64, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!78, !242, !207, !242}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !236, file: !204, line: 1977, baseType: !3150, size: 64, offset: 448)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!78, !207, !242}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !236, file: !204, line: 1978, baseType: !3154, size: 64, offset: 512)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!78, !3086, !207, !242, !43}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !236, file: !204, line: 1980, baseType: !3158, size: 64, offset: 576)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!78, !3086, !207, !242, !167}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !236, file: !204, line: 1982, baseType: !3150, size: 64, offset: 640)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !236, file: !204, line: 1983, baseType: !3163, size: 64, offset: 704)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!78, !3086, !207, !242, !167, !363}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !236, file: !204, line: 1985, baseType: !3167, size: 64, offset: 768)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!78, !3086, !207, !242, !207, !242, !18}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !236, file: !204, line: 1987, baseType: !3171, size: 64, offset: 832)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!78, !3086, !242, !3174}
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !204, line: 226, size: 640, elements: !3176)
!3176 = !{!3177, !3178, !3179, !3189, !3198, !3199, !3204, !3205, !3206}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3175, file: !204, line: 227, baseType: !18, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3175, file: !204, line: 228, baseType: !167, size: 16, offset: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, scope: !3175, file: !204, line: 241, baseType: !3180, size: 32, offset: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3175, file: !204, line: 241, size: 32, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3180, file: !204, line: 242, baseType: !213, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3180, file: !204, line: 243, baseType: !3184, size: 32)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3185, line: 16, baseType: !3186)
!3185 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3185, line: 14, size: 32, elements: !3187)
!3187 = !{!3188}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3186, file: !3185, line: 15, baseType: !218, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, scope: !3175, file: !204, line: 245, baseType: !3190, size: 32, offset: 96)
!3190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3175, file: !204, line: 245, size: 32, elements: !3191)
!3191 = !{!3192, !3193}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3190, file: !204, line: 246, baseType: !222, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3190, file: !204, line: 247, baseType: !3194, size: 32)
!3194 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3185, line: 20, baseType: !3195)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3185, line: 18, size: 32, elements: !3196)
!3196 = !{!3197}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3195, file: !3185, line: 19, baseType: !226, size: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3175, file: !204, line: 249, baseType: !368, size: 64, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3175, file: !204, line: 250, baseType: !3200, size: 128, offset: 192)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !571, line: 13, size: 128, elements: !3201)
!3201 = !{!3202, !3203}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3200, file: !571, line: 14, baseType: !570, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3200, file: !571, line: 15, baseType: !161, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3175, file: !204, line: 251, baseType: !3200, size: 128, offset: 320)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3175, file: !204, line: 252, baseType: !3200, size: 128, offset: 448)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3175, file: !204, line: 259, baseType: !1180, size: 64, offset: 576)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !236, file: !204, line: 1988, baseType: !3208, size: 64, offset: 896)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!78, !3086, !641, !3211, !276, !18}
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3213, line: 22, size: 1280, elements: !3214)
!3213 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3212, file: !3213, line: 23, baseType: !276, size: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3212, file: !3213, line: 24, baseType: !167, size: 16, offset: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3212, file: !3213, line: 25, baseType: !18, size: 32, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3212, file: !3213, line: 26, baseType: !1314, size: 32, offset: 96)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3212, file: !3213, line: 27, baseType: !280, size: 64, offset: 128)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3212, file: !3213, line: 28, baseType: !280, size: 64, offset: 192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3212, file: !3213, line: 41, baseType: !280, size: 64, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3212, file: !3213, line: 42, baseType: !363, size: 32, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3212, file: !3213, line: 43, baseType: !363, size: 32, offset: 352)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3212, file: !3213, line: 44, baseType: !213, size: 32, offset: 384)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3212, file: !3213, line: 45, baseType: !222, size: 32, offset: 416)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3212, file: !3213, line: 46, baseType: !368, size: 64, offset: 448)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3212, file: !3213, line: 47, baseType: !3200, size: 128, offset: 512)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3212, file: !3213, line: 48, baseType: !3200, size: 128, offset: 640)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3212, file: !3213, line: 49, baseType: !3200, size: 128, offset: 768)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3212, file: !3213, line: 50, baseType: !3200, size: 128, offset: 896)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3212, file: !3213, line: 51, baseType: !280, size: 64, offset: 1024)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3212, file: !3213, line: 52, baseType: !280, size: 64, offset: 1088)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3212, file: !3213, line: 53, baseType: !276, size: 32, offset: 1152)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3212, file: !3213, line: 54, baseType: !276, size: 32, offset: 1184)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3212, file: !3213, line: 55, baseType: !280, size: 64, offset: 1216)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !236, file: !204, line: 1990, baseType: !3237, size: 64, offset: 960)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!157, !242, !125, !172}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !236, file: !204, line: 1991, baseType: !3241, size: 64, offset: 1024)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!78, !207, !3244, !280, !280}
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !204, line: 55, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !236, file: !204, line: 1993, baseType: !3247, size: 64, offset: 1088)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!78, !207, !78}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !236, file: !204, line: 1994, baseType: !3251, size: 64, offset: 1152)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!78, !207, !242, !1180, !18, !167}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !236, file: !204, line: 1997, baseType: !3255, size: 64, offset: 1216)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!78, !3086, !207, !1180, !167}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !236, file: !204, line: 1999, baseType: !3259, size: 64, offset: 1280)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!230, !3086, !242, !78}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !236, file: !204, line: 2001, baseType: !3263, size: 64, offset: 1344)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!78, !3086, !242, !230, !78}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !236, file: !204, line: 2003, baseType: !3267, size: 64, offset: 1408)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!78, !3086, !242, !3270}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !204, line: 76, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !236, file: !204, line: 2005, baseType: !3273, size: 64, offset: 1472)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!78, !242, !3270}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !236, file: !204, line: 2006, baseType: !3277, size: 64, offset: 1536)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!3280, !207}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !204, line: 3192, size: 192, elements: !3282)
!3282 = !{!3283, !3290}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3281, file: !204, line: 3193, baseType: !3284, size: 128)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3285, line: 296, size: 128, elements: !3286)
!3285 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3286 = !{!3287, !3288, !3289}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3284, file: !3285, line: 297, baseType: !54, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3284, file: !3285, line: 299, baseType: !582, size: 32, offset: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3284, file: !3285, line: 300, baseType: !197, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3281, file: !204, line: 3194, baseType: !276, size: 32, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !208, file: !204, line: 655, baseType: !358, size: 64, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !208, file: !204, line: 656, baseType: !202, size: 64, offset: 512)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !208, file: !204, line: 659, baseType: !197, size: 64, offset: 576)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !208, file: !204, line: 663, baseType: !175, size: 64, offset: 640)
!3295 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !204, line: 671, baseType: !3296, size: 32, offset: 704)
!3296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !204, line: 671, size: 32, elements: !3297)
!3297 = !{!3298, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3296, file: !204, line: 672, baseType: !3299, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3296, file: !204, line: 673, baseType: !18, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !208, file: !204, line: 675, baseType: !363, size: 32, offset: 736)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !208, file: !204, line: 676, baseType: !368, size: 64, offset: 768)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !208, file: !204, line: 677, baseType: !3200, size: 128, offset: 832)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !208, file: !204, line: 678, baseType: !3200, size: 128, offset: 960)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !208, file: !204, line: 679, baseType: !3200, size: 128, offset: 1088)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !208, file: !204, line: 680, baseType: !54, size: 32, offset: 1216)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !208, file: !204, line: 681, baseType: !95, size: 16, offset: 1248)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !208, file: !204, line: 682, baseType: !83, size: 8, offset: 1264)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !208, file: !204, line: 683, baseType: !83, size: 8, offset: 1272)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !208, file: !204, line: 684, baseType: !719, size: 64, offset: 1280)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !208, file: !204, line: 691, baseType: !175, size: 64, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !208, file: !204, line: 692, baseType: !731, size: 320, offset: 1408)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !208, file: !204, line: 694, baseType: !175, size: 64, offset: 1728)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !208, file: !204, line: 695, baseType: !175, size: 64, offset: 1792)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !208, file: !204, line: 697, baseType: !403, size: 128, offset: 1856)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !208, file: !204, line: 698, baseType: !25, size: 128, offset: 1984)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !208, file: !204, line: 707, baseType: !25, size: 128, offset: 2112)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !208, file: !204, line: 708, baseType: !25, size: 128, offset: 2240)
!3319 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !204, line: 709, baseType: !3320, size: 128, offset: 2368)
!3320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !204, line: 709, size: 128, elements: !3321)
!3321 = !{!3322, !3323}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3320, file: !204, line: 710, baseType: !399, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3320, file: !204, line: 711, baseType: !831, size: 128, align: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !208, file: !204, line: 713, baseType: !518, size: 64, offset: 2496)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !208, file: !204, line: 714, baseType: !518, size: 64, offset: 2560)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !208, file: !204, line: 715, baseType: !74, size: 32, offset: 2624)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !208, file: !204, line: 716, baseType: !74, size: 32, offset: 2656)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !208, file: !204, line: 717, baseType: !74, size: 32, offset: 2688)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !208, file: !204, line: 719, baseType: !74, size: 32, offset: 2720)
!3330 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !204, line: 721, baseType: !3331, size: 64, offset: 2752)
!3331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !204, line: 721, size: 64, elements: !3332)
!3332 = !{!3333, !3334}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3331, file: !204, line: 722, baseType: !1463, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3331, file: !204, line: 723, baseType: !430, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !208, file: !204, line: 725, baseType: !3336, size: 64, offset: 2816)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !204, line: 725, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !208, file: !204, line: 726, baseType: !203, size: 1536, align: 64, offset: 2880)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !208, file: !204, line: 727, baseType: !25, size: 128, offset: 4416)
!3340 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !204, line: 728, baseType: !3341, size: 64, offset: 4544)
!3341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !204, line: 728, size: 64, elements: !3342)
!3342 = !{!3343, !3344, !3347, !3348}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3341, file: !204, line: 729, baseType: !1901, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3341, file: !204, line: 730, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !204, line: 730, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3341, file: !204, line: 731, baseType: !125, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3341, file: !204, line: 732, baseType: !18, size: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !208, file: !204, line: 735, baseType: !277, size: 32, offset: 4608)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !208, file: !204, line: 738, baseType: !277, size: 32, offset: 4640)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !208, file: !204, line: 739, baseType: !3021, size: 64, offset: 4672)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !208, file: !204, line: 750, baseType: !197, size: 64, offset: 4736)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !203, file: !204, line: 474, baseType: !3284, size: 128, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !203, file: !204, line: 475, baseType: !731, size: 320, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !203, file: !204, line: 476, baseType: !582, size: 32, offset: 512)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !203, file: !204, line: 477, baseType: !74, size: 32, offset: 544)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !203, file: !204, line: 482, baseType: !1036, size: 128, offset: 576)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !203, file: !204, line: 483, baseType: !175, size: 64, offset: 704)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !203, file: !204, line: 484, baseType: !175, size: 64, offset: 768)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !203, file: !204, line: 485, baseType: !3361, size: 64, offset: 832)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3363)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !204, line: 404, size: 1280, elements: !3364)
!3364 = !{!3365, !3369, !3439, !3443, !3447, !3453, !3458, !3462, !3467, !3471, !3475, !3479, !3480, !3491, !3495, !3499, !3504, !3508, !3515, !3516}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3363, file: !204, line: 405, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!78, !1670, !442}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3363, file: !204, line: 406, baseType: !3370, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!78, !1180, !3373}
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !589, line: 293, size: 1536, elements: !3375)
!3375 = !{!3376, !3406, !3420}
!3376 = !DIDerivedType(tag: DW_TAG_member, scope: !3374, file: !589, line: 295, baseType: !3377, size: 512)
!3377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3374, file: !589, line: 295, size: 512, elements: !3378)
!3378 = !{!3379, !3405}
!3379 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !589, line: 296, baseType: !3380, size: 448)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3377, file: !589, line: 296, size: 448, elements: !3381)
!3381 = !{!3382, !3383, !3392, !3393, !3394, !3403, !3404}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3380, file: !589, line: 298, baseType: !175, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, scope: !3380, file: !589, line: 299, baseType: !3384, size: 128, offset: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3380, file: !589, line: 299, size: 128, elements: !3385)
!3385 = !{!3386, !3387}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3384, file: !589, line: 300, baseType: !25, size: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, scope: !3384, file: !589, line: 302, baseType: !3388, size: 128)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3384, file: !589, line: 302, size: 128, elements: !3389)
!3389 = !{!3390, !3391}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3388, file: !589, line: 303, baseType: !197, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3388, file: !589, line: 305, baseType: !18, size: 32, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3380, file: !589, line: 310, baseType: !202, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3380, file: !589, line: 311, baseType: !175, size: 64, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_member, scope: !3380, file: !589, line: 312, baseType: !3395, size: 64, offset: 320)
!3395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3380, file: !589, line: 312, size: 64, elements: !3396)
!3396 = !{!3397, !3398}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3395, file: !589, line: 313, baseType: !197, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3395, file: !589, line: 314, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !589, line: 257, baseType: !3400)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !589, line: 255, size: 64, elements: !3401)
!3401 = !{!3402}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3400, file: !589, line: 256, baseType: !175, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3380, file: !589, line: 316, baseType: !74, size: 32, offset: 384)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3380, file: !589, line: 317, baseType: !74, size: 32, offset: 416)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3377, file: !589, line: 323, baseType: !1671, size: 512, align: 128)
!3406 = !DIDerivedType(tag: DW_TAG_member, scope: !3374, file: !589, line: 325, baseType: !3407, size: 512, offset: 512)
!3407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3374, file: !589, line: 325, size: 512, elements: !3408)
!3408 = !{!3409, !3419}
!3409 = !DIDerivedType(tag: DW_TAG_member, scope: !3407, file: !589, line: 326, baseType: !3410, size: 320)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3407, file: !589, line: 326, size: 320, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417, !3418}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3410, file: !589, line: 327, baseType: !175, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3410, file: !589, line: 328, baseType: !175, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3410, file: !589, line: 329, baseType: !175, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3410, file: !589, line: 331, baseType: !74, size: 32, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3410, file: !589, line: 332, baseType: !74, size: 32, offset: 224)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3410, file: !589, line: 333, baseType: !74, size: 32, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3410, file: !589, line: 335, baseType: !18, size: 32, offset: 288)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3407, file: !589, line: 339, baseType: !1671, size: 512, align: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, scope: !3374, file: !589, line: 341, baseType: !3421, size: 512, offset: 1024)
!3421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3374, file: !589, line: 341, size: 512, elements: !3422)
!3422 = !{!3423, !3432, !3438}
!3423 = !DIDerivedType(tag: DW_TAG_member, scope: !3421, file: !589, line: 342, baseType: !3424, size: 384)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3421, file: !589, line: 342, size: 384, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429, !3430, !3431}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3424, file: !589, line: 343, baseType: !175, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3424, file: !589, line: 344, baseType: !175, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3424, file: !589, line: 346, baseType: !197, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3424, file: !589, line: 347, baseType: !197, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3424, file: !589, line: 348, baseType: !197, size: 64, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3424, file: !589, line: 349, baseType: !197, size: 64, offset: 320)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !3421, file: !589, line: 352, baseType: !3433, size: 256)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3421, file: !589, line: 352, size: 256, elements: !3434)
!3434 = !{!3435, !3436, !3437}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3433, file: !589, line: 353, baseType: !175, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3433, file: !589, line: 354, baseType: !175, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3433, file: !589, line: 356, baseType: !25, size: 128, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3421, file: !589, line: 359, baseType: !1671, size: 512, align: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3363, file: !204, line: 409, baseType: !3440, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!78, !202, !442}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3363, file: !204, line: 412, baseType: !3444, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!1349, !202, !3373}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3363, file: !204, line: 414, baseType: !3448, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{null, !3451}
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !204, line: 310, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3363, file: !204, line: 416, baseType: !3454, size: 64, offset: 320)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!78, !1180, !202, !368, !18, !3457, !1916}
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3363, file: !204, line: 419, baseType: !3459, size: 64, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!78, !1180, !202, !368, !18, !18, !1670, !197}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3363, file: !204, line: 424, baseType: !3463, size: 64, offset: 448)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!3466, !202, !3466}
!3466 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !26, line: 131, baseType: !280)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3363, file: !204, line: 425, baseType: !3468, size: 64, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{null, !3373, !172, !172}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3363, file: !204, line: 426, baseType: !3472, size: 64, offset: 576)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!1349, !3373, !582}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3363, file: !204, line: 427, baseType: !3476, size: 64, offset: 640)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !3373}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3363, file: !204, line: 428, baseType: !1482, size: 64, offset: 704)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3363, file: !204, line: 433, baseType: !3481, size: 64, offset: 768)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!78, !202, !3373, !3373, !3484}
!3484 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !3485, line: 15, baseType: !18, size: 32, elements: !3486)
!3485 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!3486 = !{!3487, !3488, !3489, !3490}
!3487 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!3488 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!3489 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!3490 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3363, file: !204, line: 435, baseType: !3492, size: 64, offset: 832)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!78, !3373}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3363, file: !204, line: 436, baseType: !3496, size: 64, offset: 896)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!1349, !3373, !172, !172}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3363, file: !204, line: 438, baseType: !3500, size: 64, offset: 960)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{null, !3373, !3503, !3503}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3363, file: !204, line: 439, baseType: !3505, size: 64, offset: 1024)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!78, !202, !1670}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3363, file: !204, line: 442, baseType: !3509, size: 64, offset: 1088)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!78, !3512, !1180, !3514}
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !204, line: 66, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3363, file: !204, line: 444, baseType: !1908, size: 64, offset: 1152)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3363, file: !204, line: 445, baseType: !3517, size: 64, offset: 1216)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!78, !1485, !1507}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !203, file: !204, line: 486, baseType: !175, size: 64, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !203, file: !204, line: 487, baseType: !731, size: 320, offset: 960)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !203, file: !204, line: 488, baseType: !1951, size: 32, offset: 1280)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !203, file: !204, line: 489, baseType: !54, size: 32, offset: 1312)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !203, file: !204, line: 490, baseType: !25, size: 128, offset: 1344)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !203, file: !204, line: 491, baseType: !197, size: 64, offset: 1472)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !192, file: !151, line: 180, baseType: !3527, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!157, !1180, !47, !191, !125, !368, !172}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !192, file: !151, line: 182, baseType: !3527, size: 64, offset: 384)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !192, file: !151, line: 184, baseType: !3532, size: 64, offset: 448)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!78, !1180, !47, !191, !1546}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !180, file: !151, line: 90, baseType: !3536, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !180, file: !151, line: 91, baseType: !3538, size: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !141, file: !40, line: 120, baseType: !3540, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!3543, !108}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3545)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3546, line: 39, size: 384, elements: !3547)
!3546 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!3547 = !{!3548, !3554, !3558, !3562, !3568, !3572}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3545, file: !3546, line: 40, baseType: !3549, size: 32)
!3549 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3546, line: 26, baseType: !18, size: 32, elements: !3550)
!3550 = !{!3551, !3552, !3553}
!3551 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!3552 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!3553 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3545, file: !3546, line: 41, baseType: !3555, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!1349}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3545, file: !3546, line: 42, baseType: !3559, size: 64, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!197}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3545, file: !3546, line: 43, baseType: !3563, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!2040, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3546, line: 19, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3545, file: !3546, line: 44, baseType: !3569, size: 64, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!2040}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3545, file: !3546, line: 45, baseType: !3125, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !141, file: !40, line: 121, baseType: !3574, size: 64, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!2040, !108}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !141, file: !40, line: 122, baseType: !3578, size: 64, offset: 320)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !108, !3581, !3582}
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !39, file: !40, line: 70, baseType: !3584, size: 64, offset: 384)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !383, line: 190, size: 1152, elements: !3586)
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3678, !3679, !3680, !3681, !3682, !3685}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3585, file: !383, line: 191, baseType: !74, size: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3585, file: !383, line: 192, baseType: !74, size: 32, offset: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3585, file: !383, line: 202, baseType: !3584, size: 64, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3585, file: !383, line: 203, baseType: !43, size: 64, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3585, file: !383, line: 205, baseType: !904, size: 192, align: 64, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3585, file: !383, line: 207, baseType: !2040, size: 64, offset: 384)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3585, file: !383, line: 208, baseType: !18, size: 32, offset: 448)
!3594 = !DIDerivedType(tag: DW_TAG_member, scope: !3585, file: !383, line: 209, baseType: !3595, size: 256, offset: 512)
!3595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3585, file: !383, line: 209, size: 256, elements: !3596)
!3596 = !{!3597, !3606, !3610}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3595, file: !383, line: 210, baseType: !3598, size: 256)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !383, line: 153, size: 256, elements: !3599)
!3599 = !{!3600, !3601, !3602, !3605}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3598, file: !383, line: 154, baseType: !175, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3598, file: !383, line: 156, baseType: !1039, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3598, file: !383, line: 162, baseType: !3603, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !383, line: 162, flags: DIFlagFwdDecl)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3598, file: !383, line: 167, baseType: !175, size: 64, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3595, file: !383, line: 211, baseType: !3607, size: 64)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !383, line: 170, size: 64, elements: !3608)
!3608 = !{!3609}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3607, file: !383, line: 171, baseType: !3584, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3595, file: !383, line: 212, baseType: !3611, size: 256)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !383, line: 174, size: 256, elements: !3612)
!3612 = !{!3613, !3673, !3676, !3677}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3611, file: !383, line: 175, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3616)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !383, line: 271, size: 768, elements: !3617)
!3617 = !{!3618, !3638, !3642, !3646, !3650, !3654, !3658, !3662, !3663, !3664, !3665, !3669}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3616, file: !383, line: 276, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!78, !3622}
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !383, line: 251, size: 1216, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3623, file: !383, line: 253, baseType: !3584, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3623, file: !383, line: 254, baseType: !1180, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3623, file: !383, line: 255, baseType: !484, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3623, file: !383, line: 256, baseType: !197, size: 64, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3623, file: !383, line: 259, baseType: !512, size: 256, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3623, file: !383, line: 260, baseType: !512, size: 256, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3623, file: !383, line: 261, baseType: !78, size: 32, offset: 768)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3623, file: !383, line: 262, baseType: !25, size: 128, offset: 832)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3623, file: !383, line: 263, baseType: !125, size: 64, offset: 960)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3623, file: !383, line: 265, baseType: !172, size: 64, offset: 1024)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3623, file: !383, line: 266, baseType: !1349, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3623, file: !383, line: 267, baseType: !1349, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3623, file: !383, line: 268, baseType: !1591, size: 64, offset: 1152)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3616, file: !383, line: 277, baseType: !3639, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !3622}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3616, file: !383, line: 290, baseType: !3643, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!78, !484, !197}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3616, file: !383, line: 292, baseType: !3647, size: 64, offset: 192)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!197, !484, !1476}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3616, file: !383, line: 293, baseType: !3651, size: 64, offset: 256)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!197, !484, !197, !1476}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3616, file: !383, line: 294, baseType: !3655, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{null, !484, !197}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3616, file: !383, line: 296, baseType: !3659, size: 64, offset: 384)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!157, !3622, !125, !172, !368}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3616, file: !383, line: 306, baseType: !172, size: 64, offset: 448)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3616, file: !383, line: 313, baseType: !1349, size: 8, offset: 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3616, file: !383, line: 314, baseType: !3659, size: 64, offset: 576)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3616, file: !383, line: 317, baseType: !3666, size: 64, offset: 640)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!1533, !3622, !1535}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3616, file: !383, line: 320, baseType: !3670, size: 64, offset: 704)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!78, !3622, !1546}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3611, file: !383, line: 176, baseType: !3674, size: 64, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !383, line: 35, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3611, file: !383, line: 177, baseType: !368, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3611, file: !383, line: 178, baseType: !3584, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3585, file: !383, line: 215, baseType: !197, size: 64, offset: 768)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3585, file: !383, line: 221, baseType: !280, size: 64, offset: 832)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3585, file: !383, line: 223, baseType: !95, size: 16, offset: 896)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3585, file: !383, line: 224, baseType: !167, size: 16, offset: 912)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3585, file: !383, line: 225, baseType: !3683, size: 64, offset: 960)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !383, line: 36, flags: DIFlagFwdDecl)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3585, file: !383, line: 227, baseType: !831, size: 128, align: 64, offset: 1024)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !39, file: !40, line: 71, baseType: !3687, size: 32, offset: 448)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3688, line: 19, size: 32, elements: !3689)
!3688 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3689 = !{!3690}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3687, file: !3688, line: 20, baseType: !860, size: 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !39, file: !40, line: 73, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !39, file: !40, line: 74, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !39, file: !40, line: 75, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !39, file: !40, line: 76, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !39, file: !40, line: 77, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !36, file: !14, line: 47, baseType: !12, size: 64, offset: 512)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !36, file: !14, line: 48, baseType: !47, size: 64, offset: 576)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !36, file: !14, line: 49, baseType: !3699, size: 64, offset: 640)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !14, line: 49, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !36, file: !14, line: 50, baseType: !2196, size: 64, offset: 704)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !13, file: !14, line: 418, baseType: !3703, size: 64, offset: 1408)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !14, line: 53, size: 448, elements: !3705)
!3705 = !{!3706, !3707, !3712, !3716, !3720, !3724}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3704, file: !14, line: 54, baseType: !163, size: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3704, file: !14, line: 55, baseType: !3708, size: 64, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!157, !3703, !3711, !125}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3704, file: !14, line: 57, baseType: !3713, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!157, !3703, !3711, !43, !172}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3704, file: !14, line: 59, baseType: !3717, size: 64, offset: 256)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !12, !43}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3704, file: !14, line: 60, baseType: !3721, size: 64, offset: 320)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!78, !12}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3704, file: !14, line: 61, baseType: !3725, size: 64, offset: 384)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !13, file: !14, line: 419, baseType: !43, size: 64, offset: 1472)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !13, file: !14, line: 420, baseType: !43, size: 64, offset: 1536)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !13, file: !14, line: 421, baseType: !47, size: 64, offset: 1600)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !13, file: !14, line: 424, baseType: !3730, size: 64, offset: 1664)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !3733, line: 35, size: 96, elements: !3734)
!3733 = !DIFile(filename: "kernel/module/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90211cd71019263d9071e3fe8acaefa7")
!3734 = !{!3735, !3736, !3737}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "value_offset", scope: !3732, file: !3733, line: 37, baseType: !78, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "name_offset", scope: !3732, file: !3733, line: 38, baseType: !78, size: 32, offset: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_offset", scope: !3732, file: !3733, line: 39, baseType: !78, size: 32, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !13, file: !14, line: 425, baseType: !3739, size: 64, offset: 1728)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1292)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !13, file: !14, line: 426, baseType: !18, size: 32, offset: 1792)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !13, file: !14, line: 435, baseType: !512, size: 256, offset: 1856)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !13, file: !14, line: 437, baseType: !3744, size: 64, offset: 2112)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3746, line: 69, size: 320, elements: !3747)
!3746 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3747 = !{!3748, !3749, !3750, !3767, !3769, !3773, !3774}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3745, file: !3746, line: 70, baseType: !43, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3745, file: !3746, line: 71, baseType: !12, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3745, file: !3746, line: 72, baseType: !3751, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3753)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3746, line: 47, size: 256, elements: !3754)
!3754 = !{!3755, !3756, !3762, !3766}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3753, file: !3746, line: 49, baseType: !18, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3753, file: !3746, line: 51, baseType: !3757, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!78, !43, !3760}
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3745)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3753, file: !3746, line: 53, baseType: !3763, size: 64, offset: 128)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!78, !125, !3760}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3753, file: !3746, line: 55, baseType: !3125, size: 64, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3745, file: !3746, line: 73, baseType: !3768, size: 16, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3745, file: !3746, line: 74, baseType: !3770, size: 8, offset: 208)
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !84, line: 16, baseType: !3771)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !3772)
!3772 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3745, file: !3746, line: 75, baseType: !83, size: 8, offset: 216)
!3774 = !DIDerivedType(tag: DW_TAG_member, scope: !3745, file: !3746, line: 76, baseType: !3775, size: 64, offset: 256)
!3775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3745, file: !3746, line: 76, size: 64, elements: !3776)
!3776 = !{!3777, !3778, !3785}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3775, file: !3746, line: 77, baseType: !197, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3775, file: !3746, line: 78, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3781)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3746, line: 86, size: 128, elements: !3782)
!3782 = !{!3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3781, file: !3746, line: 87, baseType: !18, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3781, file: !3746, line: 88, baseType: !125, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3775, file: !3746, line: 79, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3788)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3746, line: 92, size: 256, elements: !3789)
!3789 = !{!3790, !3791, !3792, !3793, !3794}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3788, file: !3746, line: 94, baseType: !18, size: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3788, file: !3746, line: 95, baseType: !18, size: 32, offset: 32)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3788, file: !3746, line: 96, baseType: !840, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3788, file: !3746, line: 97, baseType: !3751, size: 64, offset: 128)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3788, file: !3746, line: 98, baseType: !197, size: 64, offset: 192)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !13, file: !14, line: 438, baseType: !18, size: 32, offset: 2176)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !13, file: !14, line: 441, baseType: !18, size: 32, offset: 2208)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !13, file: !14, line: 442, baseType: !3730, size: 64, offset: 2240)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !13, file: !14, line: 443, baseType: !3739, size: 64, offset: 2304)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !13, file: !14, line: 444, baseType: !1349, size: 8, offset: 2368)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !13, file: !14, line: 451, baseType: !1349, size: 8, offset: 2376)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !13, file: !14, line: 454, baseType: !18, size: 32, offset: 2400)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !13, file: !14, line: 455, baseType: !3803, size: 64, offset: 2432)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3805, line: 23, size: 96, elements: !3806)
!3805 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3806 = !{!3807, !3808, !3809}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3804, file: !3805, line: 24, baseType: !78, size: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3804, file: !3805, line: 24, baseType: !78, size: 32, offset: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3804, file: !3805, line: 24, baseType: !78, size: 32, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !13, file: !14, line: 458, baseType: !3811, size: 64, offset: 2496)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!78}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !13, file: !14, line: 460, baseType: !3815, size: 4032, align: 512, offset: 2560)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3816, size: 4032, elements: !3830)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !14, line: 362, size: 576, elements: !3817)
!3817 = !{!3818, !3819, !3820}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3816, file: !14, line: 363, baseType: !197, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3816, file: !14, line: 364, baseType: !18, size: 32, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3816, file: !14, line: 367, baseType: !3821, size: 448, offset: 128)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !14, line: 319, size: 448, elements: !3822)
!3822 = !{!3823, !3824}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3821, file: !14, line: 320, baseType: !12, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3821, file: !14, line: 321, baseType: !3825, size: 384, offset: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3826, line: 40, size: 384, elements: !3827)
!3826 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3827 = !{!3828}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3825, file: !3826, line: 41, baseType: !3829, size: 384, align: 64)
!3829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, size: 384, align: 64, elements: !2321)
!3830 = !{!3831}
!3831 = !DISubrange(count: 7)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !13, file: !14, line: 463, baseType: !3833, size: 192, offset: 6592)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3834, line: 8, size: 192, elements: !3835)
!3834 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3835 = !{!3836, !3837, !3838}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3833, file: !3834, line: 10, baseType: !18, size: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3833, file: !3834, line: 11, baseType: !478, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3833, file: !3834, line: 12, baseType: !3839, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3841, line: 59, size: 48, elements: !3842)
!3841 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3842 = !{!3843, !3844, !3845, !3846, !3847, !3848}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3840, file: !3841, line: 60, baseType: !2057, size: 16)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3840, file: !3841, line: 61, baseType: !2057, size: 16, offset: 16)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3840, file: !3841, line: 63, baseType: !18, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3840, file: !3841, line: 64, baseType: !18, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3840, file: !3841, line: 65, baseType: !18, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3840, file: !3841, line: 66, baseType: !18, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !13, file: !14, line: 465, baseType: !175, size: 64, offset: 6784)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !13, file: !14, line: 469, baseType: !18, size: 32, offset: 6848)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !13, file: !14, line: 470, baseType: !25, size: 128, offset: 6912)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !13, file: !14, line: 471, baseType: !3853, size: 64, offset: 7040)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3855, line: 33, size: 96, elements: !3856)
!3855 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3856 = !{!3857, !3858, !3859, !3860}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3854, file: !3855, line: 37, baseType: !78, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3854, file: !3855, line: 43, baseType: !78, size: 32, offset: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3854, file: !3855, line: 45, baseType: !95, size: 16, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3854, file: !3855, line: 47, baseType: !95, size: 16, offset: 80)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !13, file: !14, line: 476, baseType: !3862, size: 64, offset: 7104)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !14, line: 378, size: 256, elements: !3864)
!3864 = !{!3865, !3881, !3882, !3883}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3863, file: !14, line: 379, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3868, line: 204, baseType: !3869)
!3868 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3868, line: 197, size: 192, elements: !3870)
!3870 = !{!3871, !3873, !3874, !3875, !3877, !3879}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3869, file: !3868, line: 198, baseType: !3872, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3868, line: 21, baseType: !277)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3869, file: !3868, line: 199, baseType: !87, size: 8, offset: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3869, file: !3868, line: 200, baseType: !87, size: 8, offset: 40)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3869, file: !3868, line: 201, baseType: !3876, size: 16, offset: 48)
!3876 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3868, line: 17, baseType: !94)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3869, file: !3868, line: 202, baseType: !3878, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3868, line: 16, baseType: !281)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3869, file: !3868, line: 203, baseType: !3880, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3868, line: 22, baseType: !281)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3863, file: !14, line: 380, baseType: !18, size: 32, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3863, file: !14, line: 381, baseType: !125, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3863, file: !14, line: 382, baseType: !125, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !13, file: !14, line: 477, baseType: !3863, size: 256, offset: 7168)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !13, file: !14, line: 480, baseType: !3886, size: 64, offset: 7424)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !2, line: 27, size: 384, elements: !3888)
!3888 = !{!3889, !3890, !3891}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "grp", scope: !3887, file: !2, line: 28, baseType: !180, size: 320)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "nsections", scope: !3887, file: !2, line: 29, baseType: !18, size: 32, offset: 320)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3887, file: !2, line: 30, baseType: !3892, offset: 384)
!3892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3893, elements: !1243)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attr", file: !2, line: 22, size: 576, elements: !3894)
!3894 = !{!3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "battr", scope: !3893, file: !2, line: 23, baseType: !192, size: 512)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3893, file: !2, line: 24, baseType: !175, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !13, file: !14, line: 483, baseType: !3898, size: 64, offset: 7488)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !2, line: 143, size: 128, elements: !3900)
!3900 = !{!3901, !3902, !3903}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3899, file: !2, line: 144, baseType: !47, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !3899, file: !2, line: 145, baseType: !18, size: 32, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3899, file: !2, line: 146, baseType: !3904, offset: 128)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, elements: !1243)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !13, file: !14, line: 488, baseType: !125, size: 64, offset: 7552)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !13, file: !14, line: 492, baseType: !197, size: 64, offset: 7616)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !13, file: !14, line: 493, baseType: !18, size: 32, offset: 7680)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !13, file: !14, line: 495, baseType: !197, size: 64, offset: 7744)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !13, file: !14, line: 496, baseType: !18, size: 32, offset: 7808)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !13, file: !14, line: 499, baseType: !18, size: 32, offset: 7840)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !13, file: !14, line: 500, baseType: !3912, size: 64, offset: 7872)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3914, line: 45, baseType: !3915)
!3914 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !13, file: !14, line: 503, baseType: !18, size: 32, offset: 7936)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !13, file: !14, line: 504, baseType: !3918, size: 64, offset: 8000)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3921, line: 96, size: 192, elements: !3922)
!3921 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3922 = !{!3923, !3924, !3967, !3969}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3920, file: !3921, line: 97, baseType: !18, size: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3920, file: !3921, line: 98, baseType: !3925, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3921, line: 24, size: 3072, elements: !3927)
!3927 = !{!3928, !3930, !3931, !3932, !3933, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3964, !3965, !3966}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3926, file: !3921, line: 26, baseType: !3929, size: 128)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 128, elements: !2321)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3926, file: !3921, line: 27, baseType: !3929, size: 128, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3926, file: !3921, line: 28, baseType: !78, size: 32, offset: 256)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3926, file: !3921, line: 31, baseType: !54, size: 32, align: 512, offset: 512)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3926, file: !3921, line: 32, baseType: !3934, size: 960, offset: 576)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3935, line: 206, size: 960, elements: !3936)
!3935 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3936 = !{!3937, !3938, !3941, !3943, !3944, !3946}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3934, file: !3935, line: 207, baseType: !834, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3934, file: !3935, line: 208, baseType: !3939, size: 256, offset: 64)
!3939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3940, size: 256, elements: !1230)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3934, file: !3935, line: 209, baseType: !3942, size: 256, offset: 320)
!3942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 256, elements: !1230)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3934, file: !3935, line: 213, baseType: !161, size: 64, offset: 576)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3934, file: !3935, line: 215, baseType: !3945, size: 256, offset: 640)
!3945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, elements: !1230)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3934, file: !3935, line: 216, baseType: !83, size: 8, offset: 896)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3926, file: !3921, line: 33, baseType: !175, size: 64, offset: 1536)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3926, file: !3921, line: 34, baseType: !175, size: 64, offset: 1600)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3926, file: !3921, line: 35, baseType: !1349, size: 8, offset: 1664)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3926, file: !3921, line: 36, baseType: !2762, size: 320, offset: 1728)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3926, file: !3921, line: 37, baseType: !2080, size: 256, offset: 2048)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3926, file: !3921, line: 38, baseType: !831, size: 128, align: 64, offset: 2304)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3926, file: !3921, line: 39, baseType: !3954, size: 64, offset: 2432)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3921, line: 49, size: 768, elements: !3956)
!3956 = !{!3957, !3958, !3959, !3960, !3961, !3962, !3963}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3955, file: !3921, line: 50, baseType: !54, size: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3955, file: !3921, line: 51, baseType: !3942, size: 256, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3955, file: !3921, line: 53, baseType: !3942, size: 256, offset: 320)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3955, file: !3921, line: 54, baseType: !175, size: 64, offset: 576)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3955, file: !3921, line: 55, baseType: !3954, size: 64, offset: 640)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3955, file: !3921, line: 56, baseType: !78, size: 32, offset: 704)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3955, file: !3921, line: 57, baseType: !78, size: 32, offset: 736)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3926, file: !3921, line: 40, baseType: !175, size: 64, offset: 2496)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3926, file: !3921, line: 42, baseType: !78, size: 32, offset: 2560)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3926, file: !3921, line: 43, baseType: !3919, size: 64, offset: 2624)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3920, file: !3921, line: 99, baseType: !3968, offset: 128)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !410, line: 211, elements: !411)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3920, file: !3921, line: 100, baseType: !3970, size: 64, offset: 128)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3921, line: 63, size: 3008, elements: !3972)
!3972 = !{!3973, !3974, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !4002}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3971, file: !3921, line: 64, baseType: !3954, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3971, file: !3921, line: 65, baseType: !3975, size: 192, offset: 64)
!3975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3954, size: 192, elements: !126)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3971, file: !3921, line: 67, baseType: !78, size: 32, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3971, file: !3921, line: 68, baseType: !512, size: 256, offset: 320)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3971, file: !3921, line: 69, baseType: !54, size: 32, offset: 576)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3971, file: !3921, line: 70, baseType: !512, size: 256, offset: 640)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3971, file: !3921, line: 71, baseType: !175, size: 64, offset: 896)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3971, file: !3921, line: 72, baseType: !175, size: 64, offset: 960)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3971, file: !3921, line: 73, baseType: !175, size: 64, offset: 1024)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3971, file: !3921, line: 74, baseType: !175, size: 64, offset: 1088)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3971, file: !3921, line: 75, baseType: !175, size: 64, offset: 1152)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3971, file: !3921, line: 76, baseType: !175, size: 64, offset: 1216)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3971, file: !3921, line: 77, baseType: !175, size: 64, offset: 1280)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3971, file: !3921, line: 78, baseType: !175, size: 64, offset: 1344)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3971, file: !3921, line: 79, baseType: !1349, size: 8, offset: 1408)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3971, file: !3921, line: 80, baseType: !175, size: 64, offset: 1472)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3971, file: !3921, line: 81, baseType: !512, size: 256, offset: 1536)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3971, file: !3921, line: 82, baseType: !1756, size: 256, offset: 1792)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3971, file: !3921, line: 84, baseType: !74, size: 32, offset: 2048)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3971, file: !3921, line: 87, baseType: !175, size: 64, offset: 2112)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3971, file: !3921, line: 88, baseType: !175, size: 64, offset: 2176)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3971, file: !3921, line: 89, baseType: !3996, size: 704, offset: 2240)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2081, line: 111, size: 704, elements: !3997)
!3997 = !{!3998, !3999, !4000, !4001}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3996, file: !2081, line: 112, baseType: !2080, size: 256)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3996, file: !2081, line: 113, baseType: !2762, size: 320, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3996, file: !2081, line: 116, baseType: !3056, size: 64, offset: 576)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3996, file: !2081, line: 117, baseType: !78, size: 32, offset: 640)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3971, file: !3921, line: 90, baseType: !3919, size: 64, offset: 2944)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !13, file: !14, line: 515, baseType: !4004, size: 64, offset: 8064)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4006, line: 117, size: 128, elements: !4007)
!4006 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4007 = !{!4008, !4009, !4010}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4005, file: !4006, line: 118, baseType: !1292, size: 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4005, file: !4006, line: 119, baseType: !1292, size: 32, offset: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4005, file: !4006, line: 120, baseType: !161, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !13, file: !14, line: 516, baseType: !18, size: 32, offset: 8128)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !13, file: !14, line: 519, baseType: !18, size: 32, offset: 8160)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !13, file: !14, line: 520, baseType: !4014, size: 64, offset: 8192)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !13, file: !14, line: 523, baseType: !4016, size: 64, offset: 8256)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !14, line: 523, flags: DIFlagFwdDecl)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !13, file: !14, line: 524, baseType: !18, size: 32, offset: 8320)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !13, file: !14, line: 525, baseType: !4021, size: 64, offset: 8384)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !14, line: 525, flags: DIFlagFwdDecl)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !13, file: !14, line: 526, baseType: !18, size: 32, offset: 8448)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !13, file: !14, line: 533, baseType: !197, size: 64, offset: 8512)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !13, file: !14, line: 534, baseType: !18, size: 32, offset: 8576)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !13, file: !14, line: 535, baseType: !4028, size: 64, offset: 8640)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !13, file: !14, line: 536, baseType: !18, size: 32, offset: 8704)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !13, file: !14, line: 539, baseType: !78, size: 32, offset: 8736)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !13, file: !14, line: 540, baseType: !4032, size: 64, offset: 8768)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4034, line: 32, size: 64, elements: !4035)
!4034 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4035 = !{!4036, !4037}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4033, file: !4034, line: 33, baseType: !1292, size: 32)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4033, file: !4034, line: 34, baseType: !1292, size: 32, offset: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !13, file: !14, line: 563, baseType: !25, size: 128, offset: 8832)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !13, file: !14, line: 565, baseType: !25, size: 128, offset: 8960)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !13, file: !14, line: 568, baseType: !4041, size: 64, offset: 9088)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !13, file: !14, line: 570, baseType: !74, size: 32, offset: 9152)
!4043 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/module/.sysfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/module/sysfs\22 -D KBUILD_BASENAME=\22sysfs\22 -D KBUILD_MODNAME=\22sysfs\22 -D __KBUILD_MODNAME=kmod_sysfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/module/sysfs.ll kernel/module/sysfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4044, retainedTypes: !4060, globals: !4069, splitDebugInlining: false, nameTableKind: None)
!4044 = !{!17, !458, !551, !990, !1246, !1630, !1767, !2143, !2682, !3484, !3549, !4045, !4050}
!4045 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4046, line: 10, baseType: !18, size: 32, elements: !4047)
!4046 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4047 = !{!4048, !4049}
!4048 = !DIEnumerator(name: "false", value: 0)
!4049 = !DIEnumerator(name: "true", value: 1)
!4050 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4051, line: 364, baseType: !18, size: 32, elements: !4052)
!4051 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4052 = !{!4053, !4054, !4055, !4056, !4057, !4058, !4059}
!4053 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!4054 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!4055 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!4056 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!4057 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!4058 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!4059 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!4060 = !{!582, !175, !197, !4061, !78, !172, !4068}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_use", file: !14, line: 306, size: 384, elements: !4063)
!4063 = !{!4064, !4065, !4066, !4067}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !4062, file: !14, line: 307, baseType: !25, size: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !4062, file: !14, line: 308, baseType: !25, size: 128, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4062, file: !14, line: 309, baseType: !12, size: 64, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4062, file: !14, line: 309, baseType: !12, size: 64, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!4069 = !{!0, !7, !4070, !4075, !4080, !4082, !4085, !4090, !4095, !4098}
!4070 = !DIGlobalVariableExpression(var: !4071, expr: !DIExpression())
!4071 = distinct !DIGlobalVariable(scope: null, file: !2, line: 435, type: !4072, isLocal: true, isDefinition: true)
!4072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !4073)
!4073 = !{!4074}
!4074 = !DISubrange(count: 17)
!4075 = !DIGlobalVariableExpression(var: !4076, expr: !DIExpression())
!4076 = distinct !DIGlobalVariable(scope: null, file: !2, line: 344, type: !4077, isLocal: true, isDefinition: true)
!4077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !4078)
!4078 = !{!4079}
!4079 = !DISubrange(count: 36)
!4080 = !DIGlobalVariableExpression(var: !4081, expr: !DIExpression())
!4081 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !3024, isLocal: true, isDefinition: true)
!4082 = !DIGlobalVariableExpression(var: !4083, expr: !DIExpression())
!4083 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !4084, isLocal: true, isDefinition: true)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !126)
!4085 = !DIGlobalVariableExpression(var: !4086, expr: !DIExpression())
!4086 = distinct !DIGlobalVariable(scope: null, file: !4051, line: 480, type: !4087, isLocal: true, isDefinition: true)
!4087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4088)
!4088 = !{!4089}
!4089 = !DISubrange(count: 21)
!4090 = !DIGlobalVariableExpression(var: !4091, expr: !DIExpression())
!4091 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !4092, isLocal: true, isDefinition: true)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !4093)
!4093 = !{!4094}
!4094 = !DISubrange(count: 9)
!4095 = !DIGlobalVariableExpression(var: !4096, expr: !DIExpression())
!4096 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !4097, isLocal: true, isDefinition: true)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !3830)
!4098 = !DIGlobalVariableExpression(var: !4099, expr: !DIExpression())
!4099 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !1335, isLocal: true, isDefinition: true)
!4100 = !{!4101}
!4101 = !DILocalVariable(name: "mod", arg: 1, scope: !9, file: !2, line: 433, type: !12)
!4102 = !{i32 7, !"Dwarf Version", i32 5}
!4103 = !{i32 2, !"Debug Info Version", i32 3}
!4104 = !{i32 1, !"wchar_size", i32 2}
!4105 = !{i32 8, !"cf-protection-branch", i32 1}
!4106 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4107 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4108 = !{i32 1, !"Code Model", i32 2}
!4109 = !{i32 1, !"override-stack-alignment", i32 8}
!4110 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4111 = distinct !DISubprogram(name: "mod_sysfs_setup", scope: !2, file: !2, line: 370, type: !4112, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !4174)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!78, !12, !4114, !3744, !18}
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4116)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_info", file: !3733, line: 61, size: 1024, elements: !4117)
!4117 = !{!4118, !4119, !4120, !4141, !4142, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4116, file: !3733, line: 62, baseType: !43, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4116, file: !3733, line: 64, baseType: !12, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !4116, file: !3733, line: 65, baseType: !4121, size: 64, offset: 128)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Ehdr", file: !3868, line: 241, baseType: !4123)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_hdr", file: !3868, line: 226, size: 512, elements: !4124)
!4124 = !{!4125, !4127, !4128, !4129, !4130, !4131, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "e_ident", scope: !4123, file: !3868, line: 227, baseType: !4126, size: 128)
!4126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 128, elements: !2239)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "e_type", scope: !4123, file: !3868, line: 228, baseType: !3876, size: 16, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "e_machine", scope: !4123, file: !3868, line: 229, baseType: !3876, size: 16, offset: 144)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "e_version", scope: !4123, file: !3868, line: 230, baseType: !3872, size: 32, offset: 160)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "e_entry", scope: !4123, file: !3868, line: 231, baseType: !3878, size: 64, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "e_phoff", scope: !4123, file: !3868, line: 232, baseType: !4132, size: 64, offset: 256)
!4132 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Off", file: !3868, line: 19, baseType: !281)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "e_shoff", scope: !4123, file: !3868, line: 233, baseType: !4132, size: 64, offset: 320)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "e_flags", scope: !4123, file: !3868, line: 234, baseType: !3872, size: 32, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "e_ehsize", scope: !4123, file: !3868, line: 235, baseType: !3876, size: 16, offset: 416)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "e_phentsize", scope: !4123, file: !3868, line: 236, baseType: !3876, size: 16, offset: 432)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "e_phnum", scope: !4123, file: !3868, line: 237, baseType: !3876, size: 16, offset: 448)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "e_shentsize", scope: !4123, file: !3868, line: 238, baseType: !3876, size: 16, offset: 464)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "e_shnum", scope: !4123, file: !3868, line: 239, baseType: !3876, size: 16, offset: 480)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "e_shstrndx", scope: !4123, file: !3868, line: 240, baseType: !3876, size: 16, offset: 496)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4116, file: !3733, line: 66, baseType: !175, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "sechdrs", scope: !4116, file: !3733, line: 67, baseType: !4143, size: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Shdr", file: !3868, line: 332, baseType: !4145)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_shdr", file: !3868, line: 321, size: 512, elements: !4146)
!4146 = !{!4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "sh_name", scope: !4145, file: !3868, line: 322, baseType: !3872, size: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "sh_type", scope: !4145, file: !3868, line: 323, baseType: !3872, size: 32, offset: 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "sh_flags", scope: !4145, file: !3868, line: 324, baseType: !3880, size: 64, offset: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "sh_addr", scope: !4145, file: !3868, line: 325, baseType: !3878, size: 64, offset: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "sh_offset", scope: !4145, file: !3868, line: 326, baseType: !4132, size: 64, offset: 192)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "sh_size", scope: !4145, file: !3868, line: 327, baseType: !3880, size: 64, offset: 256)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "sh_link", scope: !4145, file: !3868, line: 328, baseType: !3872, size: 32, offset: 320)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "sh_info", scope: !4145, file: !3868, line: 329, baseType: !3872, size: 32, offset: 352)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "sh_addralign", scope: !4145, file: !3868, line: 330, baseType: !3880, size: 64, offset: 384)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "sh_entsize", scope: !4145, file: !3868, line: 331, baseType: !3880, size: 64, offset: 448)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "secstrings", scope: !4116, file: !3733, line: 68, baseType: !125, size: 64, offset: 320)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4116, file: !3733, line: 68, baseType: !125, size: 64, offset: 384)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "symoffs", scope: !4116, file: !3733, line: 69, baseType: !175, size: 64, offset: 448)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "stroffs", scope: !4116, file: !3733, line: 69, baseType: !175, size: 64, offset: 512)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "init_typeoffs", scope: !4116, file: !3733, line: 69, baseType: !175, size: 64, offset: 576)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "core_typeoffs", scope: !4116, file: !3733, line: 69, baseType: !175, size: 64, offset: 640)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "sig_ok", scope: !4116, file: !3733, line: 70, baseType: !1349, size: 8, offset: 704)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "mod_kallsyms_init_off", scope: !4116, file: !3733, line: 72, baseType: !175, size: 64, offset: 768)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4116, file: !3733, line: 84, baseType: !4166, size: 192, offset: 832)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4116, file: !3733, line: 82, size: 192, elements: !4167)
!4167 = !{!4168, !4169, !4170, !4171, !4172, !4173}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "sym", scope: !4166, file: !3733, line: 83, baseType: !18, size: 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4166, file: !3733, line: 83, baseType: !18, size: 32, offset: 32)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4166, file: !3733, line: 83, baseType: !18, size: 32, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "vers", scope: !4166, file: !3733, line: 83, baseType: !18, size: 32, offset: 96)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4166, file: !3733, line: 83, baseType: !18, size: 32, offset: 128)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu", scope: !4166, file: !3733, line: 83, baseType: !18, size: 32, offset: 160)
!4174 = !{!4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184}
!4175 = !DILocalVariable(name: "mod", arg: 1, scope: !4111, file: !2, line: 370, type: !12)
!4176 = !DILocalVariable(name: "info", arg: 2, scope: !4111, file: !2, line: 371, type: !4114)
!4177 = !DILocalVariable(name: "kparam", arg: 3, scope: !4111, file: !2, line: 372, type: !3744)
!4178 = !DILocalVariable(name: "num_params", arg: 4, scope: !4111, file: !2, line: 373, type: !18)
!4179 = !DILocalVariable(name: "err", scope: !4111, file: !2, line: 375, type: !78)
!4180 = !DILabel(scope: !4111, name: "out_unreg_modinfo_attrs", file: !2, line: 404)
!4181 = !DILabel(scope: !4111, name: "out_unreg_param", file: !2, line: 406)
!4182 = !DILabel(scope: !4111, name: "out_unreg_holders", file: !2, line: 408)
!4183 = !DILabel(scope: !4111, name: "out_unreg", file: !2, line: 410)
!4184 = !DILabel(scope: !4111, name: "out", file: !2, line: 412)
!4185 = !DILocation(line: 370, column: 36, scope: !4111)
!4186 = !DILocation(line: 371, column: 31, scope: !4111)
!4187 = !DILocation(line: 372, column: 28, scope: !4111)
!4188 = !DILocation(line: 373, column: 20, scope: !4111)
!4189 = !DILocation(line: 375, column: 2, scope: !4111)
!4190 = !DILocation(line: 375, column: 6, scope: !4111)
!4191 = !DILocation(line: 377, column: 23, scope: !4111)
!4192 = !DILocation(line: 377, column: 8, scope: !4111)
!4193 = !DILocation(line: 377, column: 6, scope: !4111)
!4194 = !DILocation(line: 378, column: 6, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4111, file: !2, line: 378, column: 6)
!4196 = !DILocation(line: 378, column: 6, scope: !4111)
!4197 = !DILocation(line: 379, column: 3, scope: !4195)
!4198 = !DILocation(line: 381, column: 56, scope: !4111)
!4199 = !DILocation(line: 381, column: 61, scope: !4111)
!4200 = !DILocation(line: 381, column: 67, scope: !4111)
!4201 = !DILocation(line: 381, column: 21, scope: !4111)
!4202 = !DILocation(line: 381, column: 2, scope: !4111)
!4203 = !DILocation(line: 381, column: 7, scope: !4111)
!4204 = !DILocation(line: 381, column: 19, scope: !4111)
!4205 = !DILocation(line: 382, column: 7, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4111, file: !2, line: 382, column: 6)
!4207 = !DILocation(line: 382, column: 12, scope: !4206)
!4208 = !DILocation(line: 382, column: 6, scope: !4111)
!4209 = !DILocation(line: 383, column: 7, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4206, file: !2, line: 382, column: 25)
!4211 = !DILocation(line: 384, column: 3, scope: !4210)
!4212 = !DILocation(line: 387, column: 33, scope: !4111)
!4213 = !DILocation(line: 387, column: 38, scope: !4111)
!4214 = !DILocation(line: 387, column: 46, scope: !4111)
!4215 = !DILocation(line: 387, column: 8, scope: !4111)
!4216 = !DILocation(line: 387, column: 6, scope: !4111)
!4217 = !DILocation(line: 388, column: 6, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4111, file: !2, line: 388, column: 6)
!4219 = !DILocation(line: 388, column: 6, scope: !4111)
!4220 = !DILocation(line: 389, column: 3, scope: !4218)
!4221 = !DILocation(line: 391, column: 33, scope: !4111)
!4222 = !DILocation(line: 391, column: 8, scope: !4111)
!4223 = !DILocation(line: 391, column: 6, scope: !4111)
!4224 = !DILocation(line: 392, column: 6, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4111, file: !2, line: 392, column: 6)
!4226 = !DILocation(line: 392, column: 6, scope: !4111)
!4227 = !DILocation(line: 393, column: 3, scope: !4225)
!4228 = !DILocation(line: 395, column: 24, scope: !4111)
!4229 = !DILocation(line: 395, column: 8, scope: !4111)
!4230 = !DILocation(line: 395, column: 6, scope: !4111)
!4231 = !DILocation(line: 396, column: 6, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4111, file: !2, line: 396, column: 6)
!4233 = !DILocation(line: 396, column: 6, scope: !4111)
!4234 = !DILocation(line: 397, column: 3, scope: !4232)
!4235 = !DILocation(line: 399, column: 17, scope: !4111)
!4236 = !DILocation(line: 399, column: 22, scope: !4111)
!4237 = !DILocation(line: 399, column: 2, scope: !4111)
!4238 = !DILocation(line: 400, column: 18, scope: !4111)
!4239 = !DILocation(line: 400, column: 23, scope: !4111)
!4240 = !DILocation(line: 400, column: 2, scope: !4111)
!4241 = !DILocation(line: 402, column: 2, scope: !4111)
!4242 = !DILocation(line: 404, column: 1, scope: !4111)
!4243 = !DILocation(line: 405, column: 30, scope: !4111)
!4244 = !DILocation(line: 405, column: 2, scope: !4111)
!4245 = !DILocation(line: 406, column: 1, scope: !4111)
!4246 = !DILocation(line: 407, column: 28, scope: !4111)
!4247 = !DILocation(line: 407, column: 2, scope: !4111)
!4248 = !DILocation(line: 408, column: 1, scope: !4111)
!4249 = !DILocation(line: 409, column: 14, scope: !4111)
!4250 = !DILocation(line: 409, column: 19, scope: !4111)
!4251 = !DILocation(line: 409, column: 2, scope: !4111)
!4252 = !DILocation(line: 410, column: 1, scope: !4111)
!4253 = !DILocation(line: 411, column: 18, scope: !4111)
!4254 = !DILocation(line: 411, column: 2, scope: !4111)
!4255 = !DILocation(line: 412, column: 1, scope: !4111)
!4256 = !DILocation(line: 413, column: 9, scope: !4111)
!4257 = !DILocation(line: 413, column: 2, scope: !4111)
!4258 = !DILocation(line: 414, column: 1, scope: !4111)
!4259 = distinct !DISubprogram(name: "mod_sysfs_init", scope: !2, file: !2, line: 338, type: !3722, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !4260)
!4260 = !{!4261, !4262, !4263, !4264}
!4261 = !DILocalVariable(name: "mod", arg: 1, scope: !4259, file: !2, line: 338, type: !12)
!4262 = !DILocalVariable(name: "err", scope: !4259, file: !2, line: 340, type: !78)
!4263 = !DILocalVariable(name: "kobj", scope: !4259, file: !2, line: 341, type: !47)
!4264 = !DILabel(scope: !4259, name: "out", file: !2, line: 366)
!4265 = !DILocation(line: 338, column: 42, scope: !4259)
!4266 = !DILocation(line: 340, column: 2, scope: !4259)
!4267 = !DILocation(line: 340, column: 6, scope: !4259)
!4268 = !DILocation(line: 341, column: 2, scope: !4259)
!4269 = !DILocation(line: 341, column: 18, scope: !4259)
!4270 = !DILocation(line: 343, column: 7, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4259, file: !2, line: 343, column: 6)
!4272 = !DILocation(line: 343, column: 6, scope: !4259)
!4273 = !DILocation(line: 344, column: 3, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4275, file: !2, line: 344, column: 3)
!4275 = distinct !DILexicalBlock(scope: !4271, file: !2, line: 343, column: 20)
!4276 = !DILocation(line: 344, column: 3, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4274, file: !2, line: 344, column: 3)
!4278 = !DILocation(line: 345, column: 7, scope: !4275)
!4279 = !DILocation(line: 346, column: 3, scope: !4275)
!4280 = !DILocation(line: 349, column: 23, scope: !4259)
!4281 = !DILocation(line: 349, column: 36, scope: !4259)
!4282 = !DILocation(line: 349, column: 41, scope: !4259)
!4283 = !DILocation(line: 349, column: 9, scope: !4259)
!4284 = !DILocation(line: 349, column: 7, scope: !4259)
!4285 = !DILocation(line: 350, column: 6, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4259, file: !2, line: 350, column: 6)
!4287 = !DILocation(line: 350, column: 6, scope: !4259)
!4288 = !DILocation(line: 351, column: 3, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !2, line: 351, column: 3)
!4290 = distinct !DILexicalBlock(scope: !4286, file: !2, line: 350, column: 12)
!4291 = !DILocation(line: 351, column: 3, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4289, file: !2, line: 351, column: 3)
!4293 = !DILocation(line: 352, column: 15, scope: !4290)
!4294 = !DILocation(line: 352, column: 3, scope: !4290)
!4295 = !DILocation(line: 353, column: 7, scope: !4290)
!4296 = !DILocation(line: 354, column: 3, scope: !4290)
!4297 = !DILocation(line: 357, column: 19, scope: !4259)
!4298 = !DILocation(line: 357, column: 2, scope: !4259)
!4299 = !DILocation(line: 357, column: 7, scope: !4259)
!4300 = !DILocation(line: 357, column: 13, scope: !4259)
!4301 = !DILocation(line: 357, column: 17, scope: !4259)
!4302 = !DILocation(line: 359, column: 10, scope: !4259)
!4303 = !DILocation(line: 359, column: 15, scope: !4259)
!4304 = !DILocation(line: 359, column: 21, scope: !4259)
!4305 = !DILocation(line: 359, column: 2, scope: !4259)
!4306 = !DILocation(line: 360, column: 25, scope: !4259)
!4307 = !DILocation(line: 360, column: 2, scope: !4259)
!4308 = !DILocation(line: 360, column: 7, scope: !4259)
!4309 = !DILocation(line: 360, column: 13, scope: !4259)
!4310 = !DILocation(line: 360, column: 18, scope: !4259)
!4311 = !DILocation(line: 360, column: 23, scope: !4259)
!4312 = !DILocation(line: 361, column: 30, scope: !4259)
!4313 = !DILocation(line: 361, column: 35, scope: !4259)
!4314 = !DILocation(line: 361, column: 41, scope: !4259)
!4315 = !DILocation(line: 362, column: 14, scope: !4259)
!4316 = !DILocation(line: 362, column: 19, scope: !4259)
!4317 = !DILocation(line: 361, column: 8, scope: !4259)
!4318 = !DILocation(line: 361, column: 6, scope: !4259)
!4319 = !DILocation(line: 363, column: 6, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4259, file: !2, line: 363, column: 6)
!4321 = !DILocation(line: 363, column: 6, scope: !4259)
!4322 = !DILocation(line: 364, column: 19, scope: !4320)
!4323 = !DILocation(line: 364, column: 3, scope: !4320)
!4324 = !DILocation(line: 366, column: 1, scope: !4259)
!4325 = !DILocation(line: 367, column: 9, scope: !4259)
!4326 = !DILocation(line: 368, column: 1, scope: !4259)
!4327 = !DILocation(line: 367, column: 2, scope: !4259)
!4328 = !DISubprogram(name: "kobject_create_and_add", scope: !40, file: !40, line: 103, type: !4329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!47, !43, !47}
!4331 = !DISubprogram(name: "module_param_sysfs_setup", scope: !3746, file: !3746, line: 598, type: !4332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!78, !12, !3760, !18}
!4334 = distinct !DISubprogram(name: "module_add_modinfo_attrs", scope: !2, file: !2, line: 293, type: !3722, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !4335)
!4335 = !{!4336, !4337, !4338, !4339, !4340, !4341}
!4336 = !DILocalVariable(name: "mod", arg: 1, scope: !4334, file: !2, line: 293, type: !12)
!4337 = !DILocalVariable(name: "attr", scope: !4334, file: !2, line: 295, type: !3703)
!4338 = !DILocalVariable(name: "temp_attr", scope: !4334, file: !2, line: 296, type: !3703)
!4339 = !DILocalVariable(name: "error", scope: !4334, file: !2, line: 297, type: !78)
!4340 = !DILocalVariable(name: "i", scope: !4334, file: !2, line: 298, type: !78)
!4341 = !DILabel(scope: !4334, name: "error_out", file: !2, line: 321)
!4342 = !DILocation(line: 293, column: 52, scope: !4334)
!4343 = !DILocation(line: 295, column: 2, scope: !4334)
!4344 = !DILocation(line: 295, column: 27, scope: !4334)
!4345 = !DILocation(line: 296, column: 2, scope: !4334)
!4346 = !DILocation(line: 296, column: 27, scope: !4334)
!4347 = !DILocation(line: 297, column: 2, scope: !4334)
!4348 = !DILocation(line: 297, column: 6, scope: !4334)
!4349 = !DILocation(line: 298, column: 2, scope: !4334)
!4350 = !DILocation(line: 298, column: 6, scope: !4334)
!4351 = !DILocation(line: 301, column: 7, scope: !4334)
!4352 = !DILocation(line: 301, column: 27, scope: !4334)
!4353 = !DILocation(line: 300, column: 64, scope: !4334)
!4354 = !DILocation(line: 300, column: 23, scope: !4334)
!4355 = !DILocation(line: 300, column: 2, scope: !4334)
!4356 = !DILocation(line: 300, column: 7, scope: !4334)
!4357 = !DILocation(line: 300, column: 21, scope: !4334)
!4358 = !DILocation(line: 303, column: 7, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4334, file: !2, line: 303, column: 6)
!4360 = !DILocation(line: 303, column: 12, scope: !4359)
!4361 = !DILocation(line: 303, column: 6, scope: !4334)
!4362 = !DILocation(line: 304, column: 3, scope: !4359)
!4363 = !DILocation(line: 306, column: 14, scope: !4334)
!4364 = !DILocation(line: 306, column: 19, scope: !4334)
!4365 = !DILocation(line: 306, column: 12, scope: !4334)
!4366 = !DILocation(line: 307, column: 9, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4334, file: !2, line: 307, column: 2)
!4368 = !DILocation(line: 307, column: 7, scope: !4367)
!4369 = !DILocation(line: 307, column: 36, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4367, file: !2, line: 307, column: 2)
!4371 = !DILocation(line: 307, column: 22, scope: !4370)
!4372 = !DILocation(line: 307, column: 20, scope: !4370)
!4373 = !DILocation(line: 307, column: 2, scope: !4367)
!4374 = !DILocation(line: 308, column: 8, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4376, file: !2, line: 308, column: 7)
!4376 = distinct !DILexicalBlock(scope: !4370, file: !2, line: 307, column: 46)
!4377 = !DILocation(line: 308, column: 14, scope: !4375)
!4378 = !DILocation(line: 308, column: 19, scope: !4375)
!4379 = !DILocation(line: 308, column: 22, scope: !4375)
!4380 = !DILocation(line: 308, column: 28, scope: !4375)
!4381 = !DILocation(line: 308, column: 33, scope: !4375)
!4382 = !DILocation(line: 308, column: 7, scope: !4376)
!4383 = !DILocation(line: 309, column: 11, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4375, file: !2, line: 308, column: 39)
!4385 = !DILocation(line: 309, column: 22, scope: !4384)
!4386 = !DILocation(line: 309, column: 4, scope: !4384)
!4387 = !DILocation(line: 310, column: 4, scope: !4384)
!4388 = !DILocation(line: 310, column: 4, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4384, file: !2, line: 310, column: 4)
!4390 = !DILocation(line: 311, column: 31, scope: !4384)
!4391 = !DILocation(line: 311, column: 36, scope: !4384)
!4392 = !DILocation(line: 311, column: 42, scope: !4384)
!4393 = !DILocation(line: 312, column: 10, scope: !4384)
!4394 = !DILocation(line: 312, column: 21, scope: !4384)
!4395 = !DILocation(line: 311, column: 12, scope: !4384)
!4396 = !DILocation(line: 311, column: 10, scope: !4384)
!4397 = !DILocation(line: 313, column: 8, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4384, file: !2, line: 313, column: 8)
!4399 = !DILocation(line: 313, column: 8, scope: !4384)
!4400 = !DILocation(line: 314, column: 5, scope: !4398)
!4401 = !DILocation(line: 315, column: 4, scope: !4384)
!4402 = !DILocation(line: 316, column: 3, scope: !4384)
!4403 = !DILocation(line: 317, column: 2, scope: !4376)
!4404 = !DILocation(line: 307, column: 42, scope: !4370)
!4405 = !DILocation(line: 307, column: 2, scope: !4370)
!4406 = distinct !{!4406, !4373, !4407, !4408, !4409}
!4407 = !DILocation(line: 317, column: 2, scope: !4367)
!4408 = !{!"llvm.loop.mustprogress"}
!4409 = !{!"llvm.loop.unroll.disable"}
!4410 = !DILocation(line: 319, column: 2, scope: !4334)
!4411 = !DILocation(line: 321, column: 1, scope: !4334)
!4412 = !DILocation(line: 322, column: 6, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4334, file: !2, line: 322, column: 6)
!4414 = !DILocation(line: 322, column: 8, scope: !4413)
!4415 = !DILocation(line: 322, column: 6, scope: !4334)
!4416 = !DILocation(line: 323, column: 31, scope: !4413)
!4417 = !DILocation(line: 323, column: 36, scope: !4413)
!4418 = !DILocation(line: 323, column: 3, scope: !4413)
!4419 = !DILocation(line: 325, column: 9, scope: !4413)
!4420 = !DILocation(line: 325, column: 14, scope: !4413)
!4421 = !DILocation(line: 325, column: 3, scope: !4413)
!4422 = !DILocation(line: 326, column: 9, scope: !4334)
!4423 = !DILocation(line: 326, column: 2, scope: !4334)
!4424 = !DILocation(line: 327, column: 1, scope: !4334)
!4425 = distinct !DISubprogram(name: "add_usage_links", scope: !2, file: !2, line: 255, type: !3722, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !4426)
!4426 = !{!4427, !4428, !4429, !4430, !4433}
!4427 = !DILocalVariable(name: "mod", arg: 1, scope: !4425, file: !2, line: 255, type: !12)
!4428 = !DILocalVariable(name: "ret", scope: !4425, file: !2, line: 257, type: !78)
!4429 = !DILocalVariable(name: "use", scope: !4425, file: !2, line: 259, type: !4061)
!4430 = !DILocalVariable(name: "__mptr", scope: !4431, file: !2, line: 262, type: !197)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !2, line: 262, column: 2)
!4432 = distinct !DILexicalBlock(scope: !4425, file: !2, line: 262, column: 2)
!4433 = !DILocalVariable(name: "__mptr", scope: !4434, file: !2, line: 262, type: !197)
!4434 = distinct !DILexicalBlock(scope: !4435, file: !2, line: 262, column: 2)
!4435 = distinct !DILexicalBlock(scope: !4432, file: !2, line: 262, column: 2)
!4436 = !DILocation(line: 255, column: 43, scope: !4425)
!4437 = !DILocation(line: 257, column: 2, scope: !4425)
!4438 = !DILocation(line: 257, column: 6, scope: !4425)
!4439 = !DILocation(line: 259, column: 2, scope: !4425)
!4440 = !DILocation(line: 259, column: 21, scope: !4425)
!4441 = !DILocation(line: 261, column: 2, scope: !4425)
!4442 = !DILocation(line: 262, column: 2, scope: !4431)
!4443 = !DILocation(line: 262, column: 2, scope: !4432)
!4444 = !DILocation(line: 262, column: 2, scope: !4435)
!4445 = !DILocation(line: 263, column: 27, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4435, file: !2, line: 262, column: 59)
!4447 = !DILocation(line: 263, column: 32, scope: !4446)
!4448 = !DILocation(line: 263, column: 40, scope: !4446)
!4449 = !DILocation(line: 264, column: 7, scope: !4446)
!4450 = !DILocation(line: 264, column: 12, scope: !4446)
!4451 = !DILocation(line: 264, column: 18, scope: !4446)
!4452 = !DILocation(line: 264, column: 24, scope: !4446)
!4453 = !DILocation(line: 264, column: 29, scope: !4446)
!4454 = !DILocation(line: 263, column: 9, scope: !4446)
!4455 = !DILocation(line: 263, column: 7, scope: !4446)
!4456 = !DILocation(line: 265, column: 7, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4446, file: !2, line: 265, column: 7)
!4458 = !DILocation(line: 265, column: 7, scope: !4446)
!4459 = !DILocation(line: 266, column: 4, scope: !4457)
!4460 = !DILocation(line: 267, column: 2, scope: !4446)
!4461 = !DILocation(line: 262, column: 2, scope: !4434)
!4462 = distinct !{!4462, !4443, !4463, !4408, !4409}
!4463 = !DILocation(line: 267, column: 2, scope: !4432)
!4464 = !DILocation(line: 268, column: 2, scope: !4425)
!4465 = !DILocation(line: 269, column: 6, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4425, file: !2, line: 269, column: 6)
!4467 = !DILocation(line: 269, column: 6, scope: !4425)
!4468 = !DILocation(line: 270, column: 19, scope: !4466)
!4469 = !DILocation(line: 270, column: 3, scope: !4466)
!4470 = !DILocation(line: 272, column: 9, scope: !4425)
!4471 = !DILocation(line: 273, column: 1, scope: !4425)
!4472 = !DILocation(line: 272, column: 2, scope: !4425)
!4473 = distinct !DISubprogram(name: "add_sect_attrs", scope: !2, file: !2, line: 72, type: !4474, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !4476)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{null, !12, !4114}
!4476 = !{!4477, !4478, !4479, !4480, !4481, !4483, !4484, !4485, !4486, !4490}
!4477 = !DILocalVariable(name: "mod", arg: 1, scope: !4473, file: !2, line: 72, type: !12)
!4478 = !DILocalVariable(name: "info", arg: 2, scope: !4473, file: !2, line: 72, type: !4114)
!4479 = !DILocalVariable(name: "nloaded", scope: !4473, file: !2, line: 74, type: !18)
!4480 = !DILocalVariable(name: "i", scope: !4473, file: !2, line: 74, type: !18)
!4481 = !DILocalVariable(name: "size", scope: !4473, file: !2, line: 74, type: !4482)
!4482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !2321)
!4483 = !DILocalVariable(name: "sect_attrs", scope: !4473, file: !2, line: 75, type: !3886)
!4484 = !DILocalVariable(name: "sattr", scope: !4473, file: !2, line: 76, type: !4068)
!4485 = !DILocalVariable(name: "gattr", scope: !4473, file: !2, line: 77, type: !3538)
!4486 = !DILocalVariable(name: "sec", scope: !4487, file: !2, line: 98, type: !4143)
!4487 = distinct !DILexicalBlock(scope: !4488, file: !2, line: 97, column: 43)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !2, line: 97, column: 2)
!4489 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 97, column: 2)
!4490 = !DILabel(scope: !4473, name: "out", file: !2, line: 121)
!4491 = !DILocation(line: 72, column: 43, scope: !4473)
!4492 = !DILocation(line: 72, column: 72, scope: !4473)
!4493 = !DILocation(line: 74, column: 2, scope: !4473)
!4494 = !DILocation(line: 74, column: 15, scope: !4473)
!4495 = !DILocation(line: 74, column: 28, scope: !4473)
!4496 = !DILocation(line: 74, column: 31, scope: !4473)
!4497 = !DILocation(line: 75, column: 2, scope: !4473)
!4498 = !DILocation(line: 75, column: 28, scope: !4473)
!4499 = !DILocation(line: 76, column: 2, scope: !4473)
!4500 = !DILocation(line: 76, column: 27, scope: !4473)
!4501 = !DILocation(line: 77, column: 2, scope: !4473)
!4502 = !DILocation(line: 77, column: 25, scope: !4473)
!4503 = !DILocation(line: 80, column: 9, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 80, column: 2)
!4505 = !DILocation(line: 80, column: 7, scope: !4504)
!4506 = !DILocation(line: 80, column: 14, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4504, file: !2, line: 80, column: 2)
!4508 = !DILocation(line: 80, column: 18, scope: !4507)
!4509 = !DILocation(line: 80, column: 24, scope: !4507)
!4510 = !DILocation(line: 80, column: 29, scope: !4507)
!4511 = !DILocation(line: 80, column: 16, scope: !4507)
!4512 = !DILocation(line: 80, column: 2, scope: !4504)
!4513 = !DILocation(line: 81, column: 20, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4507, file: !2, line: 81, column: 7)
!4515 = !DILocation(line: 81, column: 26, scope: !4514)
!4516 = !DILocation(line: 81, column: 34, scope: !4514)
!4517 = !DILocation(line: 81, column: 8, scope: !4514)
!4518 = !DILocation(line: 81, column: 7, scope: !4507)
!4519 = !DILocation(line: 82, column: 11, scope: !4514)
!4520 = !DILocation(line: 82, column: 4, scope: !4514)
!4521 = !DILocation(line: 81, column: 36, scope: !4514)
!4522 = !DILocation(line: 80, column: 39, scope: !4507)
!4523 = !DILocation(line: 80, column: 2, scope: !4507)
!4524 = distinct !{!4524, !4512, !4525, !4408, !4409}
!4525 = !DILocation(line: 82, column: 11, scope: !4504)
!4526 = !DILocation(line: 83, column: 12, scope: !4473)
!4527 = !DILocation(line: 83, column: 2, scope: !4473)
!4528 = !DILocation(line: 83, column: 10, scope: !4473)
!4529 = !DILocation(line: 85, column: 13, scope: !4473)
!4530 = !DILocation(line: 85, column: 21, scope: !4473)
!4531 = !DILocation(line: 85, column: 12, scope: !4473)
!4532 = !DILocation(line: 85, column: 26, scope: !4473)
!4533 = !DILocation(line: 85, column: 2, scope: !4473)
!4534 = !DILocation(line: 85, column: 10, scope: !4473)
!4535 = !DILocation(line: 86, column: 23, scope: !4473)
!4536 = !DILocation(line: 86, column: 33, scope: !4473)
!4537 = !DILocation(line: 86, column: 31, scope: !4473)
!4538 = !DILocation(line: 86, column: 15, scope: !4473)
!4539 = !DILocation(line: 86, column: 13, scope: !4473)
!4540 = !DILocation(line: 87, column: 7, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 87, column: 6)
!4542 = !DILocation(line: 87, column: 6, scope: !4473)
!4543 = !DILocation(line: 88, column: 3, scope: !4541)
!4544 = !DILocation(line: 91, column: 2, scope: !4473)
!4545 = !DILocation(line: 91, column: 14, scope: !4473)
!4546 = !DILocation(line: 91, column: 18, scope: !4473)
!4547 = !DILocation(line: 91, column: 23, scope: !4473)
!4548 = !DILocation(line: 92, column: 38, scope: !4473)
!4549 = !DILocation(line: 92, column: 51, scope: !4473)
!4550 = !DILocation(line: 92, column: 49, scope: !4473)
!4551 = !DILocation(line: 92, column: 2, scope: !4473)
!4552 = !DILocation(line: 92, column: 14, scope: !4473)
!4553 = !DILocation(line: 92, column: 18, scope: !4473)
!4554 = !DILocation(line: 92, column: 28, scope: !4473)
!4555 = !DILocation(line: 94, column: 2, scope: !4473)
!4556 = !DILocation(line: 94, column: 14, scope: !4473)
!4557 = !DILocation(line: 94, column: 24, scope: !4473)
!4558 = !DILocation(line: 95, column: 11, scope: !4473)
!4559 = !DILocation(line: 95, column: 23, scope: !4473)
!4560 = !DILocation(line: 95, column: 8, scope: !4473)
!4561 = !DILocation(line: 96, column: 11, scope: !4473)
!4562 = !DILocation(line: 96, column: 23, scope: !4473)
!4563 = !DILocation(line: 96, column: 27, scope: !4473)
!4564 = !DILocation(line: 96, column: 8, scope: !4473)
!4565 = !DILocation(line: 97, column: 9, scope: !4489)
!4566 = !DILocation(line: 97, column: 7, scope: !4489)
!4567 = !DILocation(line: 97, column: 14, scope: !4488)
!4568 = !DILocation(line: 97, column: 18, scope: !4488)
!4569 = !DILocation(line: 97, column: 24, scope: !4488)
!4570 = !DILocation(line: 97, column: 29, scope: !4488)
!4571 = !DILocation(line: 97, column: 16, scope: !4488)
!4572 = !DILocation(line: 97, column: 2, scope: !4489)
!4573 = !DILocation(line: 98, column: 3, scope: !4487)
!4574 = !DILocation(line: 98, column: 13, scope: !4487)
!4575 = !DILocation(line: 98, column: 20, scope: !4487)
!4576 = !DILocation(line: 98, column: 26, scope: !4487)
!4577 = !DILocation(line: 98, column: 34, scope: !4487)
!4578 = !DILocation(line: 100, column: 18, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4487, file: !2, line: 100, column: 7)
!4580 = !DILocation(line: 100, column: 7, scope: !4579)
!4581 = !DILocation(line: 100, column: 7, scope: !4487)
!4582 = !DILocation(line: 101, column: 4, scope: !4579)
!4583 = !DILocation(line: 102, column: 3, scope: !4487)
!4584 = !DILocation(line: 102, column: 3, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4487, file: !2, line: 102, column: 3)
!4586 = !DILocation(line: 103, column: 20, scope: !4487)
!4587 = !DILocation(line: 103, column: 25, scope: !4487)
!4588 = !DILocation(line: 103, column: 3, scope: !4487)
!4589 = !DILocation(line: 103, column: 10, scope: !4487)
!4590 = !DILocation(line: 103, column: 18, scope: !4487)
!4591 = !DILocation(line: 105, column: 12, scope: !4487)
!4592 = !DILocation(line: 105, column: 18, scope: !4487)
!4593 = !DILocation(line: 105, column: 31, scope: !4487)
!4594 = !DILocation(line: 105, column: 36, scope: !4487)
!4595 = !DILocation(line: 105, column: 29, scope: !4487)
!4596 = !DILocation(line: 105, column: 4, scope: !4487)
!4597 = !DILocation(line: 104, column: 3, scope: !4487)
!4598 = !DILocation(line: 104, column: 10, scope: !4487)
!4599 = !DILocation(line: 104, column: 16, scope: !4487)
!4600 = !DILocation(line: 104, column: 21, scope: !4487)
!4601 = !DILocation(line: 104, column: 26, scope: !4487)
!4602 = !DILocation(line: 106, column: 8, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4487, file: !2, line: 106, column: 7)
!4604 = !DILocation(line: 106, column: 15, scope: !4603)
!4605 = !DILocation(line: 106, column: 21, scope: !4603)
!4606 = !DILocation(line: 106, column: 26, scope: !4603)
!4607 = !DILocation(line: 106, column: 7, scope: !4487)
!4608 = !DILocation(line: 107, column: 4, scope: !4603)
!4609 = !DILocation(line: 108, column: 3, scope: !4487)
!4610 = !DILocation(line: 108, column: 15, scope: !4487)
!4611 = !DILocation(line: 108, column: 24, scope: !4487)
!4612 = !DILocation(line: 109, column: 3, scope: !4487)
!4613 = !DILocation(line: 109, column: 10, scope: !4487)
!4614 = !DILocation(line: 109, column: 16, scope: !4487)
!4615 = !DILocation(line: 109, column: 21, scope: !4487)
!4616 = !DILocation(line: 110, column: 3, scope: !4487)
!4617 = !DILocation(line: 110, column: 10, scope: !4487)
!4618 = !DILocation(line: 110, column: 16, scope: !4487)
!4619 = !DILocation(line: 110, column: 21, scope: !4487)
!4620 = !DILocation(line: 111, column: 3, scope: !4487)
!4621 = !DILocation(line: 111, column: 10, scope: !4487)
!4622 = !DILocation(line: 111, column: 16, scope: !4487)
!4623 = !DILocation(line: 111, column: 21, scope: !4487)
!4624 = !DILocation(line: 111, column: 26, scope: !4487)
!4625 = !DILocation(line: 112, column: 23, scope: !4487)
!4626 = !DILocation(line: 112, column: 28, scope: !4487)
!4627 = !DILocation(line: 112, column: 10, scope: !4487)
!4628 = !DILocation(line: 112, column: 14, scope: !4487)
!4629 = !DILocation(line: 113, column: 2, scope: !4488)
!4630 = !DILocation(line: 113, column: 2, scope: !4487)
!4631 = !DILocation(line: 97, column: 39, scope: !4488)
!4632 = !DILocation(line: 97, column: 2, scope: !4488)
!4633 = distinct !{!4633, !4572, !4634, !4408, !4409}
!4634 = !DILocation(line: 113, column: 2, scope: !4489)
!4635 = !DILocation(line: 114, column: 3, scope: !4473)
!4636 = !DILocation(line: 114, column: 9, scope: !4473)
!4637 = !DILocation(line: 116, column: 26, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 116, column: 6)
!4639 = !DILocation(line: 116, column: 31, scope: !4638)
!4640 = !DILocation(line: 116, column: 37, scope: !4638)
!4641 = !DILocation(line: 116, column: 44, scope: !4638)
!4642 = !DILocation(line: 116, column: 56, scope: !4638)
!4643 = !DILocation(line: 116, column: 6, scope: !4638)
!4644 = !DILocation(line: 116, column: 6, scope: !4473)
!4645 = !DILocation(line: 117, column: 3, scope: !4638)
!4646 = !DILocation(line: 119, column: 20, scope: !4473)
!4647 = !DILocation(line: 119, column: 2, scope: !4473)
!4648 = !DILocation(line: 119, column: 7, scope: !4473)
!4649 = !DILocation(line: 119, column: 18, scope: !4473)
!4650 = !DILocation(line: 120, column: 2, scope: !4473)
!4651 = !DILocation(line: 121, column: 1, scope: !4473)
!4652 = !DILocation(line: 122, column: 18, scope: !4473)
!4653 = !DILocation(line: 122, column: 2, scope: !4473)
!4654 = !DILocation(line: 123, column: 1, scope: !4473)
!4655 = distinct !DISubprogram(name: "add_notes_attrs", scope: !2, file: !2, line: 172, type: !4474, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !4656)
!4656 = !{!4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664}
!4657 = !DILocalVariable(name: "mod", arg: 1, scope: !4655, file: !2, line: 172, type: !12)
!4658 = !DILocalVariable(name: "info", arg: 2, scope: !4655, file: !2, line: 172, type: !4114)
!4659 = !DILocalVariable(name: "notes", scope: !4655, file: !2, line: 174, type: !18)
!4660 = !DILocalVariable(name: "loaded", scope: !4655, file: !2, line: 174, type: !18)
!4661 = !DILocalVariable(name: "i", scope: !4655, file: !2, line: 174, type: !18)
!4662 = !DILocalVariable(name: "notes_attrs", scope: !4655, file: !2, line: 175, type: !3898)
!4663 = !DILocalVariable(name: "nattr", scope: !4655, file: !2, line: 176, type: !191)
!4664 = !DILabel(scope: !4655, name: "out", file: !2, line: 226)
!4665 = !DILocation(line: 172, column: 44, scope: !4655)
!4666 = !DILocation(line: 172, column: 73, scope: !4655)
!4667 = !DILocation(line: 174, column: 2, scope: !4655)
!4668 = !DILocation(line: 174, column: 15, scope: !4655)
!4669 = !DILocation(line: 174, column: 22, scope: !4655)
!4670 = !DILocation(line: 174, column: 30, scope: !4655)
!4671 = !DILocation(line: 175, column: 2, scope: !4655)
!4672 = !DILocation(line: 175, column: 29, scope: !4655)
!4673 = !DILocation(line: 176, column: 2, scope: !4655)
!4674 = !DILocation(line: 176, column: 24, scope: !4655)
!4675 = !DILocation(line: 179, column: 7, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4655, file: !2, line: 179, column: 6)
!4677 = !DILocation(line: 179, column: 12, scope: !4676)
!4678 = !DILocation(line: 179, column: 6, scope: !4655)
!4679 = !DILocation(line: 180, column: 3, scope: !4676)
!4680 = !DILocation(line: 183, column: 8, scope: !4655)
!4681 = !DILocation(line: 184, column: 9, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4655, file: !2, line: 184, column: 2)
!4683 = !DILocation(line: 184, column: 7, scope: !4682)
!4684 = !DILocation(line: 184, column: 14, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4682, file: !2, line: 184, column: 2)
!4686 = !DILocation(line: 184, column: 18, scope: !4685)
!4687 = !DILocation(line: 184, column: 24, scope: !4685)
!4688 = !DILocation(line: 184, column: 29, scope: !4685)
!4689 = !DILocation(line: 184, column: 16, scope: !4685)
!4690 = !DILocation(line: 184, column: 2, scope: !4682)
!4691 = !DILocation(line: 185, column: 20, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4685, file: !2, line: 185, column: 7)
!4693 = !DILocation(line: 185, column: 26, scope: !4692)
!4694 = !DILocation(line: 185, column: 34, scope: !4692)
!4695 = !DILocation(line: 185, column: 8, scope: !4692)
!4696 = !DILocation(line: 185, column: 38, scope: !4692)
!4697 = !DILocation(line: 186, column: 7, scope: !4692)
!4698 = !DILocation(line: 186, column: 13, scope: !4692)
!4699 = !DILocation(line: 186, column: 21, scope: !4692)
!4700 = !DILocation(line: 186, column: 24, scope: !4692)
!4701 = !DILocation(line: 186, column: 32, scope: !4692)
!4702 = !DILocation(line: 185, column: 7, scope: !4685)
!4703 = !DILocation(line: 187, column: 4, scope: !4692)
!4704 = !DILocation(line: 186, column: 35, scope: !4692)
!4705 = !DILocation(line: 184, column: 39, scope: !4685)
!4706 = !DILocation(line: 184, column: 2, scope: !4685)
!4707 = distinct !{!4707, !4690, !4708, !4408, !4409}
!4708 = !DILocation(line: 187, column: 6, scope: !4682)
!4709 = !DILocation(line: 189, column: 6, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4655, file: !2, line: 189, column: 6)
!4711 = !DILocation(line: 189, column: 12, scope: !4710)
!4712 = !DILocation(line: 189, column: 6, scope: !4655)
!4713 = !DILocation(line: 190, column: 3, scope: !4710)
!4714 = !DILocation(line: 192, column: 24, scope: !4655)
!4715 = !DILocation(line: 192, column: 16, scope: !4655)
!4716 = !DILocation(line: 192, column: 14, scope: !4655)
!4717 = !DILocation(line: 194, column: 7, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4655, file: !2, line: 194, column: 6)
!4719 = !DILocation(line: 194, column: 6, scope: !4655)
!4720 = !DILocation(line: 195, column: 3, scope: !4718)
!4721 = !DILocation(line: 197, column: 23, scope: !4655)
!4722 = !DILocation(line: 197, column: 2, scope: !4655)
!4723 = !DILocation(line: 197, column: 15, scope: !4655)
!4724 = !DILocation(line: 197, column: 21, scope: !4655)
!4725 = !DILocation(line: 198, column: 11, scope: !4655)
!4726 = !DILocation(line: 198, column: 24, scope: !4655)
!4727 = !DILocation(line: 198, column: 8, scope: !4655)
!4728 = !DILocation(line: 199, column: 18, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4655, file: !2, line: 199, column: 2)
!4730 = !DILocation(line: 199, column: 14, scope: !4729)
!4731 = !DILocation(line: 199, column: 7, scope: !4729)
!4732 = !DILocation(line: 199, column: 23, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4729, file: !2, line: 199, column: 2)
!4734 = !DILocation(line: 199, column: 27, scope: !4733)
!4735 = !DILocation(line: 199, column: 33, scope: !4733)
!4736 = !DILocation(line: 199, column: 38, scope: !4733)
!4737 = !DILocation(line: 199, column: 25, scope: !4733)
!4738 = !DILocation(line: 199, column: 2, scope: !4729)
!4739 = !DILocation(line: 200, column: 19, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !2, line: 200, column: 7)
!4741 = distinct !DILexicalBlock(scope: !4733, file: !2, line: 199, column: 52)
!4742 = !DILocation(line: 200, column: 25, scope: !4740)
!4743 = !DILocation(line: 200, column: 33, scope: !4740)
!4744 = !DILocation(line: 200, column: 7, scope: !4740)
!4745 = !DILocation(line: 200, column: 7, scope: !4741)
!4746 = !DILocation(line: 201, column: 4, scope: !4740)
!4747 = !DILocation(line: 202, column: 7, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4741, file: !2, line: 202, column: 7)
!4749 = !DILocation(line: 202, column: 13, scope: !4748)
!4750 = !DILocation(line: 202, column: 21, scope: !4748)
!4751 = !DILocation(line: 202, column: 24, scope: !4748)
!4752 = !DILocation(line: 202, column: 32, scope: !4748)
!4753 = !DILocation(line: 202, column: 7, scope: !4741)
!4754 = !DILocation(line: 203, column: 4, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4748, file: !2, line: 202, column: 45)
!4756 = !DILocation(line: 203, column: 4, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4755, file: !2, line: 203, column: 4)
!4758 = !DILocation(line: 204, column: 23, scope: !4755)
!4759 = !DILocation(line: 204, column: 28, scope: !4755)
!4760 = !DILocation(line: 204, column: 40, scope: !4755)
!4761 = !DILocation(line: 204, column: 46, scope: !4755)
!4762 = !DILocation(line: 204, column: 54, scope: !4755)
!4763 = !DILocation(line: 204, column: 60, scope: !4755)
!4764 = !DILocation(line: 204, column: 65, scope: !4755)
!4765 = !DILocation(line: 204, column: 4, scope: !4755)
!4766 = !DILocation(line: 204, column: 11, scope: !4755)
!4767 = !DILocation(line: 204, column: 16, scope: !4755)
!4768 = !DILocation(line: 204, column: 21, scope: !4755)
!4769 = !DILocation(line: 205, column: 4, scope: !4755)
!4770 = !DILocation(line: 205, column: 11, scope: !4755)
!4771 = !DILocation(line: 205, column: 16, scope: !4755)
!4772 = !DILocation(line: 205, column: 21, scope: !4755)
!4773 = !DILocation(line: 206, column: 18, scope: !4755)
!4774 = !DILocation(line: 206, column: 24, scope: !4755)
!4775 = !DILocation(line: 206, column: 32, scope: !4755)
!4776 = !DILocation(line: 206, column: 35, scope: !4755)
!4777 = !DILocation(line: 206, column: 4, scope: !4755)
!4778 = !DILocation(line: 206, column: 11, scope: !4755)
!4779 = !DILocation(line: 206, column: 16, scope: !4755)
!4780 = !DILocation(line: 207, column: 29, scope: !4755)
!4781 = !DILocation(line: 207, column: 35, scope: !4755)
!4782 = !DILocation(line: 207, column: 43, scope: !4755)
!4783 = !DILocation(line: 207, column: 46, scope: !4755)
!4784 = !DILocation(line: 207, column: 21, scope: !4755)
!4785 = !DILocation(line: 207, column: 4, scope: !4755)
!4786 = !DILocation(line: 207, column: 11, scope: !4755)
!4787 = !DILocation(line: 207, column: 19, scope: !4755)
!4788 = !DILocation(line: 208, column: 4, scope: !4755)
!4789 = !DILocation(line: 208, column: 11, scope: !4755)
!4790 = !DILocation(line: 208, column: 16, scope: !4755)
!4791 = !DILocation(line: 209, column: 4, scope: !4755)
!4792 = !DILocation(line: 210, column: 3, scope: !4755)
!4793 = !DILocation(line: 211, column: 3, scope: !4741)
!4794 = !DILocation(line: 212, column: 2, scope: !4741)
!4795 = !DILocation(line: 199, column: 47, scope: !4733)
!4796 = !DILocation(line: 199, column: 2, scope: !4733)
!4797 = distinct !{!4797, !4738, !4798, !4408, !4409}
!4798 = !DILocation(line: 212, column: 2, scope: !4729)
!4799 = !DILocation(line: 214, column: 54, scope: !4655)
!4800 = !DILocation(line: 214, column: 59, scope: !4655)
!4801 = !DILocation(line: 214, column: 65, scope: !4655)
!4802 = !DILocation(line: 214, column: 21, scope: !4655)
!4803 = !DILocation(line: 214, column: 2, scope: !4655)
!4804 = !DILocation(line: 214, column: 15, scope: !4655)
!4805 = !DILocation(line: 214, column: 19, scope: !4655)
!4806 = !DILocation(line: 215, column: 7, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4655, file: !2, line: 215, column: 6)
!4808 = !DILocation(line: 215, column: 20, scope: !4807)
!4809 = !DILocation(line: 215, column: 6, scope: !4655)
!4810 = !DILocation(line: 216, column: 3, scope: !4807)
!4811 = !DILocation(line: 218, column: 9, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4655, file: !2, line: 218, column: 2)
!4813 = !DILocation(line: 218, column: 7, scope: !4812)
!4814 = !DILocation(line: 218, column: 14, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4812, file: !2, line: 218, column: 2)
!4816 = !DILocation(line: 218, column: 18, scope: !4815)
!4817 = !DILocation(line: 218, column: 16, scope: !4815)
!4818 = !DILocation(line: 218, column: 2, scope: !4812)
!4819 = !DILocation(line: 219, column: 29, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4815, file: !2, line: 219, column: 7)
!4821 = !DILocation(line: 219, column: 42, scope: !4820)
!4822 = !DILocation(line: 220, column: 9, scope: !4820)
!4823 = !DILocation(line: 220, column: 22, scope: !4820)
!4824 = !DILocation(line: 220, column: 28, scope: !4820)
!4825 = !DILocation(line: 219, column: 7, scope: !4820)
!4826 = !DILocation(line: 219, column: 7, scope: !4815)
!4827 = !DILocation(line: 221, column: 4, scope: !4820)
!4828 = !DILocation(line: 220, column: 30, scope: !4820)
!4829 = !DILocation(line: 218, column: 25, scope: !4815)
!4830 = !DILocation(line: 218, column: 2, scope: !4815)
!4831 = distinct !{!4831, !4818, !4832, !4408, !4409}
!4832 = !DILocation(line: 221, column: 9, scope: !4812)
!4833 = !DILocation(line: 223, column: 21, scope: !4655)
!4834 = !DILocation(line: 223, column: 2, scope: !4655)
!4835 = !DILocation(line: 223, column: 7, scope: !4655)
!4836 = !DILocation(line: 223, column: 19, scope: !4655)
!4837 = !DILocation(line: 224, column: 2, scope: !4655)
!4838 = !DILocation(line: 226, column: 1, scope: !4655)
!4839 = !DILocation(line: 227, column: 19, scope: !4655)
!4840 = !DILocation(line: 227, column: 32, scope: !4655)
!4841 = !DILocation(line: 227, column: 2, scope: !4655)
!4842 = !DILocation(line: 228, column: 1, scope: !4655)
!4843 = distinct !DISubprogram(name: "module_remove_modinfo_attrs", scope: !2, file: !2, line: 275, type: !4844, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !4846)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{null, !12, !78}
!4846 = !{!4847, !4848, !4849, !4850}
!4847 = !DILocalVariable(name: "mod", arg: 1, scope: !4843, file: !2, line: 275, type: !12)
!4848 = !DILocalVariable(name: "end", arg: 2, scope: !4843, file: !2, line: 275, type: !78)
!4849 = !DILocalVariable(name: "attr", scope: !4843, file: !2, line: 277, type: !3703)
!4850 = !DILocalVariable(name: "i", scope: !4843, file: !2, line: 278, type: !78)
!4851 = !DILocation(line: 275, column: 56, scope: !4843)
!4852 = !DILocation(line: 275, column: 65, scope: !4843)
!4853 = !DILocation(line: 277, column: 2, scope: !4843)
!4854 = !DILocation(line: 277, column: 27, scope: !4843)
!4855 = !DILocation(line: 278, column: 2, scope: !4843)
!4856 = !DILocation(line: 278, column: 6, scope: !4843)
!4857 = !DILocation(line: 280, column: 9, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4843, file: !2, line: 280, column: 2)
!4859 = !DILocation(line: 280, column: 7, scope: !4858)
!4860 = !DILocation(line: 280, column: 23, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4858, file: !2, line: 280, column: 2)
!4862 = !DILocation(line: 280, column: 28, scope: !4861)
!4863 = !DILocation(line: 280, column: 42, scope: !4861)
!4864 = !DILocation(line: 280, column: 20, scope: !4861)
!4865 = !DILocation(line: 280, column: 2, scope: !4858)
!4866 = !DILocation(line: 281, column: 7, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !2, line: 281, column: 7)
!4868 = distinct !DILexicalBlock(scope: !4861, file: !2, line: 280, column: 52)
!4869 = !DILocation(line: 281, column: 11, scope: !4867)
!4870 = !DILocation(line: 281, column: 16, scope: !4867)
!4871 = !DILocation(line: 281, column: 19, scope: !4867)
!4872 = !DILocation(line: 281, column: 23, scope: !4867)
!4873 = !DILocation(line: 281, column: 21, scope: !4867)
!4874 = !DILocation(line: 281, column: 7, scope: !4868)
!4875 = !DILocation(line: 282, column: 4, scope: !4867)
!4876 = !DILocation(line: 284, column: 8, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4868, file: !2, line: 284, column: 7)
!4878 = !DILocation(line: 284, column: 14, scope: !4877)
!4879 = !DILocation(line: 284, column: 19, scope: !4877)
!4880 = !DILocation(line: 284, column: 7, scope: !4868)
!4881 = !DILocation(line: 285, column: 4, scope: !4877)
!4882 = !DILocation(line: 286, column: 22, scope: !4868)
!4883 = !DILocation(line: 286, column: 27, scope: !4868)
!4884 = !DILocation(line: 286, column: 33, scope: !4868)
!4885 = !DILocation(line: 286, column: 40, scope: !4868)
!4886 = !DILocation(line: 286, column: 46, scope: !4868)
!4887 = !DILocation(line: 286, column: 3, scope: !4868)
!4888 = !DILocation(line: 287, column: 7, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4868, file: !2, line: 287, column: 7)
!4890 = !DILocation(line: 287, column: 13, scope: !4889)
!4891 = !DILocation(line: 287, column: 7, scope: !4868)
!4892 = !DILocation(line: 288, column: 4, scope: !4889)
!4893 = !DILocation(line: 288, column: 10, scope: !4889)
!4894 = !DILocation(line: 288, column: 15, scope: !4889)
!4895 = !DILocation(line: 289, column: 2, scope: !4868)
!4896 = !DILocation(line: 280, column: 48, scope: !4861)
!4897 = !DILocation(line: 280, column: 2, scope: !4861)
!4898 = distinct !{!4898, !4865, !4899, !4408, !4409}
!4899 = !DILocation(line: 289, column: 2, scope: !4858)
!4900 = !DILocation(line: 290, column: 8, scope: !4843)
!4901 = !DILocation(line: 290, column: 13, scope: !4843)
!4902 = !DILocation(line: 290, column: 2, scope: !4843)
!4903 = !DILocation(line: 291, column: 1, scope: !4843)
!4904 = !DISubprogram(name: "module_param_sysfs_remove", scope: !3746, file: !3746, line: 602, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4905 = !DISubprogram(name: "kobject_put", scope: !40, file: !40, line: 110, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4906 = distinct !DISubprogram(name: "mod_kobject_put", scope: !2, file: !2, line: 329, type: !10, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !4907)
!4907 = !{!4908, !4909}
!4908 = !DILocalVariable(name: "mod", arg: 1, scope: !4906, file: !2, line: 329, type: !12)
!4909 = !DILocalVariable(name: "c", scope: !4906, file: !2, line: 331, type: !1756)
!4910 = !DILocation(line: 329, column: 44, scope: !4906)
!4911 = !DILocation(line: 331, column: 2, scope: !4906)
!4912 = !DILocation(line: 333, column: 2, scope: !4906)
!4913 = !DILocation(line: 333, column: 7, scope: !4906)
!4914 = !DILocation(line: 333, column: 13, scope: !4906)
!4915 = !DILocation(line: 333, column: 29, scope: !4906)
!4916 = !DILocation(line: 334, column: 15, scope: !4906)
!4917 = !DILocation(line: 334, column: 20, scope: !4906)
!4918 = !DILocation(line: 334, column: 26, scope: !4906)
!4919 = !DILocation(line: 334, column: 2, scope: !4906)
!4920 = !DILocation(line: 335, column: 2, scope: !4906)
!4921 = !DILocation(line: 336, column: 1, scope: !4906)
!4922 = distinct !DISubprogram(name: "mod_sysfs_teardown", scope: !2, file: !2, line: 423, type: !10, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !4923)
!4923 = !{!4924}
!4924 = !DILocalVariable(name: "mod", arg: 1, scope: !4922, file: !2, line: 423, type: !12)
!4925 = !DILocation(line: 423, column: 40, scope: !4922)
!4926 = !DILocation(line: 425, column: 18, scope: !4922)
!4927 = !DILocation(line: 425, column: 2, scope: !4922)
!4928 = !DILocation(line: 426, column: 30, scope: !4922)
!4929 = !DILocation(line: 426, column: 2, scope: !4922)
!4930 = !DILocation(line: 427, column: 28, scope: !4922)
!4931 = !DILocation(line: 427, column: 2, scope: !4922)
!4932 = !DILocation(line: 428, column: 14, scope: !4922)
!4933 = !DILocation(line: 428, column: 19, scope: !4922)
!4934 = !DILocation(line: 428, column: 25, scope: !4922)
!4935 = !DILocation(line: 428, column: 2, scope: !4922)
!4936 = !DILocation(line: 429, column: 14, scope: !4922)
!4937 = !DILocation(line: 429, column: 19, scope: !4922)
!4938 = !DILocation(line: 429, column: 2, scope: !4922)
!4939 = !DILocation(line: 430, column: 17, scope: !4922)
!4940 = !DILocation(line: 430, column: 2, scope: !4922)
!4941 = !DILocation(line: 431, column: 1, scope: !4922)
!4942 = distinct !DISubprogram(name: "del_usage_links", scope: !2, file: !2, line: 243, type: !10, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !4943)
!4943 = !{!4944, !4945, !4946, !4949}
!4944 = !DILocalVariable(name: "mod", arg: 1, scope: !4942, file: !2, line: 243, type: !12)
!4945 = !DILocalVariable(name: "use", scope: !4942, file: !2, line: 246, type: !4061)
!4946 = !DILocalVariable(name: "__mptr", scope: !4947, file: !2, line: 249, type: !197)
!4947 = distinct !DILexicalBlock(scope: !4948, file: !2, line: 249, column: 2)
!4948 = distinct !DILexicalBlock(scope: !4942, file: !2, line: 249, column: 2)
!4949 = !DILocalVariable(name: "__mptr", scope: !4950, file: !2, line: 249, type: !197)
!4950 = distinct !DILexicalBlock(scope: !4951, file: !2, line: 249, column: 2)
!4951 = distinct !DILexicalBlock(scope: !4948, file: !2, line: 249, column: 2)
!4952 = !DILocation(line: 243, column: 44, scope: !4942)
!4953 = !DILocation(line: 246, column: 2, scope: !4942)
!4954 = !DILocation(line: 246, column: 21, scope: !4942)
!4955 = !DILocation(line: 248, column: 2, scope: !4942)
!4956 = !DILocation(line: 249, column: 2, scope: !4947)
!4957 = !DILocation(line: 249, column: 2, scope: !4948)
!4958 = !DILocation(line: 249, column: 2, scope: !4951)
!4959 = !DILocation(line: 250, column: 21, scope: !4951)
!4960 = !DILocation(line: 250, column: 26, scope: !4951)
!4961 = !DILocation(line: 250, column: 34, scope: !4951)
!4962 = !DILocation(line: 250, column: 47, scope: !4951)
!4963 = !DILocation(line: 250, column: 52, scope: !4951)
!4964 = !DILocation(line: 250, column: 3, scope: !4951)
!4965 = !DILocation(line: 249, column: 2, scope: !4950)
!4966 = distinct !{!4966, !4957, !4967, !4408, !4409}
!4967 = !DILocation(line: 250, column: 56, scope: !4948)
!4968 = !DILocation(line: 251, column: 2, scope: !4942)
!4969 = !DILocation(line: 253, column: 1, scope: !4942)
!4970 = distinct !DISubprogram(name: "mod_sysfs_fini", scope: !2, file: !2, line: 416, type: !10, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !4971)
!4971 = !{!4972}
!4972 = !DILocalVariable(name: "mod", arg: 1, scope: !4970, file: !2, line: 416, type: !12)
!4973 = !DILocation(line: 416, column: 43, scope: !4970)
!4974 = !DILocation(line: 418, column: 21, scope: !4970)
!4975 = !DILocation(line: 418, column: 2, scope: !4970)
!4976 = !DILocation(line: 419, column: 20, scope: !4970)
!4977 = !DILocation(line: 419, column: 2, scope: !4970)
!4978 = !DILocation(line: 420, column: 18, scope: !4970)
!4979 = !DILocation(line: 420, column: 2, scope: !4970)
!4980 = !DILocation(line: 421, column: 1, scope: !4970)
!4981 = !DILocation(line: 433, column: 37, scope: !9)
!4982 = !DILocation(line: 435, column: 2, scope: !9)
!4983 = !DILocation(line: 435, column: 2, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !9, file: !2, line: 435, column: 2)
!4985 = !DILocation(line: 436, column: 1, scope: !9)
!4986 = !DISubprogram(name: "__mutex_init", scope: !513, file: !513, line: 121, type: !4987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{null, !4989, !43, !4990}
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!4991 = !DISubprogram(name: "_printk", scope: !4992, file: !4992, line: 153, type: !4993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4992 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4993 = !DISubroutineType(types: !4994)
!4994 = !{!78, !43, null}
!4995 = !DISubprogram(name: "kset_find_obj", scope: !40, file: !40, line: 201, type: !4996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!47, !49, !43}
!4998 = !DISubprogram(name: "kobject_init_and_add", scope: !40, file: !40, line: 96, type: !4999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!78, !47, !139, !47, !43, null}
!5001 = distinct !DISubprogram(name: "kzalloc", scope: !4051, file: !4051, line: 719, type: !5002, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5004)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!197, !172, !582}
!5004 = !{!5005, !5006}
!5005 = !DILocalVariable(name: "size", arg: 1, scope: !5001, file: !4051, line: 719, type: !172)
!5006 = !DILocalVariable(name: "flags", arg: 2, scope: !5001, file: !4051, line: 719, type: !582)
!5007 = !DILocation(line: 719, column: 52, scope: !5001)
!5008 = !DILocation(line: 719, column: 64, scope: !5001)
!5009 = !DILocation(line: 721, column: 17, scope: !5001)
!5010 = !DILocation(line: 721, column: 23, scope: !5001)
!5011 = !DILocation(line: 721, column: 29, scope: !5001)
!5012 = !DILocation(line: 721, column: 9, scope: !5001)
!5013 = !DILocation(line: 721, column: 2, scope: !5001)
!5014 = distinct !DISubprogram(name: "sysfs_create_file", scope: !151, file: !151, line: 620, type: !5015, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5019)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!78, !47, !5017}
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!5019 = !{!5020, !5021}
!5020 = !DILocalVariable(name: "kobj", arg: 1, scope: !5014, file: !151, line: 620, type: !47)
!5021 = !DILocalVariable(name: "attr", arg: 2, scope: !5014, file: !151, line: 621, type: !5017)
!5022 = !DILocation(line: 620, column: 66, scope: !5014)
!5023 = !DILocation(line: 621, column: 32, scope: !5014)
!5024 = !DILocation(line: 623, column: 30, scope: !5014)
!5025 = !DILocation(line: 623, column: 36, scope: !5014)
!5026 = !DILocation(line: 623, column: 9, scope: !5014)
!5027 = !DILocation(line: 623, column: 2, scope: !5014)
!5028 = !DISubprogram(name: "kfree", scope: !4051, file: !4051, line: 227, type: !5029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{null, !2040}
!5031 = distinct !DISubprogram(name: "kmalloc", scope: !4051, file: !4051, line: 591, type: !5002, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5032)
!5032 = !{!5033, !5034, !5035}
!5033 = !DILocalVariable(name: "size", arg: 1, scope: !5031, file: !4051, line: 591, type: !172)
!5034 = !DILocalVariable(name: "flags", arg: 2, scope: !5031, file: !4051, line: 591, type: !582)
!5035 = !DILocalVariable(name: "index", scope: !5036, file: !4051, line: 594, type: !18)
!5036 = distinct !DILexicalBlock(scope: !5037, file: !4051, line: 593, column: 42)
!5037 = distinct !DILexicalBlock(scope: !5031, file: !4051, line: 593, column: 6)
!5038 = !DILocation(line: 591, column: 61, scope: !5031)
!5039 = !DILocation(line: 591, column: 73, scope: !5031)
!5040 = !DILocation(line: 593, column: 27, scope: !5037)
!5041 = !DILocation(line: 593, column: 6, scope: !5037)
!5042 = !DILocation(line: 593, column: 33, scope: !5037)
!5043 = !DILocation(line: 593, column: 36, scope: !5037)
!5044 = !DILocation(line: 593, column: 6, scope: !5031)
!5045 = !DILocation(line: 594, column: 3, scope: !5036)
!5046 = !DILocation(line: 594, column: 16, scope: !5036)
!5047 = !DILocation(line: 596, column: 7, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5036, file: !4051, line: 596, column: 7)
!5049 = !DILocation(line: 596, column: 12, scope: !5048)
!5050 = !DILocation(line: 596, column: 7, scope: !5036)
!5051 = !DILocation(line: 597, column: 25, scope: !5048)
!5052 = !DILocation(line: 597, column: 31, scope: !5048)
!5053 = !DILocation(line: 597, column: 11, scope: !5048)
!5054 = !DILocation(line: 597, column: 4, scope: !5048)
!5055 = !DILocation(line: 599, column: 11, scope: !5036)
!5056 = !DILocation(line: 599, column: 9, scope: !5036)
!5057 = !DILocation(line: 601, column: 33, scope: !5036)
!5058 = !DILocation(line: 601, column: 40, scope: !5036)
!5059 = !DILocation(line: 601, column: 20, scope: !5036)
!5060 = !DILocation(line: 601, column: 5, scope: !5036)
!5061 = !DILocation(line: 601, column: 51, scope: !5036)
!5062 = !DILocation(line: 602, column: 5, scope: !5036)
!5063 = !DILocation(line: 602, column: 12, scope: !5036)
!5064 = !DILocation(line: 600, column: 10, scope: !5036)
!5065 = !DILocation(line: 600, column: 3, scope: !5036)
!5066 = !DILocation(line: 603, column: 2, scope: !5037)
!5067 = !DILocation(line: 604, column: 19, scope: !5031)
!5068 = !DILocation(line: 604, column: 25, scope: !5031)
!5069 = !DILocation(line: 604, column: 9, scope: !5031)
!5070 = !DILocation(line: 604, column: 2, scope: !5031)
!5071 = !DILocation(line: 605, column: 1, scope: !5031)
!5072 = !DISubprogram(name: "kmalloc_large", scope: !4051, file: !4051, line: 531, type: !5002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5073 = distinct !DISubprogram(name: "__kmalloc_index", scope: !4051, file: !4051, line: 444, type: !5074, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5076)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!18, !172, !1349}
!5076 = !{!5077, !5078}
!5077 = !DILocalVariable(name: "size", arg: 1, scope: !5073, file: !4051, line: 444, type: !172)
!5078 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5073, file: !4051, line: 445, type: !1349)
!5079 = !DILocation(line: 444, column: 60, scope: !5073)
!5080 = !DILocation(line: 445, column: 16, scope: !5073)
!5081 = !DILocation(line: 447, column: 7, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 447, column: 6)
!5083 = !DILocation(line: 447, column: 6, scope: !5073)
!5084 = !DILocation(line: 448, column: 3, scope: !5082)
!5085 = !DILocation(line: 450, column: 6, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 450, column: 6)
!5087 = !DILocation(line: 450, column: 11, scope: !5086)
!5088 = !DILocation(line: 450, column: 6, scope: !5073)
!5089 = !DILocation(line: 451, column: 3, scope: !5086)
!5090 = !DILocation(line: 453, column: 32, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 453, column: 6)
!5092 = !DILocation(line: 453, column: 37, scope: !5091)
!5093 = !DILocation(line: 453, column: 42, scope: !5091)
!5094 = !DILocation(line: 453, column: 45, scope: !5091)
!5095 = !DILocation(line: 453, column: 50, scope: !5091)
!5096 = !DILocation(line: 453, column: 6, scope: !5073)
!5097 = !DILocation(line: 454, column: 3, scope: !5091)
!5098 = !DILocation(line: 455, column: 32, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 455, column: 6)
!5100 = !DILocation(line: 455, column: 37, scope: !5099)
!5101 = !DILocation(line: 455, column: 43, scope: !5099)
!5102 = !DILocation(line: 455, column: 46, scope: !5099)
!5103 = !DILocation(line: 455, column: 51, scope: !5099)
!5104 = !DILocation(line: 455, column: 6, scope: !5073)
!5105 = !DILocation(line: 456, column: 3, scope: !5099)
!5106 = !DILocation(line: 457, column: 6, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 457, column: 6)
!5108 = !DILocation(line: 457, column: 11, scope: !5107)
!5109 = !DILocation(line: 457, column: 6, scope: !5073)
!5110 = !DILocation(line: 457, column: 26, scope: !5107)
!5111 = !DILocation(line: 458, column: 6, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 458, column: 6)
!5113 = !DILocation(line: 458, column: 11, scope: !5112)
!5114 = !DILocation(line: 458, column: 6, scope: !5073)
!5115 = !DILocation(line: 458, column: 26, scope: !5112)
!5116 = !DILocation(line: 459, column: 6, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 459, column: 6)
!5118 = !DILocation(line: 459, column: 11, scope: !5117)
!5119 = !DILocation(line: 459, column: 6, scope: !5073)
!5120 = !DILocation(line: 459, column: 26, scope: !5117)
!5121 = !DILocation(line: 460, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 460, column: 6)
!5123 = !DILocation(line: 460, column: 11, scope: !5122)
!5124 = !DILocation(line: 460, column: 6, scope: !5073)
!5125 = !DILocation(line: 460, column: 26, scope: !5122)
!5126 = !DILocation(line: 461, column: 6, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 461, column: 6)
!5128 = !DILocation(line: 461, column: 11, scope: !5127)
!5129 = !DILocation(line: 461, column: 6, scope: !5073)
!5130 = !DILocation(line: 461, column: 26, scope: !5127)
!5131 = !DILocation(line: 462, column: 6, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 462, column: 6)
!5133 = !DILocation(line: 462, column: 11, scope: !5132)
!5134 = !DILocation(line: 462, column: 6, scope: !5073)
!5135 = !DILocation(line: 462, column: 26, scope: !5132)
!5136 = !DILocation(line: 463, column: 6, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 463, column: 6)
!5138 = !DILocation(line: 463, column: 11, scope: !5137)
!5139 = !DILocation(line: 463, column: 6, scope: !5073)
!5140 = !DILocation(line: 463, column: 26, scope: !5137)
!5141 = !DILocation(line: 464, column: 6, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 464, column: 6)
!5143 = !DILocation(line: 464, column: 11, scope: !5142)
!5144 = !DILocation(line: 464, column: 6, scope: !5073)
!5145 = !DILocation(line: 464, column: 26, scope: !5142)
!5146 = !DILocation(line: 465, column: 6, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 465, column: 6)
!5148 = !DILocation(line: 465, column: 11, scope: !5147)
!5149 = !DILocation(line: 465, column: 6, scope: !5073)
!5150 = !DILocation(line: 465, column: 26, scope: !5147)
!5151 = !DILocation(line: 466, column: 6, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 466, column: 6)
!5153 = !DILocation(line: 466, column: 11, scope: !5152)
!5154 = !DILocation(line: 466, column: 6, scope: !5073)
!5155 = !DILocation(line: 466, column: 26, scope: !5152)
!5156 = !DILocation(line: 467, column: 6, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 467, column: 6)
!5158 = !DILocation(line: 467, column: 11, scope: !5157)
!5159 = !DILocation(line: 467, column: 6, scope: !5073)
!5160 = !DILocation(line: 467, column: 26, scope: !5157)
!5161 = !DILocation(line: 468, column: 6, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 468, column: 6)
!5163 = !DILocation(line: 468, column: 11, scope: !5162)
!5164 = !DILocation(line: 468, column: 6, scope: !5073)
!5165 = !DILocation(line: 468, column: 26, scope: !5162)
!5166 = !DILocation(line: 469, column: 6, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 469, column: 6)
!5168 = !DILocation(line: 469, column: 11, scope: !5167)
!5169 = !DILocation(line: 469, column: 6, scope: !5073)
!5170 = !DILocation(line: 469, column: 26, scope: !5167)
!5171 = !DILocation(line: 470, column: 6, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 470, column: 6)
!5173 = !DILocation(line: 470, column: 11, scope: !5172)
!5174 = !DILocation(line: 470, column: 6, scope: !5073)
!5175 = !DILocation(line: 470, column: 26, scope: !5172)
!5176 = !DILocation(line: 471, column: 6, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 471, column: 6)
!5178 = !DILocation(line: 471, column: 11, scope: !5177)
!5179 = !DILocation(line: 471, column: 6, scope: !5073)
!5180 = !DILocation(line: 471, column: 26, scope: !5177)
!5181 = !DILocation(line: 472, column: 6, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 472, column: 6)
!5183 = !DILocation(line: 472, column: 11, scope: !5182)
!5184 = !DILocation(line: 472, column: 6, scope: !5073)
!5185 = !DILocation(line: 472, column: 26, scope: !5182)
!5186 = !DILocation(line: 473, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 473, column: 6)
!5188 = !DILocation(line: 473, column: 11, scope: !5187)
!5189 = !DILocation(line: 473, column: 6, scope: !5073)
!5190 = !DILocation(line: 473, column: 26, scope: !5187)
!5191 = !DILocation(line: 474, column: 6, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 474, column: 6)
!5193 = !DILocation(line: 474, column: 11, scope: !5192)
!5194 = !DILocation(line: 474, column: 6, scope: !5073)
!5195 = !DILocation(line: 474, column: 27, scope: !5192)
!5196 = !DILocation(line: 475, column: 6, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 475, column: 6)
!5198 = !DILocation(line: 475, column: 11, scope: !5197)
!5199 = !DILocation(line: 475, column: 6, scope: !5073)
!5200 = !DILocation(line: 475, column: 32, scope: !5197)
!5201 = !DILocation(line: 477, column: 50, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5073, file: !4051, line: 477, column: 6)
!5203 = !{i8 0, i8 2}
!5204 = !DILocation(line: 477, column: 6, scope: !5073)
!5205 = !DILocation(line: 478, column: 3, scope: !5202)
!5206 = !DILocation(line: 478, column: 3, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !4051, line: 478, column: 3)
!5208 = distinct !DILexicalBlock(scope: !5202, file: !4051, line: 478, column: 3)
!5209 = !{i32 -2141472444}
!5210 = !DILocation(line: 478, column: 3, scope: !5208)
!5211 = !DILocation(line: 480, column: 3, scope: !5202)
!5212 = !DILocation(line: 480, column: 3, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5202, file: !4051, line: 480, column: 3)
!5214 = !DILocation(line: 480, column: 3, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5213, file: !4051, line: 480, column: 3)
!5216 = !DILocation(line: 480, column: 3, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5213, file: !4051, line: 480, column: 3)
!5218 = !{i64 2153495055, i64 2153495084, i64 2153495130, i64 2153495188, i64 2153495242, i64 2153495296, i64 2153495351, i64 2153495382}
!5219 = !DILocation(line: 483, column: 2, scope: !5073)
!5220 = !DILocation(line: 484, column: 1, scope: !5073)
!5221 = !DISubprogram(name: "kmalloc_trace", scope: !4051, file: !4051, line: 525, type: !5222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!197, !5224, !582, !172}
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5225 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5226, line: 325, flags: DIFlagFwdDecl)
!5226 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5227 = distinct !DISubprogram(name: "kmalloc_type", scope: !4051, file: !4051, line: 401, type: !5228, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5230)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{!4050, !582, !175}
!5230 = !{!5231, !5232}
!5231 = !DILocalVariable(name: "flags", arg: 1, scope: !5227, file: !4051, line: 401, type: !582)
!5232 = !DILocalVariable(name: "caller", arg: 2, scope: !5227, file: !4051, line: 401, type: !175)
!5233 = !DILocation(line: 401, column: 67, scope: !5227)
!5234 = !DILocation(line: 401, column: 88, scope: !5227)
!5235 = !DILocation(line: 407, column: 6, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5227, file: !4051, line: 407, column: 6)
!5237 = !DILocation(line: 407, column: 6, scope: !5227)
!5238 = !DILocation(line: 413, column: 3, scope: !5236)
!5239 = !DILocation(line: 423, column: 38, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5227, file: !4051, line: 423, column: 6)
!5241 = !DILocation(line: 423, column: 44, scope: !5240)
!5242 = !DILocation(line: 423, column: 6, scope: !5227)
!5243 = !DILocation(line: 424, column: 3, scope: !5240)
!5244 = !DILocation(line: 426, column: 3, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5227, file: !4051, line: 425, column: 6)
!5246 = !DILocation(line: 429, column: 1, scope: !5227)
!5247 = !DISubprogram(name: "__kmalloc", scope: !4051, file: !4051, line: 488, type: !5002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5248 = !DISubprogram(name: "__compiletime_assert_255", scope: !4051, file: !4051, line: 478, type: !2435, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5249 = !DISubprogram(name: "sysfs_create_file_ns", scope: !151, file: !151, line: 273, type: !5250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5250 = !DISubroutineType(types: !5251)
!5251 = !{!78, !47, !5017, !2040}
!5252 = !DISubprogram(name: "mutex_lock", scope: !513, file: !513, line: 227, type: !5253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{null, !4989}
!5255 = !DISubprogram(name: "sysfs_create_link", scope: !151, file: !151, line: 293, type: !5256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!78, !47, !47, !43}
!5258 = !DISubprogram(name: "mutex_unlock", scope: !513, file: !513, line: 246, type: !5253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5259 = distinct !DISubprogram(name: "sect_empty", scope: !3733, file: !3733, line: 352, type: !5260, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5264)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!1349, !5262}
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4144)
!5264 = !{!5265}
!5265 = !DILocalVariable(name: "sect", arg: 1, scope: !5259, file: !3733, line: 352, type: !5262)
!5266 = !DILocation(line: 352, column: 47, scope: !5259)
!5267 = !DILocation(line: 354, column: 11, scope: !5259)
!5268 = !DILocation(line: 354, column: 17, scope: !5259)
!5269 = !DILocation(line: 354, column: 26, scope: !5259)
!5270 = !DILocation(line: 354, column: 39, scope: !5259)
!5271 = !DILocation(line: 354, column: 42, scope: !5259)
!5272 = !DILocation(line: 354, column: 48, scope: !5259)
!5273 = !DILocation(line: 354, column: 56, scope: !5259)
!5274 = !DILocation(line: 354, column: 2, scope: !5259)
!5275 = distinct !DISubprogram(name: "size_add", scope: !5276, file: !5276, line: 208, type: !5277, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5279)
!5276 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5277 = !DISubroutineType(types: !5278)
!5278 = !{!172, !172, !172}
!5279 = !{!5280, !5281, !5282}
!5280 = !DILocalVariable(name: "addend1", arg: 1, scope: !5275, file: !5276, line: 208, type: !172)
!5281 = !DILocalVariable(name: "addend2", arg: 2, scope: !5275, file: !5276, line: 208, type: !172)
!5282 = !DILocalVariable(name: "bytes", scope: !5275, file: !5276, line: 210, type: !172)
!5283 = !DILocation(line: 208, column: 51, scope: !5275)
!5284 = !DILocation(line: 208, column: 67, scope: !5275)
!5285 = !DILocation(line: 210, column: 2, scope: !5275)
!5286 = !DILocation(line: 210, column: 9, scope: !5275)
!5287 = !DILocation(line: 212, column: 6, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5275, file: !5276, line: 212, column: 6)
!5289 = !DILocation(line: 212, column: 6, scope: !5275)
!5290 = !DILocation(line: 213, column: 3, scope: !5288)
!5291 = !DILocation(line: 215, column: 9, scope: !5275)
!5292 = !DILocation(line: 215, column: 2, scope: !5275)
!5293 = !DILocation(line: 216, column: 1, scope: !5275)
!5294 = distinct !DISubprogram(name: "size_mul", scope: !5276, file: !5276, line: 189, type: !5277, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5295)
!5295 = !{!5296, !5297, !5298}
!5296 = !DILocalVariable(name: "factor1", arg: 1, scope: !5294, file: !5276, line: 189, type: !172)
!5297 = !DILocalVariable(name: "factor2", arg: 2, scope: !5294, file: !5276, line: 189, type: !172)
!5298 = !DILocalVariable(name: "bytes", scope: !5294, file: !5276, line: 191, type: !172)
!5299 = !DILocation(line: 189, column: 51, scope: !5294)
!5300 = !DILocation(line: 189, column: 67, scope: !5294)
!5301 = !DILocation(line: 191, column: 2, scope: !5294)
!5302 = !DILocation(line: 191, column: 9, scope: !5294)
!5303 = !DILocation(line: 193, column: 6, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5294, file: !5276, line: 193, column: 6)
!5305 = !DILocation(line: 193, column: 6, scope: !5294)
!5306 = !DILocation(line: 194, column: 3, scope: !5304)
!5307 = !DILocation(line: 196, column: 9, scope: !5294)
!5308 = !DILocation(line: 196, column: 2, scope: !5294)
!5309 = !DILocation(line: 197, column: 1, scope: !5294)
!5310 = !DISubprogram(name: "kstrdup", scope: !5311, file: !5311, line: 216, type: !5312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5311 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5312 = !DISubroutineType(types: !5313)
!5313 = !{!125, !43, !582}
!5314 = distinct !DISubprogram(name: "module_sect_read", scope: !2, file: !2, line: 34, type: !3528, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5315)
!5315 = !{!5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5325, !5327, !5328, !5330}
!5316 = !DILocalVariable(name: "file", arg: 1, scope: !5314, file: !2, line: 34, type: !1180)
!5317 = !DILocalVariable(name: "kobj", arg: 2, scope: !5314, file: !2, line: 34, type: !47)
!5318 = !DILocalVariable(name: "battr", arg: 3, scope: !5314, file: !2, line: 35, type: !191)
!5319 = !DILocalVariable(name: "buf", arg: 4, scope: !5314, file: !2, line: 36, type: !125)
!5320 = !DILocalVariable(name: "pos", arg: 5, scope: !5314, file: !2, line: 36, type: !368)
!5321 = !DILocalVariable(name: "count", arg: 6, scope: !5314, file: !2, line: 36, type: !172)
!5322 = !DILocalVariable(name: "sattr", scope: !5314, file: !2, line: 38, type: !4068)
!5323 = !DILocalVariable(name: "__mptr", scope: !5324, file: !2, line: 39, type: !197)
!5324 = distinct !DILexicalBlock(scope: !5314, file: !2, line: 39, column: 3)
!5325 = !DILocalVariable(name: "bounce", scope: !5314, file: !2, line: 40, type: !5326)
!5326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !2870)
!5327 = !DILocalVariable(name: "wrote", scope: !5314, file: !2, line: 41, type: !172)
!5328 = !DILocalVariable(name: "__UNIQUE_ID___x287", scope: !5329, file: !2, line: 57, type: !172)
!5329 = distinct !DILexicalBlock(scope: !5314, file: !2, line: 57, column: 10)
!5330 = !DILocalVariable(name: "__UNIQUE_ID___y288", scope: !5329, file: !2, line: 57, type: !172)
!5331 = !DILocation(line: 34, column: 46, scope: !5314)
!5332 = !DILocation(line: 34, column: 68, scope: !5314)
!5333 = !DILocation(line: 35, column: 27, scope: !5314)
!5334 = !DILocation(line: 36, column: 11, scope: !5314)
!5335 = !DILocation(line: 36, column: 23, scope: !5314)
!5336 = !DILocation(line: 36, column: 35, scope: !5314)
!5337 = !DILocation(line: 38, column: 2, scope: !5314)
!5338 = !DILocation(line: 38, column: 27, scope: !5314)
!5339 = !DILocation(line: 39, column: 3, scope: !5324)
!5340 = !DILocation(line: 39, column: 3, scope: !5314)
!5341 = !DILocation(line: 40, column: 2, scope: !5314)
!5342 = !DILocation(line: 40, column: 7, scope: !5314)
!5343 = !DILocation(line: 41, column: 2, scope: !5314)
!5344 = !DILocation(line: 41, column: 9, scope: !5314)
!5345 = !DILocation(line: 43, column: 6, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5314, file: !2, line: 43, column: 6)
!5347 = !DILocation(line: 43, column: 10, scope: !5346)
!5348 = !DILocation(line: 43, column: 6, scope: !5314)
!5349 = !DILocation(line: 44, column: 3, scope: !5346)
!5350 = !DILocation(line: 54, column: 20, scope: !5314)
!5351 = !DILocation(line: 55, column: 26, scope: !5314)
!5352 = !DILocation(line: 55, column: 32, scope: !5314)
!5353 = !DILocation(line: 55, column: 6, scope: !5314)
!5354 = !DILocation(line: 56, column: 15, scope: !5314)
!5355 = !DILocation(line: 56, column: 22, scope: !5314)
!5356 = !DILocation(line: 56, column: 7, scope: !5314)
!5357 = !DILocation(line: 54, column: 10, scope: !5314)
!5358 = !DILocation(line: 54, column: 8, scope: !5314)
!5359 = !DILocation(line: 57, column: 10, scope: !5329)
!5360 = !DILocation(line: 57, column: 10, scope: !5314)
!5361 = !DILocation(line: 57, column: 8, scope: !5314)
!5362 = !DILocation(line: 58, column: 9, scope: !5314)
!5363 = !DILocation(line: 58, column: 2, scope: !5314)
!5364 = !DILocation(line: 58, column: 22, scope: !5314)
!5365 = !DILocation(line: 60, column: 9, scope: !5314)
!5366 = !DILocation(line: 60, column: 2, scope: !5314)
!5367 = !DILocation(line: 61, column: 1, scope: !5314)
!5368 = !DISubprogram(name: "sysfs_create_group", scope: !151, file: !151, line: 307, type: !5369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{!78, !47, !178}
!5371 = distinct !DISubprogram(name: "free_sect_attrs", scope: !2, file: !2, line: 63, type: !5372, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5374)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{null, !3886}
!5374 = !{!5375, !5376}
!5375 = !DILocalVariable(name: "sect_attrs", arg: 1, scope: !5371, file: !2, line: 63, type: !3886)
!5376 = !DILocalVariable(name: "section", scope: !5371, file: !2, line: 65, type: !18)
!5377 = !DILocation(line: 63, column: 55, scope: !5371)
!5378 = !DILocation(line: 65, column: 2, scope: !5371)
!5379 = !DILocation(line: 65, column: 15, scope: !5371)
!5380 = !DILocation(line: 67, column: 15, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5371, file: !2, line: 67, column: 2)
!5382 = !DILocation(line: 67, column: 7, scope: !5381)
!5383 = !DILocation(line: 67, column: 20, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5381, file: !2, line: 67, column: 2)
!5385 = !DILocation(line: 67, column: 30, scope: !5384)
!5386 = !DILocation(line: 67, column: 42, scope: !5384)
!5387 = !DILocation(line: 67, column: 28, scope: !5384)
!5388 = !DILocation(line: 67, column: 2, scope: !5381)
!5389 = !DILocation(line: 68, column: 9, scope: !5384)
!5390 = !DILocation(line: 68, column: 21, scope: !5384)
!5391 = !DILocation(line: 68, column: 27, scope: !5384)
!5392 = !DILocation(line: 68, column: 36, scope: !5384)
!5393 = !DILocation(line: 68, column: 42, scope: !5384)
!5394 = !DILocation(line: 68, column: 47, scope: !5384)
!5395 = !DILocation(line: 68, column: 3, scope: !5384)
!5396 = !DILocation(line: 67, column: 60, scope: !5384)
!5397 = !DILocation(line: 67, column: 2, scope: !5384)
!5398 = distinct !{!5398, !5388, !5399, !4408, !4409}
!5399 = !DILocation(line: 68, column: 51, scope: !5381)
!5400 = !DILocation(line: 69, column: 8, scope: !5371)
!5401 = !DILocation(line: 69, column: 2, scope: !5371)
!5402 = !DILocation(line: 70, column: 1, scope: !5371)
!5403 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5276, file: !5276, line: 51, type: !5404, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5406)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!1349, !1349}
!5406 = !{!5407}
!5407 = !DILocalVariable(name: "overflow", arg: 1, scope: !5403, file: !5276, line: 51, type: !1349)
!5408 = !DILocation(line: 51, column: 60, scope: !5403)
!5409 = !DILocation(line: 53, column: 9, scope: !5403)
!5410 = !DILocation(line: 53, column: 2, scope: !5403)
!5411 = !DISubprogram(name: "scnprintf", scope: !5412, file: !5412, line: 14, type: !5413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5412 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!78, !125, !172, !43, null}
!5415 = !DISubprogram(name: "kallsyms_show_value", scope: !5416, file: !5416, line: 69, type: !5417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5416 = !DIFile(filename: "./include/linux/kallsyms.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "797c3ad2c64a1b2c16a6a757c7a94236")
!5417 = !DISubroutineType(types: !5418)
!5418 = !{!1349, !1257}
!5419 = distinct !DISubprogram(name: "module_notes_read", scope: !2, file: !2, line: 149, type: !3528, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5420)
!5420 = !{!5421, !5422, !5423, !5424, !5425, !5426}
!5421 = !DILocalVariable(name: "filp", arg: 1, scope: !5419, file: !2, line: 149, type: !1180)
!5422 = !DILocalVariable(name: "kobj", arg: 2, scope: !5419, file: !2, line: 149, type: !47)
!5423 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !5419, file: !2, line: 150, type: !191)
!5424 = !DILocalVariable(name: "buf", arg: 4, scope: !5419, file: !2, line: 151, type: !125)
!5425 = !DILocalVariable(name: "pos", arg: 5, scope: !5419, file: !2, line: 151, type: !368)
!5426 = !DILocalVariable(name: "count", arg: 6, scope: !5419, file: !2, line: 151, type: !172)
!5427 = !DILocation(line: 149, column: 47, scope: !5419)
!5428 = !DILocation(line: 149, column: 69, scope: !5419)
!5429 = !DILocation(line: 150, column: 28, scope: !5419)
!5430 = !DILocation(line: 151, column: 12, scope: !5419)
!5431 = !DILocation(line: 151, column: 24, scope: !5419)
!5432 = !DILocation(line: 151, column: 36, scope: !5419)
!5433 = !DILocation(line: 156, column: 9, scope: !5419)
!5434 = !DILocation(line: 156, column: 14, scope: !5419)
!5435 = !DILocation(line: 156, column: 24, scope: !5419)
!5436 = !DILocation(line: 156, column: 34, scope: !5419)
!5437 = !DILocation(line: 156, column: 32, scope: !5419)
!5438 = !DILocation(line: 156, column: 39, scope: !5419)
!5439 = !DILocation(line: 156, column: 2, scope: !5419)
!5440 = !DILocation(line: 157, column: 9, scope: !5419)
!5441 = !DILocation(line: 157, column: 2, scope: !5419)
!5442 = !DISubprogram(name: "sysfs_create_bin_file", scope: !151, file: !151, line: 288, type: !5443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5443 = !DISubroutineType(types: !5444)
!5444 = !{!78, !47, !5445}
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!5447 = distinct !DISubprogram(name: "free_notes_attrs", scope: !2, file: !2, line: 160, type: !5448, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5450)
!5448 = !DISubroutineType(types: !5449)
!5449 = !{null, !3898, !18}
!5450 = !{!5451, !5452}
!5451 = !DILocalVariable(name: "notes_attrs", arg: 1, scope: !5447, file: !2, line: 160, type: !3898)
!5452 = !DILocalVariable(name: "i", arg: 2, scope: !5447, file: !2, line: 161, type: !18)
!5453 = !DILocation(line: 160, column: 57, scope: !5447)
!5454 = !DILocation(line: 161, column: 22, scope: !5447)
!5455 = !DILocation(line: 163, column: 6, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5447, file: !2, line: 163, column: 6)
!5457 = !DILocation(line: 163, column: 19, scope: !5456)
!5458 = !DILocation(line: 163, column: 6, scope: !5447)
!5459 = !DILocation(line: 164, column: 3, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5456, file: !2, line: 163, column: 24)
!5461 = !DILocation(line: 164, column: 11, scope: !5460)
!5462 = !DILocation(line: 164, column: 14, scope: !5460)
!5463 = !DILocation(line: 165, column: 26, scope: !5460)
!5464 = !DILocation(line: 165, column: 39, scope: !5460)
!5465 = !DILocation(line: 166, column: 13, scope: !5460)
!5466 = !DILocation(line: 166, column: 26, scope: !5460)
!5467 = !DILocation(line: 166, column: 32, scope: !5460)
!5468 = !DILocation(line: 165, column: 4, scope: !5460)
!5469 = distinct !{!5469, !5459, !5470, !4408, !4409}
!5470 = !DILocation(line: 166, column: 34, scope: !5460)
!5471 = !DILocation(line: 167, column: 15, scope: !5460)
!5472 = !DILocation(line: 167, column: 28, scope: !5460)
!5473 = !DILocation(line: 167, column: 3, scope: !5460)
!5474 = !DILocation(line: 168, column: 2, scope: !5460)
!5475 = !DILocation(line: 169, column: 8, scope: !5447)
!5476 = !DILocation(line: 169, column: 2, scope: !5447)
!5477 = !DILocation(line: 170, column: 1, scope: !5447)
!5478 = !DISubprogram(name: "sysfs_remove_bin_file", scope: !151, file: !151, line: 290, type: !5479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{null, !47, !5445}
!5481 = distinct !DISubprogram(name: "sysfs_remove_file", scope: !151, file: !151, line: 626, type: !5482, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5484)
!5482 = !DISubroutineType(types: !5483)
!5483 = !{null, !47, !5017}
!5484 = !{!5485, !5486}
!5485 = !DILocalVariable(name: "kobj", arg: 1, scope: !5481, file: !151, line: 626, type: !47)
!5486 = !DILocalVariable(name: "attr", arg: 2, scope: !5481, file: !151, line: 627, type: !5017)
!5487 = !DILocation(line: 626, column: 54, scope: !5481)
!5488 = !DILocation(line: 627, column: 34, scope: !5481)
!5489 = !DILocation(line: 629, column: 23, scope: !5481)
!5490 = !DILocation(line: 629, column: 29, scope: !5481)
!5491 = !DILocation(line: 629, column: 2, scope: !5481)
!5492 = !DILocation(line: 630, column: 1, scope: !5481)
!5493 = !DISubprogram(name: "sysfs_remove_file_ns", scope: !151, file: !151, line: 283, type: !5494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{null, !47, !5017, !2040}
!5496 = !DISubprogram(name: "wait_for_completion", scope: !1757, file: !1757, line: 102, type: !5497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5497 = !DISubroutineType(types: !5498)
!5498 = !{null, !2196}
!5499 = !DISubprogram(name: "sysfs_remove_link", scope: !151, file: !151, line: 298, type: !5500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5500 = !DISubroutineType(types: !5501)
!5501 = !{null, !47, !43}
!5502 = distinct !DISubprogram(name: "remove_notes_attrs", scope: !2, file: !2, line: 230, type: !10, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5503)
!5503 = !{!5504}
!5504 = !DILocalVariable(name: "mod", arg: 1, scope: !5502, file: !2, line: 230, type: !12)
!5505 = !DILocation(line: 230, column: 47, scope: !5502)
!5506 = !DILocation(line: 232, column: 6, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5502, file: !2, line: 232, column: 6)
!5508 = !DILocation(line: 232, column: 11, scope: !5507)
!5509 = !DILocation(line: 232, column: 6, scope: !5502)
!5510 = !DILocation(line: 233, column: 20, scope: !5507)
!5511 = !DILocation(line: 233, column: 25, scope: !5507)
!5512 = !DILocation(line: 233, column: 38, scope: !5507)
!5513 = !DILocation(line: 233, column: 43, scope: !5507)
!5514 = !DILocation(line: 233, column: 56, scope: !5507)
!5515 = !DILocation(line: 233, column: 3, scope: !5507)
!5516 = !DILocation(line: 234, column: 1, scope: !5502)
!5517 = distinct !DISubprogram(name: "remove_sect_attrs", scope: !2, file: !2, line: 125, type: !10, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4043, retainedNodes: !5518)
!5518 = !{!5519}
!5519 = !DILocalVariable(name: "mod", arg: 1, scope: !5517, file: !2, line: 125, type: !12)
!5520 = !DILocation(line: 125, column: 46, scope: !5517)
!5521 = !DILocation(line: 127, column: 6, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 127, column: 6)
!5523 = !DILocation(line: 127, column: 11, scope: !5522)
!5524 = !DILocation(line: 127, column: 6, scope: !5517)
!5525 = !DILocation(line: 128, column: 23, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5522, file: !2, line: 127, column: 23)
!5527 = !DILocation(line: 128, column: 28, scope: !5526)
!5528 = !DILocation(line: 128, column: 34, scope: !5526)
!5529 = !DILocation(line: 129, column: 9, scope: !5526)
!5530 = !DILocation(line: 129, column: 14, scope: !5526)
!5531 = !DILocation(line: 129, column: 26, scope: !5526)
!5532 = !DILocation(line: 128, column: 3, scope: !5526)
!5533 = !DILocation(line: 134, column: 19, scope: !5526)
!5534 = !DILocation(line: 134, column: 24, scope: !5526)
!5535 = !DILocation(line: 134, column: 3, scope: !5526)
!5536 = !DILocation(line: 135, column: 3, scope: !5526)
!5537 = !DILocation(line: 135, column: 8, scope: !5526)
!5538 = !DILocation(line: 135, column: 19, scope: !5526)
!5539 = !DILocation(line: 136, column: 2, scope: !5526)
!5540 = !DILocation(line: 137, column: 1, scope: !5517)
!5541 = !DISubprogram(name: "sysfs_remove_group", scope: !151, file: !151, line: 315, type: !5542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{null, !47, !178}
